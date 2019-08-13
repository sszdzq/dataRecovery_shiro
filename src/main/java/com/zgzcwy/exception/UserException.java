package com.zgzcwy.exception;
/**
 * 
 * @ClassName:  UserException   
 * @Description: 自定义异常信息类 
 * @author: Administrator  
 * @date:   2017年9月27日 下午2:23:58   
 *
 */
public class UserException extends Exception{
	private static final long serialVersionUID = 2287214354680898972L;
		//异常信息
		private String message;
		
		public UserException(String message){
			super(message);
			this.message = message;
			
		}

		public String getMessage() {
			return message;
		}

		public void setMessage(String message) {
			this.message = message;
		}

}
