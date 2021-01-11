

# Document structure ::- classes:text-center


A **Marks** document is a simple text file. This file contains special character sequences that describe 
how a text should be formatted when rendered.

For example, to put a word in italic, you have to place the symbol `\*` around it, like that `\*ITALIC\*`, and as a result you will see that *ITALIC*.

You don't have to learn a web language to write text and apply some formatting on it.

In the document, each group of lines is handled as a `paragraph`. This is important when you want to add some style on it. When you add an `end of line` by going to the  next one, this is not interpreted as a line break. So when rendering, the text is printed as it is on the same line. To force the line break keeping the text inside the same `paragraph`, end the current line with 2 or more `whitespaces`.

```none ::- ref:ref1
This is a single line even if written
as a multi line one.
```

This is a multiline single line even if written ::- ref:ref2
as a multi line one.

```none ::- ref:ref3
This is a multiline ended by 2 whitespaces  
Not so bad.
```

This is a multiline ended by 2 whitespaces  ::- ref:ref4
Not so bad.

___ ::- variant:dashed

[bs-grid]{{
col-sm-12,col-md-6|@@ref1@@
col-sm-12,col-md-6,outputNoBg|@@ref2@@
col-sm-12,col-md-6|@@ref3@@
col-sm-12,col-md-6,outputNoBg|@@ref4@@
}}
___ ::- variant:dashed

Document can contain lines, paragraphs, and components. There are 2 kind of components that ca be used. 
The first way is Markdown components, like Table, List, Task, and the syntax will be mostly the same as in Markdown.

The second way is to use a `Marks block`. Each `Marks block` represents a unique feature exposed inside Marks engine. 
Each element in a document can have styling applied on it, theming, css classes, variant, and options. In any case, the syntax will remain as simple as it can be in Markdown.