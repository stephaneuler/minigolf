<?php 
$mysqli;

function connect() {
	global $mysqli;
        require 'config/info.php';
	$mysqli = new mysqli("localhost", $user, $pwd, $db);
	if ($mysqli->connect_errno) {
    		echo "MySQL: (" . $mysqli->connect_errno . ") " . $mysqli->connect_error;
		return null;
	} 
	//echo $mysqli->host_info . "<br>\n";
	return $mysqli;
}

function getUsers() {
	global $mysqli;
	if( ! isset( $mysqli ) ) {
		connect();
	} 
	$sql = "SELECT users.name AS name, clubs.name AS clubname FROM users JOIN clubs ON club_id=clubs.id";
	return  $mysqli->query($sql);

}
function getCourses() {
	global $mysqli;
	if( ! isset( $mysqli ) ) {
		connect();
	} 
	$sql = "SELECT * FROM courses";
	return  $mysqli->query($sql);

}
function getById( $table, $id) {
	global $mysqli;
	if( ! isset( $mysqli ) ) {
		connect();
	} 
	$sql = "SELECT * FROM $table WHERE id=$id";
	$result = $mysqli->query($sql);
	return $result->fetch_assoc();
}
?>