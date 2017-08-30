package com.hjf.app.core.bean.reqBean;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;

import com.hjf.common.bean.BaseReqBean;

public class AccountReqBean extends BaseReqBean{
	private String  password;//用户密码
	private String  orgPassword;
	/**
	 * 【账户登录参数验证】
	 */
	public boolean checkSetPass(HttpServletRequest request) {
		if (StringUtils.isBlank(orgPassword)) {
			log.error("【账户登录参数验证】 验证失败 orgPassword缺失 ");
			return  false;
		}
		if (StringUtils.isBlank(password)) {
			log.error("【账户登录参数验证】 验证失败 password缺失 ");
			return  false;
		}
		return true;
	}
	 
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	 
	public String getOrgPassword() {
		return orgPassword;
	}
	public void setOrgPassword(String orgPassword) {
		this.orgPassword = orgPassword;
	}

 
 
 
}
