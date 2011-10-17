

$(function () {
$('#countdown').countdown({until:$.countdown.UTCDate(+6, 2012, 1 - 1, 21), format: 'DHMS', layout:
'<div id="timer">' + '<hr />'+
	'<div id="timer_days" class="timer_numbers">{dnn}</div>'+
	'<div id="timer_hours" class="timer_numbers">{hnn}</div>'+
	'<div id="timer_mins" class="timer_numbers">{mnn}</div>'+
	'<div id="timer_seconds" class="timer_numbers">{snn}</div>'+
'<div id="timer_labels">'+
	'<div id="timer_days_label" class="timer_labels">days</div>'+
	'<div id="timer_hours_label" class="timer_labels">hours</div>'+
	'<div id="timer_mins_label" class="timer_labels">mins</div>'+
	'<div id="timer_seconds_label" class="timer_labels">secs</div>'+
'</div>'+
'</div>'
});
});



$(document).ready( function(){

$('#slider').nivoSlider({

  effect: 'fade',
  animSpeed:500,
  controlNav:false,
  pauseTime:3000
});
$('#slider_two').nivoSlider({
  
  effect: 'fade',
  directionNav: false,
  controlNav:false,
  animSpeed:500,
  pauseTime:3000

});
window.scrollTo(0,500);
$('.has_submenu').hover( function() {

  $('.submenu').hide();
  var id = $(this).attr('id');
  $('#' + id + "-sub").fadeIn("fast");
  $('#' + id + "-sub").hover( function() {
      $('#' + id + "-sub").mouseleave( function() {
      $(this).hide();});
    });
});

$("#logo").hover( function() {

  $('.submenu').hide();});

$("#slider").hover( function() {

  $('.submenu').hide();});

});
