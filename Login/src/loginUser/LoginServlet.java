package loginUser;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private LoginDao loginDao;

	public void init() {
		loginDao = new LoginDao();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String username = request.getParameter("username");
		String password = request.getParameter("password");
		LoginBean loginBean = new LoginBean();
		loginBean.setUsername(username);
		loginBean.setPassword(password);

		try {
			if (loginDao.validate(loginBean)) {
				// HttpSession session = request.getSession();
				// session.setAttribute("username",username);
				// response.sendRedirect("WelcomePage.jsp");
				RequestDispatcher rd = request.getRequestDispatcher("WelcomePage.jsp");
				rd.include(request, response);

			} else {
				request.setAttribute("messageResponse", "Login failed: wrong login credentials");

			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
}