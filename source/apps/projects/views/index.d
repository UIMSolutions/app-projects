module apps.projects.views.index;

import apps.projects;
@safe:

class DPRJIndexView : DView {
  mixin(ViewThis!("PRJIndexView"));

  override DH5Obj[] toH5(STRINGAA options = null) {
    debugMethodCall(moduleName!DPRJIndexView~":DPRJIndexView("~this.className~")::toH5");
    super.toH5(options);

    return [
      H5Div("App Projects -> Index")
    ].toH5;
  }
}
mixin(ViewCalls!("PRJIndexView"));
