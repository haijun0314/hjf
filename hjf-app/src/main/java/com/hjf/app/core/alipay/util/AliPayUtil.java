
package com.hjf.app.core.alipay.util;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;

import com.hjf.app.core.util.ConfigUtil;

 
public class AliPayUtil {
	public static  Logger logger = Logger.getLogger(AliPayUtil.class);
	
	 /**
	  * 
	  */
	 public static  String buildUrl(String merchantCode,Integer payMoudle) {
		 String host_url      = ConfigUtil.server_app_host;
		 return host_url;	
	 }
	 
	 /**
	  * 返回支付结果参数
	  */
	public static Map buildNotifyParams(HttpServletRequest request ) throws UnsupportedEncodingException {
		Map<String,String> params = new HashMap<String,String>();
		Map requestParams = request.getParameterMap(); //获取支付宝GET过来反馈信息
		for (Iterator iter = requestParams.keySet().iterator(); iter.hasNext();) {
			String name = (String) iter.next();
			String[] values = (String[]) requestParams.get(name);
			String valueStr = "";
			for (int i = 0; i < values.length; i++) {
				valueStr = (i == values.length - 1) ? valueStr + values[i]
						: valueStr + values[i] + ",";
			}
			//乱码解决，这段代码在出现乱码时使用。如果mysign和sign不相等也可以使用这段代码转化
			//valueStr = new String(valueStr.getBytes("ISO-8859-1"), "utf-8");
			params.put(name, valueStr);
		}
		return params;
	}	 
	 
	 
	 
	 
	
}
