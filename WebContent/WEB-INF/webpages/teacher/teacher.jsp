<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../inc/include.inc.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
  <head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>Bootstrap 101 Template</title>

    <!-- Bootstrap -->
    <link rel="stylesheet" type="text/css" href="../style/css/bootstrap.css" >
    <link rel="stylesheet" type="text/css" href="../style/css/bootstrap-table.min.css" >

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script type="text/javascript" src="${basePath }js/jquery.min.js"></script>
    <script type="text/javascript" src="${basePath }js/bootstrap-3.3.5/bootstrap.min.js"></script>
    <script type="text/javascript" src="${basePath }js/bootstrap-3.3.5/bootstrap-table.js"></script>
    <script type="text/javascript" src="${basePath }js/bootstrap-3.3.5/bootstrap-table-zh-CN.js"></script>
<%--     <script defer="defer" type="text/javascript" src="${basePath }js/bootstrap-3.3.5/page.js"></script> --%>
    <script type="text/javascript" src="${basePath }js/bootstrap-3.3.5/myPage.js"></script>
  </head>
  <body>
  	<div class="container">
			<nav class="navbar navbar-default" role="navigation">
			   <div class="navbar-header">
			      <a class="navbar-brand" href="#">W3Cschool</a>
			   </div>
			   <div>
			      <form name="searchForm" action="list" method="post" class="navbar-form navbar-right" role="search">
			         <div class="form-group">
			            <input type="text" class="form-control" placeholder="Search">
			         </div>
			         <button type="submit" class="btn btn-default">提交</button>
			      </form>    
			   </div>
			</nav>
		<table class="table table-striped table-bordered table-hover datatable">
	        <thead>
	          <tr>
	            <th>编号</th>
	            <th>姓名</th>
	            <th>学科</th>
	          </tr>
	        </thead>
	        <tbody>
				<c:forEach var="obj" items="${list}">
		          <tr>
		            <td>${obj.id }</td>
		            <td>${obj.name }</td>
		            <td>${obj.teachingCourse }</td>
		          </tr>
	          	</c:forEach>
	        </tbody>
	     </table>${currentPage }
		<div class="panelBar" numPerPage="${numPerPage }" totalCount="${totalcount }" currentPage="${currentPage }"></div>
    </div>
  </body>
</html>