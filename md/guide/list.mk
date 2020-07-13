
# List

You can add in your text some data formatted as a list. **Marks** supports as *Markdown*, ordered and unordered lists.

### Unordered list

An unordered list can only be defined with an asterisk ***`*`***. To set nested list, just indent the line you want to nest.

```none ::- ref:cell01
* Item 1
* Item 2
* Item 3
```

[marks ref:cell02]{{
* Item 1
* Item 2
* Item 3
}}

```none ::- ref:cell03
* Item 1
* Item 2
  * Item 2.1
    * Item 2.1.1
  * Item 2.2
* Item 3
```

[marks ref:cell04]{{
* Item 1
* Item 2
  * Item 2.1
    * Item 2.1.1
  * Item 2.2
* Item 3
}}

___ ::- variant:dashed

[bs-grid]{{
col-sm-12,col-md-6|@@cell01@@
col-sm-12,col-md-6,outputNoBg|@@cell02@@
col-sm-12,col-md-6|@@cell03@@
col-sm-12,col-md-6,outputNoBg|@@cell04@@
}}
___ ::- variant:dashed

### Ordered list

An ordered list can only be defined with ***`a number followed by a period`***. To set nested list, just indent the line you want to nest.

```none ::- ref:cell01
1. Item 1
1. Item 2
1. Item 3
```

[marks ref:cell02]{{
1. Item 1
1. Item 2
1. Item 3
}}

```none ::- ref:cell03
1. Item 1
8. Item 2
  0. Item 2.1
    6. Item 2.1.1
  3. Item 2.2
2. Item 3
```

[marks ref:cell04]{{
1. Item 1
8. Item 2
  0. Item 2.1
    6. Item 2.1.1
  3. Item 2.2
2. Item 3
}}

___ ::- variant:dashed

[bs-grid]{{
col-sm-12,col-md-6|@@cell01@@
col-sm-12,col-md-6,outputNoBg|@@cell02@@
col-sm-12,col-md-6|@@cell03@@
col-sm-12,col-md-6,outputNoBg|@@cell04@@
}}

___ ::- variant:dashed

[marks classes:bd-callout,bd-callout-info]{{
Nesting of complex elements *like in Markdown* such as multiline blockquotes is not allowed for readability concerns.  
You can use the official [Marks](/guide/custom-nesting) way of nesting to do the equivalent.
}}