package test;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hjf.base.spring.BaseAction;

import redis.clients.jedis.Jedis;
 
/**
 *  
 */
@Controller  
@RequestMapping("/redis.do") 
public class Redis extends BaseAction {
//	 
//	@RequestMapping(params = "saveData")   
//	public void saveData(Model model,HttpServletRequest request,HttpServletResponse response)  throws Exception{
//		RedisCacheUtil r=new RedisCacheUtil();
//		HashMap map=new HashMap();
//		map.put("sex", "男");
//		map.put("name", "李海军");
//		r.saveMap("001", map);
//	} 
//	@RequestMapping(params = "searchData")   
//	public void searchData(Model model,HttpServletRequest request,HttpServletResponse response)  throws Exception{
//		RedisCacheUtil r=new RedisCacheUtil();
//		
//		Map<String, String>  map=r.getAllMap("001");
//		String json=JsonUtil.obj2Json(map);
//		ResponseUtils.renderJson(response, json);
////		
//		
//	} 	
//	

	 public static void main(String[] args) {  
		  Jedis jedis; 
		 //连接redis服务器，192.168.0.100:6379
	        jedis = new Jedis("47.94.205.255", 6379);
	        //jedis.auth("Badi0314");
	        //权限认证
	        //-----添加数据----------  
	        jedis.set("name","xinxin");//向key-->name中放入了value-->xinxin  
	        System.out.println(jedis.get("name"));//执行结果：xinxin  
	        
	        
	 }	
	
	 
	
	
	
	
	
	
}
