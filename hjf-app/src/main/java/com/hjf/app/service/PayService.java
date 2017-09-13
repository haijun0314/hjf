package com.hjf.app.service;

import com.hjf.app.core.bean.reqBean.PayReqBean;
import com.hjf.app.core.bean.respBean.FinanceRespBean;

public interface PayService {
	public FinanceRespBean  create(PayReqBean  q,FinanceRespBean r)	;
	public FinanceRespBean   notify(String out_trade_no,String trade_no  ,boolean isSuccess);
}
