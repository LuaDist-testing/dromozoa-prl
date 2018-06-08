-- Copyright (C) 2015 Tomoyuki Fujimori <moyu@dromozoa.com>
--
-- This file is part of dromozoa-prl.
--
-- dromozoa-prl is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- dromozoa-prl is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with dromozoa-prl.  If not, see <http://www.gnu.org/licenses/>.

local loadstring = loadstring or load

local body = assert(io.read("*a"):match("({[^{}]*}) PRL_KEY;"))
local enum = assert(loadstring("return " .. body))()

enum.PRL_KEY_INVALID = nil
enum.PRL_KEY_MAX  = nil

local data = {}
local i = 0
for k, v in pairs(enum) do
  i = i + 1
  data[i] = { k, v }
end
table.sort(data, function (a, b)
  return a[2] < b[2]
end)

for i, item in ipairs(data) do
  local k = item[1]
  io.write("dromozoa::set_field(L, \"", k:gsub("^PRL_KEY_", ""), "\", ", k, ");\n")
end