package saveReg;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RegServlet")
public class RegServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {

			Connection con = DatabaseConnection.initializeDatabase();

			PreparedStatement st = con
					.prepareStatement("insert into reg(fname,lname,email,password,cpassword) values(?,?,?,?,?)");

			st.setString(1, String.valueOf(request.getParameter("fname")));
			st.setString(2, String.valueOf(request.getParameter("lname")));
			st.setString(3, String.valueOf(request.getParameter("email")));
			st.setString(4, String.valueOf(request.getParameter("password")));
			st.setString(5, String.valueOf(request.getParameter("cpassword")));

			st.executeUpdate();

			st.close();
			con.close();

			PrintWriter out = response.getWriter();

			out.println(
					"<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
			out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
			out.println("<script>");
			out.println("$(document).ready(function(){");
			out.println("swal ( 'Successfully Registered' ,  '' ,  'success' );");
			out.println("});");
			out.println("</script>");

			RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
			rd.include(request, response);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
