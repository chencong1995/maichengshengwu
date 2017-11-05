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
            <h1 class="title-page">企业客户</h1>
        </div>
    </div>
    
    <div class="wrapper">
    	<div class="container">
        	<div class="content_block row no-sidebar">
            	<div class="fl-container">
                	<div class="posts-block">
                        <div class="contentarea">
                            <div class="row">
                                <div class="col-sm-12 module_cont pb80 module_gallery photo_gallery">
                                    <div class="featured_items">
                                        <div class="items4 featured_portfolio">
                                            <ul class="item_list">
                                              <c:forEach items="${Cus}" var="list" varStatus="num">
	                                              <li class="animate" data-anim-type="bounceIn" data-anim-delay="300">
	                                                    <div class="item">
	                                                        <div class="gallery_item_padding">
	                                                            <div class="gallery_item_wrapper">
	                                                                <img src="${list.imageurl}" alt="" />
	                                                                <span class="block_fade"></span>
	                                                                <div class="post_hover_info">
	                                                                	<a href="${list.imageurl}" class="photozoom view_link"><i class="icon-expand"></i></a>
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