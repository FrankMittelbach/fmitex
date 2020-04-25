#!/usr/bin/env texlua

-- Build script for "widows-and-orphans" files

-- Identify the bundle and module
bundle = ""
module = "widows-and-orphans"


checksuppfiles = 
  {"regression-test.tex"}

checkengines   = {"pdftex"}

-- Documentation is standalone
typesetfiles = {"*.tex"}

typesetsourcefiles = {"l3doc-TUB.cls"}


-- Release a TDS-style zip
packtdszip  = false

-- tests for this bundle
-- testfiledir = "testfiles"


-- Upload meta data

uploadconfig = {
 pkg = "widows-and-orphans",
 version = "v1.0c 2020-01-22",
 author = "Frank Mittelbach",
 license = "lppl1.3c",
 summary = "Identify (typographic) widows and orphans",
 ctanPath = "/macros/latex/widows-and-orphans",
 repository = "https://github.com/FrankMittelbach/fmitex",
 bugtracker = "https://github.com/FrankMittelbach/fmitex/issues",
 uploader = "Frank Mittelbach",
 email = "frank.mittelbach@latex-project.org",
 update = true ,
 note = [[Uploaded by l3build...]],
}


-- Find and run the build system
if not release_date then
   kpse.set_program_name("kpsewhich")
   dofile(kpse.lookup("l3build.lua"))
end
