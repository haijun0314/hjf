package com.hjf.mng.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hjf.base.spring.BaseAction;
 
/**
 * 
 */
@Controller  
@RequestMapping("/index") 
public class IndexController extends BaseAction {
	 
	/**
	 *  首页
	 */
	@RequestMapping(params = "sysIndex")  
	public String sysIndex() {
		 
		return "page/index";
	}    	
 
	
	
	
	
	
	
	
	 
}
