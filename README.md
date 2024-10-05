# ImageToText

This is a simple command line tool that will turn an image into text.

Usecases could include:
- Needing to get an idea of what an image contains when in an enviorment where you only have the terminal like when you are ssh'd into a machine.
- Sending low resolution images in Discord servers where you dont have image permisions.
- Fun.

## example 
The primeagens profile picture
```
$ imageToText ~/Pictures/prime.jpeg --set ascii --height 80

"""""""""""""|oooooooooooooooooooooooooooooooooooooooooooooooo|"""""""""""""""""
""""""""""""""ooooooooooooooooooooooooooooooooooooooooooooooo|""""""""""""""""""
""""""""""""""ooooooooooooooooooooooooooooooooooooooooooooooo"""""""""""""""""""
""""""""""""""|ooooooooooooooooooooooooooooooooooooooooooooo|"""""""""""""""""""
""""""""""""""|ooooooooooooooooo---"""""""++++++o+++"-oooooo""""""""""""""""""""
""""""""""""""|oooooooooooooo/."...""""+oo++oo++"++++-+.\oo|""""""""""""""""""""
"""""""""""""""ooooooooooooo/. ........."""""""+oooo++\""+""""""""""""""""""""""
"""""""""""""""|oooooooooo||.. " ............."+oooo-ooooo\"""""""""""""""""""""
"""""""""""""""|oooooooooo|..  . ..............."++o+oo+"+o+"+""""""""""""""""""
"""""""""""""""|ooooooooo|.. ...        .. ....""\o+"--oo+--+++"""""""""""""""""
""""""""""""""""ooooooooo......   .. ........"...."o+""""...|+|"""""""""""""""""
""""""""""""""""|ooooooo|..    .    .............".|"++"""./+++"""""""""""""""""
""""""""""""""""|oooooo|....  . ..............""+++++oooo+++"-+"""""""""""""""""
""""""""""""""""|oooooo|..    ....."""""......"+oooo???oo""+""""""""""""""""""""
"""""""""""""""""|ooooo|..    ....""""""""""+++o???????##?\++"""""""""""""""""""
"""""""""""""""""|ooooo|.    ...""""""""++\o???#????#####??|""""""""""""""""""""
"""""""""""""""""|ooo/""| .. ."""""""""oo""+\?o?o??######?||""""""""""""""""""""
"""""""""""""""""|ooo"."+". ."""+""""....."++o"|||?????###|"""""""""""""""""""""
""""""""""""""""""ooo|""."...""""""."......."""||++--o????""""""""""""""""""""""
""""""""""""""""""|ooo|".+"""+"""""""""""...."/?|....".+o|/"""""""""""""""""""""
""""""""""""""""""|oooo++""""++""""""""""""""|??\++"+????|."""""""""""""""""""""
""""""""""""""""""|oooo|"""""++++""""""""""""|??##????#?#|""""""""""""""""""""""
""""""""""""""""""|ooooo\""""+++++"""""""""""|??????????|"""""""""""""""""""""""
"""""""""""""""""""ooooo."""++++++"""""".""""|??????????|"""""""""""""""""""""""
"""""""""""""""""""|oo-|""""+++++++""".....-++\-??o????|""""""""""""""""""""""""
"""""""""""""""""""-" ."""""++++++"....... /"|+???????|"""""""""""""""""""""""""
"""""""""""""""/\"."+"\.."""++++++"..\+""".".\"+ooo??||"""""""""""""""""""""""""
""""""""""""""ooo+o""+"".."""+++++"""++"..."+"..\"|??""""""""""""""""""""""""""/
"""""""""""""++++++o+""++\..""+"+"""""+""+-oo????o?/"""""""""""""""""""""""""/oo
""""""""""""|+o++++++o+"++"\..."++""""""""""+?????/"""""""""""""""""""""""""oooo
""""""""+++++++ooooooooo\"+++\...\++"""+ooo????/"""""""""""""""""""""""""/oooooo
""""./++++++++++++oooooooo""++""."""+++++++oo-"""""""""""""""""""""""""/oooooooo
""+++++++++++++++oooooooooo\"+++""+++++|??????\""""""""""""""""""""""/oooooooooo
+++o++oo??oo+oo++oooooooooooo+++oo++oooo??oo???|"""""""""""""""""""/oooooooooooo
???????#######?oo+oooooooo????\+ooo?#oo??oooo??-|"""""""""""""""""/ooooooooooooo
##???#############ooo???#?o???#\++o???#?|ooo???|"""""""""""""""/oooooooooooooooo
##?####################????????##|+o???/?ooo?\##\\"""""""""""/oooooooooooooooooo
???####################??????????#++o?|.|?o/o||###\"""""""""oooooooooooooooooooo
??######################?????????##\o|--\###?#o####||""""/oooooooooooooooooooooo
#####################??##??????#?###?\\...\\?#?o#####\"/oooooooooooooooooooooooo
```

## current features
- character sets, current options braile, numbers and ascii
- changing the width and height, if one is not given the other is calculated to try and match aspect ratio of image
- line detection using the sobel operator
- color (use the 'real' color set)

## todo (in order)
- take in videos to display video
- GPU!!!
- adjustable line 'thickness'
- see if i can improve the line detection further [like done in this cool video](https://www.youtube.com/watch?v=gg40RWiaHRY)
- improve line detection to be able to place `>`, `<`, `(` and `)` when that fits the detected edge
- improve color quantization [acerola will save us again](https://www.youtube.com/watch?v=fv-wlo8yVhk)
- take in streams of images to display video (i dont know how streams work)
- maybe a option to enable a dithering effect?? (both in color and in character seperately)
