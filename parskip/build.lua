#!/usr/bin/env texlua

--[[
     For documentation and usage of the l3build system
     see l3build.pdf
--]]

module = "parskip"

checkengines = { "pdftex" }

typesetfiles  = {"*.tex"}

checkruns     = 2


-- Upload meta data

uploadconfig = {
 pkg = "parskip",
 version = "v2.0f 2020-06-15",
 author = "Frank Mittelbach",
 license = "lppl1.3c",
 summary = "Layout with zero \\parindent, non-zero \\parskip",
 ctanPath = "/macros/latex/parskip",
 repository = "https://github.com/FrankMittelbach/fmitex",
 bugtracker = "https://github.com/FrankMittelbach/fmitex/issues",
 uploader = "Frank Mittelbach",
 email = "frank.mittelbach@latex-project.org",
 update = true ,
-- note = [[Uploaded by l3build...]],
}



if not release_date then
   kpse.set_program_name("kpsewhich")
   dofile(kpse.lookup("l3build.lua"))
end
