package blog.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import blog.model.Article;
import blog.service.ArticleService;
import blog.service.CommentService;
import blog.service.TagService;

@WebServlet("/ArticleServlet")
public class ArticleServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String id = request.getParameter("id");
		ArticleService as = ArticleService.getInstance();
	
		Article a = as.getArticle("id", id).get(0);
		request.setAttribute("article", a);

	
		TagService ts = TagService.getInstance();
		request.setAttribute("article_tags", ts.getTagById(id));
	
		request.setAttribute("article_pre", as.getPreviousArticle(a.getTime()));
	
		request.setAttribute("article_next", as.getNextArticle(a.getTime()));
		
		CommentService cs = CommentService.getInstance();
		request.setAttribute("comment", cs.loadComment(a.getId()));

		request.getRequestDispatcher("/page/article.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
