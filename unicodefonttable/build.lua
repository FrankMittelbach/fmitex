#!/usr/bin/env texlua

--[[
     For documentation and usage of the l3build system
     see l3build.pdf
--]]

module = "unicodefonttable"

typesetfiles  = {"*.tex"}

typesetexe    = "lualatex"

stdengine     = "luatex"

checkengines  = { "luatex" }   -- for now
checkruns     = 2

if not release_date then
   dofile(kpse.lookup("l3build.lua"))
end
