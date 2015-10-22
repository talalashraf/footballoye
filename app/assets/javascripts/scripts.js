var gameOn = function () {
	$(".war").toggleClass("blur");
	$(".love").toggleClass("blur");
}

$(document).ready(setInterval(gameOn, 2500));

$(document).ready(function(){
	$("#clubs").on('show.bs.dropdown', function(){
		$("#magazine").removeClass("active");
		$("#home").removeClass("active");
	});
	$("#clubs").on('hidden.bs.dropdown', function(){
		if ($('title').text() === "The Football Oye! Magazine"){
			$("#magazine").addClass("active");
		}
		else
			$("#home").addClass("active");
	});
});

$('.ckeditor').ckeditor({
  // optional config
});