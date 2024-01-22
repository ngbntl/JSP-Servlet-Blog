package blog.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.tagext.Tag;
import javax.servlet.http.HttpSession;

import blog.dao.ArticleDao;
import blog.dao.UserDao;
import blog.daoImpl.UserDaoImpl;
import blog.db.VisitorDB;
import blog.model.Article;
import blog.model.User;
import blog.service.ArticleService;
import blog.service.TagService;
import blog.utils.LoginUtils;

/**
 * Login->index.jsp->init data
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		if (session.getAttribute("user") != null){
			session.removeAttribute("user");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		if (session.getAttribute("user") != null){
			session.removeAttribute("user");
		}
		if (session.getAttribute("guest") != null){
			session.removeAttribute("guest");
		}
		LoginUtils.login(request);
		if (session.getAttribute("guest") == null && session.getAttribute("user") == null){
			request.setAttribute("loginFail", true);
			request.getRequestDispatcher("/login.jsp").forward(request, response);
			return;
		} 


		// Khởi tạo phân loại
		ArticleService as = ArticleService.getInstance();
		request.setAttribute("sort_count_map", as.getSortAndCount());
		// Khởi tạo danh sách bài viết
		request.setAttribute("article_list", as.getArticle());
		// Initialize get tag
		TagService ts = TagService.getInstance();
		request.setAttribute("tag_list", ts.getAllTag());

		// Initialize the number of sidebar logs, categories, and tags
		request.setAttribute("article_number", as.getCount(ArticleDao.SEARCH_ARTICLE));
		request.setAttribute("sort_number", as.getCount(ArticleDao.SEARCH_SORT));
		request.setAttribute("tags_number", ts.getTagCount());

		// Reading ranking
		request.setAttribute("visit_rank", as.getVisitRank());

		// Transfer website statistics
		request.setAttribute("visited", VisitorDB.totalVisit());
		request.setAttribute("member", VisitorDB.totalMember());

		// Forward to blog home page interface
		request.getRequestDispatcher("/page/main.jsp").forward(request, response);
	}

}
