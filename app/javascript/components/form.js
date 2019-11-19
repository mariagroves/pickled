$('.post_post_options_content').hide()

$("#dropdown").change(function(){
 let input = $(this[this.selectedIndex]).val();
 if (input === 'text') {
  $('.post_post_options_image').hide()
  $('.post_post_options_content').show()
 } else if (input === 'photo') {
  $('.post_post_options_content').hide()
  $('.post_post_options_image').show()
 };
});
