package com.hjf.base;

import org.apache.log4j.Logger;

import com.hjf.common.util.PropUtils;

public class LogUtil {
	 
 
	public static  Logger getLogger() {
		return  Logger.getLogger(PropUtils.getMsgStr("logName")); 
	}	
 
	public static  Logger getLogger(String log) {
		return  Logger.getLogger(log); 
	}	
}
