

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        //super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		String id = request.getParameter("userId");
		String password = request.getParameter("password");
		Users user = new Users();
		user.setUserId(id);
		user.setPassword(password);
		
		Authenticate auth = new Authenticate();
		String validation = auth.authenticateUser(user);
		if(validation.equals("E") || validation.equals("M")) {
			request.setAttribute("userId", id);
			request.setAttribute("role", validation);
			request.getRequestDispatcher("/WelcomePage.jsp").forward(request, response);
		}
		else {
			request.setAttribute("errMessage", validation);
			request.getRequestDispatcher("/LoginPage.jsp").forward(request, response);
		}
		
	}

}
