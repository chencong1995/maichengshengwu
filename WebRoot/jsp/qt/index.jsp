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
    
    <div class="wrapper">
    	<div class="container">
        	<div class="content_block row no-sidebar">
            	<div class="fl-container">
                	<div class="posts-block">
                        <div class="contentarea">  
                        	<!-- Slider -->                                        
                            <div class="fw_block bg_start wall_wrap mb0" >
                            	<div class="row">
                                    <div class="col-sm-12 first-module module_slider module_cont pb0" >
                                    	<div class="slider_container" >
                                            <div class="fullscreen_slider " style="height: 20%;">
                                                <ul>
                                                   <c:forEach items="${bannerList}" var="banner">
	                                                   <li data-transition="fade" data-slotamount="5" data-masterspeed="700" >
	                                                     <img src="<%=request.getContextPath() %>/${banner.imageurl}"  
                                                            ata-bgposition="center top" data-bgfit="cover" data-bgrepeat="no-repeat"/>   
	                                                   </li>
                                                   </c:forEach>
                                                   <%-- <li data-transition="fade" data-slotamount="5" data-masterspeed="700" >
                                                   <img src="<%=request.getContextPath() %>/upload/1e8ab72d-806b-4d21-bf76-83e44c63e66b.jpg"  data-bgposition="center top" data-bgfit="cover" data-bgrepeat="no-repeat" />   
                                                   </li>
                                                   <li data-transition="fade" data-slotamount="5" data-masterspeed="700" >
                                                  	  <img src="${pageContext.request.contextPath}/upload/3b6a542a-a263-49c2-b013-ce1a01c55d65.jpg"  data-bgposition="center top" data-bgfit="cover" data-bgrepeat="no-repeat" />              
                                                   </li>
                                                   <li data-transition="fade" data-slotamount="5" data-masterspeed="700" >
                                                  	  <img src="${pageContext.request.contextPath}/upload/4f184a88-db70-47ce-96ba-d9849112bb79.jpg" data-bgposition="center top" data-bgfit="cover" data-bgrepeat="no-repeat" />              
                                                   </li> --%>
                                                                                                                                                             
                                                </ul>
                                            </div>
                                        </div>                                        	
                                    </div>
                                </div>
                            </div>  
                            <!-- //Slider -->
                            
                            <div class="row">
                             	<div class="col-sm-12 module_cont pb0">
                                	<div class="bg_title">
                                    	<h2>我们的服务</h2>
                                    </div>                                  
                                </div>
                             </div>
                             
                            <div class="row">
								<div class="col-sm-6 module_cont pb30">
                                    <div class="module_content shortcode_iconbox type4 animate" data-anim-type="fadeInLeft" data-anim-delay="200">
                                        		
                                            <div class="iconbox_wrapper">
                                            	<div class="icon_title_wrap">
                                                    <div class="ico"><img src="<%=request.getContextPath() %>/${serviceList1.imageurl }" class="icon_def" width="80" height="80" alt="" /></div>
                                                    <h5 class="iconbox_title">${serviceList1.title }</h5>
                                                </div>
                                                <div class="iconbox_body">						
                                                    <p>${serviceList1.context }</p>
                                                </div>					
                                            </div>
                                       
                                    </div>
                                    <div class="module_content shortcode_iconbox type4 animate" data-anim-type="fadeInLeft" data-anim-delay="300">
                                        			
                                            <div class="iconbox_wrapper">
                                            	<div class="icon_title_wrap">
                                                    <div class="ico"><img src="<%=request.getContextPath() %>/${serviceList2.imageurl }" class="icon_def" width="80" height="80" alt="" /></div>
                                                    <h5 class="iconbox_title">${serviceList2.title }</h5>
                                                </div>
                                                <div class="iconbox_body">						
                                                    <p>${serviceList2.context }</p>
                                                </div>					
                                            </div>
                                    </div>
                                    <div class="module_content shortcode_iconbox type4 animate" data-anim-type="fadeInLeft" data-anim-delay="400">
                                       		
                                            <div class="iconbox_wrapper">
                                            	<div class="icon_title_wrap">
                                                    <div class="ico"><img src="<%=request.getContextPath() %>/${serviceList3.imageurl }" class="icon_def" width="80" height="80" alt="" /></div>
                                                    <h5 class="iconbox_title">${serviceList3.title }</h5>
                                                </div>
                                                <div class="iconbox_body">						
                                                    <p>${serviceList3.context }</p>
                                                </div>					
                                            </div>
                                      
                                    </div>
                                </div> 
                                <div class="col-sm-6 module_cont pb30 animate" data-anim-type="fadeIn" data-anim-delay="250">
                                	<img src="<%=request.getContextPath() %>/${serviceList4.imageurl }" class="img-responsive" alt="" />
                                </div>        	
                             </div>  
                             
                            <div class="row">
                                <div class="col-sm-12 module_cont animate" data-anim-type="fadeInUp" data-anim-delay="250">
                                    <div class="shortcode_promoblock">
                                        <div class="promoblock_wrapper">
                                            <div class="promo_text_block">
                                                <div class="promo_text_block_wrapper">
                                                	<h2 class="promo_text_main_title">${serviceList5.title }</h2>
                                                    <h6 class="promo_text_additional_title">${serviceList5.context }</h6>
                                                </div>
                                            </div>        
                                            <div class="promo_button_block"><a class="shortcode_button btn_large btn_type5" href="<%=request.getContextPath() %>/contactus.do">联系我们</a></div>
                                            <div class="clear"></div>                                                                                
                                        </div>
                                    </div>
                                    <div class="clear"></div>
                                </div>                             	
                            </div>                                                                               
                             
                            <div class="row">
                             	<div class="col-sm-12 module_cont pb0">
                                	<div class="bg_title">
                                    	<h2>我们的优势</h2>
                                    </div>                                   
                                </div>
                            </div> 
                            
                            <div class="row">                             	
                                <div class="col-sm-6 module_cont pb55 animate" data-anim-type="bounceInLeft" data-anim-delay="250">
                                    <c:forEach items="${advantageList}" var="adl">
                                    	 <c:if test="${adl.title eq '' }">
                                   		  <img src="<%=request.getContextPath() %>/${adl.imageurl}" class="img-responsive mt_23" alt="">
                                   		 </c:if>
                                    </c:forEach>
                                </div>
                                <div class="col-sm-6 module_cont module_accordion pb45 animate" data-anim-type="bounceInRight" data-anim-delay="250">
                                    <div class="shortcode_accordion_shortcode accordion">
                                        <c:forEach items="${advantageList }" var="adl" varStatus="adl_num">
                                          <c:if test="${adl.title ne '' }">
	                                        <h5 data-count="${adl_num.count }" class="shortcode_accordion_item_title <c:if test="${adl_num.count == 2}">expanded_yes</c:if> <c:if test="${adl_num.count != 2}">expanded_no</c:if>">${adl.title}<span class="ico"></span></h5>
	                                        <div class="shortcode_accordion_item_body">
	                                            <div class="ip">
	                                            	<p>${adl.context}</p>
	                                            </div>
	                                        </div>
                                          </c:if>
                                        </c:forEach>
                                    </div>
                                </div>
                             </div>
                             
                            <div class="row">
                                <div class="col-sm-12 module_cont pb0">
                                    <div class="bg_title">
                                        <h2>我们的业务</h2>
                                    </div>                                  
                                </div>
                            </div> 
                            
                            <div class="row">
                            	<div class="col-sm-12 module_cont pb15 module_tabs animate" data-anim-type="fadeInUp" data-anim-delay="300">
                                    <div class="shortcode_tabs type3">
                                        <div class="all_head_sizer"><div class="all_heads_cont"></div><div class="clear"></div></div>
                                        <div class="all_body_sizer"><div class="all_body_cont"></div></div>
                                        
                                        <c:forEach items="${businessList}" var="bul" varStatus="bul_num">
	                                        <div class="shortcode_tab_item_title <c:if test="${bul_num.count == 1 }">expand_yes</c:if> <c:if test="${bul_num.count != 1 }">expand_no</c:if>">${bul.title}</div>
	                                        <div class="shortcode_tab_item_body tab-content clearfix">
	                                            <div class="ip">
	                                                <div class="tab_content">
	                                                    <p>${bul.context}</p>
	                                                    <img src="<%=request.getContextPath() %>/${bul.imageurl}" class="mt38"/>                                                     
	                                                </div>
	                                            </div>
	                                        </div>
                                        </c:forEach>
                                                                  
                                        <div class="clear"></div>
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
    
      
    <script type="text/javascript">
		jQuery(document).ready(function() {
		   "use strict";			   						
		   jQuery('.fullscreen_slider').show().revolution({
				delay: 5000,
				startwidth: 1170,
				startheight: 500,
				fullWidth:"off",
				fullScreen:"no",
				navigationType:"bullet",
				fullScreenOffsetContainer: ".main_header",
				fullScreenOffset: ""
			});							
		});
	</script> 
    
    <!-- Portfolio -->
    <script>	
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
	</script> 
</body>
</html>