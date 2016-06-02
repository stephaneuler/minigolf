<h2>Spieler</h2>
<?php

$result = getUsers();

if( $result ) {
	echo '<table class="rec" border="2">';
	echo '<tr><th>Name</th><th>Verein</th></tr>';
	while ($record = $result->fetch_assoc()){
		echo '<tr>';
   		echo '<td>' . $record['name'] . '</td>';
    		echo '<td>' . $record['clubname'] . '</td>';
     		echo '</tr>';
  	}
	echo '</table>';
} else {
	echo "Query gescheitert.<br/>\n";
}

?>

