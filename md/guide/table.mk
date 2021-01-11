

# Table ::- classes:text-center


Tables are great to quicly show data. **Marks** table syntax is almost the same as  `[Github Table format](https://guides.github.com/features/mastering-markdown/#GitHub-flavored-markdown "new")` in order to facilitate migration from *MD* to **Marks**. A table is composed of 3 elements.

* Header
* Column definition
* Rows

### Header
The header starts and ends with the symbol **`|`**. Each column is separated with a **`|`**.

### Column definition
Column definition starts and ends with the symbol **`|`**. Each definition is separated with a **`|`**. Definition needs to follow some rules :

- Filled with **`-`**
* Can start with `:` for left alignment
* Can end with `:` for right alignment
* Can start and end with `:` for center alignment

### Rows 
Rom definition starts and ends with the symbol **`|`**. Each cell value is separated with a **`|`**.

```none ::- ref:cell01
Default is to left alignment

| COL A | COL B   | COL C  |
|-------|:-------:|-------:|
| Left  | Center  |Right   |
```

| COL A | COL B   | COL C  | ::- variant:bordered ref:cell02
| ------|:-------:| ------:|
| Left  | Center  |Right   |

___ ::- variant:dashed

[bs-grid]{{
col-sm-12,col-md-6|@@cell01@@
col-sm-12,col-md-6,outputNoBg|@@cell02@@
}}
___ ::- variant:dashed

### Emphasis inside cell 
Any cell of a table can have emphasis applied to it.

```none ::- ref:cell01
| COL A | **COL B** | `COL C`  |
|-------|:---------:|---------:|
| Left  | Center    |*Right*   |
```

| COL A | **COL B** | `COL C`  | ::- variant:bordered ref:cell02
|-------|:---------:|---------:|
| Left  | Center    |*Right*   |

___ ::- variant:dashed

[bs-grid]{{
col-sm-12,col-md-6|@@cell01@@
col-sm-12,col-md-6,outputNoBg|@@cell02@@
}}
___ ::- variant:dashed
