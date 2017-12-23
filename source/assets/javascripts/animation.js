$(document).ready(function() {
  // Changing the defaults
  window.sr = ScrollReveal({ reset: true });

  // Customizing a reveal set
  sr.reveal('.deco-object ', { duration: 400 });
  sr.reveal('.deco-object-1 ', { duration: 500 });
  sr.reveal('.deco-object-4 ', { duration: 400 });
  sr.reveal('.deco-object-5 ', { duration: 500 });

  sr.reveal('.text ', { duration: 700 });
  sr.reveal('.img-sec ', { duration: 400 });
  sr.reveal('.p-text ', { duration: 500 });
  sr.reveal('.row ', { duration: 600 });
  sr.reveal('.row-container ', { duration: 700 });

  sr.reveal('.content ', { duration: 600 });

  sr.reveal('.cards ', { duration: 700 });
});
