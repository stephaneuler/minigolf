<h2>Ergebnis eingetragen</h2>
<?php
// Testausgabe
if( FALSE ) {
echo '<ol>';
foreach($_REQUEST as $key => $value) {
	echo '<li>Parameterschl&uuml;ssel: <span style="color: blue">' . $key . '</span>,' ;
	echo 'Parameterwert: <span style="color: blue">' .$value . '</span></li>';
}
echo '<ol>';
}

// besser auslagern !!

$datum  = filter_var( $_REQUEST['datum'], FILTER_SANITIZE_STRING);
$userId   = filter_var( $_REQUEST['userId'], FILTER_SANITIZE_STRING);
$courseId = filter_var( $_REQUEST['courseId'], FILTER_SANITIZE_STRING);

$mysqli = connect();
$sql = "INSERT INTO rounds (user_id, course_id, date) VALUES ( $userId, $courseId,'$datum')";
$result = $mysqli->query($sql);
$roundId = $mysqli->insert_id;;

foreach($_REQUEST as $key => $value) {
	if( strpos( $key, 'ahn' ) == 1 ) {
                $n = intval( substr( $key, 4 ) );
                $s = filter_var( $_REQUEST[$key], FILTER_SANITIZE_STRING);
		$sql = "INSERT INTO holes (round_id, hole, strokes) VALUES ( $roundId,$n, $s)";
                //echo $sql . '<br>';
		$r = $mysqli->query($sql);
	}
}

$userResult = getById( "users", $userId );
echo "Neues Ergebnis f&uuml;r ${userResult['name']} vom $datum eingetragen<br>";
?>
