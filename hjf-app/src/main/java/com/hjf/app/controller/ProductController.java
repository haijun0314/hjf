package com.hjf.app.controller;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hjf.app.core.bean.reqBean.ProductSearchReqBean;
import com.hjf.app.core.bean.respBean.ProductCommentRespBean;
import com.hjf.app.core.bean.respBean.ProductRespBean;
import com.hjf.app.entity.Product;
import com.hjf.app.service.ProductService;
import com.hjf.base.model.PageBean;
import com.hjf.base.spring.BaseAction;
import com.hjf.common.bean.BaseRespBean;
/**
 * 功能说明:【商品控制类】
 * 作    者：lihaijun
 * 创建日期：2018-08-22
 */
@Controller  
@RequestMapping("/product") 
public class ProductController extends BaseAction{
	@Resource ProductService productService;
	
	/**
	 * 【搜索】
	 */
	@RequestMapping(params = "search")   
	public void search(ProductSearchReqBean q,HttpServletRequest request,HttpServletResponse response) throws Exception{
		try {
			PageBean  pb		=new PageBean(request);
			pb.append("brandId", q.getBrandId());
			pb.append("categoryId",q.getCategoryId());
			pb.append("keyWord", q.getKeyWord());
			pb.append("productType", q.getProductType());
			BaseRespBean  r=new BaseRespBean();
			pb=productService.search(pb);
			r.setDatas(pb.getDatas());
			r.success();
			respMsgObj(response, r); 
		} catch (Exception e) {
			 errorMsg(response);
		}
	}	
	
	
	 	
	
	/**
	 * 【商品详情】
	 */
	@RequestMapping(params = "detail")   
	public void detail(ProductRespBean r,HttpServletRequest request,HttpServletResponse response) throws Exception{
		try {
			r=productService.detail(r);
			respMsgObj(response, r); 
		} catch (Exception e) {
			 errorMsg(response);
		}
	}

	/**
	 * 【商品类型列表】
	 */
	@RequestMapping(params = "categorys")   
	public void categorys(HttpServletRequest request,HttpServletResponse response) throws Exception{
		try {
			BaseRespBean r	=new BaseRespBean();
			List datas=productService.categorys();
			r.setDatas(datas);
			r.success();
			respMsgObj(response, r); 
		} catch (Exception e) {
			 errorMsg(response);
		}
	}	
	
	
	/**
	 * 【商品评论列表】
	 */
	@RequestMapping(params = "comments")   
	public void comments(Product p,HttpServletRequest request,HttpServletResponse response) throws Exception{
		try {
			ProductCommentRespBean   r=new ProductCommentRespBean();
			PageBean      pb=new PageBean(request);
			pb.append("productId",p.getProductId());
			r=productService.comments(pb,r);
			super.respMsgObj(response, r);
		} catch (Exception e) {
			 errorMsg(response);
		}
	}		
	 
}
