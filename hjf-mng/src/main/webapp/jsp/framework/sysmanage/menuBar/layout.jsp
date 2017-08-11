<!-- 系统菜单管理页面 -->
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/taglibs.jsp"%>
<!DOCTYPE html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>	
	
<script>
	 	  
/***************请求查询***************************/
function searchSubmit(type){
	 var conditionstr="&"+$('#searchForm').formSerialize();
	 var data=encodeURI(conditionstr); 
	 HJF.searchSubmit("/sys/security?gridView"+data,type);
}	
	
</script>	
<div class="clearfix form-search" style="height: 80px;">
	<form  id="searchForm" >
		<div class="row">
			 <div class="col-sm-3">
				<input type="text" placeholder="菜单名称" class="form-control" name="menuName">
			</div>
			 <div class="col-sm-3">
				<input type="text" placeholder="菜单编码" class="form-control" name="menuCode">
			</div>
			<div class=" col-sm-5">
				<button class="btn btn-purple " type="button" onclick="searchSubmit(1)">
					查询
					<i class="icon-search icon-on-right"></i>
				</button>
				<button class="btn btn-info" type="button" onclick="add()">
					添加
					<i class="icon-plus icon-on-right"></i>
				</button>
			</div>
		</div>
	</form> 	
</div>
 
<div id="tblist">
	<%@ include file="dataList.jsp"%>
</div>
