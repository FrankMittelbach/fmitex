#!/usr/bin/env texlua

--[[
     For documentation and usage of the l3build system
     see l3build.pdf
--]]

module = "fewerfloatpages"

sourcefiles = {"*.dtx", "*.ins", "*-????-??-??.sty", "l3doc-TUB.cls"}

typesetfiles  = {"*.tex"}

checkruns     = 1
typesetruns   = 3


-- Upload meta data

uploadconfig = {
 pkg = module,
 version = "v1.0a 2020-02-14",
 author = "Frank Mittelbach",
 license = "lppl1.3c",
 summary = "Avoid unnecessary float pages if a float page is fairly empty and floats can be placed as top/bottom floats instead",
 ctanPath = "/macros/latex/" .. module,
 repository = "https://github.com/FrankMittelbach/fmitex",
 bugtracker = "https://github.com/FrankMittelbach/fmitex/issues",
 uploader = "Frank Mittelbach",
 email = "frank.mittelbach@latex-project.org",
 update = false ,
 note = [[Uploaded automatically by l3build...]],
}



if not release_date then
   dofile(kpse.lookup("l3build.lua"))
end
