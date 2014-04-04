/*import java.io.IOException;
import java.sql.*;

import javax.servlet.*;
import javax.servlet.http.*;
public class Result extends HttpServlet {
{
	public Connection con;
	public String score=null;
	public String firstname=null;
	public String lastname=null;
	
	
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
	 public void doPost(HttpServletRequest rreq,HttpServletResponse rres)throws ServletException ,IOException
		{
		 try
		 {
			 PreparedStatement ps1=con.prepareStatement("select * from userdb where uid=?");
				ps1.setString(1,"admin1");
				ResultSet rs1=ps1.executeQuery();
				if(rs1.next())
				score = rs1.getString(2);
				PreparedStatement ps2=con.prepareStatement("select * from userdb where uid=?");
				ps2.setString(1,"admin1");
				ResultSet rs2=ps2.executeQuery();
				if(rs2.next())
				{
					firstname=rs2.getString(3);
					lastname=rs2.getString(5);
					
				}
		 }
		}

}
*/