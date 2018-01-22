<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
    
<script src="/achievement/source/vendors/jquery-1.9.1.min.js"></script>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="/achievement/source/css/banner.css">
	<link rel="stylesheet" type="text/css" href="/achievement/source/bootstrap-3.3.7-dist/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="/achievement/source/css/picture.css">
	
	
	<script type="text/javascript" src="/achievement/source/jquery-3.2.1/jquery.js"></script>
	<script type="text/javascript" src="/achievement/source/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
	<script type="text/javascript" src="/achievement/source/js/banner.js"></script>

	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript">
var map= ${slideShowMap };

</script>
<style type="text/css">
#banner2{
	display:inline-block;
}

#img2{
	width:100%;
	height:100%;
}
#img2_beforediv{
	height:150px;
}
</style>
  </head>
  
  <body style="background-color:#0F0D0D;">
  <div id="slide_pic">
	<div class="col-md-10 col-sm-10">
	<div class="banner" id="banner2">
		<div class="banner-view"></div>
		<div class="banner-btn"></div>
		<div class="banner-number"></div>
		<div class="banner-progres"></div>
	</div>
</div>
<div class="col-md-2 col-sm-2">
	<div class="aside_banner" id="aside_banner1" style="float: right;margin:2px;">
	<c:forEach items="${hotAchievements }" var="achievement">
	<div><img src="${achievement.achImagePath}" class="img-rounded img-thumbnail col-md-12 col-sm-12" style="height:19%;" onclick='window.open("/achievement/front/${achievement.achId}/video?Url="+getUrl(),"_self");'></div>
	</c:forEach>
		<div>
			<button class="col-md-6 col-sm-6 btn btn-default btn-lg" onclick="window.open('/achievement/front/HotAchievement/1','_self')"><span class="glyphicon glyphicon-fire" style="font-size: 35px;color: #C54D4D;"></span><br>最热</button>
			<button class="col-md-6 col-sm-6 btn btn-default btn-lg" onclick="window.open('/achievement/front/NewAchievement/1','_self')"><span class="glyphicon glyphicon-flag" style="font-size: 35px;color: #C54D4D;"></span><br>最新</button>
		</div>
	</div>
	</div>
	<div class="col-md-12" style="margin-left: 12px;">
	<div class="lower_banner " id="lower_banner1" style="background: #0F0D0D;float: left;padding:3px;">
	<c:forEach items="${newAchievements }" var="achievement">
	<div class="col-md-2 col-sm-2" id="img2_beforediv"><img src="${achievement.achImagePath }" class="img-rounded img-thumbnail" onclick='window.open("/achievement/front/${achievement.achId}/video?Url="+getUrl(),"_self");' id="img2"></div>
	
	</c:forEach>
	</div>
	</div>
	</div>

<script type="text/javascript">

	 $(function(){
            $("banner2").height($(window).height()*0.83);
        });
         window.onresize=function(){  
            $("banner2").height($(window).height()*0.83);
            //HollyProxy.HomePage.prototype.search('${ctx}');//每变一次都会加载该事件
        };
	
	var wd=document.body.clientWidth*0.83;
	var ht=document.body.clientHeight*0.86;
	var banenr2 = new FragmentBanner({
		container : "#banner2",//选择容器 必选
		imgs : ${slideShow},//图片集合 
		size : {
			width : wd,
			height : ht
		},
	});
</script>

  </body>
</html>
