module apps.ecm.controllers.pages.index;

import apps.projects;
@safe:

class DECMIndexPageController : DPageController {
  mixin(ControllerThis!("ECMIndexPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(ECMIndexView(this));
  }
}
mixin(ControllerCalls!("ECMIndexPageController", "DECMIndexPageController"));
