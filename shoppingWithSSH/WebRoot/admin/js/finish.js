var i=3;
function dump(){
	$("#sp").text(i);
	i--;
	if( i<0 ){
		location.href = $("#url").attr("href");
		return false;
	}
	setTimeout("dump()",1000);
}
$(document).ready(function(){
	i=$("#sp").text();
	dump();
});