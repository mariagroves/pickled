//event listener on the button

//toggle blur on body when click on button

// toggle blur on bodye when click body



const blurBody = () => {
  const dropdown = document.getElementsByClassName("dropdown");
  console.log(dropdown);

  $(".dropdown").click(function() {
    console.log("clicked")
  });
  // dropdown[0].addEventListener("click", function(){
  //   console.log("hi");
  // });
}

export { blurBody };
