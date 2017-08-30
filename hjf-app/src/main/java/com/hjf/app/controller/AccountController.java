package com.hjf.app.controller;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hjf.app.core.bean.reqBean.AccountReqBean;
import com.hjf.app.core.bean.respBean.AccountRespBean;
import com.hjf.app.entity.Account;
import com.hjf.app.service.AccountService;
import com.hjf.base.spring.BaseAction;
 
/**
 * 功能说明:【用户信息】
 * 作    者：lihaijun
 * 创建日期：2017-08-23
 */
@Controller  
@RequestMapping("/account") 
public class AccountController extends BaseAction{
	@Resource AccountService    accountService;
	/**
	 * 【查询自己账户信息】
	 */
	@RequestMapping(params = "myInfo")   
	public void myInfo(HttpServletRequest request,HttpServletResponse response) {
		try {
			log.info("【查询自己账户信息】...");
			AccountRespBean    r =new AccountRespBean();
			r=accountService.myInfo(r);
			respMsgObj(response, r);
		} catch (Exception e) {
			log.error("【查询自己账户信息】...发生异常");
			errorMsg(response);
		}
	}	
	
	
	
	/**
	 * 【更新自己账户信息】
	 */
	@RequestMapping(params = "update")   
	public void update(Account a,HttpServletRequest request,HttpServletResponse response) {
		try {
			r=accountService.update(a);
			respMsgObj(response, r);
		} catch (Exception e) {
			log.error("【查询自己账户信息】...发生异常");
			errorMsg(response);
		}
	}	
	
	
	
	/**
	 * 【设置密码】
	 */
	@RequestMapping(params = "setPassword")   
	public void setPassword(AccountReqBean a,HttpServletRequest request,HttpServletResponse response) {
		try {
			if (!a.checkSetPass(request)) {
				err_param(response, r);
				return;
			}
			r=accountService.setPassword(a);
			respMsgObj(response, r);
		} catch (Exception e) {
			log.error("【设置密码】...发生异常");
			errorMsg(response);
		}
	}		
	
	
	
	
	
	
	
	
	
	
 
}
