<!-- 系统日志管理页面 -->
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/taglibs.jsp"%>
<!DOCTYPE html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>	
	
<script>
$(document).ready(function(){
	HJF.initDate();
});

/***************请求查询***************************/
function searchSubmit(){
	 var conditionstr="&"+$('#searchForm').formSerialize();
	 var data=encodeURI(conditionstr); 
	 HJF.searchSubmit("/sys/sysLog?clientLogList&ajax=true&reqType=1&data="+data);
	 
}
 
 

</script>	

<div class="clearfix form-search" style="height: 80px;">
	<form  id="searchForm" >
			<div class="input-group col-sm-4" style="float: left">
				<input name="startTime" id="id-date-picker-1" class="form-control date-picker"  placeholder="开始时间" type="text" data-date-format="yyyy-mm-dd">
					<span class="input-group-addon">
						<i class="icon-calendar bigger-110"></i>
					</span>
				<input name="endTime" id="id-date-picker-2" class="form-control date-picker" placeholder="结束时间"  type="text" data-date-format="yyyy-mm-dd">
					<span class="input-group-addon">
						<i class="icon-calendar bigger-110"></i>
					</span>
			</div>
			<div class="col-sm-4">
				<input type="text" placeholder="关键词" class="form-control" name="content">
			</div>
			<div class=" col-sm-5" style="margin-left: 720px;margin-top: -36px">
					<button class="btn btn-purple " type="button" onclick="searchSubmit()">
						查询
						<i class="icon-search icon-on-right"></i>
					</button>
			</div>
	</form> 	
</div>
<div id="tblist">
	<%@ include file="dataList.jsp"%>
</div>
