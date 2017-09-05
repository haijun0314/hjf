package com.hjf.app.core.bean.respBean;

import com.hjf.common.bean.BaseRespBean;
/**
 * 功能说明:【接口返回商品评论列表】
 * 作    者：lihaijun
 * 创建日期：2017-09-05
 */
public class ProductCommentRespBean extends BaseRespBean { 
	 
	
	private String   		commentCount;//评论数量
	private String   		commentScoreRate;//好评率
	
	public String getCommentCount() {
		return commentCount;
	}
	public void setCommentCount(String commentCount) {
		this.commentCount = commentCount;
	}
	public String getCommentScoreRate() {
		return commentScoreRate;
	}
	public void setCommentScoreRate(String commentScoreRate) {
		this.commentScoreRate = commentScoreRate;
	}
	 
	
	
}