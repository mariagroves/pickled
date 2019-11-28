const selector = document.querySelector("#dropdown");

const showAppropriateFields = () => {
    const selectedValue = selector.value;

    document.querySelectorAll('[class*="post_post_options_"]').forEach((imageField) => {
      imageField.classList.add('hide');
    })

    if (selectedValue === "text") {
      document.querySelectorAll(`.post_post_options_content`).forEach((imageField) => {
        imageField.classList.remove('hide');
      })
    } else if (selectedValue === "photo") {
      document.querySelectorAll('[class*="post_post_options_image"]').forEach((imageField) => {
        imageField.classList.remove('hide');
      })
    }
}

showAppropriateFields();

selector.addEventListener('change', showAppropriateFields)

const buttons = document.querySelectorAll('.form-button-photo');

buttons.forEach((button) => {
  button.addEventListener("click", function(){
    button.classList.add('form-button-active');
  })
})
