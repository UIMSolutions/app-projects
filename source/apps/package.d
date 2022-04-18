module apps;

@safe:
mixin ImportPhobos;
mixin ImportDubs;
mixin ImportUim;

public import colored;

// Additional imports
public import uim.systems;
public import uim.jsonbase;
public import uim.entities;
public import uim.entitybase;

public import uim.projects;

// server-modeller packages
public import servers.modeller;

public import models.systems;
public import models.projects;

public import layouts.tabler;

// mixin(ImportLocal!("cms"));

string[size_t] errorMessages;
static this() {
  thisServer = new class DAPPApplication {
    this() { super(); 
      this
      .layout(MDLLayout)
      .scripts.addLinks(
        "/js/apps/projects/app.js");
    }
  };
}