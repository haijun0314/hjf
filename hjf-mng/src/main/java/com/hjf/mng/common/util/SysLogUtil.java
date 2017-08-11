package com.hjf.mng.common.util;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import com.hjf.base.model.MyUserDetails;
import com.hjf.base.spring.ApplicationFactory;
import com.hjf.base.spring.BaseAction;
import com.hjf.common.enums.ResultType;
import com.hjf.mng.sys.entity.SysLog;
import com.hjf.mng.sys.service.SysLogService;

public class SysLogUtil extends BaseAction {
	public static SysLogService sysLogService=(SysLogService)ApplicationFactory.getBean("sysLogService");

	/**
	 * 记录操作日志
	 */
	public static void   addlSysLog(HttpServletRequest request,String msg,ResultType result){
		SysLog syslog=new SysLog(result.getValue(),msg);
		syslog.setLogIp(request.getLocalAddr());
		syslog.setUserId(MyUserDetails.getCurUserDetails().getUserid());
		syslog.setUserName(MyUserDetails.getCurUserDetails().getUsername());
		syslog.setCreatedBy(MyUserDetails.getCurUserDetails().getUsername());
		syslog.setLogTime(new Date());
		cacheLog(syslog);
	}		
	
	 	
	
	
	
	/**
	 * 添加日志到缓存
	 */
	public static void cacheLog(SysLog syslog){
		sysLogService.cacheLog(syslog);
	}	
	
	 
}
