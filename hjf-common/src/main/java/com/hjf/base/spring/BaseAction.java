package com.hjf.base.spring;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

import com.hjf.base.LogUtil;
import com.hjf.base.exception.CodeUtil;
import com.hjf.base.model.PageBean;
import com.hjf.base.model.PageModel;
import com.hjf.base.mybatis.Query;
import com.hjf.common.bean.BaseRespBean;
import com.hjf.common.enums.ActionType;
import com.hjf.common.util.JsonUtil;
import com.hjf.common.util.web.RequestUtils;
import com.hjf.common.util.web.ResponseUtils;

@Controller  
public class BaseAction {
	public BaseRespBean r=new BaseRespBean();
	public Logger log = LogUtil.getLogger();	
	protected Query query = new Query();
	public    PageModel pm=new PageModel();
	public    ModelAndView  page_404=new ModelAndView("error/error_404");
	 
	/**
	 * 系统错误返回
	 */
	public void   errorMsg(HttpServletResponse response){
		BaseRespBean brb=new BaseRespBean();
		brb.fail(CodeUtil.error);
		String jsonStr=JsonUtil.obj2Json(brb);
		ResponseUtils.renderJson(response,jsonStr);
	}		
	
	
	/**
	 * 系统错误返回
	 */
	public void   errorMsg(HttpServletResponse response,Exception e){
		log.error("系统错误..."+e.getMessage());
		log.error("系统错误..."+e.getStackTrace());
		BaseRespBean brb=new BaseRespBean();
		brb.fail(CodeUtil.error);
		String jsonStr=JsonUtil.obj2Json(brb);
		ResponseUtils.renderJson(response,jsonStr);
	}	
	/**
	 * ajax数据请求 返回
	 */
	public BaseRespBean   returnMsg(Object resultData)throws Exception{
		 return new BaseRespBean(resultData);
	}		

	public void  err_param(HttpServletResponse response,BaseRespBean r) {
		r.fail(CodeUtil.e_9999);
		String jsonStr=JsonUtil.obj2Json(r);
		ResponseUtils.renderJson(response,jsonStr);
		log.info(jsonStr);
	} 
  
	/**
	 * 获取分页信息
	 */
	public PageModel   getPageInfo(String [] params,HttpServletRequest request){
		Map paramMap=RequestUtils.getParameter(request, params);//取得页面查询参数
		PageBean.getPageInfo(request,pm);//获取分页参数
		pm.setParams(paramMap);
		return pm;
	}	
	
	 
	 
	/**
	 *  检查时提交数据还是请求跳转到jsp页面
	 */
	public boolean  pageRequest(HttpServletRequest request){
		String  reqType =request.getParameter("reqType");//【0 请求数据[执行方法 比如更新update]  1 跳转页面【比如跳转分页layout页面或者添加数据页面】  2 Ajax 请求数据】
		if (StringUtils.isBlank(reqType)) {
			return true;
		}else if(reqType.equals(ActionType.Page.getValue())) {
			return true;
		}
		return false;
	}	
	
	public void  respMsgObj(HttpServletResponse response,Object obj) {
		String jsonStr=JsonUtil.obj2Json(obj);
		ResponseUtils.renderJson(response,jsonStr);
	} 	 

	public Query getQuery() {
		return query;
	}

	public void setQuery(Query query) {
		this.query = query;
	}	 

			
}
