package com.rowe.idealTransformation;

import java.util.Map;

import javax.validation.Valid;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;
import org.joda.time.LocalDate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/contactUs.*")
public class ContactUsController {
	private static final Logger logger = LoggerFactory.getLogger(ContactUsController.class);

	@RequestMapping(method=RequestMethod.GET)
	public void get(Map<String, Object> modelMap){
		modelMap.put("command", new ContactUsCommand());
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public String submit(
		@Valid @ModelAttribute("command") ContactUsCommand command,
		BindingResult bindingResult) {
		if(bindingResult.hasErrors()){
			return "contactUs";
		}
		logger.info("Mailing {}", command);
		
		return "contactUsSuccess";
	}
	
	public enum ClassType {
		INFO("Info Session"),
		MAINTENANCE("Maintenance Class"),
		SUPPORT("Support Group");
		
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
		
		@NotBlank
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		@NotBlank
		@Email
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		@NotBlank
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
		
		
	}
}
