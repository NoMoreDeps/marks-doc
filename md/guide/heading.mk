

# Heading ::- classes:text-center


To add a Heading in your text, start your line with the symbol ***`#`***  
Repeat the symbol from 1 to 6 times to set a heading from ***`H1`*** to ***`H6`***

```none ::- ref:head01
  # Heading 1
  ## Heading 2
  ### Heading 3
  #### Heading 4
  ##### Heading 5
  ###### Heading 6
```

[marks ref:head02]{{
  # Heading 1
  ## Heading 2
  ### Heading 3
  #### Heading 4
  ##### Heading 5
  ###### Heading 6
}}

___ ::- variant:dashed

[bs-grid]{{
col-sm-12,col-md-6|@@head01@@
col-sm-12,col-md-6,outputNoBg|@@head02@@
}}
___ ::- variant:dashed

You can also use the ***`=`*** symbol in the line immediately following the heading.  
Repeat the symbol from 1 to 6 times to set a heading from ***`H1`*** to ***`H6`***

```none ::- ref:head01
  Heading 1
  =
  Heading 2
  ==
  Heading 3
  ===
  Heading 4
  ====
  Heading 5
  =====
  Heading 6
  ======
```

[marks ref:head02]{{
  Heading 1
  =
  Heading 2
  ==
  Heading 3
  ===
  Heading 4
  ====
  Heading 5
  =====
  Heading 6
  ======
}}

___ ::- variant:dashed

[bs-grid]{{
col-sm-12,col-md-6|@@head01@@
col-sm-12,col-md-6,outputNoBg|@@head02@@
}}
___ ::- variant:dashed