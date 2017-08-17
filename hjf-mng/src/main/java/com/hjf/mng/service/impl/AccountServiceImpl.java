package com.hjf.mng.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hjf.base.model.PageModel;
import com.hjf.base.mybatis.BaseService;
import com.hjf.mng.dao.AccountDAO;
import com.hjf.mng.service.AccountService;
/**
 * 功能说明:【账户信息服务实现类】
 * 作    者：lihaijun
 * 创建日期：2017-08-17
 */
@Service
@Transactional 
public class AccountServiceImpl   extends BaseService implements AccountService {
	@Resource AccountDAO 	accountDAO;
	 
	/**
	 * 用户列表 -lp
	 */
	public PageModel getAccountPageList( PageModel p){
		p = accountDAO.queryPageList(p);
		return p;
	}		
	
	 
}
