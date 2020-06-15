jQuery(document).ready(function() {
	// Tabs
	$('.tab-content .tab-pane:first').addClass('active');          	
	// Lightbox
	$('.popup-gallery a.popup, .typo3-neos-nodetypes-textwithimage a.popup, .typo3-neos-nodetypes-image a.popup, a.popup, .wmg-details-content a.popup').lightbox(); 
	//$('.sites .typo3-neos-nodetypes-textwithimage a')(); 
}); 


$(function() {
  $(window).scroll(function() {
    if($(this).scrollTop() != 0) {
      $('#toTop').fadeIn();
    } else {
      $('#toTop').fadeOut();
    }
  });

  $('#toTop').click(function() {
    $('body,html').animate({scrollTop:0},800);
  });
}); 

//$(function() {
	//$('.popup-gallery a.popup, .typo3-neos-nodetypes-textwithimage a.popup, .typo3-neos-nodetypes-image a.popup, a.popup').lightbox(); 
	//$('.sites .typo3-neos-nodetypes-textwithimage a')(); 
//});


