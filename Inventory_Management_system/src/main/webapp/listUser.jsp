<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
  body{
  padding: 0;
  margin: 0;
  font-family: verdana, Geneva, Tahoma, sans-serif;  
}

  table{
  position: absolute;
  left: 50%;
  top: 50%;
  transform: translate(-50%, -50%);
  border-collapse: collapse;
  width: 800px;
  height: 200px;
  border: 1px solid #bdc3c7;
  box-shadow: 2px 2px 12px rgba(0, 0, 0, 0.2), -1px -1px 8px rgba(0,0,0,0.2) ;
}

  tr{
  transition: all .2s ease-in;
  cursor: pointer;
 
}

  th{
  color: black;
  background-color: lightgreen;
  }
  td{
  padding: 12px;
  text-align: left;
  border-bottom: 1px solid #ddd;
}

  #header{
    background-color: #16a085;
    color: #fff;
    
  }
  
  h1{
   font-weight: 600;
   text-align: center;
   background-color: #16a085;
   color: #fff;
   padding: 10px 0px;
  }

  tr:hover{
  background-color: #f5f5f5;
  trasform : scale(1.02)
   box-shadow: 2px 2px 12px rgba(0, 0, 0, 0.2), -1px -1px 8px rgba(0,0,0,0.2) ;
  
  }
  
  @media only screen and(max-width: 768px)
  {
  table{
  width: 90%;
  }
  }
  
</style>
<body>



<table border="2">
  
    <tr>
    <th>ID</th>
    <th>Product name</th>
    <th>Product quality</th>
    <th>User</th>
    <th>email</th>
    <th>Phone</th>
    <th>Edit</th>
    <th>Delete</th>
    </tr>
    <c:forEach var="std" items="${e_data}">
    
      <tr>
      <td>${std.id}</td>
      <td>${std.name}</td>
      <td>${std.quality}</td>
       <td>${std.user}</td>
       <td>${std.email}</td>
        <td>${std.phone}</td>
      <td><a href="<c:url value='/edit/${std.id }'/>">Update</a> </td>
      <td><a href="<c:url value='/${std.id }'/>">Delete</a> </td>
     
      </tr>
     
    </c:forEach>
 
  </table>
</body>
</html>