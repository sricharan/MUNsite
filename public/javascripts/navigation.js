

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

$(".rotator").hover( function() {

  $('.submenu').hide();});

 theRotator();
 $('div.rotator').fadeIn(1000);
 $('div.rotator ul li').fadeIn(1000);
});

function theRotator() {

  $("div.rotator ul li").css({opacity: 0.0});
  $("div.rotator ul li:first").css({opacity:1.0});

  setInterval('rotate()', 6000);

}

function rotate() {	
	var current = ($('div.rotator ul li.show')?  $('div.rotator ul li.show') : $('div.rotator ul li:first'));

    if ( current.length == 0 ) current = $('div.rotator ul li:first');

	var next = ((current.next().length) ? ((current.next().hasClass('show')) ? $('div.rotator ul li:first') :current.next()) : $('div.rotator ul li:first'));
	
	
			

	next.css({opacity: 0.0})
	.addClass('show')
	.animate({opacity: 1.0}, 1000);

	current.animate({opacity: 0.0}, 1000)
	.removeClass('show');
	
};



