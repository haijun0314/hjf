package com.hjf.mng.common.util;

import com.hjf.base.spring.ApplicationFactory;
import com.hjf.base.spring.BaseAction;
import com.hjf.common.enums.LogType;
import com.hjf.mng.sys.entity.SysLog;
import com.hjf.mng.sys.service.SysLogService;

public class SysLogUtil extends BaseAction {
	public static SysLogService sysLogService=(SysLogService)ApplicationFactory.getBean("sysLogService");
	
 
	
	/**
	 * 添加日志到缓存
	 */
	public static void addOperLogToCache(SysLog syslog){
		sysLogService.addCacheLog(syslog);
	}	
	
	/**
	 * 实例化成功日志
	 */
	public static SysLog successLog(String msg,LogType logtype){
		SysLog syslog=new SysLog(logtype,msg,"1");
		return syslog;
	}	 
	/**
	 * 实例化成功日志
	 */
	public static SysLog failLog(String msg,LogType logtype){
		SysLog syslog=new SysLog(logtype,msg,"2");
		return syslog;
	}	
}
