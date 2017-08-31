<!-- 城市账号管理页面 -->
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/taglibs.jsp"%>
<script>
HJF.pageRequest("${pm.curPage}","${pm.totalPage}","/product?gridView&reqType=1&ajax=true","searchForm");
</script>
<div class="row">
	<div class="col-xs-12">
		<div class="table-responsive">
			<table id="dataList" class="table table-striped table-bordered table-hover table-condensed">
				<thead>
					<tr>
						<td>序号</td>
						<td width="20%">玩具名称</td>
						<td >库存</td>
						<td>类型</td>
						<td>添加时间</td>
						<td>操作</td>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="data" items="${pm.datas}" varStatus="status">
						<tr>
							<td>${status.index+1}</td>
							<td><a href="#" onclick="ProductUtil.detail(${data.productId})"> ${data.productName}</a> </td>
							<td>${data.store}</td>
							<td>
								<c:if test="${data.productType=='1'}">
								<span class="badge badge-pink">普通</span> 
								</c:if>
								<c:if test="${data.productType=='2'}">
								<span class="badge badge-info">热卖</span> 
								</c:if>
								<c:if test="${data.productType=='3'}">
								<span class="badge badge-info">推荐</span> 
								</c:if>
							</td>
							<td><fmt:formatDate value="${data.createdTime}" type="both" pattern="yyyy-MM-dd HH:mm"/></td>
							<td> 
							 <a  href="#"class="btn btn-xs btn-success" onclick="ProductUtil.update(${data.productId})">编辑</a>
							 <a  href="#"class="btn btn-xs btn-danger" onclick="ProductUtil.del(${data.productId})">删除</a>													
							 <a  href="#"class="btn btn-xs btn-info" onclick="ProductUtil.updateStroe('${data.productId}')">库存</a>
							 <c:if test="${data.status=='0'}">
							  	<a  href="#" class="btn btn-xs" onclick="ProductUtil.startOrStop(${data.productId},'1')">下架</a>													
							 </c:if>
							 <c:if test="${data.status=='1'}">
							  	<a  href="#" class="btn btn-xs btn-info" onclick="ProductUtil.startOrStop(${data.productId},'0')">上架</a>													
							 </c:if>
							 <c:if test="${data.status=='2'}">
							  	<a  href="#" class="btn btn-xs btn-info" onclick="ProductUtil.startOrStop(${data.productId},'0')">上架</a>													
							 </c:if>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<jsp:include page="../../common/pager.jsp"></jsp:include>
		</div>
	</div>
</div>
 
	
	
	 