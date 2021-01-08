<?php 
	# Stop Hacking attempt
	define('__APP__', TRUE);
	
	# Start session
    session_start();
	
	# Database connection
	include ("dbconn.php");
	
	# Variables MUST BE INTEGERS
    if(isset($_GET['menu'])) { $menu   = (int)$_GET['menu']; }
	if(isset($_GET['action'])) { $action   = (int)$_GET['action']; }
	
	# Variables MUST BE STRINGS A-Z
    if(!isset($_POST['_action_']))  { $_POST['_action_'] = FALSE;  }
	
	if (!isset($menu)) { $menu = 1; }
	
	# Classes & Functions
    include_once("functions.php");
	
print '
<!DOCTYPE html>
<html>
    <head>
        <!-- CSS -->
        <link href="/ApolloProgram/style.css" rel="stylesheet">
        <!-- End CSS -->
        <!-- meta elements -->
        <title>Apollo program</title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8">
        <meta name="description" content="Page about Apollo program">
        <meta name="keywords" content="keyword 1, keyword 2, keyword 3, keyword 4, ...">
        <meta name="author" content="Vedran Uremović">
        <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;">
        <link rel="shortcut icon" type="image/x-icon" href="Img/rocket.ico">
	</head>
<body>
	<header>
		<div'; if ($menu > 1) { print ' class="main-subimage"'; } else { print ' class="main-image"'; }  print '></div>
		<nav>';
			include("menu.php");
		print '</nav>	
	</header>
	<main>';
		if (isset($_SESSION['message'])) {
			print $_SESSION['message'];
			unset($_SESSION['message']);
		}
	
	# Homepage
	if (!isset($menu) || $menu == 1) { include("home.php"); }
	
	# Missions
	else if ($menu == 2) { include("missions.php"); }
	
	# Contact
	else if ($menu == 3) { include("contact.php"); }
	
	# About Saturn V
	else if ($menu == 4) { include("about_saturn_v.php"); }
	
	# Register
	else if ($menu == 5) { include("register.php"); }
	
	# Signin
	else if ($menu == 6) { include("signin.php"); }
	
	# Admin webpage
	else if ($menu == 7) { include("admin.php"); }
	
	print '
	</main>
	<footer>
		<p>Copyright &copy; ' . date("Y") . ' Vedran Uremović <img src="/ApolloProgram/Img/rocket-19681.png" title="Copyright" alt="Copyright"></a></p>
	</footer>
</body>
</html>';
?>