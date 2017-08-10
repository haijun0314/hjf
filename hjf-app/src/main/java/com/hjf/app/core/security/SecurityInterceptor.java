package com.hjf.app.core.security;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.hjf.app.core.util.ConfigUtil;
import com.hjf.app.core.util.KeysUtil;
import com.hjf.app.entity.Account;
import com.hjf.base.LogUtil;
import com.hjf.base.exception.CodeUtil;
import com.hjf.base.spring.WebUtils;
import com.hjf.common.bean.BaseRespBean;
import com.hjf.common.util.JsonUtil;
import com.hjf.common.util.URLUtil;
import com.hjf.common.util.secret.DesUtil;
import com.hjf.common.util.web.CookieUtil;
import com.hjf.common.util.web.ResponseUtils;
import com.hjf.common.util.web.SessionUtil;
/**
 * 【功能说明】：通用系统权限拦截器
 * @author lihaijun
 * 【创建时间】2017-05-25
 */
public class SecurityInterceptor extends HandlerInterceptorAdapter {
	Logger log=LogUtil.getLogger(); 
	List<String> filterAuthorities=new ArrayList<String>();
	@Override
	public boolean preHandle(HttpServletRequest request,HttpServletResponse response, Object handler) throws Exception {
		String  url=URLUtil.buildRequestUrl(request);
		log.info("【权限session拦截】"+url);
        WebUtils.setRequest((HttpServletRequest)request); 
        log.debug("WebUtils.setRequest....."+request.toString());
        WebUtils.setResponse((HttpServletResponse)response); 
        log.debug("WebUtils.setResponse....."+response.toString());
		if(decideFilterAuthorities(url)){
			return true;
		}

		String ck=CookieUtil.getCookie(ConfigUtil.Cookie_Login_User);
		if(StringUtils.isBlank(ck)){
			log.info("【权限session拦截】【检测到访问cookie为空】 返回登录页面"+url);
			invalidSession(response);
			return false;
		}
		ck=DesUtil.decrypt(ck, ConfigUtil.sys_secKey);
		if (ConfigUtil.sys_session_isLocal) {
			log.info("【权限session拦截】....session本地存储 ck="+ck);
			Account c=(Account) SessionUtil.getLocalSession(ConfigUtil.Session_Login_User);
			if(c==null){
				invalidSession(response);
				return false;
			}
		}else {
			log.info("【权限session拦截】....session远程存储 ck="+ck);
			String cks[]=ck.split("-");
			String  session=(String) SessionUtil.getRemoteSession(KeysUtil.getSession_login_User(cks[0]));
			if(StringUtils.isBlank(session)){
				invalidSession(response);
				return false;
			}
			String  key=KeysUtil.getSession_login_User(cks[0]);
			SessionUtil.continueRedisSession(cks[0], session);
		}
		return true;
			
	}
	
	public void invalidSession(HttpServletResponse response) {
		log.info("【权限session拦截】【session 失效】 返回登录页面");
		BaseRespBean  r=new BaseRespBean();
		r.fail(CodeUtil.e_1010);
		ResponseUtils.renderJson(response, JsonUtil.obj2Json(r));
	}
	
	
	/**
	 *  检测是否是不要安全验证的
	 */
	public boolean decideFilterAuthorities(String url) {
		if(url.endsWith(".html")){
			return true;
		}
		if (filterAuthorities==null||filterAuthorities.size()<1) {
			loadSysFilterAuthorities();
		}
		if (filterAuthorities==null||filterAuthorities.size()<1) {
			return false;
		}
		for (int i = 0; i <filterAuthorities.size(); i++) {
			String filterAuthoritie=filterAuthorities.get(i);
			if (url.indexOf(filterAuthoritie)>-1) {
				return true;
			};
		}
		return false;
	}	
	
	/**
	 * 加载系统不需要安全控制的权限【就是action的一个方法】
	 */
	public  void loadSysFilterAuthorities() {
		//静态资源
		filterAuthorities.add("login");
		filterAuthorities.add("test");
		filterAuthorities.add("note");
	}	
	
}
