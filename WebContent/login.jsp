<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MyBlog</title>
 	<!-- Bootstrap core CSS -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->  
    <link rel="stylesheet" href="/Blog/css/public.css" /> 
    <link rel="stylesheet" href="/Blog/css/login.css" />  
</head>
<body>
	<div class="container">
		<form 
			action="/Blog/LoginServlet" 
			method="post">

			<h1>
				<a href="/Blog/index.jsp">MyBlog</a>
			</h1>
			<%if (request.getAttribute("loginFail") != null) {%>
			<p class="text-danger">Sai tên đăng nhập hoặc mật khẩu</p><%} %>
			<label 
			for="input" 
			class="sr-only">Tên đăng nhập</label> 
			
			<input 
			type="text" 
			id="input" 
			class="form-control" 
			placeholder="username" 
			name="username"
			required>
			
			<label 
			for="inputPassword" 
			class="sr-only">Mật khẩu</label>
			
			<input 
			type="password" 
			id="inputPassword" 
			class="form-control"
			placeholder="password" 
			name="password" 
			required>

			<button 
			class="btn btn-lg btn-primary btn-block" 
			type="submit"
			id="submit">Đăng nhập</button>

			<a 
			class="visitor" 
			href="/Blog/index.jsp">Đăng nhập với tư cách khách&nbsp;</a>
		</form>
	</div>

	<!-- footer -->
</body>
</html>