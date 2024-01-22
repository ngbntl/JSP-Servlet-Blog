package blog.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
 * Servlet implementation class HomeServlet
 */
@WebServlet("/HomeServlet")
public class HomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HomeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
