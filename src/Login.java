import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.GenericServlet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Login extends HttpServlet {
	 public Connection con;
	    
	    public void init(ServletConfig sc){
	    try
	    {
	    	Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "kuttush");
	    } catch(Exception e)
	    {
	        System.out.println(e);
	        
	    }
	    }
	    public void doPost(HttpServletRequest lreq,HttpServletResponse lres) throws ServletException,IOException
	    {
	     try
	     {
	         String u = (String)lreq.getParameter("username");
	         String p = (String)lreq.getParameter("password");
	         PreparedStatement ps= con.prepareStatement("select * from userdb where username=? and password=?");
	         ps.setString(1,u);
	         ps.setString(2,p);
	         ResultSet rs= ps.executeQuery();
	         PrintWriter out=lres.getWriter();
	        RequestDispatcher rd;
	         if(rs.next())
	         {
	        	 out.println(u);
	        	 if(u.equals("admin")&&p.equals("admin"))
	        	 {
	            	 rd=lreq.getRequestDispatcher("Admin_GUI.html");
	            	 rd.forward(lreq, lres);
	            	 return;
	             }
	            	 
	        	 else
	        	 {
	            // out.print("client");
	        	   rd=lreq.getRequestDispatcher("Exam_GUI.jsp");//it will re-direct to the next page.
	        	  rd.forward(lreq, lres);
	             HttpSession ob = lreq.getSession(true);
	             ob.setAttribute("uid", u);
	        	   return;
	            		 }	 
	         }
	         else {
	        	// out.println("error");
	        	rd=lreq.getRequestDispatcher("RetryLogin_GUI.html");//it will redirect to the login page for proper entry.
	        	rd.forward(lreq, lres);
	        	 return;
	         }
	       
	         
	     }
	     catch(Exception e)
	     {System.out.println(e);
	     
	     }
	    }
	}
