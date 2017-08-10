package com.hjf.app.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hjf.app.core.bean.reqBean.NoteReqBean;
import com.hjf.app.core.bean.respBean.NoteDetailRespBean;
import com.hjf.app.dao.NoteDAO;
import com.hjf.app.entity.Note;
import com.hjf.app.service.NoteService;
import com.hjf.base.exception.CodeUtil;
import com.hjf.base.model.PageBean;
import com.hjf.base.mybatis.BaseService;
import com.hjf.common.bean.BaseRespBean;
@Service
@Transactional 
public class NoteServiceImpl extends BaseService  implements NoteService {
	@Resource NoteDAO noteDAO;
	
	/**
	 * 【添加笔记】
	 */
	public BaseRespBean addNote(NoteReqBean q,BaseRespBean r){
		Note note=new Note();
		note.setContent(q.getContent());
		note.setTitle(q.getTitle());
		note.setAccountId(q.getAccountId());;
		noteDAO.saveWithReturnId(note);
		r.success();		
		return  r;
	}	
	
	/**
	 * 【笔记详情】
	 */
	public NoteDetailRespBean detail(NoteReqBean q,NoteDetailRespBean r){
		Map noteMap=(Map) noteDAO.getById(q.getNoteId(),"noteDetail");
		if (noteMap==null||noteMap.isEmpty()) {
			r.fail(CodeUtil.e_9996);
			return r;
		}
		copyProperties(r, noteMap);
		r.success();
		return r;
	}	
	
	 
	
	/**
	 * 【用户列表】
	 */
	public BaseRespBean noteList(PageBean pb,BaseRespBean r){
		pb =noteDAO.queryPageList(pb);
		List list=pb.getDatas();
		r.setDatas(list);
		r.success();
		return r;
	}
	

}
