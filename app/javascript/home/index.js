CSC_WEB.HomeIndex = (() => {
  function init() {
    loadCookieConsent();
  }

  function loadCookieConsent() {
    cookieconsent.initialise({
      palette: {
        popup: {
          background: "#000",
        },
        button: {
          background: "#f1d600",
        },
      },
      position: "bottom-left",
      content: {
        href: gon.cookiePolicyPath,
      },
    });
  }

  return { init };
})();
