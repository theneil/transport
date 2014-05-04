package com.transport.controller;


import com.transport.dao.UserDAO;
import com.transport.object.User;
import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import java.sql.SQLException;

@Controller
public class LoginController {
	
	@Autowired
	UserDAO userDAO;
	/**
	 * Static list of users to simulate Database
	 */

	/**
	 * Saves the static list of users in model and renders it 
	 * via freemarker template.
	 * 
	 * @return The index view (FTL)
	 */
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public ModelAndView index() {		
		ModelAndView index = new ModelAndView("index");
		index.addObject("errorMsg", "");
		User user = new User();
		index.addObject("user", user);
		return index;
	}
	
	@RequestMapping(value="/login", method = RequestMethod.POST)
	public ModelAndView login(@ModelAttribute("user") User user, HttpServletResponse response) throws SQLException
	{
        System.out.println("User name:" + user.getUsername());
        System.out.println("password:" + user.getPassword());
		User getUser = userDAO.getUser(user.getUsername());
		if(getUser.getPassword() == null)
			return new ModelAndView("index").addObject(new User()).addObject("errorMsg", "User Name is incorrect!");
		if(DigestUtils.md5Hex(user.getPassword().getBytes()).
		equalsIgnoreCase(getUser.getPassword()))
		{
			response.addCookie(new Cookie("username",getUser.getUsername()));
			return new ModelAndView("main").addObject(user);
		}
		else
			return new ModelAndView("index").addObject(new User()).addObject("errorMsg", "password is incorrect!");		
	}

	
	
}
