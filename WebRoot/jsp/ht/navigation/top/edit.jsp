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
								<i class="icon-list"></i>
								<a href="javascript:void(0)">导航管理</a>
							</li>
							<li class="active"><a href="javascript:void(0)">顶部菜单</a></li>
							<li class="active">编辑</li>
						</ul>
					</div>
					<div class="page-content">
						<div class="row">
							<div class="col-xs-12">
							   <!-- 插入内容 -->
							   <form class="form-horizontal" id="editForm" action="<%=request.getContextPath()%>/ht/navigation/top/edit.do" method="post" enctype="multipart/form-data"> 
							   		<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"><span class="red">*</span>名称：</label>
										<div class="col-sm-9">
											<input class="col-xs-10 col-sm-5" id="name" name="name" type="text" placeholder="${menu.name}" value="${menu.name}">
											<input class="col-xs-10 col-sm-5" id="id" name="id" type="text" value="${menu.id}" style="display:none">
											<input class="col-xs-10 col-sm-5" id="type" name="type" type="text" value="${menu.type}" style="display:none">
											<div class="form-group has-error" id="msg1" style="display:none"><div class="help-block col-xs-12 col-sm-reset inline">*名称不能为空!</div></div>
											<div class="form-group has-error" id="msg" style="display:none"><div class="help-block col-xs-12 col-sm-reset inline">*名称已存在!</div></div>
										</div>
										
									</div>
									<div class="row">
									     <div class="col-sm-4 col-sm-offset-3 text-center">
									       <div class="btn btn-sm btn-success" onclick="editsubmit();"><i class="icon-ok"></i>修改</div>
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
  function editsubmit(){
    var name=$("#name").val();
    var id=$("#id").val();
    if(name==""){
     $("#msg1").show();
    return ;
    }else{
    $("#msg1").hide();
    $.ajax({  
			            type:"POST",   //http请求方式  
			            url:"${pageContext.request.contextPath}/ht/navigation/top/editCheck.do", //发送给服务器的url  
			            data:"name="+name, //发送给服务器的参数  
			            dataType:"json",  //告诉JQUERY返回的数据格式(注意此处数据格式一定要与提交的controller返回的数据格式一致,不然不会调用回调函数complete)  
			            error : function() {
                        alert('smx失败 ');
                         },
                         success : function(data) {
                           if(data=="不可使用"){
                               $("#msg").show();
				               return ;
				            }else{
				              $("#msg").hide();
				              $("#editForm").submit();
                           }
                        }
				        });  }
  
  }
</script>
</html>