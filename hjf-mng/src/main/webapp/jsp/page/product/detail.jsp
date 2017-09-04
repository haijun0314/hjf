<html>
<!-- 商品详情页面-->
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ include file="/jsp/common/taglibs.jsp"%>
<style>
.modal-dialog {
    margin: 60px auto;
    width: 900px;
}

</style>
	 
		<div class="tabbable">
			<ul class="nav nav-tabs" id="myTab">
				<li class="active">
					<a data-toggle="tab" href="#BaseInfo">
						<i class="green icon-home bigger-110"></i>
						商品信息
					</a>
				</li>
				<li class="">
					<a data-toggle="tab" href="#PicInfo">
						图片信息
						<i class="green   bigger-110"></i>
					</a>
				</li>				<li class="">
					<a data-toggle="tab" href="#DetailInfo">
						商品详情
						<i class="green   bigger-110"></i>
					</a>
				</li>
			</ul>

			<div class="tab-content">
				<div id="BaseInfo" class="tab-pane active">
					<div class="profile-user-info profile-user-info-striped">
						<div class="profile-info-row">
							<div class="profile-info-name"> 商品名称: </div>
							<div class="profile-info-value">
								${p.productName }
							</div>
						</div>
						<div class="profile-info-row">
							<div class="profile-info-name"> 商品编号: </div>
							<div class="profile-info-value">
								${p.productNO }
							</div>
						</div>
						<div class="profile-info-row">
							<div class="profile-info-name"> 商品价格: </div>
							<div class="profile-info-value">
								${p.price }  市场价${p.marketPrice } 
							</div>
						</div>
						<div class="profile-info-row">
							<div class="profile-info-name"> 商品库存: </div>
							<div class="profile-info-value">
								${p.store }  
							</div>
						</div>
						
						
												 
						<div class="profile-info-row">
							<div class="profile-info-name"> 上架时间: </div>
							<div class="profile-info-value">
								<fmt:formatDate value="${p.createdTime}" type="both" pattern="yyyy-MM-dd"/>
							</div>
						</div>
						
						<div class="profile-info-row">
							<div class="profile-info-name"> 商品类型:</div>
							<div class="profile-info-value">
								${p.categoryName }
							</div>
						</div>
						<div class="profile-info-row">
							<div class="profile-info-name"> 商品品牌: </div>
							<div class="profile-info-value">
								${p.brandName}
							</div>
						</div>						 
						<div class="profile-info-row">
							<div class="profile-info-name"> 商品介绍: </div>
							<div class="profile-info-value">
								${p.descriptions}
							</div>
						</div>					
					</div>			
				
				
				
				
				
					 				 
				</div>
				<div id="PicInfo" class="tab-pane">
					<div id="myCarousel" class="carousel slide">
						<!-- 轮播（Carousel）指标 -->
						<ol class="carousel-indicators">
						<c:forEach var="data" items="${p.picList}" varStatus="status">
							<c:if test="${status.index==0}">
							<li data-target="#myCarousel" data-slide-to="${status.index}" class="active"></li>
							</c:if>
							<c:if test="${status.index>0}">
							<li data-target="#myCarousel" data-slide-to="${status.index}"></li>
							</c:if>
							 
						</c:forEach>	
						</ol>   
						<!-- 轮播（Carousel）项目 -->
						<div class="carousel-inner">
							<c:forEach var="data" items="${p.picList}" varStatus="status">
							<c:if test="${status.index==0}">
								<div class="item active">
									<img src="${data }"  height="500px" width="700px">
								</div>
							</c:if>
							<c:if test="${status.index>0}">
							<div class="item">
								<img src="${data }" height="500px" width="700px">
							</div>
							</c:if>
							</c:forEach>	
						</div>
						<!-- 轮播（Carousel）导航 -->
						<a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
						<a class="carousel-control right" href="#myCarousel"  data-slide="next">&rsaquo;</a>
					</div> 
				</div>
				
				
				<div id="DetailInfo" class="tab-pane">
					 ${p.detailDesc}
				</div>
			</div>
		</div>
	 
	 
	 
	 

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
 