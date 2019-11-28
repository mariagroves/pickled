import "bootstrap";
import { touch } from '../components/touch';
touch();
// import { hold } from '../components/touch';
// hold();

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

import { blurBody } from '../components/navbar';
blurBody();
AOS.init();



require("components/form")


