module apps.projects.views.error;

import apps.projects;
@safe:

class DPRJErrorView : DView {
  mixin(ViewThis!("PRJErrorView"));

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    debugMethodCall(moduleName!DPRJErrorView~":DPRJErrorView("~this.className~")::toH5");
    super.toH5(options);

    return [
      H5Div("App Projects -> error")
    ].toH5;
  }
}
mixin(ViewCalls!("PRJErrorView"));
