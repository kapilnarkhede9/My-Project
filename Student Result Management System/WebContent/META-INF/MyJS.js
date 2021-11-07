function msg(){
	alert("kapiil");
}
function notify(msg){
	//alert('Warning Your in DangerN');
	document.getElementById('warning').innerHTML = msg;
	setTimeout(function(){ document.getElementById('warning').style.display='block'},1000 );
}

function Error(msg){
	//alert('Warning Your in DangerE');
	document.getElementById('ErrorTag').innerHTML = msg;
	//setTimeout(function(){ document.getElementById('ErrorTag').style.display='block'},10000 );
}

/**
 * 
 */