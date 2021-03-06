-- This file was automatically generated for the LuaDist project.

package = "dromozoa-prl"
version = "1.7-1"
-- LuaDist source
source = {
  tag = "1.7-1",
  url = "git://github.com/LuaDist-testing/dromozoa-prl.git"
}
-- Original source
-- source = {
--   url = "https://github.com/dromozoa/dromozoa-prl/archive/v1.7.tar.gz";
--   file = "dromozoa-prl-1.7.tar.gz";
-- }
description = {
  summary = "Lua bindings for Parallels Virtualization SDK";
  license = "GPL-3";
  homepage = "https://github.com/dromozoa/dromozoa-prl/";
  maintainer = "Tomoyuki Fujimori <moyu@dromozoa.com>";
}
dependencies = {
  "dromozoa-commons";
  "dromozoa-image";
  "dromozoa-unix";
}
build = {
  type = "make";
  build_variables = {
    CFLAGS = "$(CFLAGS)";
    LIBFLAG = "$(LIBFLAG)";
    LUA_INCDIR = "$(LUA_INCDIR)";
    LUA_LIBDIR = "$(LUA_LIBDIR)";
    LUA = "$(LUA_BINDIR)/$(LUA)";
  };
  install_variables = {
    BINDIR = "$(BINDIR)";
    LIBDIR = "$(LIBDIR)";
  };
}