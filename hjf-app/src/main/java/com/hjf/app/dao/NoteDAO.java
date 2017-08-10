package com.hjf.app.dao;

import org.springframework.stereotype.Repository;

import com.hjf.app.entity.Note;
import com.hjf.base.mybatis.BaseIbatisDAO;



/**
 * 账户系统
 * author lihaijun
 * createTime   2014-12-01
 */
@Repository
public class NoteDAO extends BaseIbatisDAO{
	
	 
	
	@Override
	public Class getEntityClass() {
		return Note.class;
	}
	   
	 
}