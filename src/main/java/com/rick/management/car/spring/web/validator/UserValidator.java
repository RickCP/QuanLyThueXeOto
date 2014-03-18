package com.rick.management.car.spring.web.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.rick.management.car.spring.web.form.UserForm;

public class UserValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return UserForm.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		
	}

}
