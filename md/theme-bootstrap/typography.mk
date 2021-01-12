

## Headings


```none ::- ref:cell01
# h1. Bootstrap
## h2. Bootstrap
### h3. Bootstrap
#### h4. Bootstrap
##### h5. Bootstrap
###### h6. Bootstrap
```
[marks ref:cell02]{{
# h1. Bootstrap
## h2. Bootstrap
### h3. Bootstrap
#### h4. Bootstrap
##### h5. Bootstrap
###### h6. Bootstrap
}}

[bs-grid]{{
col-sm-12,col-md-6|@@cell01@@
col-sm-12,col-md-6,outputNoBg|@@cell02@@
}}

___ ::- variant:dashed


## Emphasis


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

[bs-grid]{{
col-sm-12,col-md-6|@@emp01@@
col-sm-12,col-md-6,outputNoBg|@@emp02@@
}}

___ ::- variant:dashed


## Blockquote


```none ::- ref:cell01
> Lorem ipsum dolor sit amet, consectetur
> adipiscing elit. Integer 
```

> Lorem ipsum dolor sit amet, consectetur   ::- ref:cell02
> adipiscing elit. Integer 

[bs-grid]{{
col-sm-12,col-md-6|@@cell01@@
col-sm-12,col-md-6,outputNoBg|@@cell02@@
}}

___ ::- variant:dashed


## Lists
##### Unordered list

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

##### Ordered list

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

