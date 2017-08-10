package com.hjf.base.mybatis;

import java.io.Serializable;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hjf.base.LogUtil;

@Service
@Transactional 
public class BaseService<T, ID extends Serializable>  {
	public Logger log=LogUtil.getLogger();
	public  void errorMsg(Exception e) {
		log.error("发生系统异常错误。。。错误信息"+e.getMessage());
		log.error("发生系统异常错误。。。错误信息"+e.getStackTrace());
	}

	public boolean copyProperties	(Object target,Object original){
		try {
			BeanUtils.copyProperties(target,original);
		} catch (Exception e) {
			errorMsg(e);
			return  false;	
		} 
		return  true;
	}
	
	 
	  
	 
}
