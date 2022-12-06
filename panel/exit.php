<?php

	session_start();		setcookie("username", $userInfo['username'], time() - 3600);		unset ($_COOKIE['username']);
	unset($_SESSION['username']);
	unset($_SESSION['ID']);
	session_destroy();
	header('location: login.php');
	
?>