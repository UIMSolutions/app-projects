module apps.projects.controllers.pages.index;

import apps.projects;
@safe:

class DProjectsIndexPageController : DPageController {
  mixin(ControllerThis!("ProjectsIndexPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(projectsIndexView(this));
  }
}
mixin(ControllerCalls!("ProjectsIndexPageController", "DProjectsIndexPageController"));
