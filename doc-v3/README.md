doc package version 3
=================================================

This is an updated version of the doc package from the LateX kernel
incorporating work by Didier Verna (dox package) and integrating
hypdoc by Heiko Oberdiek.

This is work in progress so not really meant for (production) usage
right now as the interfaces may still change and the code further
corrected/streamlined.

But I would appreciate any comments and tests to ensure that this can
become a drop-in replacement for the current doc package.

----

The code can be unpacked as usual, by running the `doc.ins` file through LaTeX.

Alternatively, you can use the `l3build` mechanism (for details see, for example,
`l3build.pdf` available in all major LaTeX distributions):

 - To locally install execute:
 ```
 texlua build.lua install
 ```

 - To run all tests  (some may fail) execute:
 ```
 texlua build.lua check
 ```

 - To produce the documentation run:
 ```
 texlua build.lua doc
 ```

This bundle is set up to produce two PDF files: one including the
user documentation for the package, and the second, with ‘`-code`’
suffix, which includes both the user documentation and the typeset
package code.  Note that these are produced by the two `.tex` files,
which simply set typesetting options and read in the `.dtx` docstrip
file so only one source file needs to be maintained.

Please also note that the documentation is produced by using the new
`doc` package itself. This means you have to first extract the code
and then produce the documentation (or use `texlua build.lua doc`that
does all that for you and also runs makeindex to generate the index
entries etc).


-----

Copyright (C) 2017-2021 Frank Mittelbach, The LaTeX Project<br />
<https://latex-project.org/> <br />
All rights reserved.
