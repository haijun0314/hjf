package com.hjf.app.service.impl;
import java.math.BigDecimal;
import java.util.Date;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hjf.app.dao.FinanceBillDAO;
import com.hjf.app.dao.FinancePayOrderDAO;
import com.hjf.app.entity.FinanceBill;
import com.hjf.app.service.AccountService;
import com.hjf.app.service.ConfigService;
import com.hjf.app.service.FinanceService;
import com.hjf.base.mybatis.BaseService;
import com.hjf.common.util.TimeUtil;

 

/**
 * 财务管理
 */
@Service
@Transactional
public class FinanceServiceImpl extends BaseService implements FinanceService {
	@Resource FinanceBillDAO	   financeBillDAO;
	@Resource FinancePayOrderDAO   financePayOrderDAO;
	@Resource ConfigService 	   configService;
	@Resource AccountService       accountService;
	
	 

	/**
	 * 添加财务变化信息
	 * billType账单枚举 0租赁1买玩具 2、买年卡 3 卖玩具 4 退押金 5提现
	 */
	public void addBill(Integer accountId,Integer dataId,String  remark,Double  money,String  billType) {
		FinanceBill f= new FinanceBill();
		f.setAccountId(accountId);
		f.setBillDate(TimeUtil.formatDateYMD(new Date()));
		f.setRemark(remark);
		f.setMoney(money);
		f.setBillType(billType);
		f.setDataId(dataId);
		financeBillDAO.save(f);
	}
 
	
	
}
