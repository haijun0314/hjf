package com.hjf.mng.common.util;

import com.hjf.common.util.PropUtils;


public class ConfigUtil {
	
	 public  static String  environment;
	 public  static String  sys_secKey;
	 public  static String  sys_appSecret;
	 public  static String  server_app_root;
	 public  static String  server_app_host_url;
	 public  static String  server_solr_host_url;
	 public  static String  sys_uploadPath;
	 public  static String  server_mng_host;
	 public  static boolean  sys_session_isLocal;
	 public  static String  sys_user_defaultPassword;
	 public  static String  sys_export;
	 public  static String  ActionType_View= "1";//页面跳转类型【跳转到页面】
	 public  static String  ActionType_Data= "0";//页面跳转类型【请求数据】	
	 public  static String  Session_global= "session_global";//页面跳转类型【请求数据】	
	 public static String   MenuBar_Code_Add= "001";

	 
	static{
		
		
		environment 		=PropUtils.getMsgStr("environment");
		sys_uploadPath		=PropUtils.getMsgStr("sys.uploadPath");
		sys_export			=PropUtils.getMsgStr("sys.export");
		sys_secKey			=PropUtils.getMsgStr("sys.secKey");
		sys_appSecret		=PropUtils.getMsgStr("sys.appSecret");
		server_app_root		=PropUtils.getMsgStr("server.app.root");
		server_app_host_url =PropUtils.getMsgStr("server.app.host.url");
		server_mng_host		=PropUtils.getMsgStr("server.mng.host");
		sys_session_isLocal	=PropUtils.getBooleanMsg("sys.session.isLocal");
		sys_user_defaultPassword=PropUtils.getMsgStr("sys.user.defaultPassword");
		server_solr_host_url =PropUtils.getMsgStr("server.solr.host.url");
		 
	}		
 
	

	 
	 
	 
}
