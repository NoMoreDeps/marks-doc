

# HTML Block ::- classes:text-center


The name is self-explanatory. In this block, you can define HTML code, in case you can't get what you want in pure **Marks**. If possible, prefer creating a new Marks Plugin, this will be useful for the entire community :-)

 ::- classes:bd-callout,bd-callout-danger elt:div
For reasons you can imagine, it is not possible to add a script tag in an `html` block.

```none ref:cell01
[html]{{
  <span style="color:red">This is html span</span>
}}
```

[html ref:cell02]{{
  <span style="color:red">This is html span</span>
}}

___ ::- variant:dashed

[bs-grid]{{
col-sm-12,col-md-6|@@cell01@@
col-sm-12,col-md-6,outputNoBg|@@cell02@@
}}