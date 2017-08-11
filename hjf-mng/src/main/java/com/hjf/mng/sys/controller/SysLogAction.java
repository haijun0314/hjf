package com.hjf.mng.sys.controller;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hjf.base.spring.BaseAction;
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
	String layout      ="framework/log/layout";
	String dataList    ="framework/log/dataList";
	String detail      ="framework/log/detail";
 
		
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
}
