package com.hjf.common.threadLocal;

import com.hjf.base.model.MyUserDetails;


public class SessionManager {
    private static final ThreadLocal<MyUserDetails> local  = new ThreadLocal<MyUserDetails>();  
    
    
    
    //设置当前的session
    public static void setUserSession(MyUserDetails userDetails){
    	local.set(userDetails);
    }
    
    /**
     * 获得当前session
     * @return
     */
    public static MyUserDetails getUserSession(){
    	 return local.get();  
    }    
	
}
