<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {
  font-family: 'Arial', sans-serif;
  background-color: #f4f4f4;;
  margin: 0;
  padding: 0;
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
}

.container {
  background-color: aqua;
  
  border-radius: 8px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
  padding: 20px;
  width: 300px;
}

.registration-form {
  display: flex;
  flex-direction: column;
}

h1 {
  text-align: center;
  color: #333;
}

.form-group {
  margin-bottom: 15px;
}

label {
  font-weight: bold;
  margin-bottom: 5px;
}

input {
  width: 100%;
  padding: 8px;
  box-sizing: border-box;
  border: 1px solid #ccc;
  border-radius: 4px;
}

button {
  background-color: #4caf50;;
  color: #fff;
  padding: 10px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  font-size: 16px;
}

button:hover {
  background-color: #45a049;
}
}
</style>
</head>


<body>
<form action="/update/${std1.id}" method="post">
	<label>Name</label>
	<input type="text" id="name" name="name" value="${std1.name }"><br><br>
	
	<label>Quality</label>
	<input type="text" id="quality" name="quality" value="${std1.quality }"><br><br>
	
	<label>user</label>
	<input type="text" id="user" name="user" value="${std1.user }"><br><br>
	
	
	<label>Email</label>
	<input type="text" id="email" name="email" value="${std1.email }"><br><br>
	
	<label>Phone</label>
	<input type="text" id="phone" name="phone" value="${std1.phone }"><br><br>
	
	
	<button type="submit">Update</button>
	</form>
</body>
</html>