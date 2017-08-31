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
	  HJF.searchSubmit("/product?gridView"+data);
}
$(document).ready(function(){
	HJF.initDate();
	ProductUtil.initData();
});

</script>	

<div class="clearfix form-search" style="height: 120px;">
<form  id="searchForm" >
	<div class="input-group col-sm-3" style="float: left">
		<input name="startTime" id="id-date-picker-1" class="form-control date-picker"  placeholder="开始时间" type="text" data-date-format="yyyy-mm-dd">
		<span class="input-group-addon"><i class="icon-calendar bigger-110"></i></span>
		<input name="endTime" id="id-date-picker-2" class="form-control date-picker" placeholder="结束时间"  type="text" data-date-format="yyyy-mm-dd">
		<span class="input-group-addon"> <i class="icon-calendar bigger-110"></i> </span>
	</div>
	<div class=" col-sm-2" >
		 <input name="productName" id="productName" class="form-control  "  placeholder="商品名称" type="text"  >
	</div>
	<div class=" col-sm-2" style="width: 120px" >
		<select  name="categoryId"  id="categoryId" class="form-control">
			<option value=""> 商品类别</option>
		</select>
	</div>
	<div class=" col-sm-2" style="width: 120px">
		<select  name="brandId"  id="brandId" class="form-control">
			<option value=""> 商品品牌</option>
		</select>
	</div>
	<div class=" col-sm-2" style="width: 120px">
		<select  name="status" class="form-control">
			<option value=""> 商品状态</option>
			<option value="1"> 停售</option>
			<option value="0"> 售卖</option>
			<option value="2"> 缺货下架</option>
		</select>
	</div>
		<div class=" col-sm-1"  >
			<button class="btn btn-purple " type="button" onclick="searchSubmit()">
				查询 <i class="icon-search icon-on-right"></i>
			</button>
		</div>
		<div class=" col-sm-1">
			<button class="btn btn-info" type="button" onclick="ProductUtil.add()">
				添加 <i class="icon-plus icon-on-right"></i>
			</button>
		</div>
	</form> 		
</div>
<div id="tblist">
	<%@ include file="dataList.jsp"%>
</div>
