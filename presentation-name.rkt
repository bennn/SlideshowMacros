#lang slideshow

(require slideshow/play
         slideshow/code
         slideshow/latex
         slideshow/pict
         (for-syntax syntax/stx)
         "slideshow-macros.rkt")

(require "snippits.rkt")

(title-slide
 (large-large-text "Sample Presentation")
 (colorize (medium-text "Leif Andersen") "blue")
 (colorize (t "University of Utah") "red"))

(pretty-slide
 (item "Here is a slide")
 'next
 (item "using bullet points")
 'next
 'alts
 `((,(item "with one"))
   (,(item "changing"))))

(acronym-slide
 #:acronym (double-massive-text "AS")
 (large-text "Acronym")
 (large-text "Slide"))

(header-slide
 #:header (large-text "Header")
 (medium-text "Slide"))

(pretty->flip-slide
 (vc-append 0
            (large-text "And math:")
            (large-$$ "\\frac{d}{dx}x^2=2x")))

(flip->pretty-slide
 (medium-text "There is a lot more!"))

(header-slide
 #:header (massive-text "Questions?")
 (large-text "leif@leifandersen.net"))

