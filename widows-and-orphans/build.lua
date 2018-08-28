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


-- Release a TDS-style zip
packtdszip  = false

-- tests for this bundle
-- testfiledir = "testfiles"


-- Find and run the build system
kpse.set_program_name ("kpsewhich")
dofile (kpse.lookup ("l3build.lua"))
