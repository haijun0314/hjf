package com.hjf.mng.common.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.hjf.base.LogUtil;
import com.hjf.base.model.MyUserDetails;
import com.hjf.common.util.URLUtil;
import com.hjf.common.util.web.SessionUtil;
import com.hjf.mng.common.util.ConfigUtil;

public class LogHandlerInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request,HttpServletResponse response, Object handler) throws Exception {
		//就简单判断了一下，如果要详细控制可以用spring security
		String  url=URLUtil.buildRequestUrl(request);
		Logger log=LogUtil.getLogger(); 
		MyUserDetails user=(MyUserDetails) SessionUtil.getSession(ConfigUtil.sys_session_isLocal,"session_global");
		if (user!=null) {
			log.info("【访问系统URL】"+url+"【访问人】"+user.getUsername()+"【id=】"+user.getUserid());
		}else{
			log.info("【访问系统URL】"+url);
		}
		return true;
			
	}
	
}
