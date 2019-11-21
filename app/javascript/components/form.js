const selector = document.querySelector("#dropdown")

const showAppropriateFields = () => {
    const textFields = selector.value === "text"

    document.querySelectorAll(`.post_post_options_${textFields ? "content" : "image"}`).forEach((imageField) => {
      imageField.classList.remove('hide');
    })
    document.querySelectorAll(`.post_post_options_${textFields ? "image" : "content"}`).forEach((imageField) => {
      imageField.classList.add('hide');
    })
}

showAppropriateFields();

selector.addEventListener('change', showAppropriateFields)


// $('.post_post_options_content').hide()

// $("#dropdown").change(function(){
//  let input = $(this[this.selectedIndex]).val();
//  if (input === 'text') {
//   $('.post_post_options_image').hide()
//   $('.post_post_options_content').show()
//  } else if (input === 'photo') {
//   $('.post_post_options_content').hide()
//   $('.post_post_options_image').show()
//  };
// });
