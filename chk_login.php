<meta http-equiv=Content-Type content="text/html;charset=utf-8">
<?php
	session_start();
	include "connectdb.php";
	$username=$_POST["txtUser"];
	$password=$_POST["txtPwd"];
	
	$sql="SELECT * FROM member WHERE (member_login='".$username."' AND member_pwd='".$password."')";
	$objQ=mysql_query($sql);
	$objR=mysql_fetch_array($objQ);
	if($objR)
		{
			//ชื่อผู้ใช้งานเเละรหัสผ่านถูกต้อง
			//echo "ยินดีต้อนรับ.".$username;
			$_SESSION["member"]=$objR["member_name"];
			$_SESSION["member_id"]=$objR["member_id"];
			echo header("location:index.php");
			exit();
		}
		else
		{
			//ชื่อผู้ใช้งานเเละรหัสผ่านถูกต้อง
			echo "<script language=\"JavaScript\">";
			echo "alert('ชื่อผู้ใช้งานและรหัสผ่านไม่ถูกต้อง!!!');window.location='index.php';"; /* ....
			echo "</script>";		
		}

?>