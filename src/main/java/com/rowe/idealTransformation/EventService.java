package com.rowe.idealTransformation;

import java.io.File;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.joda.time.LocalDate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.api.client.googleapis.auth.oauth2.GoogleCredential;
import com.google.api.client.googleapis.javanet.GoogleNetHttpTransport;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.jackson2.JacksonFactory;
import com.google.api.services.calendar.Calendar;
import com.google.api.services.calendar.CalendarScopes;
import com.google.api.services.calendar.model.Event;
import com.google.api.services.calendar.model.Events;

//@Controller
public class EventService {
    private static final String CALENDAR_ID = "6ci10meqqa5enjfgi5bnqmjb6s@group.calendar.google.com";
    
	private Calendar service;
	
	public EventService() throws GeneralSecurityException, IOException {
		HttpTransport httpTransport = GoogleNetHttpTransport.newTrustedTransport();
		
		JsonFactory jsonFactory = JacksonFactory.getDefaultInstance();
		
		String clientId = "677799134144-4roe0v7ehen0fs0j3au6mtl7e9cmi87c.apps.googleusercontent.com";
		String clientSecret = "xu1bHCnNtHLo8PK-hpBR0wog";
		String emailAddress = "677799134144-f4fnss5vskacv393k3tqcu0met7e4k82@developer.gserviceaccount.com";
		String keyPassword = "notasecret";
		
		GoogleCredential credential = new GoogleCredential.Builder()
			.setTransport(httpTransport)
		    .setJsonFactory(jsonFactory)
		    .setServiceAccountId(emailAddress )
		    //.setServiceAccountPrivateKey(serviceAccountPrivateKey)
		    .setServiceAccountScopes(Arrays.asList(CalendarScopes.CALENDAR_READONLY))
		    .build();
		
		service = new Calendar.Builder(httpTransport, jsonFactory, credential)
		   .setApplicationName("AppEngineClient").build();
	}
	
	@RequestMapping("/events.html")
	public @ResponseBody String getUpcomingDates() throws IOException{
			Events events = service.events().list(CALENDAR_ID)
				.execute();
			List<LocalDate> dates = new ArrayList<LocalDate>();
			for(Event event:events.getItems()){
				dates.add(new LocalDate(event.getStart().getDate().getValue()));
			}
		
		return String.valueOf(dates);
	}
	
	
	public static void main(String[] args) throws GeneralSecurityException, IOException {
		System.out.println(new EventService().getUpcomingDates());
	}
}
