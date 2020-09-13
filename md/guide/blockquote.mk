
# Blockquote

In the document, you can call out a block of text as a quotation. In order to do so, start a new line with the symbol ***`>`***.

```none ::- ref:cell01
> This is a blockquote
```

[marks ref:cell02]{{
> This is a blockquote
}}

___ ::- variant:dashed

[bs-grid]{{
col-sm-12,col-md-6|@@cell01@@
col-sm-12,col-md-6,outputNoBg|@@cell02@@
}}
___ ::- variant:dashed

It is possible to use a multiline quotation by starting multiple consecutive lines 
with ***`>`***. The same rules as for `paragraph` apply, so visualy there will be no return line until you finish the previous one with 2 or more `whitespaces`.

```none ::- ref:cell01
> This is a multiline quotation.  
> Now you know how to do !
```

[marks ref:cell02]{{
> This is a multiline quotation.  
> Now you know how to do !
}}

___ ::- variant:dashed

[bs-grid]{{
col-sm-12,col-md-6|@@cell01@@
col-sm-12,col-md-6,outputNoBg|@@cell02@@
}}
___ ::- variant:dashed

Since `Blockquote` is like a paragraph, you can use emphasis with it.

```none ::- ref:cell01
> This text can use **bold** or *italic*  
> and so much ***`more`***...
```

[marks ref:cell02]{{
> This text can use **bold** or *italic*  
> and so much ***`more`***...
}}

___ ::- variant:dashed

[bs-grid]{{
col-sm-12,col-md-6|@@cell01@@
col-sm-12,col-md-6,outputNoBg|@@cell02@@
}}
___ ::- variant:dashed