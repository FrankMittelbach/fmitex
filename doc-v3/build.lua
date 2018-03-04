#!/usr/bin/env texlua

module = "doc"

typesetfiles  = {"*.tex"}

checkruns     = 2

--[[
function runtest_tasks (name)
          makeindex(name, "./", ".glo", ".gls", ".glg", glossarystyle) 
          makeindex(name, "./", ".idx", ".ind", ".ilg", indexstyle)
  return ""
end
--]]

kpse.set_program_name("kpsewhich")
dofile(kpse.lookup("l3build.lua"))
