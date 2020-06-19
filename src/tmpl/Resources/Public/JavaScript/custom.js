$(function() {
    // Tabs
    $('.tab-content .tab-pane:first').addClass('active');

  if ($("div.content").height() > 1000) {
    $(".content").addClass("content-height-1000");
     }
  if ($("div.content").height() > 2500) {
    $(".content").addClass("content-height-2500");
  }

  hljs.initHighlightingOnLoad();

});
