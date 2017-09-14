package com.hjf.app.service;

import com.hjf.app.core.bean.reqBean.AccountAddressReqBean;
import com.hjf.app.core.bean.reqBean.AccountReqBean;
import com.hjf.app.core.bean.respBean.AccountRespBean;
import com.hjf.app.entity.Account;
import com.hjf.app.entity.AccountAddress;
import com.hjf.common.bean.BaseRespBean;
/**
 * 功能说明:【账户信息】
 * 作    者：lihaijun
 * 创建日期：2017-05-11
 */
public interface AccountService {
	//【设置密码】
	public BaseRespBean setPassword(AccountReqBean q)	;	 
	//【更新账户信息】
	public BaseRespBean update(Account q)	;	 
	//【查看账户信息】
	public AccountRespBean myInfo(AccountRespBean r)	;	
	//【查看账户信息】
	public Account getAccount(Integer accountId)	;	
	//【查看账户信息】
	public Account getAccountByTelephone(String telephone)	;	
	//【添加账户】
	public Account addAccount(Account a)	;
	//【查询地址】
	public BaseRespBean 	addressList()	;
	//【添加地址】
	public BaseRespBean addressAdd(AccountAddressReqBean a)	;
	//【更新地址】
	public BaseRespBean addressUpdate(AccountAddressReqBean a)	;
	//【设置默认地址】
	public BaseRespBean addressDefault(AccountAddress a)	;
	//【删除地址】
	public BaseRespBean addressDelete(AccountAddress a)	;
	//【查询地址】
	public AccountAddress getAddress(AccountAddress a)	;
		
	
	
	
				
}
