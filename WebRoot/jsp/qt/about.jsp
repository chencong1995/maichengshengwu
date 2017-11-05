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
            <h1 class="title-page">关于我们</h1>
        </div>
    </div>
    
    <div class="wrapper">
    	<div class="container">
        	<div class="content_block row no-sidebar">
            	<div class="fl-container">
                	<div class="posts-block">
                        <div class="contentarea">
                        	<div class="row">                             	
                                <div class="col-sm-6 module_cont pb65 animate" data-anim-type="fadeInLeft" data-anim-delay="300">
                                    <img src="${introduction.imageurl}" alt="">
                                </div>
                                
                                <div class="col-sm-6 module_cont pb65 animate" data-anim-type="fadeInRight" data-anim-delay="300">
                                    <h3 class="mb20">企业简介</h3>
                                    ${con}
                                </div>
                             </div>
                             
                        	<div class="row">
                                <div class="col-sm-12 module_cont pb75 animate" data-anim-type="fadeInUp" data-anim-delay="300">
                                    <div class="shortcode_promoblock">
                                        <div class="promoblock_wrapper">
                                            <div class="promo_text_block">
                                                <div class="promo_text_block_wrapper">
                                                	<h2 class="promo_text_main_title">企业愿景</h2>
                                                    <h6 class="promo_text_additional_title">${con1}</h6>
                                                </div>
                                            </div>        
                                           
                                            <div class="clear"></div>                                                                                
                                        </div>
                                    </div>
                                    <div class="clear"></div>
                                </div>                             	
                            </div>
                            
                            <div class="row">
                             	<div class="col-sm-12 module_cont pb0">
                                	<div class="bg_title">
                                    	<h2>企业新闻</h2>
                                    </div>                                   
                                </div>
                            </div>
                            
                            <div class="row">
                                <div class="col-sm-12 module_cont module_main_features">
                                	<div class="featured_items">
                                        <div class="items4 featured_posts">
                                            <ul class="item_list">    
                                            
                                            <c:forEach items="${news}" var="list" varStatus="num">
												 <li class="animate fadeInUp" data-anim-delay="600" data-anim-type="fadeInUp">
	                                                    <div class="item">
	                                                        <div class="item_wrapper">                                  
	                                                            <div class="img_block wrapped_img">
	                                                                <img alt="" src="${list.imageurl}">
	                                                                 <span class="block_fade"></span>
			                                                         <div class="post_hover_info">
			                                                             <a href="${list.imageurl}" class="photozoom featured_ico_link view_link"><i class="icon-expand"></i></a>
			                                                         </div>                                                                
	                                                            </div>                                                   
	                                                            <div class="featured_items_body">
	                                                                <div class="featured_items_title">
	                                                                    <h5>${list.title}</h5>
	                                                                </div>
	                                                                <div class="featured_item_content">
	                                                                ${list.msg}
	                                                                </div>                                                                                                                               
	                                                            </div>                                                            
	                                                        </div>
	                                                        
	                                                    </div>
	                                                </li>  
										  </c:forEach>  
                                                                                    
                                            </ul>
                                        </div>
                                    </div>                                                         
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
    
</body>
</html>