//= require rails-ujs
//= require activestorage
//= require turbolinks

//= require jquery3
//= require popper
//= require bootstrap

//= require cookieconsent.min
//= require social-share-button

//= require application/namespace
//= require application/util
//= require home/index

$(document).on("turbolinks:load", function () {
  let currentPage = CSC_WEB.Util.getCurrentPage();
  !!CSC_WEB[currentPage] && CSC_WEB[currentPage].init();
});
