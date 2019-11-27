import * as Hammer from "hammerjs";

const touch = () => {
  const optionImage = document.querySelectorAll(".card-option-image");
  optionImage.forEach((image) => {
    const manager = new Hammer.Manager(image);
    const DoubleTap = new Hammer.Tap({
      event: 'doubletap',
      taps: 2
    });

    manager.add(DoubleTap);

    manager.on('doubletap', function(e) {
      e.target.parentNode.parentNode.childNodes[2].nextSibling.firstElementChild.click();
    });
  });
}

export { touch };

const hold = () => {
  const holdImage = document.querySelectorAll(".card-option-image");
  holdImage.forEach((image) => {
    const manager = new Hammer.Manager(image);
    const Press = new Hammer.Press({
      time: 300
    });

    manager.add(Press);

    manager.on('press pressup', function(e) {
      if (e.type == "press"){
        e.target.classList.add('expand');
      }
      if (e.type =="pressup"){
        e.target.classList.remove('expand');
      }
    });
  });
}

export { hold };
