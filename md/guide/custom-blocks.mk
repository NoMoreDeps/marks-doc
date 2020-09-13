
# Marks Block System

**Marks** provides a **`unique`** way to expand the possibilities within the document. When I say unique, I mean in the declarative sense of the word, the declaration syntax of a block is the same for all blocks.

This allows several things: 
* Simplify the work of the parser, and thus keep its speed.
* Prevent users from getting lost in complex syntax
* Simplify the creation of third party plugins.

How to recognize a bloc in a document ? this is quite simple.

```none
[NAME OPTIONS] {{
  BODY
}}
```
___ ::- variant:dashed
**Name** : `String`, The block name, *this will define wich kind of plugin will process this body*
___ ::- variant:dashed
**Options**: `Array&lt;Key:Value&gt;`, *List of options including styles*
___ ::- variant:dashed
**Body**:`String`, *Free text representing the block accepted syntax*
___ ::- variant:dashed

With correctly delimited blocks, you can easily find them in the document.  
The syntax inside a block will not be new, it will be the same as the syntax of the external plugin you are already using. For plugins provided by **Marks**, the syntax will remain as simple as usual.

Let's see an exemple with the Table Block.

```markdown ::- ref:cell01
[table format:markdown] {{
  | COL A | COL B   | COL C  |
  |-------|---------|--------|
  | AA    | BB      |CC      |
}}
```

[table format:markdown ref:cell02] {{
  | COL A | COL B   | COL C  |
  |-------|---------|--------|
  | AA    | BB      |CC      |
}}

[bs-grid]{{
col-sm-12,col-md-6|@@cell01@@
col-sm-12,col-md-6,outputNoBg|@@cell02@@
}}

Now let's see the power of using blocks, it is cool to have tables, but imagine that you want to copy excel data ? Excel will not provide a Mardown compatible export format you can copy and paste. But maybe a more standard one like csv. Now let's use the same block but with csv.

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

[bs-grid]{{
col-sm-12,col-md-6|@@cell01@@
col-sm-12,col-md-6,outputNoBg|@@cell02@@
}}

___ ::- variant:dashed
More simple than the previous one, same table block, same result.