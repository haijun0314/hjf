package com.hjf.mng.sys.controller;
import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hjf.base.exception.CodeUtil;
import com.hjf.base.spring.BaseAction;
import com.hjf.common.util.web.ResponseUtils;
import com.hjf.common.util.web.SessionUtil;
import com.hjf.mng.common.util.ConfigUtil;
import com.hjf.mng.sys.service.SysUserService;
/**
 * 登录跳转
 * author lihaijun
 * createTime   2014-11-21
 */
@Controller  
@RequestMapping("/login") 
public class LoginAction extends BaseAction{
	@Resource SysUserService sysUserService;
 
	/**
	 *   
	 */
	@RequestMapping(params ="loginSuccess")   
	public void loginSuccess(Model model,HttpServletRequest request,HttpServletResponse response) {
		//SecurityContext sc=SecurityContextHolder.getContext();
		//addSysLog(request,SysLogUtil.successLog("系统用户"+MyUserDetails.getCurUserDetails().getUsername()+"登录",LogType.Login));
		//SessionUtil.setSession("userDetails", MyUserDetails.getCurUserDetails());
		ResponseUtils.renderJson(response,CodeUtil.success);
	}  
	/**
	 *  登录到错误页面
	 */
	@RequestMapping(params = "loginError")   
	public void loginError(HttpServletResponse response) {
		SessionUtil.clearSession(ConfigUtil.sys_session_isLocal);
		ResponseUtils.renderJson(response,CodeUtil.e_1105);
	}  
	
	/**
	 *  退出成功页面
	 */
	@RequestMapping(params = "logoutSuccess")   
	public void logoutSuccess(HttpServletResponse response) throws IOException {
		SessionUtil.removeSession(ConfigUtil.sys_session_isLocal,ConfigUtil.Session_global);
		response.sendRedirect("login.jsp");
	} 	
	
	
}
