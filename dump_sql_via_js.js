$my_file = '/users/pauljones/yellodb/data.json';  
$con=mysqli_connect("localhost","root","W@xnepke14","yellodb");
if (mysqli_connect_errno()) {  
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
}

$result = mysqli_query($con,"SELECT * FROM yell");

$rows = mysqli_fetch_array($result);
print json_encode($rows);

mysqli_close($con);

$handle = fopen($my_file, 'w') or die('Cannot open file:  '.$my_file);
fwrite($handle, $rows); 