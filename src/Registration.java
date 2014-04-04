import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.GenericServlet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Registration extends HttpServlet {
	public Connection con;

	public void init(ServletConfig sc) {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(
					"jdbc:oracle:thin:@localhost:1521:xe", "system", "kuttush");
		} catch (Exception e) {
			System.out.println(e);

		}
	}

	public void doPost(HttpServletRequest rreq, HttpServletResponse rres)
			throws ServletException, IOException {
		rres.setContentType("text/html");
		PrintWriter out = rres.getWriter();
		String us = rreq.getParameter("username");
		String pw = rreq.getParameter("password");
		String fn = rreq.getParameter("firstname");
		String mn = rreq.getParameter("middlename");
		String ln = rreq.getParameter("lastname");
		String em = rreq.getParameter("email");
		String inst = rreq.getParameter("institute");
		String gen = rreq.getParameter("gender");
		String ct = rreq.getParameter("city");
		String state = rreq.getParameter("state");
		int pin = Integer.parseInt(rreq.getParameter("pin"));
		// System.out.print("pin "+pin);
		String cn = rreq.getParameter("country");
		String phnum = rreq.getParameter("contactnum");
		int dob = Integer.parseInt(rreq.getParameter("dobirth"));
		// System.out.print("pin "+dob);
		String mob = rreq.getParameter("monthofbirth");
		// System.out.print("pin "+mob);
		int yob = Integer.parseInt(rreq.getParameter("yearofbirth"));
		String add = rreq.getParameter("address");
		// System.out.print("pin "+add);

		try {
			PreparedStatement st = con
					.prepareStatement("insert into userdb values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			st.setString(1, us);

			st.setString(2, pw);

			st.setString(3, fn);

			st.setString(4, mn);

			st.setString(5, ln);

			st.setString(6, em);

			st.setString(7, gen);

			st.setString(8, inst);

			st.setString(9, add);

			st.setString(10, ct);

			st.setString(11, state);

			st.setInt(12, pin);

			st.setString(13, cn);

			st.setString(14, phnum);

			st.setInt(15, dob);

			st.setString(16, mob);

			st.setInt(17, yob);

			int i = st.executeUpdate();
			RequestDispatcher rd;
			if (i > 0) {

				rd = rreq.getRequestDispatcher("Login_GUI.html");
				rd.forward(rreq, rres);
				return;
			} else {

				rd = rreq.getRequestDispatcher("Registration_GUI.html");// if
																		// error
																		// in
																		// registration
																		// occurs
																		// it
																		// will
																		// be
																		// redirected
																		// to
																		// the
																		// registration
																		// page
																		// itself
																		// after
																		// giving
																		// an
																		// error
																		// alert
				rd.forward(rreq, rres);
				return;
			}

		} catch (Exception e) {
			System.out.println(e);
		}

	}

}