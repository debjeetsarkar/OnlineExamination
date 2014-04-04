import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

public class Admin extends HttpServlet {
	public Connection con;

	public void init(ServletConfig sc) {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "kuttush");
		} catch (Exception e) {
			System.out.println(e);
		}
	}

	public void doPost(HttpServletRequest areq, HttpServletResponse ares)
			throws ServletException, IOException {

		ares.setContentType("text/html");
		PrintWriter out = ares.getWriter();
		String quesid=areq.getParameter("questionid");
		String ques = areq.getParameter("question");
		String optA = areq.getParameter("optiona");
		String optB = areq.getParameter("optionb");
		String optC = areq.getParameter("optionc");
		String optD = areq.getParameter("optiond");
		String correctAns = areq.getParameter("answer");

		try {

			PreparedStatement st = con
					.prepareStatement("insert into qna values(?,?,?,?,?,?,?)");
			st.setString(7, quesid);
			st.setString(1, ques);
			st.setString(2, optA);
			st.setString(3, optB);
			st.setString(4, optC);
			st.setString(5, optD);
			st.setString(6, correctAns);
			int i = st.executeUpdate();
			RequestDispatcher rd;
			if (i > 0) {

				rd = areq.getRequestDispatcher("Admin_GUI.html");
				rd.forward(areq, ares);
				return;
			} else {

				rd = areq.getRequestDispatcher("Registration_GUI.html");
				rd.forward(areq, ares);
				return;
			}

		} catch (Exception e) {
			System.out.println(e);
		}

	}

}
