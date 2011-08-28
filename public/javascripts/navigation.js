
$(document).ready( function(){

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

