package com.hjf.app.service;

import com.hjf.app.core.bean.reqBean.NoteReqBean;
import com.hjf.app.core.bean.respBean.NoteDetailRespBean;
import com.hjf.base.model.PageBean;
import com.hjf.common.bean.BaseRespBean;

public interface NoteService {
	
	
	//【添加笔记】
	public BaseRespBean addNote(NoteReqBean q,BaseRespBean r);		 
	//【笔记详情】
	public NoteDetailRespBean detail(NoteReqBean q,NoteDetailRespBean r);	
	//【查询笔记列表】【主页】
	public BaseRespBean noteList(PageBean  		  pb,BaseRespBean r);	
	
}
