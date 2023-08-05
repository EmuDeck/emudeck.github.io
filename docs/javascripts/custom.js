document$.subscribe(function() {
  const url = window.location.href
  const htmlTag = document.querySelector('html')
  if (url.includes('?search=true')){
    htmlTag.classList.add('js-search-only')
  }

})

