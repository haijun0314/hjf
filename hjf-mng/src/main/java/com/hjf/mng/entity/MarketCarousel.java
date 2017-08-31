package com.hjf.mng.entity;

import com.hjf.base.model.BaseModel;
/**
 * 功能说明:【首页轮播图实体类】
 * 作    者：lihaijun
 * 创建日期：2017-08-17
 */
public class MarketCarousel  extends BaseModel implements java.io.Serializable {
	private Integer carouselId;                 
	private String  content;			  
	private String   pic;//图片
	private String  linkType;//接链类型0 本地页面  1  网页链接
	private String  linkUrl;//链接地址URL
	 
	 
	public Integer getCarouselId() {
		return carouselId;
	}
	public void setCarouselId(Integer carouselId) {
		this.carouselId = carouselId;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	 
	public String getLinkType() {
		return linkType;
	}
	public void setLinkType(String linkType) {
		this.linkType = linkType;
	}
	public String getLinkUrl() {
		return linkUrl;
	}
	public void setLinkUrl(String linkUrl) {
		this.linkUrl = linkUrl;
	}
	 

}
