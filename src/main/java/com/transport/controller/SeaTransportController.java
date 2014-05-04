package com.transport.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.transport.object.Task;

@Controller
public class SeaTransportController {
	
	@RequestMapping(value = "/seatransport", method = RequestMethod.GET)
	public ModelAndView seaTransport(@CookieValue("username") String username) {		
		ModelAndView seamain = new ModelAndView("seamain");
		seamain.addObject("username", username);
		List<Task> tasks = new ArrayList<Task>();
		seamain.addObject("tasks", tasks);
		return seamain;
	}
	
	@RequestMapping(value ="/seatask/{id}", method = RequestMethod.GET)
	public ModelAndView seaTaskView(@PathVariable("id") String id)
	{
		return null;
		
	}
	
	@RequestMapping(value ="/seatransport/add", method = RequestMethod.GET)
	public ModelAndView addNewTransportMission()
	{
		Map<String,String> userList = new LinkedHashMap<String,String>();
		userList.put("001", "forTesting");
		userList.put("002", "forTesting2");
		return new ModelAndView("seanew").addObject("userList", userList).addObject("task", new Task());		
	}
	
	

}
