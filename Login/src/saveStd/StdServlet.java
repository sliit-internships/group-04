package saveStd;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/StdServlet")
public class StdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			java.util.Date date = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("calendar"));
			java.sql.Date sqlDate = new java.sql.Date(date.getTime());
			Connection con = DbConnection.initializeDatabase();

			PreparedStatement st = con.prepareStatement(
					"insert into std_table(cyear,calendar,period,specialization,stdname,stdmobile,stdphone,stdemail,startdate,supemail) values(?,?,?,?,?,?,?,?,?,?)");

			st.setInt(1, Integer.valueOf(request.getParameter("cyear")));
			st.setDate(2, sqlDate);
			st.setString(3, String.valueOf(request.getParameter("period")));
			st.setString(4, String.valueOf(request.getParameter("specialization")));
			st.setString(5, String.valueOf(request.getParameter("stdname")));
			st.setInt(6, Integer.valueOf(request.getParameter("stdmobile")));
			st.setInt(7, Integer.valueOf(request.getParameter("stdphone")));
			st.setString(8, String.valueOf(request.getParameter("stdemail")));
			st.setString(9, String.valueOf(request.getParameter("startdate")));
			st.setString(10, String.valueOf(request.getParameter("supemail")));

			st.executeUpdate();

			st.close();
			con.close();

			PrintWriter out = response.getWriter();

			out.println(
					"<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
			out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
			out.println("<script>");
			out.println("$(document).ready(function(){");
			out.println("swal ( 'Successfully Inserted' ,  '' ,  'success' );");
			out.println("});");
			out.println("</script>");

			RequestDispatcher rd = request.getRequestDispatcher(".jsp");
			rd.include(request, response);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
