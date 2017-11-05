<!DOCTYPE html>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="../../common/inc/tag.inc"%>
<%@ include file="../../common/inc/script.inc"%>
<%@ include file="../../common/inc/style.inc"%>
<html lang="en">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	    <meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">    
		<title>后台管理系统</title>
	</head>
	<body>
		<%@ include file="../../common/main_top.inc"%>
		<div class="main-container" id="main-container">
			<div class="main-container-inner">
				<%@ include file="../../common/main_left_menu.inc"%>
				<div class="main-content">
					<div class="breadcrumbs" id="breadcrumbs">
						<ul class="breadcrumb">
							<li>
								<i class="icon-briefcase"></i>
								<a href="javascript:void(0)">产品服务</a>
							</li>
							<li class="active">产品中心</li>
						</ul>
						<div class="widget-toolbar">
								<a class="btn btn-app btn-xs btn-success" href="<%=request.getContextPath()%>/ht/product/productlist/addbefore.do">新增</a>
						 </div>
					</div>
					<div class="page-content">
						<div class="row">
							<div class="col-xs-12">
							   <!-- 插入内容 -->
							   <div class="col-xs-12 col-sm-12">
										<div class="table-responsive">
											<table class="table table-striped table-bordered table-hover text-center" id="sample-table-1">
												<thead>
													<tr>
														<th class="text-center">编号</th>
														<th class="text-center">类型</th>
														<th class="text-center">
															<i class="icon-time bigger-110"></i>
															修改时间
														</th>
													<th class="text-center">操作</th> 
													</tr>
												</thead>
												<tbody>
												  <c:forEach items="${lists}" var="list" varStatus="num">
													    <tr>
															<td>${num.count}</td>
															<td>${list.name}</td>
															<td>${list.updatetime}</td>
															<td><a class="btn btn-info btn-xs"  onclick="selectPd(${list.id})">产品</a>
                                                                <a class="btn btn-danger btn-xs" onclick="delPdTp(${list.id})">删除</a></td> 
														</tr>
												    </c:forEach>  
												</tbody>
											</table>
										</div>
									</div>
							   
							   
							</div>
						</div>
					</div>
				</div>
				<%@ include file="../../common/main_right_sz.inc"%>
			</div>
		</div>
</body>
<script type="text/javascript">
   function delPdTp(id){
       var msg = "确定要删除改类别?";  
		    if (confirm(msg)){  
		         $.ajax({
				  type: 'POST',
				  url: "<%=request.getContextPath()%>/ht/product/productlist/delType.do",
				  data: {id:id},
				  dataType: 'json',  
				  complete: function(result){
			         window.location.href="<%=request.getContextPath()%>/ht/product/productlist/listType.do";
			      }
				});
		     } 
   }
   
   function selectPd(typeId){
       window.location.href="<%=request.getContextPath()%>/ht/product/productlist/list.do?typeId="+typeId;
   }
   
</script>
</html>