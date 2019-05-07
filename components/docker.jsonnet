local kap = import "lib/kapitan.libjsonnet";
local inventory = kap.inventory();

{
  ['Dockerfile.' + stuff.name]: kap.jinja2_template("templates/Dockerfile", {
    name: stuff.name,
  })
  for stuff in inventory.parameters.stuffs
}
