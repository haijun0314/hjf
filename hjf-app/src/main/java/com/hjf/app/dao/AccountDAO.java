package com.hjf.app.dao;

import org.springframework.stereotype.Repository;

import com.hjf.app.entity.Account;
import com.hjf.base.mybatis.BaseIbatisDAO;

/**
 * 功能说明:【账户持久类】
 * 作    者：lihaijun
 * 创建日期：2017-08-17
 */
@Repository
public class AccountDAO extends BaseIbatisDAO{
	
	 
	/**
	 * 根据sessionId查询用户
	 */
	public Account getBySessionId(String  sessionId) {
		return (Account)getObjById(sessionId,"findBySessionId");
	}	
	/**
	 *【重设账户登录密码】
	 */
	public int resetPassword( Account c){
		return update(c,"resetPassword");
	}	
	
	/**
	 * 根据sessionId查询用户
	 */
	public Account getAccountById(Integer accountId) {
		return (Account)getObjById(accountId);
	}	
	 
	 
	public Class getEntityClass() {
		return Account.class;
	}	
	 
}