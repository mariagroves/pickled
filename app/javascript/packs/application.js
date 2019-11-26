import "bootstrap";

$(document).ready(function(){
  $(".category-choice").click(function(){
    console.log("hey")
    $(this).toggleClass("active");
  });
});

import { initSweetalert } from '../components/init_sweetalert';

initSweetalert('#sweet-alert-delete', {
  title: "Are you sure?",
  text: "This action cannot be reversed",
  icon: "warning"
}, (value) => {
  if (value) {
    const link = document.querySelector('#delete-link');
    link.click();
  }
});

$(".dropdown-toggle.dropdown-categories").click(function() {
  $(".container").toggleClass("blur")
});

$(".dropdown-toggle.dropdown-filter").click(function() {
  $(".container").toggleClass("blur")
});


// import { blurBody } from '../components/blur';
// blurBody();

AOS.init();

require("components/form")


