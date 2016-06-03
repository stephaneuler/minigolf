
var alles = new Object();
var colored = new Object();

function summe( el, bahn, schlaege ) {
  var par = el.parentElement;
  if( colored[bahn] ) {
      colored[bahn].classList.remove("showSelected");
      colored[bahn].firstChild.classList.remove("hidden");
  }
  par.classList.add("showSelected");
  el.classList.add("hidden");
  colored[bahn] = par;
  alles[bahn] = schlaege;
  var total = 0;
  alles.map(function(item){
		total += item;
  });
  var count = 0;
  alles.map(function(item){
		count += item? 1 : 0;;
  });
  var el = document.getElementById("sum");
  el.innerHTML = '<strong>' + total + '</strong>';
  if( count > 0 ) {
	var av = total / count;
        el.innerHTML += ' &Oslash; ' +  av.toPrecision(2);
  }
}

function checkRoundInput( rform ) {
  test = true;
  feedback = "";

  if( rform.userId.value == -1 ) {
    test = false;
    feedback +=  "bitte Spieler auswählen \n";
  } 
  if( rform.courseId.value == -1 ) {
    test = false;
    feedback +=  "bitte Anlage auswählen \n";
  } 

  if( Object.keys(alles).length != 18 ) {
    test = false;
    feedback +=  "nicht nur " + Object.keys(alles).length + " Bahnen eingeben \n";
  } 

  if( ! test ) {
    alert( feedback );
  }
  return test;

}

function selectAll( el, col, val ) {
  //alert( col + " " + val);
  for( i=1; i<=9; i++ ) {
    e = document.getElementById( 'bahn' + (i + col * 9) +'_' + val );
    e.click();
  }
}
