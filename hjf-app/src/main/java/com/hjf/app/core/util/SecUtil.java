package com.hjf.app.core.util;

import com.hjf.common.util.secret.DesUtil;

public class SecUtil {
	 
 
	public static  String encrypt(String msg) {
		msg=DesUtil.encrypt(msg, ConfigUtil.sys_secKey);
		return msg;
	}	
	
	public static  String decrypt(String msg) {
		msg=DesUtil.decrypt(msg, ConfigUtil.sys_secKey);
		return msg;
	}	
	
}
