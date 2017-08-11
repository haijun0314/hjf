package com.hjf.mng.sys.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.commons.collections.MapUtils;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hjf.base.exception.CodeUtil;
import com.hjf.base.model.MyUserDetails;
import com.hjf.base.model.PageModel;
import com.hjf.base.mybatis.BaseService;
import com.hjf.base.mybatis.Query;
import com.hjf.common.bean.BaseRespBean;
import com.hjf.mng.sys.dao.SysRoleDAO;
import com.hjf.mng.sys.dao.SysUserDAO;
import com.hjf.mng.sys.dao.SysUserRoleDAO;
import com.hjf.mng.sys.entity.SysRole;
import com.hjf.mng.sys.entity.SysUser;
import com.hjf.mng.sys.entity.SysUserRole;

/**
 * 系统管理--管理员管理
 * @author lihaijun
 */
@Service
@Transactional
public class SysUserServiceImpl extends BaseService implements SysUserService {
	@Resource  SysUserDAO sysUserDAO;
	@Resource  SysRoleDAO sysRoleDAO;
	@Resource  SysUserRoleDAO sysUserRoleDAO;
	/**
	 * 检查是否已经存在
	 */
	public boolean checkUserName(String username){
		Query query =new Query();
		query.append("userName", username);
		List<SysUser>  list =  sysUserDAO.queryList(query);;
		if (list!=null&&list.size()>0) {
			return true;
		}
		return false;
	}	
	
	
	/**
	 * 根据管理员ID查询
	 */
	public SysUser getSysUserById(Integer userid){
		SysUser sysUser=(SysUser) sysUserDAO.getObjById(userid);
		List userRoleList=sysUserRoleDAO.queryList("queryUserRoles",userid);
		String roles="";
		String roledesc="";
		for (int i = 0; i <userRoleList.size()&&userRoleList.size()>0; i++) {
			Map userrole=(Map)userRoleList.get(i);
			String romeName=MapUtils.getString(userrole, "roleDesc","");
			Integer roleId=MapUtils.getInteger(userrole, "roleId");
			if (i==0) {
				roles=roleId+"";
				roledesc=romeName;
			}else {
				roledesc=roledesc+","+romeName;
				roles=roleId+",";
			}
		}	
		sysUser.setRoleDesc(roledesc);
		sysUser.setRoles(roles);
		return  sysUser;
	}
	 
	/**
	 * 分页查询系统管理员
	 */
	public PageModel getUserPageList(PageModel pm){
		return sysUserDAO.queryPageList(pm);
	}
	/**
	 * 添加系统用户
	 */
	public BaseRespBean addSysUser(SysUser sysUser) {
		 sysUser.setCreatedBy(MyUserDetails.getCurUserDetails().getUsername());
		 sysUser=(SysUser) sysUserDAO.saveWithReturnId(sysUser);
		 if (sysUser==null) {
			log.error("【添加系统账户】  失败sysUser="+sysUser.getUserName());
			r.fail(CodeUtil.error);
			return r;
		 }
		 String rolestr=sysUser.getRoles();
		 if (StringUtils.isNotBlank(rolestr)) {
			String roles[]=StringUtils.split(rolestr,",");
			for (int j = 0; j < roles.length; j++) {
				SysRole role=new SysRole();
				role.setRoleId(new Integer(roles[j]));
				SysUserRole userRole=new SysUserRole();
				userRole.setRoleId(role.getRoleId());
				userRole.setUserId(sysUser.getUserId());
				sysUserRoleDAO.save(userRole);
			}
		}
		return r;
	}

 
	
	/**
	 * 更新系统用户
	 */
	public BaseRespBean update(SysUser sysUser) {
		int ret=sysUserDAO.updateById(sysUser);
		if (ret<0) {
			log.error("【更新系统账户】发生异常;账户编号"+sysUser.getUserId());
			r.fail(CodeUtil.error);
			return r;
		}
		return r;
	}	
	
	/**
	 * 删除用户【包括删除关联角色信息】
	 */
	public BaseRespBean delete(Integer userid) {
		int ret= sysUserRoleDAO.deleteByID(userid, "deleteByUserId");
		if(ret<0){
			log.error("删除系统账户发生异常;账户编号"+userid);
			r.fail(CodeUtil.error);
			return r;
		}
		ret=sysUserDAO.deleteByID(userid);
		if(ret<0){
			log.error("删除系统账户发生异常;账户编号"+userid);
			r.fail(CodeUtil.error);
			return r;
		}
		return r;
	}	
	/**
	 * 系统用户详情
	 */
	public SysUser detail(Integer userid){
		SysUser sysUser =(SysUser) sysUserDAO.getObjById(userid);
		String roleNames="";
		if (sysUser.getIsSuper().equals("1")) {
			List userRoleList=sysUserRoleDAO.queryList("queryUserRoles",userid);
			for (int i = 0; i <userRoleList.size()&&userRoleList.size()>0; i++) {
				Map userrole=(Map)userRoleList.get(i);
				String romeName=MapUtils.getString(userrole, "roleDesc","");
				if (i==0) {
					roleNames=romeName;
				}else {
					roleNames=roleNames+"、"+romeName;
				}
			}
			sysUser.setRoleDesc(roleNames);
		}
		return sysUser;
	}



	 
  
}
