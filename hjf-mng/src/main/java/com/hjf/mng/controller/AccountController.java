package com.hjf.mng.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hjf.base.spring.BaseAction;
import com.hjf.mng.service.AccountService;

/**
 * 功能说明:【账户信息服务控制类】
 * 作    者：lihaijun
 * 创建日期：2017-08-17
 */
@Controller
@RequestMapping("/account")
public class AccountController extends BaseAction{
	@Resource AccountService 		 accountService;
	String layout      ="page/account/layout";
	String dataList    ="page/account/dataList";
	 
	/**
	 * 个人账户查询列表
	 */
	@RequestMapping(params = "gridView")
	public ModelAndView gridView(Model model,HttpServletRequest request,HttpServletResponse response) throws Exception{
		pm=getPageInfo(new String[] {"account","keyword"},request); //分页参数
		pm.setPageSize(20);
		pm = accountService.getAccountPageList(pm);//查询数据	
		ModelAndView mav = null;
		if(pageRequest(request)){
			mav = new ModelAndView(layout);	
		}else{
			mav = new ModelAndView(dataList);
		}
		mav.addObject("pm", pm);
		return mav;
	}
	
	
	 
	 
}
