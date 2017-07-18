# RG
R-Golf, codegolf functions for R

Codegolfing is fun, and, according to some, R is fun too. 
However, in most cases R isn't all that great at being golfy. 
This package is attempting to make R that bit golfier by taking operations that are wordy (looking at you, string operations), and packing them in nice short functioncalls.
PPCG consensus is that this is fine as long as the functions existed prior to the challenge where they are used.

# Features

One of those pesky things about packages, especially when you need to use multiple packages, or multiple functions from one packages is calling that package.
`RG`'s functions automatically call `library(RG)` if it hasn't been attached yet, so that you only have to refer to `RG` once:

    > RG::C(2,3,9) # Call with RG:: once

    Attaching package: ‘RG’ 

    The following object is masked from ‘package:stats’:

        C

    [1] 239 
    > C(2,3,9) # Don't have to do it again!
    [1] 239
    
## Current included functions:

[`C`](R\C.R): Numerical concatenation. Paste digits together and output a numeric.
