<!-- 城市账号搜索页面 -->
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/taglibs.jsp"%>
<!DOCTYPE html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>	
	
<script>
/***************请求查询***************************/
function searchSubmit1(type){
	 var conditionstr="&"+$('#searchForm').formSerialize();
	 var data=encodeURI(conditionstr); 
	  HJF.searchSubmit("/account?gridView"+data);
}
 
</script>	
<div class="clearfix form-search" style="height: 80px;">
	<form  id="searchForm" >
		<div class="row">
			<div class="col-sm-3">
				<input type="text" placeholder="会员手机号或姓名" class="form-control" name="keyword">
			</div>
			
			<div class=" col-sm-3">
				<button class="btn btn-purple " type="button" onclick="searchSubmit1(1)">
					查询
					<i class="icon-search icon-on-right"></i>
				</button>
			</div>
		</div>
	</form> 	
</div>
<div id="tblist">
	<%@ include file="dataList.jsp"%>
</div>
