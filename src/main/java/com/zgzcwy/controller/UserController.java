package com.zgzcwy.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.aspectj.weaver.ast.And;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpOutputMessage;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zgzcwy.entity.User;
import com.zgzcwy.service.UserService;
import com.zgzcwy.util.MD5Test;

/**
 * 
 * @ClassName: UserController
 * @Description: 用户登录类
 * @author: Administrator
 * @date: 2017年8月31日 下午1:48:07
 *
 */
@Controller
@RequestMapping("/user")
public class UserController {
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	@Autowired
	private UserService userService;
	@RequestMapping("/testMain")
	public String testMain() {
		return "index";
	}

	@RequestMapping("/top")
	public String top() {
		return "top";
	}

	@RequestMapping("/main")
	public String main() {
		return "main";
	}

	@RequestMapping("/left")
	public String left() {
		return "left";
	}

	@RequestMapping("/right")
	public String right() {
		return "right";
	}
}

