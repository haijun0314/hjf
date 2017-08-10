package com.hjf.mng.sys.service;

import java.util.List;

import com.hjf.base.model.PageModel;
import com.hjf.mng.sys.entity.SysLog;

public interface SysLogService {
	 
	 
	//增加系统日志到缓存
	public void addCacheLog(SysLog syslog);
	//将缓存日志输入持久化到数据库
	public void persistenceCacheLog();
	//分页查询系统管日志
	public PageModel getSysLogPageList(PageModel pm);
	
	//数据导出
	public List getExpData(PageModel pm);
	//根据id查询日志信息
	public SysLog getSysLogById(Integer logId);
}
