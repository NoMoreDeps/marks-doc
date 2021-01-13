

# Responsive images


In Marks with Bootstrap theme are made responsive with fluid variant. This applies max-width: 100%; and height: auto; to the image so that it scales with the parent element.

```none
[img variant:fluid]{{
  "src" : "https://www.wikipedia.org/portal/wikipedia.org/assets/img/Wikipedia-logo-v2.png",
  "alt" : "Image"
}}
```

[img variant:fluid ref:img01]{{
  "src" : "https://www.wikipedia.org/portal/wikipedia.org/assets/img/Wikipedia-logo-v2.png",
  "alt" : "Image"
}}

[img variant:fluid ref:img02]{{
  "src" : "https://www.wikipedia.org/portal/wikipedia.org/assets/img/Wikipedia-logo-v2.png",
  "alt" : "Image"
}}

[img variant:fluid ref:img03]{{
  "src" : "https://www.wikipedia.org/portal/wikipedia.org/assets/img/Wikipedia-logo-v2.png",
  "alt" : "Image"
}}

[html]{{
  <div style="display:flex;justify-content:space-around">
    <div style="border:1px dashed #0000003d;width:50px" >@@img01@@<div style="text-align:center">50px</div></div>
    <div style="border:1px dashed #0000003d;width:100px">@@img02@@<div style="text-align:center">100px</div></div>
    <div style="border:1px dashed #0000003d;width:150px">@@img03@@<div style="text-align:center">150px</div></div>
  </div>
}}


# Rounded border


You can set `rounded` variant, or `circle` to add rounded corner to images
[img variant:fluid,rounded ref:i01]{{
  "src" : "/assets/profile.PNG",
  "alt" : "Image"
}}

[img variant:fluid,circle ref:i02]{{
  "src" : "/assets/profile.PNG",
  "alt" : "Image"
}}

[html]{{
  <div style="display:flex;justify-content:space-around">
    <div style="width:100px;padding:5px;">@@i01@@</div>
    <div style="width:100px;padding:5px;">@@i02@@</div>
  </div>
}}