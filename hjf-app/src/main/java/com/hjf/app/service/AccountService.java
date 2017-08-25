package com.hjf.app.service;

import com.hjf.app.core.bean.respBean.AccountRespBean;
import com.hjf.app.entity.Account;
import com.hjf.common.bean.BaseRespBean;
/**
 * 功能说明:【账户信息】
 * 作    者：lihaijun
 * 创建日期：2017-05-11
 */
public interface AccountService {
	//【更新账户信息】
	public BaseRespBean update(Account q)	;	 
	//【查看账户信息】
	public AccountRespBean myInfo(AccountRespBean r)	;	
	//【查看账户信息】
	public Account getAccount(Integer accountId)	;	
	//【查看账户信息】
	public Account getAccountByTelephone(String telephone)	;	
	public Account addAccount(Account a)	;
}
