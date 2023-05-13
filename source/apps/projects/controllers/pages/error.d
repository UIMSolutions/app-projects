module apps.ecm.controllers.pages.error;

import apps.projects;
@safe:

class DECMErrorPageController : DPageController {
  mixin(ControllerThis!("ECMErrorPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(ECMErrorView(this));
  }
}
mixin(ControllerCalls!("ECMErrorPageController", "DECMErrorPageController"));
