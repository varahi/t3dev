jQuery(document).ready(function() {
  // Tabs
  $('.tab-content .tab-pane:first').addClass('active');
  // Lightbox
  $('.popup-gallery a.popup, .typo3-neos-nodetypes-textwithimage a.popup, .typo3-neos-nodetypes-image a.popup, a.popup, .wmg-details-content a.popup').lightbox();
  //$('.sites .typo3-neos-nodetypes-textwithimage a')();

  if ($("div.content").height() > 1000) {
    $(".content").addClass("content-height-1000");
  }
  if ($("div.content").height() > 2500) {
    $(".content").addClass("content-height-2500");
  }

  hljs.initHighlightingOnLoad();

});
