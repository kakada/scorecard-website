CSC_WEB.Common.FeedbackButton = (() => {
  return { init: init }

  function init() {
    initPopover();
    onClickBtnFeedbackFull();
    onClickBtnFeedbackShort();

    CSC_WEB.Common.BottomSheet.init();
  }

  function initPopover() {
    var options = { html: true, content: $('[data-name="popover-content"]') };
    var dom = document.getElementById('btn-feedback');
    var popover = new bootstrap.Popover(dom, options);
  }

  function onClickBtnFeedbackFull() {
    $(".btn-feedback-full").on ('click', function(e) {
      $(this).addClass('d-none');
      $(".btn-feedback-short").removeClass('d-none');
    })
  }

  function onClickBtnFeedbackShort() {
    $(".btn-feedback-short").on ('click', function(e) {
      $(this).addClass('d-none');
      $(".btn-feedback-full").removeClass('d-none');
    })
  }
})();
