package com.rowe.idealTransformation;

import java.io.IOException;
import java.util.Map;

import javax.validation.Valid;

import org.joda.time.LocalDate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.google.appengine.api.mail.MailService;
import com.google.appengine.api.mail.MailService.Message;
import com.google.appengine.api.mail.MailServiceFactory;

@Controller
@RequestMapping("/contactUs.*")
public class ContactUsController {
	private static final Logger logger = LoggerFactory.getLogger(ContactUsController.class);

	@RequestMapping(method=RequestMethod.GET)
	public String get(@RequestParam(value="embedded", required=false, defaultValue="false") boolean embedded,
		Map<String, Object> modelMap){
		modelMap.put("command", new ContactUsCommand());
		return getViewName(embedded);
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public String submit(
		@RequestParam(value="embedded", required=false, defaultValue="false") boolean embedded,
		@Valid @ModelAttribute("command") ContactUsCommand command,
		BindingResult bindingResult, Map<String, Object> modelMap) throws IOException {
		if(bindingResult.hasErrors()){
			return getViewName(embedded);
		}
		logger.info("Mailing {}", command);
		try {
			sendMail(command);
			modelMap.put("successMessage", "Message sent!");
		}catch(Exception e){
			logger.error("Error sending mail", e);
			modelMap.put("errorMessage", "Submit failed! Please call (515) 270-8446");
		}
		return "contactUs";
	}

	private String getViewName(boolean embedded) {
		return embedded ? "contactUs-embedded" : "contactUs";
	}
	
	private void sendMail(ContactUsCommand command) throws IOException{
		MailService mailService = MailServiceFactory.getMailService();
		
		Message message = new Message();
		
		message.setSender("no-reply@idealtransformation-1006.appspot.com");
		message.setSubject("Website Message");
		
		if(command.getEmail() != null){
			message.setReplyTo(command.getEmail());
		}
		
		StringBuilder builder = new StringBuilder();
		builder.append("From: " + command.getName() + "\n");
		builder.append("Email: " + command.getEmail() + "\n");
		builder.append("Phone: " + command.getPhone() + "\n");
//		builder.append("Attending: " + command.getAttendCount() + "\n");
//		builder.append("Class Type: " + (command.getClassType() != null ? command.getClassType().getLabel() : null) + "\n");
//		builder.append("Event Date: " + command.getEventDate() + "\n");
		builder.append("Comments: " + command.getComments() + "\n");
		message.setTextBody(builder.toString());
		
		mailService.sendToAdmins(message);
	}
	
	public enum ClassType {
		WORKSHOP("Workshop"),
		CLASS("Class"),
		HEALTH_COACH_CONSULTATION("Health Coach Consultation");
		
		private final String label;

		private ClassType(String label){
			this.label = label;
		}
		public String getLabel() {
			return label;
		}
	}
	
	public static class ContactUsCommand {
	
		private String name;
		private String email;
		private String phone;
		private ClassType classType;
		private LocalDate eventDate;
		private Integer attendCount;
		private String comments;
		
		//@NotBlank
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		//@NotBlank
		//@Email
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getPhone() {
			return phone;
		}
		public void setPhone(String phone) {
			this.phone = phone;
		}
		
		public ClassType getClassType() {
			return classType;
		}
		
		public void setClassType(ClassType classType) {
			this.classType = classType;
		}
		@DateTimeFormat(pattern="MM/dd/yyyy")
		public LocalDate getEventDate() {
			return eventDate;
		}
		public void setEventDate(LocalDate eventDate) {
			this.eventDate = eventDate;
		}
		public Integer getAttendCount() {
			return attendCount;
		}
		public void setAttendCount(Integer attendCount) {
			this.attendCount = attendCount;
		}
		public String getComments() {
			return comments;
		}
		public void setComments(String comments) {
			this.comments = comments;
		}
		
	}
}
