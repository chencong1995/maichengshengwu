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
								<a href="javascript:void(0)">解决方案</a>
							</li>
							<li class="active"><a href="javascript:returnupper2();">方案类型</a></li>
							<li class="active">具体方案</li>
						</ul>
						<div class="widget-toolbar">
								<a class="btn btn-app btn-xs btn-success" onclick="add();">新增</a>
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
														<th class="text-center">标题</th>
														<th class="text-center">图片地址</th>
														<th class="text-center">
															<i class="icon-time bigger-110"></i>
															修改时间
														</th>
													<th class="text-center">操作</th> 
													</tr>
												</thead>
												<tbody>
												<input style="display:none" id="tId" value="${typeId}"></input>
												  <c:forEach items="${lists}" var="list" varStatus="num">
													    <tr>
															<td>${num.count}</td>
															<td>${list.title}</td>
															<td>${list.imageurl}</td>
															<td>${list.updatetime}</td>
															<td>
															<a class="btn btn-info btn-xs" onclick="edit(${list.id})">修改</a>
                                                                <a class="btn btn-danger btn-xs" onclick="delSlu(${list.id})">删除</a></td> 
														</tr>
												    </c:forEach>  
												</tbody>
											</table>
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

function addsubmit(){
     var name=$("#typeName").val();
      $.ajax({  
			            type:"POST",   //http请求方式  
			            url:"${pageContext.request.contextPath}/ht/solution/programme/typeCheck.do", //发送给服务器的url  
			            data:"name="+name, //发送给服务器的参数  
			            dataType:"json",  //告诉JQUERY返回的数据格式(注意此处数据格式一定要与提交的controller返回的数据格式一致,不然不会调用回调函数complete)  
			            error : function() {
                        alert('smx失败 ');
                         },
                         success : function(data) {
                           if(data=="不可使用类型"){
                               $("#msg").show();
				               return ;
				            }else{
				              $("#msg").hide();
				              $("#addTypeForm").submit();
                           }
                        }
				        });  
   }
   
   
   function delSlu(id){
       var msg = "确定要删除改类别?";
       var typeId=$("#tId").val();  
		    if (confirm(msg)){  
		         $.ajax({
				  type: 'POST',
				  url: "<%=request.getContextPath()%>/ht/solution/programme/delSolution.do",
				  data: {id:id},
				  dataType: 'json',  
				  complete: function(result){
			         window.location.href="<%=request.getContextPath()%>/ht/solution/programme/list.do?typeId="+typeId;
			      }
				});
		     } 
   }
   
   function selectPd(typeId){
       window.location.href="<%=request.getContextPath()%>/ht/solution/programme/list.do?typeId="+typeId;
   }
   
   function add(){
         var id=$("#tId").val();
         window.location.href="<%=request.getContextPath()%>/ht/solution/programme/addbefore.do?typeId="+id;
   }
   
   function returnupper2(){
     window.location.href="<%=request.getContextPath()%>/ht/solution/programme/listType.do";
}   


function edit(id){
	window.location.href="<%=request.getContextPath()%>/ht/solution/programme/editbefore.do?id="+id;	    
}
</script>
</html>