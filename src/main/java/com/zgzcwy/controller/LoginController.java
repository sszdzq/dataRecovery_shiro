package com.zgzcwy.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zgzcwy.entity.ActiveUser;
import com.zgzcwy.exception.UserException;
/**
 * 
 * @ClassName:  LoginController   
 * @Description: 登录和退出 
 * @author: Administrator  
 * @date:   2017年9月27日 下午2:16:18   
 *
 */
@Controller
public class LoginController{
	//登陆提交地址，和applicationContext-shiro.xml中配置的loginurl一致
		@RequestMapping("/login")
		public String login(HttpServletRequest request)throws Exception{
			
			//如果登陆失败从request中获取认证异常信息，shiroLoginFailure就是shiro异常类的全限定名
			String exceptionClassName = (String) request.getAttribute("shiroLoginFailure");
			//根据shiro返回的异常类路径判断，抛出指定异常信息
			if(exceptionClassName!=null){
				if (UnknownAccountException.class.getName().equals(exceptionClassName)) {
					//最终会抛给异常处理器
					throw new UserException("账号不存在");
				} else if (IncorrectCredentialsException.class.getName().equals(
						exceptionClassName)) {
					throw new UserException("用户名/密码错误");
				}else {
					throw new Exception();//最终在异常处理器生成未知错误
				}
			}
			//此方法不处理登陆成功（认证成功），shiro认证成功会自动跳转到上一个请求路径
			// 判断当前用户是否已经登陆
	        Subject currentSubject = SecurityUtils.getSubject();
	        if (!currentSubject.isAuthenticated()){
	            return "login/login";}
	        else{
	            return "redirect:/user/testMain";}
			//登陆失败还到login页面
		}
		//系统首页
		@RequestMapping("/first")
		public String first(HttpSession session,HttpServletRequest request,Model model)throws Exception{
			
			//从shiro的session中取activeUser
			Subject subject = SecurityUtils.getSubject();
			//取身份信息
			ActiveUser activeUser = (ActiveUser) subject.getPrincipal();
			System.out.println(activeUser.getLoginname());
			session.setAttribute("activeUser", activeUser);
			
			return "redirect:/user/testMain";
		}

}
