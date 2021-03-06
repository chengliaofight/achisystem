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
    
    <title>My JSP 'modules.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
		<link rel="stylesheet" type="text/css" href="/achievement/source/bootstrap-3.3.7-dist/css/bootstrap.css">
	<script type="text/javascript" src="/achievement/source/jquery-3.2.1/jquery.js"></script>
	<script type="text/javascript" src="/achievement/source/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
	
	<style type="text/css">
		.model_name{
			
			border-color: #A1A7AD;
			border-width: 1px;
		}
		.model_descript{
			
			border-color: #A1A7AD;
			border-width: 1px;
		}
		.font{
			
			border-color: #A1A7AD;
			border-width: 1px;
		}
		.font_inner{
			height: 200px;
			margin-top:10px;
			
			border-color: #A1A7AD;
			border-width: 1px;
		}
		#model_descript{
			word-break: break-all;
			word-wrap: break-word;
		}
		#model_name{
			text-align: center;
			font-size: 2em;
		}
	</style>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
	<nav class="nav navbar-default navbar-fixed-top" role="navigation">
	    <div class="container-fluid">
	      <div class="navbar-header">
	        <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
	          <span class="icon-bar"></span>
	          <span class="icon-bar"></span>
	          <span class="icon-bar"></span>
	        </button>
	      </div>
	      <div class="collapse navbar-collapse">
	      	<li class="active"><a href="/achievement/front/index">首页</a></li>
	      </div>
	    </div>
	</nav>  
     
   	<div style="height: 60px;"></div>
   	<div class="col-md-1"></div>
    <div class="container col-md-12">
      <div class="row">
        <div class="col-md-12">
          <ul id="mytab" class="nav nav-tabs">
            <li class="active">
              <a href="#xw1" data-toggle='tab'>成果展示</a>
            </li>
            <c:forEach items="${modules }" var="module">
             <li>
              <a href='#${module.modId }' data-toggle='tab'>${module.modName }</a>
            </li>
            </c:forEach>
           
          </ul>
        <div class="tab-content">
            <div class="tab-pane active fade in" id="xw1">
              <div class="col-md-12 font">
              		<h3>成果名称:${achievement.achName }</h3>
              </div>
              <div class="col-md-12 font_inner" >
              	<div class="col-md-7">
              		<video controls autoplay height="550px" width="944px;" style="border:solid;">
						<source src="${achievement.achVideoPath }" >
					</video>
				</div>
				<div class="col-md-5">
					<img src="${achievement.achImagePath }" class="img-responsive pull-right">
				</div>
				<div class="col-md-12" style="padding-top: 55px;">
					<h4>成果描述:</h4>
					<div>${achievement.achDescribe }</div>
				</div>
              </div>
            </div>
            
          <c:forEach items="${modules }" var="module">
            <div class="tab-pane fade in" id="${module.modId }">
          	<div class="col-md-12 font">
            </div>
            <div class="col-md-12 " style="margin-top: 10px;">
              	<div class="col-md-12 " id="model_name">${module.modName }</div>
              	<div class="col-md-3"></div>
              	<div class="col-md-6" id="model_descript">${module.modContent }</div>
              	<div class="col-md-3"></div>
            </div>
        </div>
           </c:forEach>
       
       </div>
      </div>
     </div>
    </div>
  </body>
</html>
