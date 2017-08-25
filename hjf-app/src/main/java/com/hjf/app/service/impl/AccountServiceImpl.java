package com.hjf.app.service.impl;

/**
 * 功能说明:【账户信息】
 * 作    者：lihaijun
 * 创建日期：2014-11-21
 */
import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hjf.app.core.bean.reqBean.AccountReqBean;
import com.hjf.app.core.bean.respBean.AccountRespBean;
import com.hjf.app.core.util.AccountUtil;
import com.hjf.app.dao.AccountDAO;
import com.hjf.app.enmu.AccountLevel;
import com.hjf.app.entity.Account;
import com.hjf.app.service.AccountService;
import com.hjf.base.exception.CodeUtil;
import com.hjf.base.mybatis.BaseService;
@Service
@Transactional 
public class AccountServiceImpl   extends BaseService implements AccountService {
	@Resource AccountDAO accountDAO;
	
 
	/**
	 * 【更新自己账户信息】
	 */
	public void update(AccountReqBean q){
		try {
			Account c=new Account();
			copyProperties(c, q);
			int ret=accountDAO.updateById(c);
			if (ret<0) {
				log.error("【更新自己账户信息】..."+q.getAccountId()+"发生异常...");
			}
		} catch (Exception e) {
			log.error("【更新自己账户信息】..."+q.getAccountId()+"发生异常...");
			e.printStackTrace();
		}
	}
	
	/**
	 * 【查看他人账户信息】
	 */
	public AccountRespBean myInfo(AccountRespBean r){
		try {
			Account a =accountDAO.getAccountById(AccountUtil.getMyId());
			copyProperties(r, a);
			r.setLevel(AccountLevel.getName(a.getLevel()));
			r.setOrder_count_pay(4);
			r.setOrder_count_pinglun(6);
			r.setOrder_count_shouhuo(5);
		} catch (Exception e) {
			r.fail(CodeUtil.e_9996);
			log.error("【查看他人账户信息】..."+AccountUtil.getMyId()+"发生异常...");
			e.printStackTrace();
			return r;
		}
		r.success();
		return r;
	}	
	/**
	 * 【查看账户信息】
	 */
	public Account getAccount(Integer accountId)	{
		Account account =accountDAO.getAccountById(accountId);
		return account;
	}
	
	
	/**
	 * 【查看账户信息】
	 */
	public Account getAccountByTelephone(String telephone)	{
		Account account =(Account) accountDAO.getObjById(telephone, "findByTelephone");
		return account;
	}
	
	
	/**
	 * 【添加账户】
	 */
	public Account addAccount(Account a)	{
		return (Account) accountDAO.saveWithReturnId(a);
	}	
}
