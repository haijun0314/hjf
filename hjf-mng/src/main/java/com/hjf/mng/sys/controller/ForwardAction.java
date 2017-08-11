package com.hjf.mng.sys.controller;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hjf.base.model.MyUserDetails;
import com.hjf.base.spring.BaseAction;
import com.hjf.common.enums.ResultType;
import com.hjf.common.util.web.SessionUtil;
import com.hjf.mng.common.util.ConfigUtil;
import com.hjf.mng.common.util.SysLogUtil;
import com.hjf.mng.sys.entity.SysUser;
import com.hjf.mng.sys.service.SysUserService;
/**
 * 业务跳转
 * author lihaijun
 * createTime   2014-11-21
 */
@Controller  
@RequestMapping("/forward") 
public class ForwardAction extends BaseAction{
	@Resource SysUserService sysUserService;
	/**
	 *  登录跳转到首页
	 */
	@RequestMapping(params = "index")  
	public String welcomeIndex(HttpServletRequest request) {
		MyUserDetails userDetails=MyUserDetails.getCurUserDetails();
		SessionUtil.setSession(ConfigUtil.sys_session_isLocal,ConfigUtil.Session_global, userDetails);
		SysUser sysUser=new SysUser();
		sysUser.setLoginTime(new Date());
		sysUser.setUserId(userDetails.getUserid());
		sysUserService.update(sysUser);
		SysLogUtil.addlSysLog(request, "系统用户"+MyUserDetails.getCurUserDetails().getUsername()+"登录", ResultType.Success);
		
		
		return "index";
	}
	
	 
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	 
	
}
