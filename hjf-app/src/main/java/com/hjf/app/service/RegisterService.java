package com.hjf.app.service;

import com.hjf.app.core.bean.reqBean.RegisterReqBean;
import com.hjf.app.core.bean.respBean.RegisterRespBean;

public interface RegisterService {
	 
	//【账户注册】
	public RegisterRespBean register( RegisterReqBean  q,RegisterRespBean r ) ;
	 
	 
}
