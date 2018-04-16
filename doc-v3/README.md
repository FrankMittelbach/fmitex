doc package version 3
=================================================

This is an updated version of the doc package from the LateX kernel
incorporating work by Didier Verna (dox package) and integrating
hypdoc by Heiko Oberdiek.

This is work in progress so not really meant for (production) usage
right now as the interfaces may still change and the code further
corrected/ streamlined.

But I would appreciate any comments and tests to ensure that this can
become a drop-in replacement for the current doc package.

This package is set up to produce two PDF files: one including the
user documentation for the package, and the second, with ‘`-code`’
suffix, which includes both the user documentation and the typeset
package code.  Note that these are produced by the two `.tex` files,
which simply set typesetting options and read in the `.dtx` docstrip
file so only one source file needs to be maintained.


-----

Copyright (C) 2017-2018 Frank Mittelbach, The LaTeX3 Project<br />
<https://latex-project.org/> <br />
All rights reserved.
