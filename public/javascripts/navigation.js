
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

$(".pic").hover( function() {

  $('.submenu').hide();});
});
