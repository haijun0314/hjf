package com.hjf.app.service.impl;


/**
 * 功能说明:【营销服务中心】
 * 作    者：lihaijun
 * 创建日期：2017-08-22
 */
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hjf.app.dao.MarketCarouselDAO;
import com.hjf.app.service.MarketService;
import com.hjf.base.mybatis.BaseService;
import com.hjf.common.bean.BaseRespBean;
@Service
@Transactional 
public class MarketServiceInpl extends BaseService  implements MarketService {
	@Resource MarketCarouselDAO  marketCarouselDAO;
	/**
	 * 获取首页轮播图图片
	 */
	public BaseRespBean carouses(BaseRespBean r ){
		List  list = marketCarouselDAO.queryList(null);
		r.setDatas(list);
		r.success();
		return r;
	}
	
	
	
}
