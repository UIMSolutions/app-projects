module apps.projects.controllers.pages.error;

import apps.projects;
@safe:

class DProjectsErrorPageController : DPageController {
  mixin(ControllerThis!("ProjectsErrorPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(projectsErrorView(this));
  }
}
mixin(ControllerCalls!("ProjectsErrorPageController", "DProjectsErrorPageController"));
