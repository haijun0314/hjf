<!-- 系统日志管理页面 -->
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/taglibs.jsp"%>
<!DOCTYPE html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>	
	
<script>
/***************请求查询***************************/
function searchSubmit(){
	 var conditionstr="&"+$('#searchForm').formSerialize();
	 var data=encodeURI(conditionstr); 
	 HJF.searchSubmit("/sys/sysLog?gridView&ajax=true&reqType=1&data="+data);
	 
}
 
/***************系统日志详情***************************/
function detail(logId){
	 BootstrapDialog.show({
		 title:'系统日志详情',
         message: $('<div></div>').load('/sys/sysLog?detail&Ajax=true&logId='+logId)//加载远程地址
     });
}


</script>	

<div class="clearfix form-search" style="height: 80px;">
	<form  id="searchForm" >
		<div class="row">
			<div class="col-sm-4">
				<input type="text" placeholder="关键词" class="form-control" name="logMessage">
			</div>
			<div class=" col-sm-3">
				<select  name="operResult" class="form-control">
					<option value=""> 操作结果</option>
					<option value="1"> 成功</option>
					<option value="2"> 失败</option>
				</select>
			</div>
			<div class=" col-sm-5">
					<button class="btn btn-purple " type="button" onclick="searchSubmit()">
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
