<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*,com.User,org.hibernate.SessionFactory,org.hibernate.query.Query,org.hibernate.Session,java.util.List,org.hibernate.cfg.Configuration,org.hibernate.Transaction,org.springframework.stereotype.Component"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% String sid = request.getParameter("feeid");
boolean value=false;
SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
Session session1 = sessionFactory.openSession();
Transaction tx = session1.beginTransaction(); 

Query query = session1.createQuery("from User");
List<User> fetchedData = query.list();
Iterator it = fetchedData.iterator();
while(it.hasNext())  
{
  User std = (User)it.next();
 // System.out.println("==========24========"+std.getAccno()+"    value       "+sid);
  if((std.getAccno().equals(sid)) || (std.getAccno() == sid)){
	  System.out.println("=============25============");
	 /*  out.print("This Account Number already exists");   */
	  value = true;
	  break;
  }
}
if(value == false){
	out.print("This Account Number doesn't exist in the bank database");  
}
System.out.println("=============11============"+value);
%>
</body>
</html>