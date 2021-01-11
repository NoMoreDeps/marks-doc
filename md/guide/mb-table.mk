

# Table block ::- classes:text-center


## Markdown format
The table block is an improved version of the MD Table. It is compatible with the MD format. So inside the block the same syntax is used. You have to set the `format` parameter to `markdown`.  
By default `emphasis` is not interpreted inside a block until you set the `emp` parameter.

```none ::- ref:cell01
[table format:markdown emp]{{
  |Column 1   | Column 2   | Column 3|
  |-----------|:----------:|--------:|
  |**Things** | _Don't_    | ~~Need~~|
  |To         | *__Look__* | `Pretty`|
}}
```

[table format:markdown emp ref:cell02]{{
  |Column 1   | Column 2   | Column 3|
  |-----------|:----------:|--------:|
  |**Things** | _Don't_    | ~~Need~~|
  |To         | *__Look__* | `Pretty`|
}}

___ ::- variant:dashed

[bs-grid]{{
col-sm-12,col-md-6|@@cell01@@
col-sm-12,col-md-6,outputNoBg|@@cell02@@
}}

___ ::- variant:dashed

## CSV format
You can change the `format` to `CSV`. In this case you have to explicitly set col alignment. To set alignment, use the `colAlignX` where `X` is the column number starting from 1. Align value can be `left`, `right`, `center`. Default is `left`.

```none ::- ref:cell01
[table format:csv emp colAlign2:center colAlign3:right]{{
  Column 1   , Column 2   , Column 3
  **Things** , _Don't_    , ~~Need~~
  To         , *__Look__* , `Pretty`
}}
```

[table format:csv emp colAlign2:center colAlign3:right ref:cell02]{{
  Column 1   , Column 2   , Column 3
  **Things** , _Don't_    , ~~Need~~
  To         , *__Look__* , `Pretty`
}}

___ ::- variant:dashed

[bs-grid]{{
col-sm-12,col-md-6|@@cell01@@
col-sm-12,col-md-6,outputNoBg|@@cell02@@
}}