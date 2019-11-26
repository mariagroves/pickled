const blurBody = () => {
$(".dropdown-toggle.dropdown-categories").click(function() {
  $(".container").toggleClass("blur")
});

$(".dropdown-toggle.dropdown-filter").click(function() {
  $(".container").toggleClass("blur")
});


$('.dropdown').on('show.bs.dropdown', function() {
  $(this).find('.dropdown-menu').first().stop(true, true).fadeIn();
});

$('.dropdown').on('hide.bs.dropdown', function() {
  $(this).find('.dropdown-menu').first().stop(true, true).fadeOut();
});

}

export { blurBody };
