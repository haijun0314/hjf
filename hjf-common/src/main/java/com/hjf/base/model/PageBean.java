package com.hjf.base.model;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
public class PageBean {
	
	public static PageModel getPageInfo(HttpServletRequest request,PageModel pm){
			String pageNum=request.getParameter("page");
			String numPerPage=request.getParameter("rows");
		    if(StringUtils.isBlank(pageNum)){
		    	pageNum="1";
		    }
		    if(StringUtils.isBlank(numPerPage)){
		    	numPerPage="10";
		    }
		    int page=Integer.parseInt(pageNum);
		    
			Integer rp=pm.getPageSize();
			if(rp==null){
				rp=Integer.parseInt(numPerPage);
			}
			 
			String qtype = request.getParameter("qtype"); 
			String query=request.getParameter("query");
		    String orderField = request.getParameter("sort"); //�����ֶ�
		    String orderDirection = request.getParameter("order");//������
		    String  sortby=null;
		    if( StringUtils.isNotBlank(orderDirection) && StringUtils.isNotBlank(orderField)){
		    	sortby=orderField+" "+orderDirection;
		    }
		    if(StringUtils.isBlank(query)){
		    	query=null;
		    }
		    int start=(page-1)*rp;
			int end=start+rp-1;
			pm.setStartRow(start);
			pm.setEndRow(end);
			pm.setCurPage(page);
			pm.setPageSize(rp);
			pm.setQtype(qtype);
			pm.setQuery(query);
			pm.setSortby(sortby);
			return pm;
	}
	
	
	
	private  Integer startRow;
	private  Integer endRow;
	private  Integer pageSize;
	private  List datas;
	private Map<String, Object> params = new HashMap<String, Object>();

	public PageBean (HttpServletRequest request) {
		initPage(request);
	}
	/**
	 * 单条加入查询条件
	 * @param key 字段名称
	 * @param value 值
	 * @return 查询条件
	 */
	public void append(String key, Object value) {
		params.put(key, value);
		 
	}	
	 
	public  void initPage(HttpServletRequest request){
		String pageNum=request.getParameter("page");
		String pageSize=request.getParameter("pageSize");
	    if(StringUtils.isBlank(pageNum)){
	    	pageNum="0";
	    }
	    if(StringUtils.isBlank(pageSize)){
	    	pageSize="10";
	    }
	    int page=Integer.parseInt(pageNum);
		int rp=Integer.parseInt(pageSize);
	    int start=(page)*rp;
		int end=start+rp-1;
		setStartRow(start);
		setEndRow(end);
		setPageSize(rp);
		 
}

	
	public Map<String, Object> getParams() {
		return params;
	}
	public void setParams(Map<String, Object> params) {
		this.params = params;
	}
	public Integer getStartRow() {
		return startRow;
	}
	public void setStartRow(Integer startRow) {
		this.startRow = startRow;
	}
	public Integer getEndRow() {
		return endRow;
	}
	public void setEndRow(Integer endRow) {
		this.endRow = endRow;
	}
	public Integer getPageSize() {
		return pageSize;
	}
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}
	public List getDatas() {
		return datas;
	}
	public void setDatas(List datas) {
		this.datas = datas;
	}
	
	
	
	
	
	
	
	
	 
}
