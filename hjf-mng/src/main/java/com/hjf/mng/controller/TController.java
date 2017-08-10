package com.hjf.mng.controller;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hjf.base.LogUtil;
import com.hjf.base.spring.BaseAction;
import com.hjf.common.util.web.ResponseUtils;
import com.hjf.mng.common.jms.JmsSender;
/**
 * 
 */
@Controller  
@RequestMapping("/t") 
public class TController extends BaseAction {
	Logger logger =LogUtil.getLogger();
	@Resource  private JmsSender jmsSender;

    @RequestMapping(params = "jmsSend")
    @ResponseBody
    public void jmsSend(HttpServletResponse response,Model model,HttpServletRequest request) {
    	String   data =request.getParameter("data");
        jmsSender.sendMessage(data);
        ResponseUtils.renderJson(response, "0000");
    }

    
	 
}
