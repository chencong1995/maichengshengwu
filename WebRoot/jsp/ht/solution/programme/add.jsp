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
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/jsp/ht/assets/css/umeditor.css" />
		<script src="<%=request.getContextPath() %>/jsp/ht/assets/js/jquery.min.js"></script>
		<script src="<%=request.getContextPath() %>/jsp/ht/assets/js/template.min.js"></script>
		<script src="<%=request.getContextPath() %>/jsp/ht/assets/js/umeditor.config.js"></script>
		<script src="<%=request.getContextPath() %>/jsp/ht/assets/js/umeditor.min.js"></script>
		<script src="<%=request.getContextPath() %>/jsp/ht/assets/js/zh-cn/zh-cn.js"></script>
		<style type="text/css">
h1 {
	font-family: "微软雅黑";
	font-weight: normal;
}

.btn {
	display: inline-block; *
	display: inline;
	padding: 4px 12px;
	margin-bottom: 0; *
	margin-left: .3em;
	font-size: 14px;
	line-height: 20px;
	color: #333333;
	text-align: center;
	text-shadow: 0 1px 1px rgba(255, 255, 255, 0.75);
	vertical-align: middle;
	cursor: pointer;
	background-color: #f5f5f5; *
	background-color: #e6e6e6;
	background-image: -moz-linear-gradient(top, #ffffff, #e6e6e6);
	background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#ffffff),
		to(#e6e6e6) );
	background-image: -webkit-linear-gradient(top, #ffffff, #e6e6e6);
	background-image: -o-linear-gradient(top, #ffffff, #e6e6e6);
	background-image: linear-gradient(to bottom, #ffffff, #e6e6e6);
	background-repeat: repeat-x;
	border: 1px solid #cccccc; *
	border: 0;
	border-color: #e6e6e6 #e6e6e6 #bfbfbf;
	border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
	border-bottom-color: #b3b3b3;
	-webkit-border-radius: 4px;
	-moz-border-radius: 4px;
	border-radius: 4px;
	filter: progid : DXImageTransform . Microsoft .
		gradient(startColorstr = '#ffffffff', endColorstr = '#ffe6e6e6',
		GradientType = 0);
	filter: progid : DXImageTransform . Microsoft .
		gradient(enabled = false); *
	zoom: 1;
	-webkit-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px
		rgba(0, 0, 0, 0.05);
	-moz-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px
		rgba(0, 0, 0, 0.05);
	box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px
		rgba(0, 0, 0, 0.05);
}

.btn:hover,.btn:focus,.btn:active,.btn.active,.btn.disabled,.btn[disabled]
	{
	color: #333333;
	background-color: #e6e6e6; *
	background-color: #d9d9d9;
}

.btn:active,.btn.active {
	background-color: #cccccc \9;
}

.btn:first-child { *
	margin-left: 0;
}

.btn:hover,.btn:focus {
	color: #333333;
	text-decoration: none;
	background-position: 0 -15px;
	-webkit-transition: background-position 0.1s linear;
	-moz-transition: background-position 0.1s linear;
	-o-transition: background-position 0.1s linear;
	transition: background-position 0.1s linear;
}

.btn:focus {
	outline: thin dotted #333;
	outline: 5px auto -webkit-focus-ring-color;
	outline-offset: -2px;
}

.btn.active,.btn:active {
	background-image: none;
	outline: 0;
	-webkit-box-shadow: inset 0 2px 4px rgba(0, 0, 0, 0.15), 0 1px 2px
		rgba(0, 0, 0, 0.05);
	-moz-box-shadow: inset 0 2px 4px rgba(0, 0, 0, 0.15), 0 1px 2px
		rgba(0, 0, 0, 0.05);
	box-shadow: inset 0 2px 4px rgba(0, 0, 0, 0.15), 0 1px 2px
		rgba(0, 0, 0, 0.05);
}

.btn.disabled,.btn[disabled] {
	cursor: default;
	background-image: none;
	opacity: 0.65;
	filter: alpha(opacity = 65);
	-webkit-box-shadow: none;
	-moz-box-shadow: none;
	box-shadow: none;
}
</style>
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
								<i class="icon-desktop"></i>
								<a href="javascript:void(0)">解决方案</a>
							</li>
							<li class="active"><a href="javascript:returnupper2();">方案类型</a></li>
							<li class="active"><a href="javascript: returnupper();">具体方案</a></li>
							<li class="active">添加方案</li>
						</ul>
					</div>
					<div class="page-content">
						<div class="row">
							<div class="col-xs-12">
							   <!-- 插入内容 -->
							   <form class="form-horizontal" id="AddSluForm" action="${pageContext.request.contextPath}/ht/solution/programme/addSolution.do" method="post" enctype="multipart/form-data"> 
							   		<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"><span class="red">*</span>标题：</label>
										<div class="col-sm-9">
											<input style="display:none" id="tid" name="tid" value="${id}"></input>
											<input class="col-xs-10 col-sm-8" id="title" name="title" type="text">
											<div class="form-group has-error" id="msg1" style="display:none"><div class="help-block col-xs-12 col-sm-reset inline">*标题为必选项!</div></div>
										    <div class="form-group has-error" id="msg2" style="display:none"><div class="help-block col-xs-12 col-sm-reset inline">*标题已存在!</div></div>
										</div>
										</div>
									<div class="space-4"></div>
									<div class="form-group">
									     <label class="col-sm-3 control-label no-padding-right" for="form-field-1"><span class="red">*</span>图片：</label>
                                         <div class="col-sm-9 ">
                                           <div class="ace-file-input ace-file-multiple col-xs-10 col-sm-8 text-center" onclick="$('#id-input-file1').click();">
                                            <img src="<%=request.getContextPath()%>/img/imgs/tab3_4.jpg" class="img-thumbnail" id="slimage" >
                                           </div>
                                           <input id="id-input-file1" type="file" style="display:none;" name="slImage" />
                                         </div>
                                         <div class="col-sm-4 col-sm-offset-4 text-center">图片尺寸：（1000X610）</div>
                                         <div class="col-sm-4 col-sm-offset-2 text-center red" id="msg3" style="display:none">*图片为必选项!</div>
                                    <!-- <div class="col-sm-9">
									          <div class="ace-file-input ace-file-multiple col-xs-10 col-sm-5">
														  <input id="id-input-file-1" type="file"  name="businessImage">
											  </div>
										 </div> -->
									</div>
									
									<div class="space-4"></div>
									<div class="form-group">
									     <label class="col-sm-3 control-label no-padding-right" for="form-field-1"><span class="red">*</span>内容：</label>
                                         <div class="col-sm-6">
                                        <div>
										<!--style给定宽度可以影响编辑器的最终宽度-->
										 <textarea class="form-control limited" type="text/plain" id="myEditor" name="content" style="margin-top: 0px; margin-bottom: 0px; height: 256px;"></textarea>
										
										</div>
                                         <div class="form-group has-error" id="msg4" style="display:none"><div class="help-block col-xs-12 col-sm-reset inline">*内容为必选项!</div></div>
									  </div>
									  </div>
							   </form>
							   <div class="space-4"></div>
							   <div class="row">
									     <div class="col-sm-6 col-sm-offset-3 text-center">
									       <div class="btn btn-sm btn-success" onclick="pdtSlu();"><i class="icon-ok"></i>提交</div>
									     </div>
									</div>
							</div>
						</div>
					</div>
				</div>
				<%@ include file="../../common/main_right_sz.inc"%>
			</div>
		</div>
		
		
		<script type="text/javascript">
    //实例化编辑器
    var um = UM.getEditor('myEditor');
    um.addListener('blur',function(){
        $('#focush2').html('编辑器失去焦点了')
    });
    um.addListener('focus',function(){
        $('#focush2').html('')
    });
    //按钮的操作
    function insertHtml() {
        var value = prompt('插入html代码', '');
        um.execCommand('insertHtml', value)
    }
    function isFocus(){
        alert(um.isFocus())
    }
    function doBlur(){
        um.blur()
    }
    function createEditor() {
        enableBtn();
        um = UM.getEditor('myEditor');
    }
    function getAllHtml() {
        alert(UM.getEditor('myEditor').getAllHtml())
    }
    function getContent() {
        var arr = [];
        arr.push("使用editor.getContent()方法可以获得编辑器的内容");
        arr.push("内容为：");
        arr.push(UM.getEditor('myEditor').getContent());
        alert(arr.join("\n"));
    }
    function getPlainTxt() {
        var arr = [];
        arr.push("使用editor.getPlainTxt()方法可以获得编辑器的带格式的纯文本内容");
        arr.push("内容为：");
        arr.push(UM.getEditor('myEditor').getPlainTxt());
        alert(arr.join('\n'))
    }
    function setContent(isAppendTo) {
        var arr = [];
        arr.push("使用editor.setContent('欢迎使用umeditor')方法可以设置编辑器的内容");
        UM.getEditor('myEditor').setContent('欢迎使用umeditor', isAppendTo);
        alert(arr.join("\n"));
    }
    function setDisabled() {
        UM.getEditor('myEditor').setDisabled('fullscreen');
        disableBtn("enable");
    }

    function setEnabled() {
        UM.getEditor('myEditor').setEnabled();
        enableBtn();
    }

    function getText() {
        //当你点击按钮时编辑区域已经失去了焦点，如果直接用getText将不会得到内容，所以要在选回来，然后取得内容
        var range = UM.getEditor('myEditor').selection.getRange();
        range.select();
        var txt = UM.getEditor('myEditor').selection.getText();
        alert(txt)
    }

    function getContentTxt() {
        var arr = [];
        arr.push("使用editor.getContentTxt()方法可以获得编辑器的纯文本内容");
        arr.push("编辑器的纯文本内容为：");
        arr.push(UM.getEditor('myEditor').getContentTxt());
        alert(arr.join("\n"));
    }
    function hasContent() {
        var arr = [];
        arr.push("使用editor.hasContents()方法判断编辑器里是否有内容");
        arr.push("判断结果为：");
        arr.push(UM.getEditor('myEditor').hasContents());
        alert(arr.join("\n"));
    }
    function setFocus() {
        UM.getEditor('myEditor').focus();
    }
    function deleteEditor() {
        disableBtn();
        UM.getEditor('myEditor').destroy();
    }
    function disableBtn(str) {
        var div = document.getElementById('btns');
        var btns = domUtils.getElementsByTagName(div, "button");
        for (var i = 0, btn; btn = btns[i++];) {
            if (btn.id == str) {
                domUtils.removeAttributes(btn, ["disabled"]);
            } else {
                btn.setAttribute("disabled", "true");
            }
        }
    }
    function enableBtn() {
        var div = document.getElementById('btns');
        var btns = domUtils.getElementsByTagName(div, "button");
        for (var i = 0, btn; btn = btns[i++];) {
            domUtils.removeAttributes(btn, ["disabled"]);
        }
    }
</script>
</body>
<script type="text/javascript">

function pdtSlu(){
                    var title=$("#title").val();
				    var context=$("#myEditor").val();
				    var file=$("#id-input-file1").val();
                    if(title=="" || title==null){
                       $("#msg1").show();
                    }else if(context=="" || context==null){
                       $("#msg4").show();}
                    else if(file=="" || file==null){
                       $("#msg3").show();
                    }else{
                      $("#msg1").hide();
                      $("#msg3").hide();
                      $("#msg4").hide();
      				  $.ajax({  
			            type:"POST",   //http请求方式  
			            url:"${pageContext.request.contextPath}/ht/solution/programme/SluCheck.do", //发送给服务器的url  
			            data:"title="+title, //发送给服务器的参数  
			            dataType:"json",  //告诉JQUERY返回的数据格式(注意此处数据格式一定要与提交的controller返回的数据格式一致,不然不会调用回调函数complete)  
			            error : function() {
                        alert('smx失败 ');
                         },
                         success : function(data) {
                           if(data=="不可使用标题"){
                               $("#msg2").show();
				               return ;
				            }else{
				              $("#msg2").hide();
				              $("#AddSluForm").submit();
                           }
                        }
				        });
                }}
                
function returnupper(){
	 var id=$("#tid").val();
     window.location.href="<%=request.getContextPath()%>/ht/solution/programme/list.do?typeId="+id;
}
                
                
function returnupper2(){
     window.location.href="<%=request.getContextPath()%>/ht/solution/programme/listType.do";
}                
                
                
  $(function() {
			     $("#id-input-file1").change(
			        function() {
			            var $file = $(this);
			            var fileObj = $file[0];
			            var windowURL = window.URL || window.webkitURL;
			            var dataURL;
			            var $img = $("#slimage");
			            if (fileObj && fileObj.files && fileObj.files[0]) {
			                dataURL = windowURL.createObjectURL(fileObj.files[0]);
			                //允许上传的图片格式  
			                var newPreview = document.getElementById("id-input-file1").value;
			                var regext = /\.jpg$|\.gif$|\.jpeg$|\.png$|\.bmp$/gi;
			                if (!regext.test(newPreview)) {
			                    newPreview=="";
			                    alert("选择的照片格式不正确，请重新选择！");
			                    $(fileObj).after($(fileObj).clone($(fileObj)));
			                    $(fileObj).remove();
			                    return false;
			                }
			                $img.attr("src", dataURL);
			            } else {
			                dataURL = $file.val();
			                var imgObj = document.getElementById("slimage");
			                imgObj.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)";
			                imgObj.filters
			                        .item("DXImageTransform.Microsoft.AlphaImageLoader").src = dataURL;
			            }
			        });
			    });  
</script>
</html>