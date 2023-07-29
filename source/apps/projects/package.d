module apps.projects;

mixin(ImportPhobos!());

// External
public {
  import vibe.d;
}

// UIM
public import uim.core;
public import uim.bootstrap;
public import uim.html;
public import uim.oop;
public import uim.models;
public import uim.apps;
public import web.controls;
public import uim.servers;

public import langs.javascript;

public {
  import apps.projects.controllers;
  import apps.projects.helpers;
  import apps.projects.routers;
  import apps.projects.tests;
  import apps.projects.views;
}

static this() {
  auto myApp = App("projectsApp", "apps/projects");

  with(myApp) {
    importTranslations;
    addControllers([
      "projects.index": IndexPageController
    ]);
    addRoutes(
      Route("", HTTPMethod.GET, controller("projects.index")),
      Route("/", HTTPMethod.GET, controller("projects.index"))
    );
  }

  AppRegistry.register("apps.projects", myApp);
}