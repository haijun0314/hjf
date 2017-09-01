<!-- 城市账号搜索页面 -->
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/taglibs.jsp"%>
<!DOCTYPE html>
<head>
<script type="text/javascript"  src="/static/logic/product/productUtil.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>	
	
<script>
/***************请求查询***************************/
function searchSubmit(){
	 var conditionstr="&"+$('#searchForm').formSerialize();
	 var data=encodeURI(conditionstr); 
	  HJF.searchSubmit("/product?brandList&reqType=1"+data);
}

</script>	

<div class="clearfix form-search" style="height: 80px;">
<form  id="searchForm" >
		<div class=" col-sm-1">
			<button class="btn btn-info" type="button" onclick="ProductUtil.brand_add()">
				添加 <i class="icon-plus icon-on-right"></i>
			</button>
		</div>
	</form> 		
</div>
<div id="tblist">
	<%@ include file="dataList.jsp"%>
</div>
