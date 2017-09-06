package com.hjf.app.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hjf.app.core.bean.respBean.ProductCommentRespBean;
import com.hjf.app.core.bean.respBean.ProductRespBean;
import com.hjf.app.core.bean.vo.ProductCart;
import com.hjf.app.dao.ProductBrandDAO;
import com.hjf.app.dao.ProductCategoryDAO;
import com.hjf.app.dao.ProductCommentDAO;
import com.hjf.app.dao.ProductDAO;
import com.hjf.app.entity.Product;
import com.hjf.app.entity.ProductBrand;
import com.hjf.app.entity.ProductCategory;
import com.hjf.app.service.ProductService;
import com.hjf.base.model.PageBean;
import com.hjf.base.mybatis.BaseService;
import com.hjf.common.util.JsonUtil;
import com.hjf.common.util.StringUtil;
@Service
@Transactional 
public class ProductServiceImpl extends BaseService implements ProductService {
	@Resource ProductDAO 		 productDAO;
	@Resource ProductCategoryDAO productCategoryDAO;
	@Resource ProductBrandDAO 	 productBrandDAO;
	@Resource ProductCommentDAO  productCommentDAO;
	
	
	/**
	 * 从购物车加载商品信息
	 */
	public  List  loadCardProducts(String cartPros){
		log.info("【从购物车加载商品信息】....cartPros="+cartPros);
		List datas=new ArrayList();	
		if(StringUtils.isBlank(cartPros)){
			return datas;
		}
		List<ProductCart> pros= JsonUtil.json2List(cartPros, ProductCart.class);
		for (ProductCart pc:pros) {
			Product p=getProduct(pc.getProductId());
			pc.setProductName(p.getProductName());
			pc.setPic(p.getPic());
			pc.setPrice(p.getPrice());
			datas.add(pc);
		}
		return datas;
	}	
	
	
	
	
	
	/**
	 * 【商品评论列表】
	 */
	public ProductCommentRespBean comments(PageBean pb,ProductCommentRespBean r){
		Integer productId=(Integer) pb.getParams().get("productId");
		if (pb.getStartRow()==0) {
			Double commentScoreRate=(Double) productCommentDAO.getObjById(productId, "scoreRate");
			if (commentScoreRate!=null) {
				commentScoreRate=commentScoreRate*100;
				r.setCommentScoreRate(commentScoreRate+"%");
			}else{
				r.setCommentScoreRate("");
			}
			Object commentCount=productCommentDAO.getObjById(productId, "commentCount");
			r.setCommentCount(commentCount+"");
		}
		pb =productCommentDAO.queryPageList(pb);
		List list=pb.getDatas();
		r.setDatas(list);
		r.success();
		return r;
	}	
	
	
	/**
	 * 增加库存
	 */
	public  void  addStore(Integer productId){
		Product p=getProduct(productId);
		if(p.getStatus().equals("2")){
			p.setStatus("0");
		}
		p.setProductId(productId);
		productDAO.update(p, "addStore");
	}	
	
	
	/**
	 * 减少库存
	 */
	public  void  reduceStore(Integer productId){
		Product p=getProduct(productId);
		if(p.getStore()==1){
			p.setStatus("2");
		}
		p.setProductId(productId);
		productDAO.update(p, "reduceStore");
	}
	 
	
	/**
	 * 商品类型
	 */
	public  List  categorys(){
		return productCategoryDAO.queryList(null);
	}	
	 
	public  ProductCategory  getProductCategory(Integer categoryId){
		return (ProductCategory) productCategoryDAO.getObjById(categoryId);
	}	
	 
	public  ProductBrand  getProductBrand(Integer brandId){
		return (ProductBrand) productBrandDAO.getObjById(brandId);
	}	
	 
	/**
	 * 查询单个商品
	 */
	public  Product  getProduct(Integer productId){
		return (Product) productDAO.getObjById(productId);
	}	
	
	
	
	/**
	 * 商品搜索
	 */
	@SuppressWarnings({  "rawtypes" })
	public  PageBean  search(PageBean pb){
		pb=productDAO.queryPageList(pb,"search");
		List list=pb.getDatas();
		for (int i = 0; i < list.size(); i++) {
			Map map=(Map)list.get(i);
			 
		}
		return pb;
		
	}
	 
	/**
	 * 特价商品列表
	 */
	@Override
	public PageBean productList(PageBean pb) {
		pb= productDAO.queryPageList(pb);
		return pb;
	}
	
	/**
	 * 商品详情
	 */
	@Override
	public ProductRespBean detail(ProductRespBean r) {
		Product  p=(Product) productDAO.getObjById(r.getProductId());
		copyProperties(r, p);
		String pic=p.getPics();
		r.setPicList(StringUtil.convertToToList(pic, "_"));
		ProductBrand pb=getProductBrand(p.getBrandId());
		if (pb!=null) {
			r.setBrandName(pb.getBrandName());
		}
		ProductCategory  pc=getProductCategory(p.getCategoryId());
		if (pc!=null) {
			r.setCategoryName(pc.getCategoryName());
		}
		r.success();
		return r;
	}	 
	 
}
