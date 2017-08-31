package com.hjf.mng.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.commons.collections.MapUtils;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hjf.base.model.PageModel;
import com.hjf.base.mybatis.BaseService;
import com.hjf.base.mybatis.Query;
import com.hjf.mng.bean.vo.ProductDetailRespBean;
import com.hjf.mng.common.util.ConfigUtil;
import com.hjf.mng.dao.ProductBrandDAO;
import com.hjf.mng.dao.ProductCategoryDAO;
import com.hjf.mng.dao.ProductDAO;
import com.hjf.mng.entity.Product;
import com.hjf.mng.entity.ProductBrand;
import com.hjf.mng.entity.ProductCategory;
import com.hjf.mng.service.ProductService;
@Service
@Transactional 
public class ProductServiceImpl extends BaseService implements ProductService {
	@Resource ProductDAO 			productDAO;
	@Resource ProductCategoryDAO 	productCategoryDAO;
	@Resource ProductBrandDAO    	productBrandDAO;
	
	/**
	 * 更新商品类型
	 */
	public  void  category_update(ProductCategory  pc){
		productCategoryDAO.updateById(pc);
	}
	/**
	 * 分类树形
	 */
	public  List  categoryTree(){
		List  rList=new ArrayList();
		List  pList=categoryList(0);
		for (int i = 0; i < pList.size(); i++) {
			Map  h=(Map)pList.get(i);
			String   categoryName=MapUtils.getString(h, "categoryName");
			Integer  categoryId  =MapUtils.getInteger(h, "categoryId");
			Integer  pid		 =MapUtils.getInteger(h, "pid");
			h.clear();
			h.put("text", categoryName);
			h.put("href", "");
			h.put("tags", "0_"+categoryId);
			List sonList=categoryList(categoryId);
			if (sonList==null||sonList.size()<1) {
				rList.add(h);
				continue;
			}
			List nodes=new ArrayList();
			for (int j = 0; j < sonList.size(); j++) {
				Map  s=(Map)sonList.get(j);
				categoryName=MapUtils.getString(s, "categoryName");
				categoryId  =MapUtils.getInteger(s, "categoryId");
				s.clear();
				s.put("text", categoryName);
				s.put("href", "");
				s.put("tags", "1_"+categoryId);
				nodes.add(s);
			}
			h.put("nodes", nodes);
			rList.add(h);
		}
		return rList;
	}	
	
	
	/**
	 * 查询商品类型
	 */
	public  List  categoryList(Integer pid){
		Query q=new Query();
		q.append("pid", pid);
		return productCategoryDAO.queryList(q);
	}
	/**
	 * 查询商品品牌
	 */
	public  List  brandList(){
		return productBrandDAO.queryList(null);
	}
	/**
	 * 商品详情
	 */
	public ProductDetailRespBean  detail(Integer productId){
		ProductDetailRespBean  r=new ProductDetailRespBean();
		Product p=getProduct(productId);
		copyProperties(r, p);
		ProductBrand b=getProductBrand(p.getBrandId());
		r.setBrandName(b.getBrandName());
		ProductCategory  pc=getProductCategory(p.getCategoryId());
		r.setCategoryName(pc.getCategoryName());
		String server_url=ConfigUtil.server_app_host_url;
		if (StringUtils.isNotBlank(p.getPics())) {
			String[] picList=p.getPics().split("_");
			for (int i = 0; i < picList.length; i++) {
				picList[i]=server_url+picList[i];
			}
			r.setPicList(picList);
		}
		
		return  r ;
	}
	
	/**
	 * 商品类型添加
	 */
	public  void  category_add(ProductCategory  pc){
		productCategoryDAO.save(pc);
	}	
	
	 
	
	
 
	/**
	 * 商品类别列表
	 */
	public  PageModel  categoryPageList(PageModel pm){
		pm= productCategoryDAO.queryPageList(pm);
		return pm;
	}
	 
	 
	public  ProductCategory  getProductCategory(Integer categoryId){
		return (ProductCategory) productCategoryDAO.getObjById(categoryId);
	}	
	public  void  category_delete(ProductCategory pc){
		productCategoryDAO.logicDelete(pc);
	}
	public  ProductBrand  getProductBrand(Integer brandId){
		return (ProductBrand) productBrandDAO.getObjById(brandId);
	}	
	 
	public  Product  getProduct(Integer productId){
		Product p=(Product) productDAO.getObjById(productId);
		return p;
	}	
	
	/**
	 * 删除商品
	 */
	public  void  delete(Product pc){
		productDAO.logicDelete(pc);
	}
	
	/**
	 * 商品更新
	 */
	public  void update(Product  pc){
		String pics=pc.getPics();
		if(StringUtils.isNotBlank(pics)){
			if (pics.endsWith("_")) {
				pc.setPics(pics.substring(0,pics.length()-1));
			}
			String pic[]=pc.getPics().split("_");
			pc.setPic(pic[0]);
		}
		productDAO.updateById(pc);
	}	
	
	 	
	
	/**
	 * 商品库存更新
	 */
	public  void updateStroe(Product  pc){
		if (pc.getStore()>0) {
			pc.setStatus("0");
		}
		if (pc.getStore()<1) {
			pc.setStatus("2");
		}
		productDAO.updateById(pc);
	}	
	
	
	
	
	
	/**
	 * 添加商品
	 */
	@SuppressWarnings("unused")
	public  void  add(Product  pc,Map city_data){
		String pics=pc.getPics();
		if (pics.endsWith("_")) {
			pc.setPics(pics.substring(0,pics.length()-1));
		}
		String pic[]=pc.getPics().split("_");
		pc.setPic(pic[0]);
		pc=(Product) productDAO.saveWithReturnId(pc);
		if (pc==null||pc.getProductId()<1) {
			return ;
		}
		 
	}
		
	 
	/**
	 * 商品列表
	 */
	public  PageModel  productPageList(PageModel pm){
		pm= productDAO.queryPageList(pm);
		List list =pm.getDatas();
		for (int i = 0; i < list.size(); i++) {
			Map map=(Map)list.get(i);
			String pic=MapUtils.getString(map, "pic");
			map.put("pic",ConfigUtil.server_app_host_url+pic);
		}
		return pm;
	}
	 
	 
 
	
}
