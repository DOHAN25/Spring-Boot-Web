package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.demo.dto.UserVO;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Controller
public class LoginController {
	
	private final Logger logger = LoggerFactory.getLogger(this.getClass());
	@RequestMapping(value="login.do", method=RequestMethod.POST)
	public HttpSession loginDo(HttpSession session, @RequestBody UserVO userInfo) {
		
		
		
		
		return session;
	}
}
 