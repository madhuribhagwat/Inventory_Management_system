<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
*{
     margin:0%;
     padding:0%;
}
body{
      background-size :100% 740px;
       font-family: montserrat;
  background : black;
  margin: 0;
  padding: 0;
 overflow: hidden;
 text-align : center;
  height: 100vh;
      
}
.contain{
      width: 300px;
      height: 400px;
        text-align: center;
        background-color: black;
        margin-left: 36%;
        margin-top:7%;
       color: white;
      
}


.text button{
  width: 250px;
  height: 44px;
  background-color: aqua;
  color: black;
  border: none;
  font-size: 22px;
  border-radius:25px;
  margin-top: 20px;

}

.contain .text{
    position: relative;
    top: 7%;
    
}
.inp1{
    border: none;
    background-color: black;
    border-bottom: 2px solid white;
    width: 250px;
    font-size: 20px;
    margin-top: 40px;
    outline: none;
    color: white;
    
    
}

.inp2{
    border: none;
    background-color: black;
    border-bottom: 2px solid white;
    width: 250px;
    font-size: 20px;
    margin-top: 40px;
    outline: none;
    color: white;
    
    
}

 h1{
     font-size: 46px;
     color: aqua;
     border-bottom: 1px solid silver;
}
 button{
     width: 250;
     height: 40px;
     background-color: aqua;
     color: black;
     border: none;
     font-size: 24px;
     border-radius: 25px;
     margin-top: 20px;
}

button:hover{
      border: 3px solid aqua;
      color: white;
      font-size: 25px;
      background-color: black;
}
.container.text{
     position: relative;
     top: 7%;
     }
}
}
</style>
</head>
<body>
<form action="addadmin" method="post"> 
	<div class="contain">
	<div class="text">
	
	<h1>Login</h1>
	
	<label for="id"></label>
	<input  class="inp1" type="text" id="id" name="id" placeholder="Enter user ID"><br><br>
	
	
	<label for="name"></label>
	<input  class="inp2" type="text" id="name" name="name" placeholder="Enter user name"><br><br>
	
	
	
	<button type="login"> login</button>
	</div>
	</form>
</body>
</html>