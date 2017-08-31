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
	 
	   <table class="table">
		<tr>
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
							<img src="${data }"  height="200px" width="300px">
						</div>
					</c:if>
					<c:if test="${status.index>0}">
					<div class="item">
						<img src="${data }" height="200px" width="300px">
					</div>
					</c:if>
					</c:forEach>	
				</div>
				<!-- 轮播（Carousel）导航 -->
				<a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
				<a class="carousel-control right" href="#myCarousel"  data-slide="next">&rsaquo;</a>
			</div> 
		</tr>
		 
		<tr>
			<td>
				<span class="badge badge-info">商品名称:</span>
				${p.productName }
			</td>
			<td>
				<span class="badge badge-info">商品编号:</span>
				${p.productNO }
			</td>
		    <td>
				<span class="badge badge-info">上架时间:</span>
				<fmt:formatDate value="${p.createdTime}" type="both" pattern="yyyy-MM-dd"/>
		    </td>
		</tr>
		<tr> 
		  <td>
				<span class="badge badge-info">商品类型:</span>
				${p.categoryName }
		  </td>

		  <td>
				<span class="badge badge-info">商品品牌:</span>
				${p.brandName}
		  </td>
		  <td>
				<span class="badge badge-info">试用年龄:</span>
				${p.babyAge}
		  </td> 
		</tr>
	</table>
 