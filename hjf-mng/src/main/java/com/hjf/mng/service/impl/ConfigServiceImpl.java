package com.hjf.mng.service.impl;

/**
 * 功能说明:【系统配置服务类类】
 * 作    者：lihaijun
 * 创建日期：2017-08-17
 */
import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hjf.base.mybatis.BaseService;
import com.hjf.mng.dao.ConfigSystemDAO;
import com.hjf.mng.entity.ConfigSystem;
import com.hjf.mng.service.ConfigService;

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
	
	/**
	 * 更新系统配置
	 */
	public void updateConfigSystem(ConfigSystem config) {
		configSystemDAO.updateById(config);
	}
	
	 
}
