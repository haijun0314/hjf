package com.hjf.common.util;

import org.springframework.context.support.MessageSourceAccessor;

import com.hjf.base.spring.ApplicationFactory;

public class PropUtils {
	private static MessageSourceAccessor message =new MessageSourceAccessor(ApplicationFactory.getContext());
	
	 /**
	  * 获取系统资源
	  * @return
	  */
	 public static MessageSourceAccessor getMessageSource(){
		return  message;
	 }
	 
	 /**
	  * 获取系统资源信息
	  * @return
	  */
	 public static String getMsgStr(String resourceKey){
		return  message.getMessage(resourceKey);
	 }
	 /**
	  * 获取系统资源信息
	  * @return
	  */
	 public static boolean getBooleanMsg(String resourceKey){
		 String  msg = message.getMessage(resourceKey);
		 if ("true".equals(msg)) {
			return true;
		}else{
			return false;
		}
	 }
}
