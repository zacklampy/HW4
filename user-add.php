<?php

$page_roles = array('admin');

require_once 'checksession.php';


?>



<html>
	<head>
	
	</head>
	
	<body>
		<form method='post' action='user-add.php'>
			<pre>
				username: <input type='text' name='username'>
				forename: <input type='text' name='forename'>
				surname: <input type='text' name='surname'>
				password: <input type='text' name='password'>
				<input type='submit' value='Add user'>
			</pre>
		</form>
	</body>
</html>


<?php
//import credentials for db
require_once  'login.php';


//connect to db
$conn = new mysqli($hn, $un, $pw, $db);
if($conn->connect_error) die($conn->connect_error);

//check if username exists
if(isset($_POST['username'])) 
{
	//Get data from POST object
	$username = $_POST['username'];
	$forename = $_POST['forename'];
	$surname = $_POST['surname'];
	$password = $_POST['password'];
	
	//echo $id.'<br>';
	
	$query = "INSERT INTO users (username, forename, surname, password) VALUES ('$username','$forename', '$surname', '$password')";
	
	//echo $query.'<br>';
	$result = $conn->query($query); 
	if(!$result) die($conn->error);
	
	header("Location: user-list.php");//this will return you to the view all page
	
	
	
	
}



?>