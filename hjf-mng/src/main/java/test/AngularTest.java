package test;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hjf.base.spring.BaseAction;
import com.hjf.common.util.JsonUtil;
import com.hjf.common.util.web.RequestUtils;
import com.hjf.common.util.web.ResponseUtils;
import com.hjf.mng.sys.service.SysUserService;
 
/**
 *  
 */
@Controller  
@RequestMapping("/angular.do") 
public class AngularTest extends BaseAction {
	@Resource	SysUserService sysUserService;
	 
	@RequestMapping(params = "getListData")   
	public void getListData(Model model,HttpServletRequest request,HttpServletResponse response)  throws Exception{
		Map paramMap=(HashMap)RequestUtils.getParameter(request, new String[] {});//取得页面查询参数
		pm=getPageInfo(new String[] {},  request);
		pm=sysUserService.getUserPageList(pm);//查询数据	 
		String json=JsonUtil.list2json(pm.getDatas());
		ResponseUtils.renderJson(response, json);
		
	} 	
	
	
	
	
	
}
