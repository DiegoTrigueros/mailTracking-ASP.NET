$(document).ready(function(){
	$("#nuevo").fadeIn(200);
	$("div#nuevoD").click(function(){
		$("#copia").hide();
		$("#nuevo").fadeIn(200);
		$('div#nuevoD').addClass('active');
		$('div#reenviar').removeClass('active');
	});
	$("div#reenviar").click(function(){
		$("#nuevo").hide();
		$('div#nuevoD').removeClass('active');
		$('div#reenviar').addClass('active');
		$("#copia").fadeIn(200);
	});
});