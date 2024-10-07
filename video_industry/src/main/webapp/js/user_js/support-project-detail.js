$('#goForm').click(function(){
	$('.form-outter').addClass('active');
});
$('.close, .go-list').click(function(){
	$('.form-outter').removeClass('active');
})