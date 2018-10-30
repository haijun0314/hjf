package com.hjf.app.controller;
import java.util.ArrayList;
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
import com.hjf.app.entity.ProductComment;
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
			String sortBy=q.getSortBy()+"";//0 综合 1 新品 2  评论 3销量 4 价格
			if (sortBy.equals("0")) {
				sortBy="";
			}else if(sortBy.equals("1")){
				sortBy=" createdTime desc";
			}else if(sortBy.equals("2")){
				sortBy=" countComment desc";
			}else if(sortBy.equals("3")){
				sortBy=" countSale desc";
			}else if(sortBy.equals("4")){
				sortBy=" price asc";
			}
			pb.append("sortBy", sortBy);
			BaseRespBean  r=new BaseRespBean();
			pb=productService.search(pb);
			r.setLastPage(pb.isLastPage());
			r.setDatas(pb.getDatas());
			r.success();
			if(pb.getStartRow()>30){
				r.setLastPage(true);
				r.setDatas(new ArrayList());
			}
			
			
			
			respMsgObj(response, r); 
		} catch (Exception e) {
			 errorMsg(response);
		}
	}	
	
	
	/**
	 * 【商品详情】
	 */
	@RequestMapping(params = "loadCardProducts")   
	public void loadCardProducts(Product q,HttpServletRequest request,HttpServletResponse response) throws Exception{
		try {
			String cartPros=request.getParameter("cartPros");
			List datas=productService.loadCardProducts(cartPros);
			respMsgObj(response, datas); 
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
	 * 【商品品牌列表】
	 */
	@RequestMapping(params = "brands")   
	public void brands(HttpServletRequest request,HttpServletResponse response) throws Exception{
		try {
			BaseRespBean r	=new BaseRespBean();
			
			List datas=productService.brands(null);
			r.setDatas(datas);
			r.success();
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
			List datas=productService.categorys(null);
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
	public void comments(ProductComment p,HttpServletRequest request,HttpServletResponse response) throws Exception{
		try {
			ProductCommentRespBean   r=new ProductCommentRespBean();
			PageBean      pb=new PageBean(request);
			pb.append("productId",p.getProductId());
			pb.append("level",p.getLevel());
			r=productService.comments(pb,r);
			super.respMsgObj(response, r);
		} catch (Exception e) {
			 errorMsg(response);
		}
	}		
	 
}
