package com.hjf.mng.sys.controller;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hjf.base.spring.BaseAction;
import com.hjf.common.util.TimeUtil;
import com.hjf.mng.sys.entity.SysLog;
import com.hjf.mng.sys.service.SysLogService;
 
/**
 * 系统日志处理类
 * author lihaijun
 * createTime   2014-11-21
 */
@Controller  
@RequestMapping("/sys/sysLog")
public class SysLogAction extends BaseAction{
	@Resource	SysLogService sysLogService;
	String layout      ="framework/log/sys/layout";
	String dataList    ="framework/log/sys/dataList";
	String detail      ="framework/log/sys/detail";
 
		
	String layout_client      ="framework/log/client/layout";
	String dataList_client    ="framework/log/client/dataList";	
	
	
	
	/**
	 * 系统日志详情
	 */
	@RequestMapping(params = "detail")   
	public ModelAndView sysDetail(SysLog sysLog ,HttpServletRequest request,HttpServletResponse response) throws Exception {
		try {
			sysLog = sysLogService.getSysLogById(sysLog.getLogId());
			ModelAndView  mav=new ModelAndView(detail);
			mav.addObject("sysLog", sysLog);
			return mav;
		} catch (Exception e) {
			return page_404;
		}
	}	
	
	/**
	 *  系统日志查询页面
	 */
	@RequestMapping(params = "gridView")   
	public ModelAndView gridView(Model model,HttpServletRequest request,HttpServletResponse response)  throws Exception{
		pm=getPageInfo(new String[] {"logMessage", "operResult"},request);
		pm.setPageSize(30);
		pm=sysLogService.getSysLogPageList(pm);//查询数据	
		ModelAndView mav=null;
		if (pageRequest(request)) {
			 mav=new ModelAndView(layout);
		}else { 
			 mav=new ModelAndView(dataList);
		}
		mav.addObject("pm", pm);
		return mav;  
	} 
	
	
	/**
	 *  客户端日志管理列表
	 */
	@RequestMapping(params = "clientLogList")   
	public ModelAndView clientLogList(Model model,HttpServletRequest request,HttpServletResponse response)  throws Exception{
		pm=getPageInfo(new String[] {"content", "startTime"},request);
		pm.setPageSize(30);
		String endTime=request.getParameter("endTime");
		pm.setPageSize(30);
		if(StringUtils.isNotBlank(endTime)){
			endTime=TimeUtil.getEndDateStr(endTime);
			pm.append("endTime",endTime);
		}
		pm=sysLogService.getClientLogPageList(pm);//查询数据	
		ModelAndView mav=null;
		if (pageRequest(request)) {
			 mav=new ModelAndView(layout_client);
		}else { 
			 mav=new ModelAndView(dataList_client);
		}
		mav.addObject("pm", pm);
		return mav;  
	}	
	
	
	
}
