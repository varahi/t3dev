$(function(){
  if ($("div.content").height() > 1000) {
    $(".content").addClass("content-height-1000");
  }
  if ($("div.content").height() > 2500) {
    $(".content").addClass("content-height-2500");
  }

  hljs.initHighlightingOnLoad();
});