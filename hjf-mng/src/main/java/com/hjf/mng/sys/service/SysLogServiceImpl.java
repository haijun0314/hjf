package com.hjf.mng.sys.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hjf.base.model.PageModel;
import com.hjf.base.mybatis.BaseService;
import com.hjf.mng.sys.dao.SysLogClientDAO;
import com.hjf.mng.sys.dao.SysLogDAO;
import com.hjf.mng.sys.entity.SysLog;

/**
 * 系统管理--日志管理
 * @author lihaijun
 */
@Service("sysLogService")
@Transactional
public class SysLogServiceImpl extends BaseService implements SysLogService {
	@Resource SysLogDAO sysLogDAO;
	@Resource SysLogClientDAO sysLogClientDAO;
	private List logList=new ArrayList();
	 
	//分页查询客户端日志
	public PageModel getClientLogPageList(PageModel pm){
		return sysLogClientDAO.queryPageList(pm);
	}	
	
	
	
	/**
	 * 增加系统日志到缓存
	 */
	public void cacheLog(SysLog syslog){
		this.logList.add(syslog);
	}	
	/**
	 * 将缓存日志输入持久化到数据库
	 */
	public void persistenceCacheLog(){
		if (logList==null||logList.size()<1)return;
		for (int i = 0; i < logList.size(); i++) {
			SysLog syslog=(SysLog)logList.get(i);
			log.info("【添加系统操作日志】"+syslog.getLogMessage());
			sysLogDAO.saveNoSession(syslog);
		}
		logList.clear();
	}
	/**
	 * 分页查询系统管角色
	 */
	public PageModel getSysLogPageList(PageModel pm) {
		return sysLogDAO.queryPageList(pm);
	}


	/**
	 * 根据id查询日志信息
	 */
	public SysLog getSysLogById(Integer logId) {
		return (SysLog) sysLogDAO.getObjById(logId);
	}
}
