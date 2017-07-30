*Below is based on [ tidal.lurk.org/functions.html ]*

#Introduction

This guide is *not* a how-to for learning tidal - you can find that here: [tidal.lurk.org/functions.html]. However, there are some functions in tidal that manipulate the samples in the Dirt or superDirt synth that will not work with your midi device. 

Sometimes you might see a pattern in tidal that you want to try with your midi device, so it's handy to have a list of what is and isn't permissable. 


#Pattern transformers

These functions simply manipulate the way patterns are played, so there is no problem using them with your midi device. These functions are: 


- __`(~>)`__ or __`(<~)`__ - beat rotation
- __`brak`__ - breakbeat-ifier
- __`degrade`__ - randomly remove events 50% of the time
- __`degradeBy`__ - as degrade but you can specify the amount by a number from 0 to 1
- __`density`__ - speed up a pattern (opposite of __slow__)
- __`fit`__ - selective choice of pattern events, following another pattern (also __fit'__)
- __`iter`__ - wraps subdivisions of events
- __`palindrome`__ applies __rev__ every other cycle
- __`rev`__ reveres a pattern
- __`slow`__
- __`slowspread`__
- __`spread`__
- __``__


## Problematic transformers: 

*There's no practical reason why these shouldn't work, but they give errors*

- __`fit`__ - selective choice of pattern events, following another pattern (also __fit'__)

- __`jux`__ - splits patterns over stereo - (also __juxBy__) 


- __`slowspread`__ Doesn't work for:

```
v1 $ slowspread ($) [density 2, rev, slow 2, degradeBy 0.3, (# speed "0.8")]  $ midinote "[26*2 [~ 49]] [24 21]*2 32 35*4"
```

#Transitions

..none of these work yet - Error is something about "Expected type: time Atcual type: ParamPattern

###To test

*I can't see that these will work:*















#Using Functions

Applictive functors work like in this example: 

	# pan ((*) <$> sinewave1 <*> (slow 8 $ "0 0.25 0.75"))


In the above, the  `sinewave1`  and the  `(slow 8 $ "0 0.25 0.75")`  pattern are multiplied together. Using the `<$>`  and the  `<*>`  in this way turns the  `*` operator, which normally works with two numbers, into a function that instead works on two patterns of numbers.

##Mapping over patterns

Sometimes you want to transform all the events inside a pattern, and not the time structure of the pattern itself. For example, if you wanted to pass a sinewave to shape, but wanted the sinewave to go from 0 to 0.5 rather than from 0 to 1, you could do this:

d1 $ sound "bd*2 [bd [sn sn*2 sn] sn]"

   # shape ((/ 2) <$> sinewave1)
The above applies the function (/ 2) (which simply means divide by two), to all the values inside the sinewave1 pattern.







#Non midi-compatible functions

All of the above means that there is  a list of functions that can't be used by midi devices, because they are designed to work with samples in Dirt/superDirt. These are: 

 
