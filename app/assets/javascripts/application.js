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
//= require common/bottom_sheet
//= require common/feedback_button

//= require home/index

$(document).on("turbolinks:load", function () {
  CSC_WEB.Common.FeedbackButton.init();

  let currentPage = CSC_WEB.Util.getCurrentPage();
  !!CSC_WEB[currentPage] && CSC_WEB[currentPage].init();
});
