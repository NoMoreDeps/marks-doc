
## Image block

The image block is another way to use an image in the docuemnt. It is useful when you need prepare image as a ref, or with options not available with the inline image.

```none ::- ref:cell01
[img width:100px]{{
  "src"   : "https://www.wikipedia.org/portal/wikipedia.org/assets/img/Wikipedia-logo-v2.png",
  "alt"   : "Image",
  "title" : "Me, myself and I"
}}
```

[img width:100px ref:cell02]{{
  "src"   : "https://www.wikipedia.org/portal/wikipedia.org/assets/img/Wikipedia-logo-v2.png",
  "alt"   : "Image",
  "title" : "Me, myself and I"
}}

___ ::- variant:dashed

[bs-grid]{{
col-sm-12,col-md-6|@@cell01@@
col-sm-12,col-md-6,outputNoBg|@@cell02@@
}}

More options to come...