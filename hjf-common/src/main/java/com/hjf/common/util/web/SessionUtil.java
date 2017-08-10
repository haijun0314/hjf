package com.hjf.common.util.web;

import java.io.Serializable;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.hjf.common.cache.redis.RedisCacheUtil;

/**
 * 【功能说明】：Session工具类
 * @author lihaijun
 * 【创建时间】2017-05-25
 */
public class SessionUtil {
	public static RedisCacheUtil  rc=new RedisCacheUtil();
	public  static int sessionValidTime=1800;//session  有效期单位 秒
	
	/**
	 *  获取Session
	 *  name 如果是本地session    表示固定值session_login_user
	 *  如果是远程session  redis  表示手机号
	 */
	public static synchronized Serializable getSession(boolean islocal, String name) {
		// 生产模式：保存在redis中
		if (islocal) {
			return getLocalSession().get(name);
		} else {
			return rc.getStr(name);
		}
	}
	
	/**
	 *  获取Session
	 *  name 如果是本地session    表示固定值session_login_user
	 *  如果是远程session  redis  表示手机号
	 */
	public static synchronized Serializable getRemoteSession(String key) {
		return rc.getStr(key);
	}
	
	
	
	
	/**
	 * 设置Session
	 */
	public static synchronized void continueRedisSession(String key, String token){
		 rc.save(key,sessionValidTime,token);
	}

	/**
	 *  获取Session
	 *  name 如果是本地session    表示固定值session_login_user
	 *  如果是远程session  redis  表示手机号
	 */
	public static synchronized Serializable getLocalSession(String name) {
		return getLocalSession().get(name);
	}	
	
	
	/**
	 * 获取本地session
	 */
	public static synchronized Map<String, Serializable> getLocalSession(){
		// 生产模式：保存在redis中
		Map<String, Serializable> map = null;
		// 开发模式：保存在本地session中
		HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
		map = new HashMap<String, Serializable>();
		HttpSession session = request.getSession();
		Enumeration en = request.getSession().getAttributeNames();
		while (en.hasMoreElements()) {
			String key = (String) en.nextElement();
			map.put(key, (Serializable) session.getAttribute(key));
		}
		return map;
	}

	/**
	 * 设置Session
	 */
	public static synchronized void setSession(boolean islocal, String key, Serializable obj){
		// 生产模式：保存在redis中
		if (!islocal) {
			 rc.save(key,sessionValidTime, obj);
		} else {
			// 开发模式：保存在本地session中
			HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
			HttpSession session = request.getSession();
			session.setAttribute(key, obj);
		}
	}	

 

	/**
	 * 设置Session
	 */
	public static synchronized void continueRedisSession(String key ,String telephone, String token){
		 rc.save(key,sessionValidTime,token);
	}
	
	/**
	 * 清理session
	 */
	public static synchronized void removeSession(boolean islocal, String name){
		if (!islocal) {
		 
		} else {
			// 开发模式：保存在本地session中
			HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
			HttpSession session = request.getSession();
			session.removeAttribute(name);
		}
	}

	/**
	 * 清理session
	 */
	public static synchronized void clearSession(boolean islocal) {
		// 生产模式：保存在memcached中
		if (!islocal) {
			 
		} else {
			// 开发模式：保存在本地session中
			HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
			HttpSession session = request.getSession();
			@SuppressWarnings("rawtypes")
			Enumeration en = request.getSession().getAttributeNames();
			while (en.hasMoreElements()) {
				String key = (String) en.nextElement();
				session.removeAttribute(key);
			}
		}
	}	
	 
	 
}
