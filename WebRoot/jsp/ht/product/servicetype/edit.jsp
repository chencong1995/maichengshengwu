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
							<li class="active"><a href="javascript:void(0)">服务类型</a></li>
							<li class="active">编辑</li>
						</ul>
					</div>
					<div class="page-content">
						<div class="row">
							<div class="col-xs-12">
							   <!-- 插入内容 -->
							   <form class="form-horizontal" id="business_edit_form" action="<%=request.getContextPath()%>/ht/index/business/edit.do" method="post" enctype="multipart/form-data"> 
							   		<input name="id" type="hidden" value="${indEnt.id }">
							   		<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"><span class="red">*</span>标题：</label>
										<div class="col-sm-9">
											<input class="col-xs-10 col-sm-5" name="business_title" type="text" value="<c:out value="${Pd.title }"></c:out>">
										</div>
									</div>
									<div class="space-4"></div>
									<div class="form-group">
                                         <label class="col-sm-3 control-label no-padding-right" for="form-field-1"><span class="red">*</span>简介：</label>
                                         <div class="col-sm-9">
                                         <textarea class="col-xs-10 col-sm-5" id="business_context" name="business_context" style="height: 200px; resize: none;" ><c:out value="${Pd.context }"></c:out></textarea>
                                         </div>
									</div>
									<div class="space-4"></div>
									<div class="form-group">
									     <label class="col-sm-3 control-label no-padding-right" for="form-field-1"><span class="red">*</span>图片：</label>
                                         <div class="col-sm-9 " >
                                           <div class="ace-file-input ace-file-multiple col-xs-10 col-sm-5 text-center" onclick="$('#id-input-file').click();">
                                            <img src="<%=request.getContextPath()%>/${Pd.imageurl }" class="img-thumbnail" id="img_business"  onerror="this.src='<%=request.getContextPath()%>/img/imgs/tab3_4.jpg'" >
                                           </div>
                                           <input id="id-input-file" type="file" style="display:none;" name="businessImage" />
                                         </div>
                                          <div class="col-sm-4 col-sm-offset-3 text-center red">图片尺寸：（1000X610）</div>
                                    </div>
									<div class="row">
									     <div class="col-sm-4 col-sm-offset-3 text-center">
									       <div class="btn btn-lg btn-success" onclick="businessAdd();"><i class="icon-ok"></i>提交</div>
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
</html>