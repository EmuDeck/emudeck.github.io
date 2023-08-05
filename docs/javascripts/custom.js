document$.subscribe(function () {
  const url = window.location.href;
  const htmlTag = document.querySelector("html");
  const inputElement = document.querySelector(".md-search__input");

  if (url.includes("?search=true")) {
    htmlTag.classList.add("js-search-only");
  }

  inputElement.addEventListener("keyup", function (event) {
    if (event.keyCode === 13) {
      htmlTag.classList.remove("js-search-only");
    }
  });
});
