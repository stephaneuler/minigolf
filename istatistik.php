<h2>Statistik</h2>

<h3>Runden</h3>

<table class="rec" border="2"> 
<tr><th>ID</th><th>Datum</th><th>SpielerIn</th><th>Anlage</th><th>Punkte</th><th>Schl&auml;ge</th></tr>
<?php
$log = "";

$mysqli = connect();

$sql = "SELECT date,users.name,courses.name AS cname,rounds.id AS roundid FROM rounds JOIN users ON user_id=users.id JOIN courses ON course_id=courses.id ORDER BY date DESC";
$log .= $sql . '<br>';


$result = $mysqli->query($sql);
if( $result ) {
	while ($record = $result->fetch_assoc()){
		echo '<tr>';
    		echo '<td>' . $record['roundid'] . '</td>';
    		echo '<td>' . $record['date'] . '</td>';
    		echo '<td>' . $record['name'] . '</td>';
    		echo '<td>' . $record['cname'] . '</td>';
                $sql_h =  "SELECT * FROM holes WHERE round_id=" . $record['roundid'] . ' ORDER BY hole ASC';
		$log .= $sql_h . '<br>';
                $holes =  $mysqli->query($sql_h);
		$sum = 0;
                $strokes = "";
                while ($hole = $holes->fetch_assoc()){
		    $sum += $hole['strokes'];
                    $strokes .= $hole['strokes'] . ' ';
		}
    		echo '<td d style="text-align:center">' . $sum . '</td>';
    		echo '<td>' . $strokes . '</td>';
    		echo '</tr>';
  	}
} else {
	echo "Query gescheitert.<br/>\n";
}
echo '</table>';
//echo $log;
?>

