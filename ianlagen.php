<h2>Anlagen</h2><?php$result = getCourses();if( $result ) {	echo "<ul>";	while ($record = $result->fetch_assoc()){    		print ('<li>' . $record['name'] . '</li>');  	}    	echo "</ul>";} else {	echo "Query gescheitert.<br/>\n";}?>