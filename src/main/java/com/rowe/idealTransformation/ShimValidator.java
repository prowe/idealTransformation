package com.rowe.idealTransformation;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.rowe.idealTransformation.ContactUsController.ContactUsCommand;

public class ShimValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		return ContactUsCommand.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		ContactUsCommand command = (ContactUsCommand) target;
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name", "notBlank", "Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "notBlank", "Required");
	}

}
