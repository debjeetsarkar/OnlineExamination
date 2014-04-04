<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//D TD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Test:Exam Page</title>
<body>
<html lang="en"><head>  

<title>Server page - Question Answer</title>  
<meta name="keywords" content="example, JavaScript Form Validation, Sample registration form" />  
<meta name="description" content="This document is an example of JavaScript Form Validation using a sample registration form. " />  
<link rel='stylesheet' href='Exam_TEMP.css' type='text/css' />  


<script src="ExamPage.js"></script>

</head>
<body>

<div id="big_wrapper">
<header id="top_header">  
<h1>Online Examination Portal</h1>
</header>




<%
 Connection con=null;
 
 ResultSet rs=null;
 Statement st=null;
 try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "kuttush");
	st=con.createStatement();
	rs = st.executeQuery("select * from(select * from qna order by dbms_random.value)where rownum<=30");
	
%>

  



	
<form name="exam" action="/OnlineExaminationSystem/Result.jsp" method="post">
<div id="new_div">
<section id="main_section"> 
<div id='timer'>
<script type="text/javascript">window.onload = CreateTimer("timer",1800);</script>

</div> 
<ul> 
<h2><b><b>Select Correct Answer</b></b></h2><br><br>


<% if(rs.next()) { %>



<td width="50%"> Q1:</td>
<input type="hidden" name="correctAns1" value="<%=rs.getString(6)%>" />
<tr>
<td><%= rs.getString(1) %></td></tr><br>
<tr>
<td>
a: <input type="radio" name="1" value="<%=rs.getString(2)%>"  /><td> <%= rs.getString(2) %> </td></tr><br><br>
b: <input type="radio" name="1" value="<%=rs.getString(3)%>" /><td> <%= rs.getString(3) %> </td></tr><br><br>
c: <input type="radio" name="1" value="<%=rs.getString(4)%>"/><td> <%= rs.getString(4) %> </td></tr><br><br>
d: <input type="radio" name="1" value="<%=rs.getString(5)%>"/><td> <%= rs.getString(5) %> </td></tr><br><br><br><br><br><br><br>

<%} if(rs.next()){ %>
<td width="50%"> Q2:</td>
<input type="hidden" name="correctAns2" value="<%=rs.getString(6)%>" />
<tr>
<td><%= rs.getString(1) %></td></tr><br>
<tr>
<td>
a: <input type="radio" name="2" value="<%=rs.getString(2)%>"  /><td> <%= rs.getString(2) %> </td></tr><br><br>
b: <input type="radio" name="2" value="<%=rs.getString(3)%>" /><td> <%= rs.getString(3) %> </td></tr><br><br>
c: <input type="radio" name="2" value="<%=rs.getString(4)%>"/><td> <%= rs.getString(4) %> </td></tr><br><br>
d: <input type="radio" name="2" value="<%=rs.getString(5)%>"/><td> <%= rs.getString(5) %> </td></tr><br><br><br><br><br><br><br>

<%} if(rs.next()){ %>
<td width="50%"> Q3:</td>
<input type="hidden" name="correctAns3" value="<%=rs.getString(6)%>" />
<tr>
<td><%= rs.getString(1) %></td></tr><br>
<tr>
<td>
a: <input type="radio" name="3" value="<%=rs.getString(2)%>"  /><td> <%= rs.getString(2) %> </td></tr><br><br>
b: <input type="radio" name="3" value="<%=rs.getString(3)%>" /><td> <%= rs.getString(3) %> </td></tr><br><br>
c: <input type="radio" name="3" value="<%=rs.getString(4)%>"/><td> <%= rs.getString(4) %> </td></tr><br><br>
d: <input type="radio" name="3" value="<%=rs.getString(5)%>"/><td> <%= rs.getString(5) %> </td></tr><br><br><br><br><br><br><br>

<%} if(rs.next()){ %>
<td width="50%"> Q4:</td>
<input type="hidden" name="correctAns4" value="<%=rs.getString(6)%>" />
<tr>
<td><%= rs.getString(1) %></td></tr><br>
<tr>
<td>
a: <input type="radio" name="4" value="<%=rs.getString(2)%>"  /><td> <%= rs.getString(2) %> </td></tr><br><br>
b: <input type="radio" name="4" value="<%=rs.getString(3)%>" /><td> <%= rs.getString(3) %> </td></tr><br><br>
c: <input type="radio" name="4" value="<%=rs.getString(4)%>"/><td> <%= rs.getString(4) %> </td></tr><br><br>
d: <input type="radio" name="4" value="<%=rs.getString(5)%>"/><td> <%= rs.getString(5) %> </td></tr><br><br><br><br><br><br><br>

<%} if(rs.next()){ %>
<td width="50%"> Q5:</td>
<input type="hidden" name="correctAns5" value="<%=rs.getString(6)%>" />
<tr>
<td><%= rs.getString(1) %></td></tr><br>
<tr>
<td>
a: <input type="radio" name="5" value="<%=rs.getString(2)%>"  /><td> <%= rs.getString(2) %> </td></tr><br><br>
b: <input type="radio" name="5" value="<%=rs.getString(3)%>" /><td> <%= rs.getString(3) %> </td></tr><br><br>
c: <input type="radio" name="5" value="<%=rs.getString(4)%>"/><td> <%= rs.getString(4) %> </td></tr><br><br>
d: <input type="radio" name="5" value="<%=rs.getString(5)%>"/><td> <%= rs.getString(5) %> </td></tr><br><br><br><br><br><br><br>

<%} if(rs.next()){ %>
<td width="50%"> Q6:</td>
<input type="hidden" name="correctAns6" value="<%=rs.getString(6)%>" />
<tr>
<td><%= rs.getString(1) %></td></tr><br>
<tr>
<td>
a: <input type="radio" name="6" value="<%=rs.getString(2)%>"  /><td> <%= rs.getString(2) %> </td></tr><br><br>
b: <input type="radio" name="6" value="<%=rs.getString(3)%>" /><td> <%= rs.getString(3) %> </td></tr><br><br>
c: <input type="radio" name="6" value="<%=rs.getString(4)%>"/><td> <%= rs.getString(4) %> </td></tr><br><br>
d: <input type="radio" name="6" value="<%=rs.getString(5)%>"/><td> <%= rs.getString(5) %> </td></tr><br><br><br><br><br><br><br>

<%} if(rs.next()){ %>
<td width="50%"> Q7:</td>
<input type="hidden" name="correctAns7" value="<%=rs.getString(6)%>" />
<tr>
<td><%= rs.getString(1) %></td></tr><br>
<tr>
<td>
a: <input type="radio" name="7" value="<%=rs.getString(2)%>"  /><td> <%= rs.getString(2) %> </td></tr><br><br>
b: <input type="radio" name="7" value="<%=rs.getString(3)%>" /><td> <%= rs.getString(3) %> </td></tr><br><br>
c: <input type="radio" name="7" value="<%=rs.getString(4)%>"/><td> <%= rs.getString(4) %> </td></tr><br><br>
d: <input type="radio" name="7" value="<%=rs.getString(5)%>"/><td> <%= rs.getString(5) %> </td></tr><br><br><br><br><br><br><br>

<%} if(rs.next()){ %>
<td width="50%"> Q8:</td>
<input type="hidden" name="correctAns8" value="<%=rs.getString(6)%>" />
<tr>
<td><%= rs.getString(1) %></td></tr><br>
<tr>
<td>
a: <input type="radio" name="8" value="<%=rs.getString(2)%>"  /><td> <%= rs.getString(2) %> </td></tr><br><br>
b: <input type="radio" name="8" value="<%=rs.getString(3)%>" /><td> <%= rs.getString(3) %> </td></tr><br><br>
c: <input type="radio" name="8" value="<%=rs.getString(4)%>"/><td> <%= rs.getString(4) %> </td></tr><br><br>
d: <input type="radio" name="8" value="<%=rs.getString(5)%>"/><td> <%= rs.getString(5) %> </td></tr><br><br><br><br><br><br><br>

<%} if(rs.next()){ %>
<td width="50%"> Q9:</td>
<input type="hidden" name="correctAns9" value="<%=rs.getString(6)%>" />
<tr>
<td><%= rs.getString(1) %></td></tr><br>
<tr>
<td>
a: <input type="radio" name="9" value="<%=rs.getString(2)%>"  /><td> <%= rs.getString(2) %> </td></tr><br><br>
b: <input type="radio" name="9" value="<%=rs.getString(3)%>" /><td> <%= rs.getString(3) %> </td></tr><br><br>
c: <input type="radio" name="9" value="<%=rs.getString(4)%>"/><td> <%= rs.getString(4) %> </td></tr><br><br>
d: <input type="radio" name="9" value="<%=rs.getString(5)%>"/><td> <%= rs.getString(5) %> </td></tr><br><br><br><br><br><br><br>
<%} if(rs.next()){ %>
<td width="50%"> Q10:</td>
<input type="hidden" name="correctAns10" value="<%=rs.getString(6)%>" />
<tr>
<td><%= rs.getString(1) %></td></tr><br>
<tr>
<td>
a: <input type="radio" name="10" value="<%=rs.getString(2)%>"  /><td> <%= rs.getString(2) %> </td></tr><br><br>
b: <input type="radio" name="10" value="<%=rs.getString(3)%>" /><td> <%= rs.getString(3) %> </td></tr><br><br>
c: <input type="radio" name="10" value="<%=rs.getString(4)%>"/><td> <%= rs.getString(4) %> </td></tr><br><br>
d: <input type="radio" name="10" value="<%=rs.getString(5)%>"/><td> <%= rs.getString(5) %> </td></tr><br><br><br><br><br><br><br>
<%} if(rs.next()){ %>
<td width="50%"> Q11:</td>
<input type="hidden" name="correctAns11" value="<%=rs.getString(6)%>" />
<tr>
<td><%= rs.getString(1) %></td></tr><br>
<tr>
<td>
a: <input type="radio" name="11" value="<%=rs.getString(2)%>"  /><td> <%= rs.getString(2) %> </td></tr><br><br>
b: <input type="radio" name="11" value="<%=rs.getString(3)%>" /><td> <%= rs.getString(3) %> </td></tr><br><br>
c: <input type="radio" name="11" value="<%=rs.getString(4)%>"/><td> <%= rs.getString(4) %> </td></tr><br><br>
d: <input type="radio" name="11" value="<%=rs.getString(5)%>"/><td> <%= rs.getString(5) %> </td></tr><br><br><br><br><br><br><br>
<%} if(rs.next()){ %>
<td width="50%"> Q12:</td>
<input type="hidden" name="correctAns12" value="<%=rs.getString(6)%>" />
<tr>
<td><%= rs.getString(1) %></td></tr><br>
<tr>
<td>
a: <input type="radio" name="l2" value="<%=rs.getString(2)%>"  /><td> <%= rs.getString(2) %> </td></tr><br><br>
b: <input type="radio" name="l2 value="<%=rs.getString(3)%>" /><td> <%= rs.getString(3) %> </td></tr><br><br>
c: <input type="radio" name="l2" value="<%=rs.getString(4)%>"/><td> <%= rs.getString(4) %> </td></tr><br><br>
d: <input type="radio" name="l2" value="<%=rs.getString(5)%>"/><td> <%= rs.getString(5) %> </td></tr><br><br><br><br><br><br><br>
<%} if(rs.next()){ %>
<td width="50%"> Q13:</td>
<input type="hidden" name="correctAns13" value="<%=rs.getString(6)%>" />
<tr>
<td><%= rs.getString(1) %></td></tr><br>
<tr>
<td>
a: <input type="radio" name="13" value="<%=rs.getString(2)%>"  /><td> <%= rs.getString(2) %> </td></tr><br><br>
b: <input type="radio" name="13" value="<%=rs.getString(3)%>" /><td> <%= rs.getString(3) %> </td></tr><br><br>
c: <input type="radio" name="13" value="<%=rs.getString(4)%>"/><td> <%= rs.getString(4) %> </td></tr><br><br>
d: <input type="radio" name="13" value="<%=rs.getString(5)%>"/><td> <%= rs.getString(5) %> </td></tr><br><br><br><br><br><br><br>
<%} if(rs.next()){ %>
<td width="50%"> Q14:</td>
<input type="hidden" name="correctAns14" value="<%=rs.getString(6)%>" />
<tr>
<td><%= rs.getString(1) %></td></tr><br>
<tr>
<td>
a: <input type="radio" name="14" value="<%=rs.getString(2)%>"  /><td> <%= rs.getString(2) %> </td></tr><br><br>
b: <input type="radio" name="14" value="<%=rs.getString(3)%>" /><td> <%= rs.getString(3) %> </td></tr><br><br>
c: <input type="radio" name="14" value="<%=rs.getString(4)%>"/><td> <%= rs.getString(4) %> </td></tr><br><br>
d: <input type="radio" name="14" value="<%=rs.getString(5)%>"/><td> <%= rs.getString(5) %> </td></tr><br><br><br><br><br><br><br>
<%} if(rs.next()){ %>
<td width="50%"> Q15:</td>
<input type="hidden" name="correctAns15" value="<%=rs.getString(6)%>" />
<tr>
<td><%= rs.getString(1) %></td></tr><br>
<tr>
<td>
a: <input type="radio" name="15" value="<%=rs.getString(2)%>"  /><td> <%= rs.getString(2) %> </td></tr><br><br>
b: <input type="radio" name="15" value="<%=rs.getString(3)%>" /><td> <%= rs.getString(3) %> </td></tr><br><br>
c: <input type="radio" name="15" value="<%=rs.getString(4)%>"/><td> <%= rs.getString(4) %> </td></tr><br><br>
d: <input type="radio" name="15" value="<%=rs.getString(5)%>"/><td> <%= rs.getString(5) %> </td></tr><br><br><br><br><br><br><br>
<%} %>
<center>
<input type="submit" value="Submit" name="submit" method="post" ></center>
  
</ul>
 </section>
</div>
</form>

</body>

	


<%
}

catch (Exception ex) {
ex.printStackTrace();
}
%>


</html>
