<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
		
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${article.title} | MyBlog</title>
<!-- Bootstrap core CSS -->
<link
	href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<!-- Custom styles for this template -->
<link href="signin.css" rel="stylesheet">

<link type="text/css" rel="stylesheet" href="./css/article.css" />
<link type="text/css" rel="stylesheet" href="./css/comment.css" />

<script src="./js/article.js"></script>

</head>
<body>
	<div class="head_line"></div>
	<div class="container" id="main">

		<div class="head">
			<div id="title">
				<h2>
					<a href="/Blog/index.jsp">MyBlog</a>
				</h2>
			</div>
		</div>

		<div id="article">

			<div id="a_head ">
				<h3>${article.title}</h3>
				<br />
				<div>
					<h5>
						<span>${article.time}</span> <a href="/Blog/SortServlet?get=${article.sort}">${article.sort}</a>
					${article.author}
					</h5>
				</div>
				<div class="r_div">
					<h5>
						<span class="glyphicon glyphicon-eye-open">&nbsp;${article.visit}&nbsp;</span>						
						 <span class="glyphicon glyphicon-heart" id="love">&nbsp;${article.star}&nbsp;</span> 
						 <span	class="glyphicon glyphicon-comment">&nbsp;${article.comment}&nbsp; </span>
					</h5>
				</div>
				<div id="tag">
				<c:forEach var="t" items="${article_tags}">
					<a href="/Blog/TagsServlet?get=${t.tag}">${t.tag}&nbsp;</a>
				</c:forEach>
				</div>
			</div>
		</div>
			<div class="line"></div>



			<div id="a_content">
			<!-- Introduce show.jsp to display article content ${article.content}-->
			<jsp:include page="/page/show.jsp"/>			
			</div>


			<div>
				<div class="f_div">
					<span class="glyphicon glyphicon-chevron-left"></span>
					
					
					<c:choose>
						<c:when test="${article_pre!=null}">
							<a href="/Blog/ArticleServlet?id=${article_pre.id}">&nbsp;Bài trước:${article_pre.title}</a>
						</c:when>					
						<c:otherwise>
							&nbsp;Không có bài viết nào trước đó
						</c:otherwise>					
					</c:choose>
					
				</div>				
				<div class="r_div">
				
						<c:choose>
						<c:when test="${article_next!=null}">
							<a href="/Blog/ArticleServlet?id=${article_next.id}">Bài sau:&nbsp;${article_next.title}</a>
						</c:when>					
						<c:otherwise>
							&nbsp;Không còn bài viết nào nữa
						</c:otherwise>					
					</c:choose>
						
					<span class="glyphicon glyphicon-chevron-right"></span>
				</div>
				
				<div>			
				<span class="btn btn-default" style="color:#d9534f;"  onclick="love_article(${article.id})" >Yêu thích</span>
				</div>						
				<br/>
			</div>
			
			<div class="line"></div>
			
								
			<div class="comment"> 
			
			<div class="r_div">
			<a href="#comment"><span class="glyphicon glyphicon-pencil">&nbsp;Comment....</span></a>
			</div>
					
			
			<c:if test="${comment!=null}">
			<c:forEach var="comm" varStatus="status" items="${comment}">
			
			<div class="row" >
			<div class="f_div">		
			<img src="/Blog/img/comment.jpg" height="50" width="50"  class="img-circle"/>
			&nbsp;&nbsp;			
			<span style="color: #428bca"> ${comm.nickname}</span>					
			<span>&nbsp;&nbsp;${comm.time}</span>
			</div>			
			<div  id="c_content" class="c_left">						
			<pre>${comm.content }</pre>			
			</div>			
			<div class="r_div">			
			<a><span class="glyphicon glyphicon-thumbs-up"  onclick="star(this,${comm.id})">${comm.star}</span></a>
			&nbsp;
			<a><span class="glyphicon glyphicon-thumbs-down" onclick="diss(this,${comm.id})">${comm.diss}</span></a>
			&nbsp;	
			<!-- admin here -->
			<c:if test="${sessionScope.user!=null}">	
			<span class="btn btn-default" style="color:red;" onclick="deletecm(this,${comm.id})">Xóa</span>
			&nbsp;		
			</c:if>		
			</div>			
			<div class="line"></div>
			</div>		
			
			</c:forEach>
			
			</c:if>
			</div>
		
			<div id="comment">
			
			<form action="/Blog/NewCommentServlet?id=${article.id}" method="post">
			<input  style="width:30%" class="form-control" type="text" name="w_nickname" value="Cư dân mạng nhiệt tình"  >
			<br/>							
			<textarea style="resize:none; width:100%; height:180px;" name="w_content"></textarea>
			<br/>
			<br/>			
			<input  class="btn btn-default"  type="submit"   value="Đăng bình luận" onclick="onclick"/>	
			<br/>						
			</form>			
			</div>
			<!--  -->    			
			<div class="line"></div>
			 	
	</div>
	<div id="footer">	
	<a href="/Blog/index.jsp">MyBlog&nbsp;&nbsp;</a>|
	<a href="#">&nbsp;&nbsp;Back to top</a>
	</div>
	<!-- footer -->
</body>
</html>