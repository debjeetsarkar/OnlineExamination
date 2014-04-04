<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-W3CD TD HTML 4.01 TransitionalEN" "http:www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<body>
<html lang="en"><head>  

<title>Server page - Question Answer</title>  
<meta name="keywords" content="example, JavaScript Form Validation, Sample registration form" />  
<meta name="description" content="This document is an example of JavaScript Form Validation using a sample registration form. " />  
<link rel='stylesheet' href='Result_TEMP.css' type='text/css' />  
<script src="sample-registration-form-validation.js"></script>  

</head>
<body>
<body onload="document.registration.userid.focus()">
<div id="big_wrapper">
<header id="top_header">  
<h1>Online Examination Portal</h1>
</header>


<%
 Connection con=null;
 
ResultSet rs=null;
 
 try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "kuttush");
	
	
	 
	 int count=0;
	 if(request.getParameter("1")==null)
	 	count=count+0;
	 else if(request.getParameter("1").equals(request.getParameter("correctAns1")))
	count=count+3;
	 else
		 count=count-1;
	 
	 if(request.getParameter("2")==null)
		 	count=count+0;
		 else if(request.getParameter("2").equals(request.getParameter("correctAns2")))
		count=count+3;
		 else
			 count=count-1;
	 
	 
	 if(request.getParameter("3")==null)
		 	count=count+0;
		 else if(request.getParameter("3").equals(request.getParameter("correctAns3")))
		count=count+3;
		 else
			 count=count-1;

	 if(request.getParameter("4")==null)
		 	count=count+0;
		 else if(request.getParameter("4").equals(request.getParameter("correctAns4")))
		count=count+3;
		 else
			 count=count-1;

	 
	 if(request.getParameter("5")==null)
		 	count=count+0;
		 else if(request.getParameter("5").equals(request.getParameter("correctAns5")))
		count=count+3;
		 else
			 count=count-1;

	 if(request.getParameter("6")==null)
		 	count=count+0;
		 else if(request.getParameter("6").equals(request.getParameter("correctAns6")))
		count=count+3;
		 else
			 count=count-1;

	 
	 if(request.getParameter("7")==null)
		 	count=count+0;
		 else if(request.getParameter("7").equals(request.getParameter("correctAns7")))
		count=count+3;
		 else
			 count=count-1;

	 
	 
	 if(request.getParameter("8")==null)
		 	count=count+0;
		 else if(request.getParameter("8").equals(request.getParameter("correctAns8")))
		count=count+3;
		 else
			 count=count-1;

	 
	 
	 if(request.getParameter("9")==null)
		 	count=count+0;
		 else if(request.getParameter("9").equals(request.getParameter("correctAns9")))
		count=count+3;
		 else
			 count=count-1;

	 if(request.getParameter("10")==null)
		 	count=count+0;
		 else if(request.getParameter("10").equals(request.getParameter("correctAns10")))
		count=count+3;
		 else
			 count=count-1;

	 
	 if(request.getParameter("11")==null)
		 	count=count+0;
		 else if(request.getParameter("11").equals(request.getParameter("correctAns11")))
		count=count+3;
		 else
			 count=count-1;

	 
	 if(request.getParameter("12")==null)
		 	count=count+0;
		 else if(request.getParameter("12").equals(request.getParameter("correctAns12")))
		count=count+3;
		 else
			 count=count-1;

	 
	 if(request.getParameter("13")==null)
		 	count=count+0;
		 else if(request.getParameter("13").equals(request.getParameter("correctAns13")))
		count=count+3;
		 else
			 count=count-1;

	 
	 if(request.getParameter("14")==null)
		 	count=count+0;
		 else if(request.getParameter("14").equals(request.getParameter("correctAns14")))
		count=count+3;
		 else
			 count=count-1;

	 
	 
	 if(request.getParameter("15")==null)
		 	count=count+0;
		 else if(request.getParameter("15").equals(request.getParameter("correctAns15")))
		count=count+3;
		 else
			 count=count-1;

	 
	 
	 out.print("score is"+count);
	 String UID=(String)session.getAttribute("uid");
	 String s= String.valueOf(count);
	 out.print(UID);
	 
	 PreparedStatement ps=con.prepareStatement("insert into result values(?,?)");
	 ps.setString(1,UID);
	 ps.setString(2,s);
	 ps.executeUpdate();

	
	
	Statement st=con.createStatement();
	//String UID=(String)session.getAttribute("uid");
  	PreparedStatement ps1=con.prepareStatement("select * from result where nameofuser=?");
	ps1.setString(1,UID);
	rs=ps1.executeQuery();
	
		
	
%>




	
<form name="result" action="/OnlineExaminationSystem/Result.jsp" method="post">
<div id="new_div">
<font color="white">
<section id="main_section">  
<ul> 
<h2><center><b><b>RESULT</center></b></b></h2><br><br>
<%rs.next();   %>


<tr>
<td><font size="+1">Your Score is:</font></td>

 

 <td><%= rs.getString(2) %></td></tr><br>
 <br>
 <center>Thank you for appearing in the examination.</center>
 
</ul>
 </section>
 </font>
</div>
</form>


</body>

	

<%  }
catch (Exception ex) {
ex.printStackTrace();
}
%>


</html>
