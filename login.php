<!DOCTYPE html>
<html>
<head>
<title>ฟาร์มโคนม</title>
<script language="JavaScript">
function chkPost()
{
if (document.frmLogin.txtUser.value=="")
	{
		alert("กรุณาใส่ชื่อผู้ใช้งาน!!!");
		document.frmLogin.txtUser.focus();
		return false;
	}
else if (document.frmLogin.txtPwd.value=="")
	{
		alert("กรุณาใส่รหัสผ่าน!!!");
		document.frmLogin.txtPwd.focus();
		return false;
	}
else
	return true;
}
</script>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <link rel="icon" type="image/png" href="ihttps://www.flaticon.com/free-icon/milk_1682258/img/milk.png"> 
<style>
body {
  background-image: url("img/1.png");
}
</style>
</head>
<style>
h1 {
  color: white;
  text-shadow: 2px 2px 4px #000000;
}
</style>
</body>
<br>
<h1><center>Welcome to dairy farm</center></h1><hr>
<style>
	input[type=text]{
	width:15%;
	border:2px solid #aaa;
	border-radius:4px;
	margin:8px 0;
	outline:none;
	padding:8px;
	box-sizing:border-box;
	transition:.3s;
	}

	input[type=text]:focus{
		border-color:dodgerBlue;
		box-shadow:0 0 8px 0 dodgerBlue;
	}
</style>
<center>
<tr>
		<form action="chk_login.php" method="POST" name="frmLogin" enctype="multipart/form-data" onSubmit="return chkPost()";>
		<td align="right">   
		user: </b><input type="text" placeholder="Your name">
		password: </b><input type="text" placeholder="password"> 
		<input type="submit" name="login" value="login"></td>
		</form>
	</tr>

</center>

</body>
</html>