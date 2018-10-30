package com.hjf.app.entity;

import com.hjf.base.model.BaseModel;
/**
 * 功能说明:【商品评论实体类】
 * 作    者：lihaijun
 * 创建日期：2017-09-05
 */
public class ProductComment extends BaseModel implements java.io.Serializable {
	private Integer commentId;//评论编号
	private Integer accountId;//账户编号
	private String  content;//评论内容
	private Integer productId;//商品编号
	private Integer score;//分数
	private String  level;//价评等级好评0 中评1 差评2
	
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	public Integer getCommentId() {
		return commentId;
	}
	public void setCommentId(Integer commentId) {
		this.commentId = commentId;
	}
	public Integer getAccountId() {
		return accountId;
	}
	public void setAccountId(Integer accountId) {
		this.accountId = accountId;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Integer getProductId() {
		return productId;
	}
	public void setProductId(Integer productId) {
		this.productId = productId;
	}
	public Integer getScore() {
		return score;
	}
	public void setScore(Integer score) {
		this.score = score;
	}
	
	
	
	
}
