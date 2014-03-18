package com.rick.management.car.spring.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.rick.management.car.spring.constant.WebConstants;

@Controller
public class HomeController {
	@RequestMapping(value = "/client", method = RequestMethod.GET)
	public ModelAndView doNavigation()
	{
		ModelAndView modelAndView=new ModelAndView(WebConstants.Views.CLIENT_INDEX);
		return modelAndView;
	}
}
