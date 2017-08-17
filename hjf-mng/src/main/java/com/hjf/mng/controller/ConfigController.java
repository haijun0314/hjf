package com.hjf.mng.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hjf.base.spring.BaseAction;
import com.hjf.common.util.web.MsgUtil;
import com.hjf.mng.entity.ConfigSystem;
import com.hjf.mng.service.ConfigService;

/**
 * 功能说明:【系统配置服务控制类】
 * 作    者：lihaijun
 * 创建日期：2017-08-17
 */
@Controller
@RequestMapping("/config")
public class ConfigController extends BaseAction {
	@Resource  ConfigService configService;
	String configSystem			="page/config/configSystem";	
	
	/**
	 * 系统配置操作
	 */
	@RequestMapping(params = "configSystem")
	public ModelAndView configSystem(ConfigSystem cs, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		if (pageRequest(request)) {
			cs=  configService.getConfigSystem();//查询数据
			ModelAndView mav = new ModelAndView(configSystem);
			mav.addObject("configSystem",cs);
			return mav;
		} else {
			configService.updateConfigSystem(cs);
			MsgUtil.operSuccess(response);
			return null;
		}
	}	
	 
}
