package com.hjf.app.service.impl;

import java.util.List;

/**
 * 功能说明:【账户信息】
 * 作    者：lihaijun
 * 创建日期：2014-11-21
 */
import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hjf.app.core.bean.reqBean.AccountAddressReqBean;
import com.hjf.app.core.bean.reqBean.AccountReqBean;
import com.hjf.app.core.bean.respBean.AccountRespBean;
import com.hjf.app.core.util.AccountUtil;
import com.hjf.app.core.util.SecUtil;
import com.hjf.app.dao.AccountAddressDAO;
import com.hjf.app.dao.AccountDAO;
import com.hjf.app.enmu.AccountLevel;
import com.hjf.app.entity.Account;
import com.hjf.app.entity.AccountAddress;
import com.hjf.app.service.AccountService;
import com.hjf.base.exception.CodeUtil;
import com.hjf.base.mybatis.BaseService;
import com.hjf.base.mybatis.Query;
import com.hjf.common.bean.BaseRespBean;
import com.hjf.common.enums.DefaultStatus;
import com.hjf.common.util.JsonUtil;
@Service
@Transactional 
public class AccountServiceImpl   extends BaseService implements AccountService {
	@Resource AccountDAO accountDAO;
	@Resource AccountAddressDAO accountAddressDAO;
	
	/**
	 * 【查询地址】
	 */
	public AccountAddress getAddress(AccountAddress a)	{
		a=(AccountAddress) accountAddressDAO.getObjById(a.getAddressId());
		return a;
	}
	
	/**
	 * 查询地址
	 */
	public BaseRespBean 	addressList()	{
		Query query=new Query();
		query.append("accountId", AccountUtil.getMyId());
		List datas=accountAddressDAO.queryList(query);
		r.setDatas(datas);
		r.success();
		return r;
	}

	/**
	 * 【设置默认地址】
	 */
	public BaseRespBean addressDefault(AccountAddress a)	{
		a.setIsDefault(DefaultStatus.No.getValue());
		a.setAccountId(AccountUtil.getMyId());
		accountAddressDAO.update(a, "updateByAccountId");
		a.setIsDefault(DefaultStatus.Yes.getValue());
		accountAddressDAO.updateById(a);
		r.success();
		return r;
	}	
	
	/**
	 * 【删除地址】
	 */
	public BaseRespBean addressDelete(AccountAddress a)	{
		accountAddressDAO.logicDelete(a);
		r.success();
		return r;
	}	
	
		
	
	
	/**
	 * 添加地址
	 */
	public BaseRespBean addressAdd(AccountAddressReqBean q)	{
		AccountAddress a=new AccountAddress ();
		copyProperties(a, q);
		List<String> codes=JsonUtil.json2List(q.getCityCodes(), String.class);
		List<String> names=JsonUtil.json2List(q.getCityNames(), String.class);
		a.setCityCode(codes.get(1));
		a.setCityName(names.get(1));
		a.setProvinceCode(codes.get(0));
		a.setProvinceName(names.get(0));
		a.setQuCode(codes.get(2));
		a.setQuName(names.get(2));
		a.setAddressDetail(q.getCityNameFull()+" "+q.getAddress());
		a.setAccountId(AccountUtil.getMyId());
		a.setCityNameFull(q.getCityNameFull());
		accountAddressDAO.save(a);
		r.success();
		return r;
	}
	
	
	/**
	 * 更新地址
	 */
	public BaseRespBean addressUpdate(AccountAddressReqBean q)	{
		AccountAddress a=new AccountAddress ();
		copyProperties(a, q);
		List<String> codes=JsonUtil.json2List(q.getCityCodes(), String.class);
		List<String> names=JsonUtil.json2List(q.getCityNames(), String.class);
		if(codes!=null&&codes.size()>0){
			a.setProvinceCode(codes.get(0));
			a.setCityCode(codes.get(1));
			a.setQuCode(codes.get(2));
		}
		if(names!=null&&names.size()>0){
			a.setCityName(names.get(1));
			a.setProvinceName(names.get(0));
			a.setQuName(names.get(2));
		}
		a.setAddressDetail(q.getCityNameFull()+" "+q.getAddress());
		a.setAccountId(AccountUtil.getMyId());
		a.setCityNameFull(q.getCityNameFull());
		a.setAddressId(q.getAddressId());
		accountAddressDAO.updateById(a);
		r.success();
		return r;
	}
	 
	/**
	 * 【设置密码】
	 */
	public BaseRespBean setPassword(AccountReqBean q)	{
		String newPass=SecUtil.encrypt(q.getPassword());
		String	orgPass=SecUtil.encrypt(q.getOrgPassword());
		Account org=getAccount(AccountUtil.getMyId());
		if (!orgPass.equals(org.getPassword())) {
			r.fail(CodeUtil.e_1101);
			return  r;
		}
		Account a=new Account();
		a.setAccountId(AccountUtil.getMyId());
		a.setPassword(newPass);
		int ret=accountDAO.updateById(a);
		if (ret<0) {
			log.error("【设置密码】..."+a.getAccountId()+"发生异常...");
			r.fail();
			return r;
		}
		r.success();
		return r;
	}	
	
	
	
 
	/**
	 * 【更新自己账户信息】
	 */
	public BaseRespBean update(Account a){
		a.setAccountId(AccountUtil.getMyId());
		int ret=accountDAO.updateById(a);
		if (ret<0) {
			log.error("【更新自己账户信息】..."+a.getAccountId()+"发生异常...");
			r.fail();
			return r;
		}
		r.success();
		return r;
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
