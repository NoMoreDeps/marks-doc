

# Emphasis ::- classes:text-center


When you want the user to pay attention on something in the text, you have to use some formatting to help him seeing what is important. This is what `emphasis` is about.

```none ::- ref:emp01
This is *Italic*
This is **Bold**
This is ~underline~
This is ~stroke~
This is `inline quote`
```

This is *Italic*  ::- ref:emp02
This is **Bold**  
This is ~underline~  
This is ~~stroke~~  
This is `inline quote`

___ ::- variant:dashed

[bs-grid]{{
col-sm-12,col-md-6|@@emp01@@
col-sm-12,col-md-6,outputNoBg|@@emp02@@
}}
___ ::- variant:dashed

You can even combine one or more emphasis if you need.

```none ::- ref:emp01
This is __*Bold & Italic*__
```

This is __*Bold & Italic*__ ::- ref:emp02

___ ::- variant:dashed

[bs-grid]{{
col-sm-12,col-md-6|@@emp01@@
col-sm-12,col-md-6,outputNoBg|@@emp02@@
}}
___ ::- variant:dashed