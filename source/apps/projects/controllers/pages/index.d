module apps.projects.controllers.pages.index;

import apps.projects;
@safe:

class DIndexPageController : DPageController {
  mixin(ControllerThis!("IndexPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(PRJIndexView(this));
  }
}
mixin(ControllerCalls!("IndexPageController"));
