package com.hjf.app.controller;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hjf.app.service.MarketService;
import com.hjf.base.spring.BaseAction;
import com.hjf.common.bean.BaseRespBean;
 
/**
 * 功能说明:【营销控制】
 * 作    者：lihaijun
 * 创建日期：2017-08-22
 */
@Controller  
@RequestMapping("/market") 
public class MarketController extends BaseAction{
	@Resource MarketService 	 marketService;
 
	/**
	 * 【首页轮播图】
	 */
	@RequestMapping(params = "carouses")   
	public void carouses(HttpServletRequest request,HttpServletResponse response) throws Exception{
		try {
			BaseRespBean r  	=new BaseRespBean();
			r=marketService.carouses(r);
			respMsgObj(response, r);	
		} catch (Exception e) {
			log.error(" 【首页轮播图】....发生异常");  
			errorMsg(response ,e);
		}
	}	
	 
}
