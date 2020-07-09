
# Styles

In **Marks**, styles are options, but to keep it simple, some option names are dedicated to style. A paragraph, or a block can have styles. The way you declare styles in a block is the same as a paragraph. The difference is where you can set them.

In a bloc, it is just after the bloc name.
```markdown
[NAME STYLES] {{
  ...
}}
```

But in a paragraph / element of type "Markdown", it is at the end of the first line. In this case, you must cut the line with this sequence **`::-`**, with a space before and after.

```markdown
This is a sample text ::- STYLES
```

There are 3 reserved words to define styles, but some plugins can provide more options.

___ ::- variant:dashed
**theme** : `String`, *The global theme name to apply*
___ ::- variant:dashed
**variant** : `Array&lt;String&gt;, comma separated`, *Mostly One (could have more) variant for this kind of component / paragraph / block*
___ ::- variant:dashed
**classes** : `Array&lt;String&gt;, comma separated`, *Css class names to apply, if no theme or variant exists*

```markdown ::- ref:cell01
[table format:csv theme:dark variant:bordered,striped] {{
COL A,COL B,COL C
AA,BB,CC
AA,BB,CC
AA,BB,CC
AA,BB,CC
}}
```

[table format:csv theme:dark variant:bordered,striped ref:cell02] {{
COL A,COL B,COL C
AA,BB,CC
AA,BB,CC
AA,BB,CC
AA,BB,CC
}}

___ ::- variant:dashed

[bs-grid]{{
col-sm-12,col-md-6|@@cell01@@
col-sm-12,col-md-6,outputNoBg|@@cell02@@
}}

___ ::- variant:dashed

The same for a piece of text

```markdown ::- ref:cell01
___ ::- variant:dashed
This *text* can be styles ::- classes:bginfo,light
___ ::- variant:dashed
```

[marks ref:cell02] {{
___ ::- variant:dashed
This *text* can be styled ::- variant:bgInfo,light
___ ::- variant:dashed
}}

___ ::- variant:dashed

[bs-grid]{{
col-sm-12,col-md-6|@@cell01@@
col-sm-12,col-md-6,outputNoBg|@@cell02@@
}}

___ ::- variant:dashed
