<!DOCTYPE html>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="common/inc/tag.inc"%>
<%@ include file="common/inc/script.inc"%>
<%@ include file="common/inc/style.inc"%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta name="keywords" content="国安恒盈,科安恒盈,司法矫正,视频会议,手环">
	<meta name="description" content="国安恒盈,科安恒盈,司法矫正,视频会议,手环">
	<meta name="author" content="lg">
	<title>${FAVICONTITLE}</title>
</head>
<body>

	<%@ include file="common/main_top.inc"%>
    
    <div class="breadcrumbs">
    	<div class="container">
            <h1 class="title-page">联系我们</h1>
        </div>
    </div>
    
    <div class="wrapper">
    	<div class="container">
        	<div class="content_block row no-sidebar">
            	<div class="fl-container">
                	<div class="posts-block">
                        <div class="contentarea">                        	
                            <div class="row">
                            	<div class="col-sm-8 module_cont pb20 animate" data-anim-type="fadeInLeft" data-anim-delay="300">
                                	<h3 class="mb27 mt_5">请将具体信息填入下表，稍后我们将安排工作人员与您联系，谢谢！</h3>
                                	<div class="module_content contact_form">
                                        <div id="note"></div>
                                        <div id="fields"> 
                                            <form id="ajax-contact-form" action="<%=request.getContextPath()%>/msg/addmsg.do" method="post">       
                                            	<div class="row row20">
                                                	<div class="col-sm-12">
                                                	<div class="error-tips" id="sp_error"></div>
                                                	<input type="text" id="name" name="mName" placeholder="姓名"  />
                                                	</div>
                                                	
                                                    <div class="col-sm-12">
                                                    <div class="error-tips" id="sp_error2"></div>
                                                    <input type="text" id="email" name="mEmail" placeholder="邮箱"  />
                                                    
                                                    </div>
                                                    <div class="col-sm-12">
                                                    <input type="text" name="mSubject" placeholder="项目" />
                                                    </div>  	
                                                </div>                
                                                <div class="error-tips" id="sp_error3"></div>    
                                                <textarea name="mMessage" id="message" placeholder="意见或建议"  ></textarea> 
                                                
                                                <input type="button" name="sbtn" value="提交" onclick="submitMsg();"> 
                                            </form> 
                                        </div>
                                    </div>                                
                                </div>
                            	<div class="col-sm-4 module_cont contact_info pb40 animate" data-anim-type="fadeInRight" data-anim-delay="300">
                                	<h3 class="mb20 mt_5">企业信息</h3>
                                    <p>电话: <span>${aboutus.imageurl}</span></p>
                                    <p>地址: <span>${aboutus.title}</span></p>
                                    <!-- <p>邮箱: <span>1722205782@qq.com</span></p> -->
                                            
                                </div>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div> 
    </div>
    
    <%@ include file="common/main_footer.inc"%>
    
    <div class="fixed-menu"></div>
    
    <script type="text/javascript">
    
	function submitMsg(){
		 var username=$("#name").val();
	     var email=$("#email").val();
	     var message=$("#message").val();
		 if(username==""){
			$("#sp_error").html("姓名不能为空！");
			$("#sp_error").attr("style","display:block;color:red");
			return ;
		}else{
		   $("#sp_error").html("");
		}
		if(email==""){
			$("#sp_error2").html("邮箱不能为空！");
			$("#sp_error2").attr("style","display:block;color:red");
			return ;
		}else{
		   $("#sp_error2").html("");
		}
		if(message==""){
			$("#sp_error3").html("意见或建议不能为空！");
			$("#sp_error3").attr("style","display:block;color:red");
			return ;
		}else{
		   $("#sp_error3").html("");
		}
		document.getElementById( "ajax-contact-form").submit();
	}
    </script>
    
</body>
</html>