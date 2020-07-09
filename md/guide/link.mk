
# Link

You can add clickable links in your document.  A link can have 3 elements :

Checked = Madatory
- [x] Label, will be visible.
- [x] Uri, the link address.
- [ ] Target, to open new tab.

```none ::- ref:cell01
[Label](Uri "Target") or [Label](Uri)
ex :
[Wikipedia](https://wikipedia.com "new")
```

Go to [Wikipedia](https://wikipedia.org "new") ::- ref:cell02

___ ::- variant:dashed

[bs-grid]{{
col-sm-12,col-md-6|@@cell01@@
col-sm-12,col-md-6,outputNoBg|@@cell02@@
}}
___ ::- variant:dashed


# Image

You can add clickable links in your document.  A link can have 3 elements :

Checked = Madatory
- [x] Alt, will be visible.
- [x] Uri, the link address.
- [ ] Title, add desciption.

```none ::- ref:cell01
![Alt](Uri "Title") or [Alt](Uri)
ex :
![Wikipedia](https://www.wikipedia.org/portal/wikipedia.org/assets/img/Wikipedia-logo-v2.png "Wikipedia Logo")
```

![Wikipedia](https://www.wikipedia.org/portal/wikipedia.org/assets/img/Wikipedia-logo-v2.png "Wikipedia Logo") ::- ref:cell02

___ ::- variant:dashed

[bs-grid]{{
col-sm-12,col-md-6|@@cell01@@
col-sm-12,col-md-6,outputNoBg|@@cell02@@
}}
___ ::- variant:dashed

# Ruler

To create a horizontal rule, use three or more underscores (___) on a line, **`wihtout any other character`**.

 ::- classes:bd-callout,bd-callout-danger elt:div nested
**Marks** does not allows `**\*\*\***` and `**---**` annotation style, to avoid having too many ways to do a simple declaration.

```md::- ref:cell01
___
```
___

___ ::- variant:dashed ref:cell02

[bs-grid]{{
col-sm-12,col-md-6|@@cell01@@
col-sm-12,col-md-6,outputNoBg|@@cell02@@
}}