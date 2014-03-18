package com.rick.management.car.spring.web.controller;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.LinkedHashMap;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.rick.management.car.spring.constant.WebConstants;
import com.rick.management.car.spring.persit.domain.User;
import com.rick.management.car.spring.service.IUserService;
import com.rick.management.car.spring.web.form.UserForm;

@Controller
public class UserController {
	@Autowired
	private IUserService userService;

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView createUser(Model model) {
		ModelAndView modelAndView = new ModelAndView(WebConstants.Views.SIGN_UP);
		UserForm userForm = new UserForm();
		Map<String, String> country = new LinkedHashMap<String, String>();
		country.put("US", "United Stated");
		country.put("CHINA", "China");
		country.put("SG", "Singapore");
		country.put("MY", "Malaysia");
		userForm.setGioiTinh("M");
		model.addAttribute("dmQuyenList", country);
		modelAndView.addObject("userForm", userForm);
		return modelAndView;
	}
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public ModelAndView processCreateUser(@Valid UserForm userForm,
			BindingResult result, Model model)

	{
		ModelAndView modelAndView = null;

		if (result.hasErrors()) {

			modelAndView = new ModelAndView(WebConstants.Views.SIGN_UP);

		} else {
			modelAndView = new ModelAndView(WebConstants.Views.SIGN_IN_SUCCESS);
		}
		return modelAndView;
	}
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
		
	}

}
