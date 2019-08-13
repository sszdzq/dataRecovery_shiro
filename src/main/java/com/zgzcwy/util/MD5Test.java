package com.zgzcwy.util;

import org.apache.shiro.crypto.hash.Md5Hash;
import org.apache.shiro.crypto.hash.SimpleHash;

/**
 * 
 * @ClassName:  MD5Test   
 * @Description:  md5散列方法
 * @author: Administrator  
 * @date:   2017年10月13日 下午1:24:17   
 *
 */
public class MD5Test {
	
	public static void main(String[] args) {
		String password=md5San("111111","qwerty");
		System.out.println(password);
		/*//原始 密码 
		String source = "222222";
		//盐
		String salt = "qwerty";
		//散列次数
		int hashIterations =1;
		//上边散列1次：f3694f162729b7d0254c6e40260bf15c
		//上边散列2次：36f2dfa24d0a9fa97276abbe13e596fc
		
		
		//构造方法中：
		//第一个参数：明文，原始密码 
		//第二个参数：盐，通过使用随机数
		//第三个参数：散列的次数，比如散列两次，相当 于md5(md5(''))
		Md5Hash md5Hash = new Md5Hash(source, salt, hashIterations);
		
		String password_md5 =  md5Hash.toString();
		System.out.println(password_md5);
		//第一个参数：散列算法 
		SimpleHash simpleHash = new SimpleHash("md5", source, salt, hashIterations);
		System.out.println("--->"+simpleHash.toString());*/
		
		
		
	}
	public static String md5San(String password,String salt){
		int hashIterations =1;
		Md5Hash md5Hash = new Md5Hash(password, salt, hashIterations);
		String password_md5 =  md5Hash.toString();
		//System.out.println(password_md5);
		//第一个参数：散列算法 
		SimpleHash simpleHash = new SimpleHash("md5", password, salt, hashIterations);
		//System.out.println("--->"+simpleHash.toString());
		return simpleHash.toString();
		
	}

}
