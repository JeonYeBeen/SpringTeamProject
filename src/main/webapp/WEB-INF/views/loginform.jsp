<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/mybooks/resources/css/loginstyle.css">
<style>
	@media(min-width: 620px) {
		body {
  			width: 620px;
		}
		.container {
			width: 620px;
			display:inline-block;
		}	
	}
</style>

</head>
<body>

<h1>Handong's Book Log</h1>

<form action="loginOk" method="post">
  <div class="imgcontainer">
    <img src="https://png.pngtree.com/element_our/20190528/ourlarge/pngtree-a-neat-stack-of-books-in-cartoon-style-png-image_1181759.jpg" alt="Avatar" class="avatar">
  </div>

  <div class="container">
    <label for="userId"><b>Your ID</b></label>
    <input type="text" placeholder="Enter your ID" name="userId" required>

    <label for="password"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="password" required>
        
    <button type="submit">Login</button>
   
  </div>

</form>
<button class="button_sign" onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Sign Up</button>


<div id="id01" class="modal">
  <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
  <form class="modal-content" action="register" method="POST">
    <div class="container">
      <h1>Sign Up</h1>
      <p>Please fill in this form to create an account.</p>
      <hr>
      <h2>Create ID</h2>
      <label for="userId"><b>Your ID</b></label>
      <input type="text" placeholder="Enter your ID..." name="userId" required>

      <label for="password"><b>Password</b></label>
      <input type="password" placeholder="Enter Password..." name="password" required>

      <label for="psw_repeat"><b>Repeat Password</b></label>
      <input type="password" placeholder="Repeat Password..." name="psw_repeat" required>
      
      <hr>
      <h2>User Information</h2>
      <label for="username"><b>Your name</b></label>
      <input type="text" placeholder="Enter you name..." name="username" required>
      
      <label for="studentId"><b>Your student ID</b></label>
      <input type="text" placeholder="Enter your student ID..." name="studentId" required>

      <div class="clearfix">
        <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
        <button class="button_sign" type="submit" class="signupbtn">Sign Up</button>
      </div>
    </div>
  </form>
</div>

</body>

</html>

