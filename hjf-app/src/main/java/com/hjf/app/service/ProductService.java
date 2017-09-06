package com.hjf.app.service;

import java.util.List;

import com.hjf.app.core.bean.respBean.ProductCommentRespBean;
import com.hjf.app.core.bean.respBean.ProductRespBean;
import com.hjf.app.entity.Product;
import com.hjf.app.entity.ProductBrand;
import com.hjf.app.entity.ProductCategory;
import com.hjf.base.model.PageBean;

public interface ProductService {
	
	
	
	//从购物车加载商品信息
	public  List  loadCardProducts(String cartPros);
	//商品类别
	public  ProductCategory  getProductCategory(Integer categoryId);
	//商品品牌
	public  ProductBrand  	 getProductBrand(Integer brandId);
	//商品列表
	public  PageBean  productList(PageBean pb);
	//商品详情
	public ProductRespBean detail(ProductRespBean r);
	//查询商品
	public  Product  getProduct(Integer productId);
	//商品搜索
	public  PageBean  search(PageBean pb);
	//商品类型
	public  List  categorys();
	//减少库存
	public  void  reduceStore(Integer productId);
	//增加库存
	public  void  addStore(Integer productId);
	//【商品评论列表】
	public ProductCommentRespBean comments(PageBean pb,ProductCommentRespBean r);		
	
	
}
