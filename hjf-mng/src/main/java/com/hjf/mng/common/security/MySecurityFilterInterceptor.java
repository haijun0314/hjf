/*
 * @(#) MyFilterSecurityInterceptor.java  2011-3-23 上午07:53:03
 *
 * Copyright 2011 by Sparta 
 */

package com.hjf.mng.common.security;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.springframework.security.access.SecurityMetadataSource;
import org.springframework.security.access.intercept.AbstractSecurityInterceptor;
import org.springframework.security.access.intercept.InterceptorStatusToken;
import org.springframework.security.core.session.SessionRegistry;
import org.springframework.security.web.FilterInvocation;
import org.springframework.security.web.access.intercept.FilterInvocationSecurityMetadataSource;

import com.hjf.base.model.MyUserDetails;



/**
 * 该过滤器的主要作用就是通过spring著名的IoC生成securityMetadataSource。
 * securityMetadataSource相当于本包中自定义的MyInvocationSecurityMetadataSourceService。
 * 该MyInvocationSecurityMetadataSourceService的作用提从数据库提取权限和资源，装配到HashMap中，
 * 供Spring Security使用，用于权限校验。
 * @author sparta 11/3/29
 *
 */

public class MySecurityFilterInterceptor 	extends AbstractSecurityInterceptor	implements Filter{
	
	@Resource SessionRegistry sessionRegistry;
	@Resource SecurityService securityService;
	private FilterInvocationSecurityMetadataSource securityMetadataSource;
	
	String accessDeniedUrl ="/jsp/error/sec/sessionTimeout.jsp";
	public void doFilter( ServletRequest request, ServletResponse response, FilterChain chain)throws IOException, ServletException{
        String navbarId=request.getParameter("navbarId");//顶部菜单ID
        if (StringUtils.isNotBlank(navbarId)) {
        	 request.setAttribute("navbarId",navbarId);
		}
		FilterInvocation fi = new FilterInvocation( request, response, chain );
		String  url=((HttpServletRequest) request).getRequestURI();
		if (!securityService.decideFilterAuthorities(url)) {
			//验证session
			MyUserDetails curUserDetails=MyUserDetails.getCurUserDetails();
			if (!securityService.decideSession(curUserDetails)) {
				RequestDispatcher dispatcher = request.getRequestDispatcher(accessDeniedUrl);
				dispatcher.forward(request, response);
			} 
		}
		invoke(fi);
	}
	
	public FilterInvocationSecurityMetadataSource getSecurityMetadataSource(){
		return this.securityMetadataSource;
	}
	
	public Class<? extends Object> getSecureObjectClass(){
		return FilterInvocation.class;
	}

	
	public void invoke( FilterInvocation fi ) throws IOException, ServletException{
		InterceptorStatusToken  token = super.beforeInvocation(fi);
		try{
			fi.getChain().doFilter(fi.getRequest(), fi.getResponse());
		}finally{
			super.afterInvocation(token, null);
		}
	}
		
	
	@Override
	public SecurityMetadataSource obtainSecurityMetadataSource(){
		return this.securityMetadataSource;
	}
	
	
	public void setSecurityMetadataSource(FilterInvocationSecurityMetadataSource securityMetadataSource){
		this.securityMetadataSource = securityMetadataSource;
	}
	
	
	public void destroy(){
		
	}
	
	public void init( FilterConfig filterconfig ) throws ServletException{
		
	}
	
	
}
