package = "kong-plugin-http-log-with-body"
version = "0.1.0-1"
source = {
  url = "git://github.com/hmagarotto/kong-plugin-http-log-with-body",
  tag = "0.1.0"
}
description = {
  summary = "This plugin allows Kong to send log using HTTP request.",
  license = "Apache 2.0"
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.http-log-with-body.handler"] = "kong/plugins/http-log-with-body/handler.lua",
    ["kong.plugins.http-log-with-body.schema"]  = "kong/plugins/http-log-with-body/schema.lua",
  }
}