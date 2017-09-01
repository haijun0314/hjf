<!-- 城市账号管理页面 -->
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/taglibs.jsp"%>
<div class="row">
	<div class="col-xs-12">
		<div class="table-responsive">
			<table id="dataList" class="table table-striped table-bordered table-hover table-condensed">
				<thead>
					<tr>
						<td>序号</td>
						<td width="20%">品牌名称</td>
						<td >所属类型</td>
						<td>图片</td>
						<td>添加时间</td>
						<td>操作</td>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="data" items="${brands}" varStatus="status">
						<tr>
							<td>${status.index+1}</td>
							<td> ${data.brandName}</td>
							<td>${data.categoryName}</td>
							<td>
								 <img  src="${data.pic}" width="50px" height="50x">
							</td>
							<td><fmt:formatDate value="${data.createdTime}" type="both" pattern="yyyy-MM-dd HH:mm"/></td>
							<td> 
							 <a  href="#"class="btn btn-xs btn-danger" onclick="ProductUtil.brand_del(${data.brandId})">删除</a>													
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<jsp:include page="../../../common/pager.jsp"></jsp:include>
		</div>
	</div>
</div>
 
	
	
	 