module apps.projects.controllers.pages.index;

import apps.projects;
@safe:

class DPRJIndexPageController : DAPPPageController {
  mixin(ControllerThis!("PRJIndexPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(PRJIndexView(this));
  }
}
mixin(ControllerCalls!("PRJIndexPageController"));
