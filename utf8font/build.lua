#!/usr/bin/env texlua

--[[
     For documentation and usage of the l3build system
     see l3build.pdf
--]]

module = "utf8font"

typesetfiles  = {"*.tex"}

typesetexe    = "lualatex"

stdengine     = "luatex"

checkengines  = { "luatex", "xetex" }
checkruns     = 1

if not release_date then
   dofile(kpse.lookup("l3build.lua"))
end
