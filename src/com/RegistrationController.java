package com;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class RegistrationController {

	@Autowired
	public UserService userService;

     @RequestMapping(value = "/controller", method=RequestMethod.POST)
	 public ModelAndView showRegister(User user,HttpServletRequest request, HttpServletResponse response
			) {
		 System.out.println("========16=======");
		 userService.addUser(user);
		 return new ModelAndView("welcome", "firstname", user.getMobno());
	 }
	
}
