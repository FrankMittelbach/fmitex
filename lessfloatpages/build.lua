#!/usr/bin/env texlua

--[[
     For documentation and usage of the l3build system
     see l3build.pdf
--]]

module = "lessfloatpages"

typesetfiles  = {"*.tex"}

checkruns     = 1
typesetruns   = 2


-- Upload meta data

uploadconfig = {
 pkg = module,
 version = "v1.0a 2019-07-27",
 author = "Frank Mittelbach",
 license = "lppl1.3c",
 summary = "Avoid unnecessary float pages if float page is fairly empty and floats can be placed as top/bottom floats instead",
 ctanPath = "/macros/latex/" .. module,
 repository = "https://github.com/FrankMittelbach/fmitex",
 bugtracker = "https://github.com/FrankMittelbach/fmitex/issues",
 uploader = "Frank Mittelbach",
 email = "frank.mittelbach@latex-project.org",
 update = true ,
 note = [[Uploaded automatically by l3build...]],
}



if not release_date then
   dofile(kpse.lookup("l3build.lua"))
end
