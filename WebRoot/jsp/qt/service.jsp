<!DOCTYPE html>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="common/inc/tag.inc"%>
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
            <h1 class="title-page">我们能提供最好的服务</h1>
        </div>
    </div>
    
    
    
    <div class="wrapper" >
    	<div class="container">
        	<div class="content_block row no-sidebar">
            	<div class="fl-container">
                	<div class="posts-block">
                        <div class="contentarea">
                        	<div class="row">
                             	<div class="col-sm-3 module_cont module_iconboxes pb75 pt50 animate" data-anim-delay="250" data-anim-type="fadeInDown">
                                    <div class="module_content shortcode_iconbox type2">
                                        <a href="javascript:void(0);">			
                                            <div class="iconbox_wrapper">
                                            	<div class="icon_title_wrap">
                                                    <div class="ico"><img src="${serviceList1.imageurl}" class="icon_def" width="80" height="80" alt="" /><img src="img/retina/icons/icon12.png" class="icon_retina" width="80" height="80" alt="" /></div>
                                                    <h5 class="iconbox_title">${serviceList1.title}</h5>
                                                </div>
                                                <div class="iconbox_body">						
                                                    <p>${serviceList1.context}</p>
                                                </div>					
                                            </div>
                                        </a>
                                    </div>
                                </div>
                                <div class="col-sm-3 module_cont module_iconboxes pb75 pt50 animate" data-anim-delay="150" data-anim-type="fadeInLeft">
                                    <div class="module_content shortcode_iconbox type2">
                                        <a href="javascript:void(0);">			
                                            <div class="iconbox_wrapper">
                                            	<div class="icon_title_wrap">
                                                    <div class="ico"><img src="${serviceList2.imageurl}" class="icon_def" width="80" height="80" alt="" /><img src="img/retina/icons/icon13.png" class="icon_retina" width="80" height="80" alt="" /></div>
                                                    <h5 class="iconbox_title">${serviceList2.title}</h5>
                                                </div>
                                                <div class="iconbox_body">						
                                                    <p>${serviceList2.context} </p>
                                                </div>					
                                            </div>
                                        </a>
                                    </div>
                                </div> 
                                <div class="col-sm-3 module_cont module_iconboxes pb75 pt50 animate" data-anim-delay="200" data-anim-type="fadeInUp">
                                    <div class="module_content shortcode_iconbox type2">
                                        <a href="javascript:void(0);">			
                                            <div class="iconbox_wrapper">
                                            	<div class="icon_title_wrap">
                                                    <div class="ico"><img src="${serviceList3.imageurl}" class="icon_def" width="80" height="80" alt="" /><img src="img/retina/icons/icon14.png" class="icon_retina" width="80" height="80" alt="" /></div>
                                                    <h5 class="iconbox_title">${serviceList3.title}</h5>
                                                </div>
                                                <div class="iconbox_body">						
                                                    <p>${serviceList3.context} </p>
                                                </div>					
                                            </div>
                                        </a>
                                    </div>
                                </div> 
                                <div class="col-sm-3 module_cont module_iconboxes pb75 pt50 animate" data-anim-delay="150" data-anim-type="fadeInRight">
                                    <div class="module_content shortcode_iconbox type2">
                                        <a href="javascript:void(0);">			
                                            <div class="iconbox_wrapper">
                                            	<div class="icon_title_wrap">
                                                    <div class="ico"><img src="${serviceList4.imageurl}" class="icon_def" width="80" height="80" alt="" /><img src="img/retina/icons/icon15.png" class="icon_retina" width="80" height="80" alt="" /></div>
                                                    <h5 class="iconbox_title">${serviceList4.title}</h5>
                                                </div>
                                                <div class="iconbox_body">						
                                                    <p>${serviceList4.context}</p>
                                                </div>					
                                            </div>
                                        </a>
                                    </div>
                                </div>               	
                             </div>
                                
                            <div class="fw_block bg_start pt74 pb50 grey_bg mb60">
                                <div class="row">
                                    <div class="col-sm-12 module_cont pb0">
                                        <div class="bg_title">
                                            <h2 class="fleft">产品中心</h2>
                                            <!-- Filter_block -->
                                            <div class="filter_block">
                                                <div class="filter_navigation">
                                                    <ul id="options" class="splitter">
                                                        <li>
                                                            <ul data-option-key="filter" class="optionset">
                                                                <li class="selected"><a data-option-value="*" data-catname="all" href="#filter">所有</a></li>
                                                                <li><a data-option-value=".polygraphy" data-catname="polygraphy" href="#filter">视频会议</a></li>
                                                                <li><a data-option-value=".textstyle" data-catname="textstyle" href="#filter">智慧教育</a></li>
                                                                 <li><a data-option-value=".branding" data-catname="branding" href="#filter">司法矫正</a></li>
                                                            </ul>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <!-- //Filter_block -->
                                            <div class="clear"></div>
                                        </div>                                   
                                    </div>
                                </div> 

                                <div class="row">
                                    <div class="sorting_block image-grid featured_items photo_gallery" id="list">
                                        <c:forEach items="${branding}" var="list" varStatus="num">
											 <div class="col-sm-4 branding element">                    
	                                            <div class="item animate" data-anim-delay="250" data-anim-type="bounceIn">
	                                                <div class="item_wrapper">                                  
	                                                    <div class="img_block wrapped_img">
	                                                        <img src="${list.imageurl}" alt="">
	                                                        <span class="block_fade"></span>
	                                                        <div class="post_hover_info">
	                                                            <div class="featured_items_title">
	                                                                <h5>${list.title}</h5>
	                                                            </div>
	                                                            <div class="featured_meta"></div> 
	                                                            <a href="${list.imageurl}" class="photozoom featured_ico_link view_link"><i class="icon-expand"></i></a>
	                                                        </div>
	                                                    </div>                                                                                                            
	                                                </div>
	                                            </div>                                  
	                                        </div>   
										</c:forEach>
                                        
                                        
                                         <c:forEach items="${polygraphy}" var="list" varStatus="num">
											 <div class="col-sm-4 polygraphy element">                    
		                                           	 <div class="item animate" data-anim-delay="250" data-anim-type="bounceIn">
		                                                <div class="item_wrapper">                                  
		                                                    <div class="img_block wrapped_img">
		                                                        <img src="${list.imageurl}" alt="">
		                                                        <span class="block_fade"></span>
		                                                        <div class="post_hover_info">
		                                                            <div class="featured_items_title">
		                                                                <h5>${list.title}</h5>
		                                                            </div>
		                                                            <a href="${list.imageurl}" class="photozoom featured_ico_link view_link"><i class="icon-expand"></i></a>
		                                                        </div>                                                                
		                                                    </div>                                                                                                              
		                                                </div>
		                                            </div>                                  
                                        	</div>
										</c:forEach>
                                        
                                        
                                         <c:forEach items="${textstyle}" var="list" varStatus="num">
											 <div class="col-sm-4 textstyle element">                    
		                                           	 <div class="item animate" data-anim-delay="250" data-anim-type="bounceIn">
		                                                <div class="item_wrapper">                                  
		                                                    <div class="img_block wrapped_img">
		                                                        <img src="${list.imageurl}" alt="">
		                                                        <span class="block_fade"></span>
		                                                        <div class="post_hover_info">
		                                                            <div class="featured_items_title">
		                                                                <h5>${list.title}</h5>
		                                                            </div>
		                                                            <a href="${list.imageurl}" class="photozoom featured_ico_link view_link"><i class="icon-expand"></i></a>
		                                                        </div>                                                                
		                                                    </div>                                                                                                              
		                                                </div>
		                                            </div>                                  
                                        	</div>
										</c:forEach>
                                                                                                                                                          
                                    </div>
                                    <div class="clear"></div>
                                   
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
    
	<%@ include file="common/inc/script.inc"%>
    <!-- Portfolio -->
    <!-- <script>	
		items_set = [                    
			{src : 'img/portfolio/370_300/10.jpg', zoom : 'img/portfolio/370_300/10.jpg', url : 'portfolio_post_fullwidth.html', columnclass: 'col-sm-4', sortcategory: 'webui', title: 'Unde Sed ut', itemcategory: 'Print Design'},
			{src : 'img/portfolio/370_300/11.jpg', zoom : 'img/portfolio/370_300/11.jpg', url : 'portfolio_post_fullwidth.html', columnclass: 'col-sm-4', sortcategory: 'polygraphy', title: 'Tempore Nam Libero', itemcategory: 'Business'},
			{src : 'img/portfolio/370_300/12.jpg', zoom : 'img/portfolio/370_300/12.jpg', url : 'portfolio_post_fullwidth.html', columnclass: 'col-sm-4', sortcategory: 'textstyle', title: 'Dolores Magni', itemcategory: 'People'}
		];
		jQuery('#list').portfolio_addon({
			type : 2, // 2-4 columns portfolio
			load_count : 3,
			items : items_set
		});
	</script>  -->
</body>
</html>