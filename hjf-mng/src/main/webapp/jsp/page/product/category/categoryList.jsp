<!-- 城市账号搜索页面 -->
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/taglibs.jsp"%>
<!DOCTYPE html>
<head>
<script type="text/javascript"  src="/static/logic/product/productUtil.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>	
<script src="/static/bootstrap-tree/js/bootstrap-treeview.js"></script>	
<div class="clearfix form-search" style="height: 80px;">
<script type="text/javascript">
	ProductUtil.category_load_tree();	
</script>




<form  id="searchForm" >
		<div class="row">
			<div class=" col-sm-5">
				<button class="btn btn-info" type="button" onclick="ProductUtil.category_add()">
					添加
					<i class="icon-plus icon-on-right"></i>
				</button>
			</div>
		</div>
	</form> 		
</div>
<div id="tblist">
	<div class="col-sm-6">
		<div id="categoryList" class="treeview">
		</div>
	</div>
	<div class="col-sm-6">
		<form  action="${contextPath}/product?category_update&ajax=true&reqType=2" class="form-horizontal" role="form"  id="dataForm" name="dataForm">
			<input type="hidden"  id="categoryId" name="categoryId">
			<div class="form-group">
				<label for="roleDesc" class="col-sm-3 control-label no-padding-right"> <b class="star_red">*</b>类别名称</label>
				<div class="col-sm-9">
					<input type="text" class=" required col-xs-10 col-sm-7" placeholder="" id="categoryName" name="categoryName">
				</div>
			</div>
			<div class="form-group">
				<label for="roleName" class="col-sm-3 control-label no-padding-right"><b class="star_red">*</b> 排序</label>
				<div class="col-sm-9">
					<input type="text" class="col-xs-10 col-sm-7" placeholder="" id="sortNum" name="sortNum">
				</div>
			</div>
			<div class="form-group">
				<label for="roleName" class="col-sm-3 control-label no-padding-right"><b class="star_red">*</b> 图标</label>
				<div class="col-sm-9">
					 <img  id="pic" src=""  name="pic"  width="100px" height="100px">
				</div>
			</div>
			<div class="form-group">
				<label for="roleName" class="col-sm-2 control-label no-padding-right"> </label>
				<div class="col-sm-4">
					<button class="btn btn-warn btn-block"   onclick="ProductUtil.category_update()">保存</button>
				</div>
				<div class="col-sm-4"  id="btn_del_ca">
					<a class="btn btn-danger btn-block"   onclick="ProductUtil.category_delete()">删除</a>
				</div>
			</div>
		</form>
	</div>
	
</div>
