package servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SearchServ
 */
@WebServlet("/SearchServ")
public class SearchServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchServ() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		@SuppressWarnings("unchecked")
		String[] tagsarray = request.getParameter("search").split(",");
		List<String> tags = Arrays.asList(tagsarray);
		System.out.print((String)request.getSession().getAttribute("type"));
		String category = request.getSession().getAttribute("type").toString();
		Connector con = (Connector)request.getSession().getAttribute("Connector");
		if(con == null) {
			con = new Connector(null);
			request.getSession().setAttribute("Connector", con);
		}
		if(category.contentEquals("Organizer")) {
			List<User> users = con.getUserByTag(tags);
			request.setAttribute("userResult", users);
		}
		else if(category.contentEquals("Contributor")) {
			List<Project> projects = con.getProjectByTag(tags);
			request.setAttribute("projectResult", projects);
		}
		getServletContext().getRequestDispatcher("/SearchResult.jsp").forward(request, response);
	}

}
