package com.hjf.mng.common.util;

public class KeysUtil {
	public static String  Sms_Register				="sms:register:%s";     //注册短信
	public static String  Cus_Detail				="cus:session:%s";    	//用户缓存
	public static String  Cus_Id					="cus:id:%s";    	    //用户缓存
	public static String  Condition_Type			="condition:type:%s";   // 定制条件
	public static String  Msg_List 					="msg"; 				//消息缓存
	public static String  SystemConfig				="systemConfig";      	// 系统配置
	 
	
	
	public static String getSystemConfigKey( ) {
        return SystemConfig;
	}
	
	
	 
	
	 
 
    public static String getKey(String format, String id) {
        return String.format(format, id);
    }	

	public static String getSms_Register(String id) {
		return getKey(Sms_Register, id);
	}
	public static String getCusDetailKey(String id) {
		return getKey(Cus_Detail, id);
	}
	public static String getCusIdKey(String id) {
		return getKey(Cus_Id, id);
	} 
	 
	/**
	 * 定制条件
	 */
	public static String getConditionTypeKey(String id) {
		return  getKey(Condition_Type, id);
	}
	 
	public static String getMsgListKey() {
		return Msg_List;
	}
	 
	 
	
}

