package com.hjf.app.service;

import java.math.BigDecimal;

public interface FinanceService {
	//添加财务变化信息
	public void addBill(Integer accountId,Integer dataId,String  remark,Double  tradeMoney,String  billType) ;


}
