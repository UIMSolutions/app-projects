module apps.projects.controllers.pages.error;

import apps.projects;
@safe:

class DPRJErrorPageController : DAPPPageController {
  mixin(ControllerThis!("PRJErrorPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(PRJErrorView(this));
  }
}
mixin(ControllerCalls!("PRJErrorPageController"));
