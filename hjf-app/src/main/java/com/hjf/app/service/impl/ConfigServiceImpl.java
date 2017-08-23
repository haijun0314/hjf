package com.hjf.app.service.impl;

/**
 * 功能说明:【系统配置服务类类】
 * 作    者：lihaijun
 * 创建日期：2017-08-17
 */
import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hjf.app.dao.ConfigSystemDAO;
import com.hjf.app.entity.ConfigSystem;
import com.hjf.app.service.ConfigService;
import com.hjf.base.mybatis.BaseService;

@Service
@Transactional
public class ConfigServiceImpl extends BaseService implements ConfigService {
	@Resource ConfigSystemDAO configSystemDAO;
	/**
	 * 查询系统配置
	 */
	public ConfigSystem getConfigSystem() {
		ConfigSystem cc = (ConfigSystem) configSystemDAO.getObjById(5);
		return cc;
	}	
	
	 
	
	 
}
