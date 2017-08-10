package com.hjf.base.mybatis;

import java.util.HashMap;
import java.util.Map;

import org.apache.commons.lang.StringUtils;

import com.hjf.base.LogUtil;
import com.hjf.common.enums.OrderBy;
import com.hjf.common.util.beans.Conversion;

 

public class Query<T> {
	
	
	private Map<String, Object> params = new HashMap<String, Object>();
	private String orderBy = "";
	public Map<String, Object> getParams() {
		return params;
	}
	
	/**
	 * 将对象加入查询参数内
	 * @param bean 查询对象
	 */
	public void PutParams(T bean){
		try {
			if(bean == null){
				return;
			}
			params = Conversion.conversionToMapExcludeEmpty(bean);
			
		} catch (Exception e) {
			LogUtil.getLogger().error("组装查询参数错误", e);
		}
	}

	/**
	 * 单条加入查询条件
	 * @param key 字段名称
	 * @param value 值
	 * @return 查询条件
	 */
	public Query<T> append(String key, Object value) {
		params.put(key, value);
		return this;
	}

	public String getOrderBy() {
		return orderBy;
	}

	public Query<T> appendOrderBy(String param, OrderBy order) {
		if(StringUtils.isNotBlank(this.orderBy)){
			this.orderBy = this.orderBy+",";
		}
		this.orderBy = this.orderBy + param;
		switch (order) {
		case Desc:
			this.orderBy = this.orderBy + " desc";
			break;

		default:
			this.orderBy = this.orderBy + " asc";
			break;
		}
		return this;
	}

	 

}
