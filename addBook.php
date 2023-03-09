<?php

$page_roles = array('admin'); 

require_once 'login.php';
require_once  'checksession.php';

$conn = new mysqli($hn, $un, $pw, $db);
if ($conn->connect_error) die($conn->connect_error);

echo <<<_END
<form action="addBook.php" method="post"<pre>
	Author <input type="text" name="author"></br></br>
	Title <input type="text" name="title"></br></br>
	Category <input type="text" name="category"></br></br>
	Year <input type="text" name="year"></br></br>
	ISBN <input type="text" name="isbn"></br></br>
	
	<input type="submit" name="ADD RECORD">
	</br></br>
	<a href="viewBook.php" >View all Books</a>
	<a href='logout.php'>Logout</a>
</pre></form>
_END;


if(isset($_POST['author']) &&
	isset($_POST['title']) &&
	isset($_POST['category']) &&
	isset($_POST['year']) &&
	isset($_POST['isbn'])) {
		$author=get_post($conn, 'author');
		$title=get_post($conn, 'title');
		$category=get_post($conn, 'category');
		$year=get_post($conn, 'year');
		$isbn=get_post($conn, 'isbn');
		
		$query="INSERT INTO classics (author, title, category, year, isbn) VALUES ".
			"('$author','$title','$category','$year','$isbn')";
		$result=$conn->query($query);
		if(!$result) echo "INSERT failed: $query <br>" .
			$conn->error . "<br><br>";
	
	
}

$conn->close();

function get_post($conn, $var) {
	return $conn->real_escape_string($_POST[$var]);
}

?>