package com.hjf.mng.common.util;

import java.util.List;
import java.util.Map;

import org.apache.commons.collections.MapUtils;
import org.apache.commons.lang.StringUtils;

public class DataUtil {
	public  static void  initPic(List list){
		for(int i=0;i<list.size();i++){
			Map map =(Map)list.get(i);
			String pic=MapUtils.getString(map, "pic");
			if (StringUtils.isNotBlank(pic)) {
				map.put("pic", ConfigUtil.server_app_host_url+pic);
			}
		}
	}
	 
	
}

