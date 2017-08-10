/*
 * @(#) MyInvocationSecurityMetadataSourceService.java  2011-3-23 下午02:58:29
 *
 * Copyright 2011 by Sparta 
 */

package com.hjf.mng.common.security;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

import org.springframework.security.access.ConfigAttribute;
import org.springframework.security.web.FilterInvocation;
import org.springframework.security.web.access.intercept.FilterInvocationSecurityMetadataSource;
import org.springframework.security.web.util.AntUrlPathMatcher;
import org.springframework.security.web.util.UrlMatcher;
import org.springframework.stereotype.Service;

import com.hjf.base.mybatis.BaseService;
import com.hjf.base.spring.ApplicationFactory;

/**
 * 最核心的地方，就是提供某个资源对应的权限定义，即getAttributes方法返回的结果。 此类在初始化时，应该取到所有资源及其对应角色的定义。
 */
@Service
public class MySecurityMetadataSource extends BaseService implements		FilterInvocationSecurityMetadataSource {

	private UrlMatcher urlMatcher = new AntUrlPathMatcher();

	private static Map<String, Collection<ConfigAttribute>> resourceMap = null;

	public MySecurityMetadataSource() {
		log.info("系统安全初始化....SpringSecurity加载系统所有权限到内存........");
		loadResourceDefine();
	}
	/**
	 * 装载系统所有的权限和资源对应关系
	 */
	public void loadResourceDefine() {
		SecurityService securityService=(SecurityService) ApplicationFactory.getContext().getBean("securityService");
		resourceMap=securityService.loadAuthorities(resourceMap);
	}

	//@Override
	public Collection<ConfigAttribute> getAllConfigAttributes() {

		return null;
	}

	

	//@Override
	public boolean supports(Class<?> arg0) {

		return true;
	}

	public Collection<ConfigAttribute> getAttributes(Object object)throws IllegalArgumentException {
		// object 是一个URL，被用户请求的url。
		String url = ((FilterInvocation) object).getRequestUrl();
        int firstQuestionMarkIndex = url.indexOf("&");
        if (firstQuestionMarkIndex != -1) {
            url = url.substring(0, firstQuestionMarkIndex);
        }
		Iterator<String> ite = resourceMap.keySet().iterator();
		while (ite.hasNext()) {
				String resURL = ite.next();
				if (urlMatcher.pathMatchesUrl(url, resURL)) {
					return resourceMap.get(resURL);
				}
		}
		return null;
	}

}
