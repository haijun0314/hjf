package com.hjf.app.service;

import com.hjf.app.core.bean.reqBean.LoginReqBean;
import com.hjf.app.core.bean.respBean.LoginRespBean;
import com.hjf.common.bean.BaseRespBean;

public interface LoginService {
	
	//【添加活动评论】
	public LoginRespBean weblogin(LoginReqBean q,LoginRespBean     r );	
	//【用户退出】
	public BaseRespBean weblogout(LoginReqBean q  );
	
		
	
	
}
