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
							<li class="active"><a href="javascript:void(0)">方案类型</a></li>
						</ul>
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
															<td><a class="btn btn-info btn-xs"  onclick="selectPd(${list.id})">详细</a>
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
					
					<div class="row">
					  <div class="row">
							<div class="col-xs-12" title="新增方案类别">
							   <!-- 插入内容 -->
							   <form class="form-horizontal" id="addTypeForm" action="<%=request.getContextPath()%>/ht/solution/programme/addSolutionType.do" method="post" enctype="multipart/form-data"> 
							   		<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"><span class="red">*</span>类别：</label>
										<div class="col-sm-9">
											<input class="col-xs-10 col-sm-5" id="typeName" name="name" type="text">
											<div class="form-group has-error" id="msg" style="display:none"><div class="help-block col-xs-12 col-sm-reset inline">*类别已存在!</div></div>
										</div>
										
									</div>
									<div class="row">
									     <div class="col-sm-4 col-sm-offset-3 text-center">
									       <div class="btn btn-sm btn-success" onclick="addsubmit();"><i class="icon-ok"></i>新增</div>
									     </div>
									</div>
							   </form>
							   
							   
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
     if(name==""){
       alert("类别不能为空！");
       return ;
     }{
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
				        });  }
   }
   
   
   function delPdTp(id){
       var msg = "确定要删除改类别?";  
		    if (confirm(msg)){  
		         $.ajax({
				  type: 'POST',
				  url: "<%=request.getContextPath()%>/ht/solution/programme/delSolutionType.do",
				  data: {id:id},
				  dataType: 'json',  
				  complete: function(result){
			         window.location.href="<%=request.getContextPath()%>/ht/solution/programme/listType.do";
			      }
				});
		     } 
   }
   
   function selectPd(typeId){
       window.location.href="<%=request.getContextPath()%>/ht/solution/programme/list.do?typeId="+typeId;
   }
  
</script>

		
</html>