<!-- 系统角色管理页面 -->
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/taglibs.jsp"%>
<!DOCTYPE html>
<head>
<script type="text/javascript" src="${contextPath}/static/logic/sys/roleUtil.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>	
<script>
/***************请求查询***************************/
function searchSubmit(type){
	   HJF.searchSubmit("/sys/role?gridView");
}	
</script>	
 
<div class="clearfix form-search" style="height: 80px;">
	<form  id="searchForm" >
		<div class="row">
			 
			<div class=" col-sm-5">
				<button class="btn btn-info" type="button" onclick="RoleUtil.add()">
					添加系统角色
					<i class="icon-plus icon-on-right"></i>
				</button>
			</div>
		</div>
	</form> 	
</div>
 	 
<div id="tblist">
	<%@ include file="dataList.jsp"%>
</div>
		 