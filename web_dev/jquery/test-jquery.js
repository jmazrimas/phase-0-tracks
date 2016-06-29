

$(function() {

	// $('.colx').fadeOut(1000).fadeIn(1000);

	// $('.colx').on('click', function() {
	// 	$(this).fadeOut(1000).fadeIn(1000);
	// 	}		
	// 	)

	// $(".colx").children().last().css({display: 'none'});


	// $('.colx').on('click', function() {
	// 	// $(this).filter('div:last-child').slideToggle();
	// 	$(this+'div:last-child').slideToggle();
	// 	// $(this).children().css({display: 'none'})
	// 	}		
	// 	)

	// $(".colx div:last-child").css({color: 'green'})

	$('.colx').on('click', function() {
		// $(this).css({color: 'green'})
		$(this).children().last().slideToggle();
	})

})