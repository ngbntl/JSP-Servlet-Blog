<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
		
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MyBlog</title>


<!-- Bootstrap core CSS -->
<link	href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<!-- Custom styles for this template -->
<link href="signin.css" rel="stylesheet">

<link type="text/css" rel="stylesheet" href="./css/public.css" />
<link type="text/css" rel="stylesheet" href="./css/admin.css" />

<script src="./js/admin.js"></script>

</head>
<body>
	<div class="head_line"></div>
	<div class="container" id="main">
				
		<div id="header">
			<div>
				<h2><a href="/Blog">MyBlog</a></h2>
				<h5 class="text-muted">A little rough but it works</h5>
				</div>		
		</div>
				 
				 <div class="admin_div">
				<h4 class="btn btn-default">Số liệu thống kê</h4>
				<h5> Visited ${visited } times</h5>
				<h5> There are ${member} visitors in total</h5>    
				
				</div>
				<div class="admin_div">
				<h4 class="btn btn-default">Quản lý bài viết</h4>
				
				<c:forEach var="a" items="${articles}">				
				<div class="list-group-item">						
						<span>${a.title}</span>
						 <div class="r_div">	
						 <span>${a.time}</span>
						 
						 <a href="/Blog/AdminDataServlet?op=edit_article&&article_id=${a.id}">
						 <button class="btn btn-default">&nbsp;<span class="glyphicon glyphicon-pencil" style="color:#5bc0de" >Sửa</span>&nbsp;</button>
						 </a>
						 
						 <button class="btn btn-default">&nbsp;
						 <span class="glyphicon glyphicon-trash" style="color:#d9534f" onclick="delete_article(this,'${a.id}')"> Xóa</span>&nbsp;</button>
						 </div>										 
				</div>							
				</c:forEach>					
				</div>
				
				<div class="admin_div">
				<h4 class="btn btn-default">Quản lí loại</h4><h5 style="color:#d9534f" >Xóa một danh mục sẽ xóa tất cả các bài viết</h5>
				<c:forEach var="s" items="${sort}">				
				<div class="list-group-item">						
						<input type="text"  class="sort" value="${s}"   disabled="disabled" style="border:0px;"  >
						 <div class="r_div">							
						 <button class="btn btn-default">&nbsp;<span class="glyphicon glyphicon-pencil" style="color:#5bc0de" onclick="edit_sort(this,'${s}')">Sửa</span>&nbsp;</button>
						 <button class="btn btn-default">&nbsp;<span class="glyphicon glyphicon-trash" style="color:#d9534f" onclick="delet_sort(this,'${s}')">Xóa</span>&nbsp;</button>
						 </div>										 
				</div>							
				</c:forEach>
				</div>
				
				<div class="admin_div">
				<h4 class="btn btn-default">Quản lý tags</h4>
				<c:forEach var="t" items="${tags}">				
				<div class="list-group-item">						
						<input type="text" class="tags"  value="${t.tag}"  disabled="disabled"  style="border:0px">
						 <div class="r_div">	
						 <button class="btn btn-default">&nbsp;<span class="glyphicon glyphicon-pencil" style="color:#5bc0de" onclick="edit_tag(this,'${t.tag}')" >Sửa</span>&nbsp;</button>
						 <button class="btn btn-default">&nbsp;<span class="glyphicon glyphicon-trash" style="color:#d9534f" onclick="delet_tag(this,'${t.tag}')">Xóa</span>&nbsp;</button>
						 </div>										 
				</div>							
				</c:forEach>
				
				</div>
			
				
				



		<div class="foot_line"></div>		
		</div><!-- container -->		
		
		
		
		
		
			
	
</body>
</html>