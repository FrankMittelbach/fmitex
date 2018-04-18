#!/usr/bin/env texlua

--[[
     For documentation and usage of the l3build system
     see l3build.pdf
--]]

module = "doc"

typesetfiles  = {"*.tex"}

checkruns     = 2

kpse.set_program_name("kpsewhich")
dofile(kpse.lookup("l3build.lua"))
