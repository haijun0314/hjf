<!-- 城市账号管理页面 -->
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/taglibs.jsp"%>
<script>
			HJF.pageRequest("${pm.curPage}","${pm.totalPage}","/account?gridView&reqType=1&ajax=true","searchForm");
			
</script>
<div class="row">
	<div class="col-xs-12">
		<div class="table-responsive">
			<table id="dataList" class="table table-striped table-bordered table-hover table-condensed">
				<thead>
					<tr>
						<td>序号</td>
						<td>会员名</td>
						<td >手机号码</td>
						<td >注册时间</td>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="data" items="${pm.datas}" varStatus="status">
						<tr>
							<td>${status.index+1}</td>
							<td>${data.accountName}</td>
							<td>${data.telephone}</td>
							 <td>${data.registTime}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<jsp:include page="../../common/pager.jsp"></jsp:include>
		</div>
	</div>
</div>
 
	
	
	 