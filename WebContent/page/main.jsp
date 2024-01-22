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

<link type="text/css" rel="stylesheet" href="./css/main.css" />
</head>
<body>
	<div class="head_line"></div>

	<div class="container" id="main">
	
		<div id="header"></div>

		<div class="row c_center">
			<div class="col-md-3" id="left_content">

				<div id="title">
					<h2><a href="/Blog/login.html">MyBlog</a></h2>
					<h5 class="text-muted">Winner Winner Chicken Dinner!</h5>
				</div>

				<div class="c_center" id="person_info">
					<img src="/Blog/img/header.jpg" height="130" width="130"
						alt="no-image" class="img-circle">
					<h4 class="text-muted">Blog cộng đồng</h4>
					<h5 class="text-muted">Sao và mây.</h5>
				</div>

				<div class="c_center">
					<!-- Here initialize the 4 labels of the sidebar -->
					<div class="inline ">
						<a style="font-size: smaller;" href="#">${article_number}<br/>Bài viết</a>
					</div>
					<div class="inline ">
						<a style="font-size: smaller;" href="/Blog/SortServlet?get=all"><span> ${sort_number} </span><br/>Phân loại</a>
					</div>
					<div class="inline " >
						<a style="font-size: smaller;" href="/Blog/TagsServlet?get=all"><span>${tags_number}</span><br/>Tags</a>
					</div>
					
				</div>
			

				<div id="list">
					<table class="table table-hover c_center">
						<tr>
							<td><a href="/Blog/index.jsp	"><span class="glyphicon glyphicon-home"></span>
								&nbsp;&nbsp;Trang chủ</a></td>
						</tr>
						<tr>	
							<td><a href="/Blog/SortServlet?get=all"><span class="glyphicon glyphicon-list"></span>
								&nbsp;&nbsp;Phân loại</a></td>
						</tr>
						<tr>
							<td class="active"><a href="/Blog/TagsServlet?get=all"><span class="glyphicon glyphicon-tags"></span>
								&nbsp;&nbsp;Tags</a></td>
						</tr>						
						<tr>
							<td><a href="/Blog/AxisServlet"><span class="glyphicon glyphicon-book"></span>
								&nbsp;&nbsp;Thời gian</a></td>
						</tr>
						<tr>
							<td><a href="/Blog/page/about.html"><span class="glyphicon glyphicon-user"></span>
								&nbsp;&nbsp;About</a></td>
						</tr>
						<!-- <tr>
							<td><a href="/Blog/login.jsp"><span class="glyphicon glyphicon-log-out"></span>
								&nbsp;&nbsp;Login</a></td>
						</tr> -->
						
			            <c:if test="${sessionScope.user!=null}">
			                <!-- If the user is logged in, display the logout button -->
			                <tr>
			                    <td>
			                        <a href="/Blog/LoginServlet">
			                            <span class="glyphicon glyphicon-log-out"></span>
			                            &nbsp;&nbsp;Logout
			                        </a>
			                    </td>
			                </tr>
			            </c:if>
			            <c:if test="${sessionScope.user==null}">
			                <!-- If the user is not logged in, display the login button -->
			                <tr>
			                    <td>
			                        <a href="/Blog/login.jsp">
			                            <span class="glyphicon glyphicon-log-in"></span>
			                            &nbsp;&nbsp;Login
			                        </a>
			                    </td>
			                </tr>
			            </c:if>
					</table>
				</div>
				<!-- list -->
					<br/>
					
				<div class="sort">
					<div class="list-group">
						<span class="list-group-item active">Phân loại</span>						
						<c:forEach var="entity"  items="${sort_count_map}">
						 <a href="/Blog/SortServlet?get=${entity.key}" class="list-group-item">${entity.key}&nbsp;&nbsp;&nbsp;&nbsp; (${entity.value})</a>						
						</c:forEach>														
					</div>
				</div><!-- sort -->

				
				<div class="visit">
					<div class="list-group">
						<span class="list-group-item active">Xếp hạng bài đọc</span>						
						
						<c:forEach var="a"  items="${visit_rank}">
						 <a href="/Blog/ArticleServlet?id=${a.id}" class="list-group-item">${a.title}&nbsp;&nbsp; <span class="c_right">(${a.visit})</span></a>						
						</c:forEach>									
											
					</div>
				</div><!-- visit-->
	

				<div id="tag">
					<div class="list-group">
						<span class="list-group-item active">Tags</span>					
						<br/>
						
								
						<c:forEach var="t"  varStatus="status" items="${tag_list}" >		
						<c:choose>
						<c:when test="${status.count%2==1}">
							<span class="label label-info"><a href="/Blog/TagsServlet?get=${t.tag}">
							&nbsp;${t.tag}&nbsp;</a></span>							
						</c:when>
						<c:otherwise>
								<span class="label label-success"><a href="/Blog/TagsServlet?get=${t.tag}">
								&nbsp;${t.tag}&nbsp;</a></span>						
						</c:otherwise>
						</c:choose>
					
						</c:forEach>						
											
					</div>
				</div><!-- tag -->
				
				
			<!-- admin here -->
			<c:if test="${sessionScope.user!=null}">
			<a href="/Blog/AddServlet">
			<span class="glyphicon glyphicon-plus">&nbsp;&nbsp;Bài viết mới&nbsp;&nbsp;</span>
			</a>
			<a href="/Blog/AdminServlet">
			<span class="glyphicon glyphicon glyphicon-user">&nbsp;&nbsp;Quản lí&nbsp;&nbsp;</span>
			</a>
			</c:if>
			<!--  -->
			
			</div>
			<div class="col-md-2" id="center_content">		
			</div>
					
			
			<div  class="col-md-7 " id="right_Content">
				<br />
				<br />
				<div class="list-group">							
					<a href="#" class="list-group-item active">Bài viết</a>
					
					<c:forEach var="article"   items="${article_list}" >	
					<div  class="list-group-item">									
					<h4><a href="/Blog/ArticleServlet?id=${article.id}">${article.title}</a></h4>
					<br/>
					<span>${article.time}&nbsp;&nbsp;|</span>
					<a href="/Blog/SortServlet?get=${article.sort}">${article.sort}</a>&nbsp;&nbsp;|
					<span>Lượt xem: ${article.visit}</span>
					<br/><br/>					
					<span>${article.content}</span>
					<br/><br/><br/>	
					<a href="/Blog/ArticleServlet?id=${article.id}">Đọc thêm</a>
					<br/>			
					</div>
					</c:forEach>
					<!-- Initialization of article list completed -->			
				</div>
			</div>	
		</div>				
		<div class="foot_line"></div>
			</div><!-- container -->
	<div id="footer">
		
		
		<div class="r_div">
		<a href="#"><input  class="btn btn-default"   value="Back to top"  style="width:50%;"/></a>
		<h6> Lượt truy cập ${visited }</h6>
		<h6> Bạn là khách truy cập thứ ${member}</h6>    
		</div>
		
	</div><!-- footer -->
</body>
</html>