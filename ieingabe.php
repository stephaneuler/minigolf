	
<h2>Eingabe eines Durchgangs</h1>

	<form action="index.php" method="get" onSubmit="return checkRoundInput(this)" >

        <div class="inputLine">
	<label for="userID">Name</label> 
<?php
$result = getUsers();

echo '<select name="userId">';
echo '<option value="-1">Bitte ausw&auml;hlen</option>';
while ($record = $result->fetch_assoc() ){
	echo $record['name'] .  "<br>";
	echo '<option value="'. $record['id'] . '" >';
	echo  htmlentities( $record['name'] ) . '</option>';
}
echo '</select>';
?>

        </div>
        <div class="inputLine">
	<label for="anlage" required>Anlage</label> 
<?php
$result = getCourses();

echo '<select name="courseId">';
echo '<option value="-1">Bitte ausw&auml;hlen</option>';
while ($record = $result->fetch_assoc() ){
	echo $record['name'] .  "<br>";
	echo '<option value="'. $record['id'] . '" >';
	echo  htmlentities( $record['name'] ) . '</option>';
}
echo '</select>';
?>

        </div>

        <div class="inputLine">
	<label for="date" >Datum</label> 
	<input type="date" name="datum"  value="<?php echo date('Y-m-d'); ?>">
        </div>

	<table class="rec" border="2"> 

    <SCRIPT LANGUAGE="JAVASCRIPT" TYPE="TEXT/JAVASCRIPT">
    var maxSchlaege = 7;
    var anzahlBahnen = 9;

    document.write( '<tr>' );
    for( col=0; col<2; col++ ) {
    	document.write( '<th>Bahn</th>' );
    	for( i=1; i<=maxSchlaege; i++ ) {
      	document.write( '<th>'+i+'</th>');
      	}
    }
    document.write( '</tr>' );

    document.write( '<tr>' );
    for( bi=0; bi<2; bi++ ) {
    	document.write( '<td style="text-align:center">alle</td>' );
    	for( i=1; i<=maxSchlaege; i++ ) {
      		document.write( '<td><input type="radio" name="all" value="' + i 
			+ '" onchange="selectAll(this, '+bi+','+i+')"></td>');
      	}
     }
        
    document.write( '</tr>' );

    for( b=1; b<= 9; b++ ) {
    	document.write( '<tr>' );
        for( bi=b; bi<b+10; bi+= 9 ) {
    		document.write( '<td style="text-align:center">' + bi + '</td>' );
    		for( i=1; i<=maxSchlaege; i++ ) {
      			document.write( '<td><input type="radio" name="bahn'+bi+'" id="bahn' +bi +'_' + i +'" value="' + i 
			+ '" onchange="summe(this, '+bi+','+i+')"></td>');
      		}
	}
        
    	document.write( '</tr>' );
    }
    	document.write( '<tr> <td>Summe </td> <td id="sum" colspan="'+ (2*maxSchlaege+3)+ '"></td></tr>' );
    </SCRIPT>
         
	 </table>
       <input type="hidden" name="inhalt" value="ergebnisEintragen">
       <button type="submit">Eingaben absenden</button>



    </form>
	
