package blog.ajax;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import blog.model.Comment;
import blog.service.CommentService;
import net.sf.json.JSONObject;

/**
 * Servlet implementation class CMDissServlet
 */
@WebServlet("/CMDissServlet")
public class CMDissServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
		String id = request.getParameter("id");
		
		JSONObject jo = new JSONObject();
		boolean repeat = false;
	
		Cookie[] cookies = request.getCookies();
		for (Cookie cookie : cookies) {
			if (cookie.getName().equals("diss_cm" + id)) {
				
				jo.put("msg", "failed");
				repeat = true;
				break;
			}
		}
		if (!repeat) {

			CommentService cs = CommentService.getInstance();
			int new_diss = cs.star_diss(Integer.parseInt(id), Comment.DISS);
			jo.put("msg", "success");
			jo.put("new_diss", new_diss);

			
			Cookie cookie = new Cookie("diss_cm" + id, System.currentTimeMillis() + "");
			
			cookie.setMaxAge(15 * 60);
			
			cookie.setPath("/Blog");
		
			response.addCookie(cookie);
		}
	
		response.getWriter().println(jo);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
