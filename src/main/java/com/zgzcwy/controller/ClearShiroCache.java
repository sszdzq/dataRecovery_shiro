package com.zgzcwy.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zgzcwy.shiro.LoginRealm;

/**
 * 
 * @ClassName:  ClearShiroCache   
 * @Description:手动调用controller清除shiro的缓存
 * @author: Administrator  
 * @date:   2017年10月10日 上午11:41:26   
 *
 */
@Controller
public class ClearShiroCache {
	
	//注入realm
	@Autowired
	private LoginRealm loginRealm;
	
	@RequestMapping("/clearShiroCache")
	public String clearShiroCache(){
		
		//清除缓存
		loginRealm.clearCached();
		
		return "success";
	}

}
