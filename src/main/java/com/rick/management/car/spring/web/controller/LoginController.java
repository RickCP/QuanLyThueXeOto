package com.rick.management.car.spring.web.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.rick.management.car.spring.constant.WebConstants;
import com.rick.management.car.spring.service.IUserService;
import com.rick.management.car.spring.web.form.LoginForm;

@Controller
public class LoginController{
	@Autowired
	private IUserService userService;
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView doLogin()
	{ 
		ModelAndView modelAndView = new ModelAndView(WebConstants.Views.SIGN_IN);
		modelAndView.addObject("loginForm", new LoginForm());
		return modelAndView;
	}
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView doLoginProcess(@Valid LoginForm loginForm,BindingResult result,Model model)
	{
		ModelAndView modelAndView=null;
		if(result.hasErrors())
		{
			modelAndView=new ModelAndView(WebConstants.Views.SIGN_IN);
			
		}
		else
		{   
			boolean bool=userService.doLogin(loginForm.getUsername(),loginForm.getPassword());
			if(bool)
			{
			modelAndView=new ModelAndView(WebConstants.Views.SIGN_IN_SUCCESS);
			}
			else
			{   
				
				modelAndView=new ModelAndView(WebConstants.Views.SIGN_IN);
				loginForm=new LoginForm();
				loginForm.setMessage("Username or Password is incorrect");
				modelAndView.addObject("loginForm",loginForm);
				model.addAttribute("message","Username or Password is incorrect");
				
				
			}
		}
		return modelAndView;
	}

}
