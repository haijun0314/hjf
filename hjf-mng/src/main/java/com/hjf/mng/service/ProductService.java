package com.hjf.mng.service;

import java.util.List;
import java.util.Map;

import com.hjf.base.model.PageModel;
import com.hjf.mng.bean.vo.ProductDetailRespBean;
import com.hjf.mng.entity.Product;
import com.hjf.mng.entity.ProductBrand;
import com.hjf.mng.entity.ProductCategory;

public interface ProductService {
	public  List  categoryList(Integer pid);
	public  List  categoryTree();
	public  List  brandList();
	//更新商品类型
	public  void  category_update(ProductCategory  pc);
	//添加商品类型
	public  void  category_add(ProductCategory  pc);
	//删除商品类型
	public  void  category_delete(ProductCategory  pc);
	//根据ID查询商品类型
	public  ProductCategory  getProductCategory(Integer categoryId);
	//商品库存更新
	public  void updateStroe(Product  pc);	
	//获取商品品牌
	public  ProductBrand  getProductBrand(Integer brandId);	
	//商品更新
	public  void update(Product  p)	;
	//删除商品
	public  void  delete(Product  pc);
	//添加商品
	public  void  add(Product  pc,Map city_data);
	//商品详情
	public ProductDetailRespBean  detail(Integer productId);
	//根据Id查询商品
	public  Product  getProduct(Integer productId);
	//商品列表
	public  PageModel  productPageList(PageModel pm);
}
