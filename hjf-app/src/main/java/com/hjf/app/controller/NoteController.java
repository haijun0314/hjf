package com.hjf.app.controller;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hjf.app.core.bean.reqBean.NoteReqBean;
import com.hjf.app.core.bean.respBean.NoteDetailRespBean;
import com.hjf.app.service.NoteService;
import com.hjf.base.model.PageBean;
import com.hjf.base.spring.BaseAction;
import com.hjf.common.bean.BaseReqBean;
import com.hjf.common.bean.BaseRespBean;
 
/**
 * 功能说明:【笔记】
 * 作    者：lihaijun
 * 创建日期：2014-11-21
 */
@Controller  
@RequestMapping("/note") 
public class NoteController extends BaseAction{
	@Resource NoteService    noteService;
	
	/**
	 * 【添加笔记】
	 */
	@RequestMapping(params = "addNote")   
	public void addNote(HttpServletRequest request,HttpServletResponse response) {
		 
		try {
			BaseRespBean   r=new BaseRespBean();
			NoteReqBean    q=new NoteReqBean();
			if (!q.checkAddNoteParams(request)) {
					err_param(response, r);
				respMsgObj(response, r);
				return;
			}
			 
			r=noteService.addNote(q,r);
			super.respMsgObj(response, r);
		} catch (Exception e) {
			log.error("【添加笔记】.....发生异常");
			errorMsg(response);
		}
	}		
	
	/**
	 * 【笔记详情】
	 */
	@RequestMapping(params = "detail")   
	public void detail(HttpServletRequest request,HttpServletResponse response) {
		
		try {
			NoteDetailRespBean   r=new NoteDetailRespBean();
			NoteReqBean    q=new NoteReqBean();
			if (!q.checkDetailParams(request)) {
					err_param(response, r);
				respMsgObj(response, r);
				return;
			}
			 
			r=noteService.detail(q,r);
			super.respMsgObj(response, r);
		} catch (Exception e) {
			log.error("【添加笔记】.....发生异常");
			errorMsg(response);
		}
	}			
	
	/**
	 * 【我的笔记列表】
	 */
	@RequestMapping(params = "myNoteList")   
	public void myNoteList(HttpServletRequest request,HttpServletResponse response) {
		
		try {
			BaseRespBean   r=new BaseRespBean();
			PageBean      pb=new PageBean(request);
			BaseReqBean q=new BaseReqBean();
			pb.append("accountId", q.getAccountId());
			r=noteService.noteList(pb,r);
			super.respMsgObj(response, r);
		} catch (Exception e) {
			log.error("【查询笔记列表】【主页】.....发生异常");
			errorMsg(response);
		}
	}
	
	
	/**
	 * 【查询笔记列表】【主页】
	 */
	@RequestMapping(params = "noteList")   
	public void noteList(HttpServletRequest request,HttpServletResponse response) {
		
		try {
			BaseRespBean   r=new BaseRespBean();
			PageBean      pb=new PageBean(request);
			r=noteService.noteList(pb,r);
			super.respMsgObj(response, r);
		} catch (Exception e) {
			log.error("【查询笔记列表】【主页】.....发生异常");
			errorMsg(response);
		}
	}	
	
	 
	

}
