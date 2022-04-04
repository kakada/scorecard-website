CSC_WEB.Util = {
  capitalize(value) {
    return value.replace(
      /(^|\s)([a-z])/g,
      (m, p1, p2) => p1 + p2.toUpperCase()
    );
  },

  getCurrentPage() {
    if (!$("body").attr("id")) {
      return "";
    }
    const bodyId = $("body").attr("id").split("-");
    const action = this.capitalize(bodyId.pop());
    const controller = bodyId;
    let i = 0;
    while (i < controller.length) {
      controller[i] = this.capitalize(controller[i]);
      i++;
    }
    const pageName = controller.join("") + action;

    return pageName;
  }
};
