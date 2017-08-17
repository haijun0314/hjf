package com.hjf.mng.dao;

import org.springframework.stereotype.Repository;

import com.hjf.base.mybatis.BaseIbatisDAO;
import com.hjf.mng.entity.Account;
 
/**
 * 功能说明:【个人账户持久对象】
 * 作    者：lihaijun
 * 创建日期：2017-08-17
 */
@Repository
public class AccountDAO extends BaseIbatisDAO{
	
	/**
	 *扣减账户金额
	 */
	public int addMoney( Account c){
		return update(c,"addMoney");
	}	 
	
	 
	/**
	 * 根据sessionId查询用户
	 */
	public Account getByTelephone(String  telephone) {
		return (Account)getObjById(telephone,"findByTelephone");
	}		
	
	/**
	 * 根据sessionId查询用户
	 */
	public Account getBySessionId(String  sessionId) {
		return (Account)getObjById(sessionId,"findBySessionId");
	}	
	/**
	 * 根据邀请码查询用户
	 */
	public Account getByInviteCode(String  inviteCode) {
		return (Account)getObjById(inviteCode,"findByInviteCode");
	}
	/**
	 * 根据账户查询用户
	 */
	public Account getAccountById(Integer accountId) {
		return (Account)getObjById(accountId);
	}	
	 
	 
	public Class getEntityClass() {
		return Account.class;
	}	
	 
}