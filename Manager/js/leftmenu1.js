$(function(){
	$('.style_ul li').hover(function(){
	    $(this).children('.exc').show();
},
    function(){
	    $(this).children('.exc').hide();
}
    
    );
	$('.exc').hover(function(){
		$('.exc').hide();	
		$(this).show();
	});
});