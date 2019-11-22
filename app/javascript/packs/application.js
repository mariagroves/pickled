import "bootstrap";

require("components/form")

$(document).ready(function(){
  $(".category-choice").click(function(){
    console.log("hey")
    $(this).toggleClass("active");
  });
});
