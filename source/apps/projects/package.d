module apps.projects;

mixin(ImportPhobos!());

// Dub
public import vibe.d;

// UIM
public import uim.core;
public import uim.bootstrap;
public import uim.html;
public import uim.oop;
public import uim.models;
public import uim.apps;
public import uim.controls;
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
  AppRegistry.register("apps.projects",  
    App
    .name("projectsApp")
    .rootPath("/apps/projects")
    .addRoute(Route("", HTTPMethod.GET, PRJIndexPageController))
    .addRoute(Route("/", HTTPMethod.GET, PRJIndexPageController)));
}