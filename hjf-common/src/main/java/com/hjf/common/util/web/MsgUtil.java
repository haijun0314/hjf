package com.hjf.common.util.web;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;

import com.hjf.base.LogUtil;
import com.hjf.base.exception.CodeUtil;
import com.hjf.common.util.JsonUtil;
 
/**
 * 【功能说明】： 页面操作返回消息
 * @author lihaijun
 * 【创建时间】2017-05-25
 */
public class MsgUtil {
	 
	 /**
	  * 操作信息
	  */
	 public static void operSuccess(HttpServletResponse response){
			  operSuccess(response,CodeUtil.success);
	 } 
	 
	 /**
	  * 操作成功信息
	  * @return
	  */
	 public static void operSuccess(HttpServletResponse response,String code){
		 	Map msg=new HashMap();
			msg.put("msg", CodeUtil.getCodeMsg(code));
			msg.put("success",true);
			String msgJson=JsonUtil.obj2Json(msg);	 
			ResponseUtils.renderJson(response,msgJson);
	 }	 
	 
	 /**
	  * 操作成功信息
	  * @return
	  */
	 public static void operMsg(HttpServletResponse response,String msg){
			Map jsonObject=new HashMap();
			jsonObject.put("msg",msg);
			jsonObject.put("success",true);
			String msgJson=JsonUtil.obj2Json(jsonObject);	 
			ResponseUtils.renderJson(response,msgJson);
	 }	 
	  
	 
	 
	 
	 /**
	  * 操作信息
	  */
	 public static void operFail(HttpServletResponse response,Exception e){
		 	operFail(response,  e,CodeUtil.error);
	 } 	 
	 
	 /**
	  * 操作信息
	  */
	 public static void operFail(HttpServletResponse response,String code){
		 	operFail(response,  null,code);
	 } 
	 /**
	  * 操作信息
	  */
	 public static void operFail(HttpServletResponse response){
		 	operFail(response,  null,CodeUtil.error);
	 } 
	 
	 
	 /**
	  * 操作失败信息
	  * @return
	  */
	 public static void operFail(HttpServletResponse response,Exception e,String code){
		    if (e!=null) {
		    	LogUtil.getLogger().error(e.getMessage());
			}
		    String msg= CodeUtil.getCodeMsg(code);
		    if (StringUtils.isBlank(msg)) {
		    	msg=code;
			}
		    Map jsonObject=new HashMap();
			jsonObject.put("msg",msg);
			jsonObject.put("success",false);
			String msgJson=JsonUtil.obj2Json(jsonObject);	 
			ResponseUtils.renderJson(response,msgJson);
	 }		 
	  
}
