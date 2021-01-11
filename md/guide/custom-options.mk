

# Options ::- classes:text-center


In **Marks**, you can define options. A paragraph, or a block can have options. The way you declare options in a block is the same as a paragraph. The difference is where you can set them.

In a block, it is just after the block name.
```markdown
[NAME OPTIONS] {{
  ...
}}
```

But in a paragraph / element of type `Markdown`, it is at the end of the first line. In this case, you must cut the line with this sequence **`::-`**, with a space before and after.

```markdown
This is a sample text ::- OPTIONS
```

There is one reserved keyword for option, `[ref : See Nesting section](/guide/custom-nesting)`. The same rule as for styles exists. Values can be unique, or a list of values, separated by a comma, without any spaces. 

Why no spaces are allowed? To make the options as simple as possible. If you need complex options, use the body of your custom block, this is Free Text format.

```markdown ::- ref:cell01
[table format:csv] {{
COL A,COL B,COL C
AA,BB,CC
}}
```

[table format:csv ref:cell02] {{
COL A,COL B,COL C
AA,BB,CC
}}

___ ::- variant:dashed

In the following example, the table block use an option, `format` to define wich format is used in input. Options depend on block type.
[bs-grid]{{
col-sm-12,col-md-6|@@cell01@@
col-sm-12,col-md-6,outputNoBg|@@cell02@@
}}

___ ::- variant:dashed