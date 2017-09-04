package com.hjf.mng.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hjf.base.spring.BaseAction;
import com.hjf.common.enums.ResultType;
import com.hjf.common.util.TimeUtil;
import com.hjf.common.util.web.MsgUtil;
import com.hjf.common.util.web.RequestUtils;
import com.hjf.mng.bean.vo.ProductDetailRespBean;
import com.hjf.mng.common.util.ConfigUtil;
import com.hjf.mng.common.util.SysLogUtil;
import com.hjf.mng.entity.Product;
import com.hjf.mng.entity.ProductBrand;
import com.hjf.mng.entity.ProductCategory;
import com.hjf.mng.service.ConfigService;
import com.hjf.mng.service.ProductService;
/**
 * 功能说明:【商品管理控制类】
 * 作    者：lihaijun
 * 创建日期：2017-08-17
 */

@Controller
@RequestMapping("/product")
public class ProductController extends BaseAction{
	@Resource ProductService productService;
	@Resource ConfigService configService;
	String detail	   ="page/product/detail";
	String layout      ="page/product/layout";
	String dataList    ="page/product/dataList";
	String update      ="page/product/update";
	String add    	   ="page/product/add";
	
	
	//商品类型
	String categoryList      	="page/product/category/categoryList";
	String category_add     	="page/product/category/add";
	String brand_dataList      		="page/product/brand/dataList";
	String brand_add     		="page/product/brand/add";
	String brand_layout     	="page/product/brand/layout";
	 
	/**
	 *   商品管理
	 */
	@RequestMapping(params = "gridView")
	public ModelAndView gridView(HttpServletRequest request,HttpServletResponse response) throws Exception{
		pm=getPageInfo(new String[] {"startTime","categoryId","productName","status","brandId"},request);
		String endTime=request.getParameter("endTime");
		pm.setPageSize(30);
		if(StringUtils.isNotBlank(endTime)){
			endTime=TimeUtil.getEndDateStr(endTime);
			pm.append("endTime",endTime);
		}
		pm = productService.productPageList(pm);
		ModelAndView mav = null;
		if (pageRequest(request)) { 
			mav = new ModelAndView(layout);	
		}else{
			mav = new ModelAndView(dataList);
		}
		mav.addObject("pm", pm);
		return mav;
	}
	
	/**
	 *   商品详情
	 */
	@RequestMapping(params = "detail")
	public ModelAndView detail(Product p,HttpServletRequest request,HttpServletResponse response) throws Exception{
		ProductDetailRespBean r = productService.detail(p.getProductId());
		ModelAndView mav   = new ModelAndView(detail);
		mav.addObject("p",r);
		return mav;
	}
	/**
	 *  商品添加
	 */
	@RequestMapping(params = "add")
	public ModelAndView add(Product pc,HttpServletRequest request,HttpServletResponse response) throws Exception{
		if (pageRequest(request)) { 
			ModelAndView  mav=new ModelAndView(add);
			return mav;
		}else{
			r=productService.add(pc);
			if (r.isFail()) {
				
			}
			MsgUtil.operSuccess( response);
			return  null;
		}
	}		
	
	
	
	
	/**
	 *  商品添加
	 */
	@RequestMapping(params = "update")
	public ModelAndView update(Product p,HttpServletRequest request,HttpServletResponse response) throws Exception{
		if (pageRequest(request)) { 
			ModelAndView  mav=new ModelAndView(update);
			p=productService.getProduct(p.getProductId());
			ProductCategory  pc=productService.getProductCategory(p.getCategoryId());
			mav.addObject("p", p);
			mav.addObject("pc", pc);
			return mav;
		}else{
			productService.update(p);
			MsgUtil.operSuccess( response);
			return  null;
		}
	}			
	
	/**
	 *  商品删除
	 */
	@RequestMapping(params = "delete")
	public void delete(Product pc,HttpServletRequest request,HttpServletResponse response) throws Exception{
		productService.delete(pc);
		MsgUtil.operSuccess( response);
	} 
	 
	 
	
	
	
	/**
	 *  商品分类管理
	 */
	@RequestMapping(params = "categoryList")
	public ModelAndView categoryList(HttpServletRequest request,HttpServletResponse response) throws Exception{
		String pid=request.getParameter("pid");
		String reqType=request.getParameter("reqType");
		ModelAndView mav = null;
		if (pageRequest(request)) { 
			mav = new ModelAndView(categoryList);	
			return mav;
		}else{
			List  datas=new ArrayList();
			if (StringUtils.isNotBlank(reqType)&&reqType.equals("1")) {
				datas=productService.categoryTree();
				respMsgObj(response, datas);
				return   null;
			}
			if (StringUtils.isNotBlank(pid)) {
				  datas= productService.categoryList(new Integer(pid));
			}else{
				  datas= productService.categoryList(0);
			}
			respMsgObj(response, datas);
			return   null;
		}
	}
	
	
	/**
	 *  品牌管理
	 */
	@RequestMapping(params = "brandList")
	public ModelAndView brandList(HttpServletRequest request,HttpServletResponse response) throws Exception{
		ModelAndView mav = null;
		String  reqType =request.getParameter("reqType");
		List brands=productService.brandList();
		if (StringUtils.isBlank(reqType)) { 
			mav = new ModelAndView(brand_layout);	
			mav.addObject("brands", brands);
			return mav;
		}else if("1".equals(reqType)){
			mav = new ModelAndView(brand_dataList);	
			mav.addObject("brands", brands);
			return mav;
		}else{
			respMsgObj(response, brands);
			return   null;
		}
	}	
	
	/**
	 *  商品品牌添加
	 */
	@RequestMapping(params = "brand_add")
	public ModelAndView brand_add(ProductBrand pc,HttpServletRequest request,HttpServletResponse response) throws Exception{
		if (pageRequest(request)) { 
			ModelAndView  mav=new ModelAndView(brand_add);
			return mav;
		}else{
			try {
				productService.brand_add(pc);
				MsgUtil.operSuccess( response);
				SysLogUtil.addlSysLog(request,"商品品牌添加【"+pc.getBrandName()+"】成功",ResultType.Success);
			} catch (Exception e) {
				MsgUtil.operFail(response, e);
				SysLogUtil.addlSysLog(request,"商品品牌添加【"+pc.getBrandName()+"】失败",ResultType.Fail);
			}
			return  null;
		}
	}	
	
	/**
	 *  商品品牌删除
	 */
	@RequestMapping(params = "brand_delete")
	public void brand_delete(ProductBrand pc,HttpServletRequest request,HttpServletResponse response) throws Exception{
		try {
			productService.brand_delete(pc); 
			MsgUtil.operSuccess( response);
			SysLogUtil.addlSysLog(request,"商品品牌删除【"+pc.getBrandId()+"】成功",ResultType.Success);
		} catch (Exception e) {
			MsgUtil.operFail(response, e);
			SysLogUtil.addlSysLog(request,"商品品牌删除【"+pc.getBrandId()+"】失败",ResultType.Fail);
		}
	}	
	
	
	
	
	
	/**
	 *  商品分类删除
	 */
	@RequestMapping(params = "category_delete")
	public void category_delete(ProductCategory pc,HttpServletRequest request,HttpServletResponse response) throws Exception{
		try {
			productService.category_delete(pc); 
			MsgUtil.operSuccess( response);
			SysLogUtil.addlSysLog(request,"商品分类删除【"+pc.getCategoryId()+"】成功",ResultType.Success);
		} catch (Exception e) {
			MsgUtil.operFail(response, e);
			SysLogUtil.addlSysLog(request,"商品分类删除【"+pc.getCategoryId()+"】失败",ResultType.Fail);
		}
	}		
	/**
	 *  商品分类添加
	 */
	@RequestMapping(params = "category_add")
	public ModelAndView category_add(ProductCategory pc,HttpServletRequest request,HttpServletResponse response) throws Exception{
		if (pageRequest(request)) { 
			ModelAndView  mav=new ModelAndView(category_add);
			return mav;
		}else{
			try {
				productService.category_add(pc);
				MsgUtil.operSuccess( response);
				SysLogUtil.addlSysLog(request,"商品分类添加【"+pc.getCategoryName()+"】成功",ResultType.Success);
			} catch (Exception e) {
				MsgUtil.operFail(response, e);
				SysLogUtil.addlSysLog(request,"商品分类添加【"+pc.getCategoryName()+"】失败",ResultType.Fail);
			}
			return  null;
		}
	}	
	
	/**
	 *  商品分类更新
	 */
	@RequestMapping(params = "category_update")
	public void category_update(ProductCategory pc,HttpServletRequest request,HttpServletResponse response) throws Exception{
		try {
			productService.category_update(pc);
			MsgUtil.operSuccess( response);
			SysLogUtil.addlSysLog(request,"商品分类更新【"+pc.getCategoryName()+"】成功",ResultType.Success);
		} catch (Exception e) {
			MsgUtil.operFail(response, e);
			SysLogUtil.addlSysLog(request,"商品分类更新【"+pc.getCategoryName()+"】失败",ResultType.Fail);
		}
	}		
	
	
	/**
	 *  商品分类查询
	 */
	@RequestMapping(params = "category_load")
	public void category_load(ProductCategory pc,HttpServletRequest request,HttpServletResponse response) throws Exception{
		pc=productService.getProductCategory(pc.getCategoryId());
		String pic=pc.getPic();
		if (StringUtils.isNotBlank(pic)) {
			pc.setPic(ConfigUtil.server_app_host_url+pic);
		}
		respMsgObj(response, pc); 
	}	
	
	
	 
	/**
	 * 上架或下架操作
	 */
	@RequestMapping(params = "startOrStop")
	public void startOrStop(Product  pc,HttpServletRequest request,HttpServletResponse response) throws Exception{
		 try {
			 productService.update(pc);
			 MsgUtil.operSuccess( response);
		} catch (Exception e) {
			MsgUtil.operFail(response,e);
		}
	}	
	
	
	
	
	
	
	 
}
