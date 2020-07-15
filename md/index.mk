[bs-button ref:BtnGetStarted classes:btn-lg] {{
  "label"    : "Get Started" ,
  "type"     : "info"     ,
  "outlined" : false         ,
  "onClick"  : "history.pushState({path: '/guide'}, '', '/guide')"
}}
[bs-button ref:BtnGetStarted2 classes:btn-lg] {{
  "label"    : "Get Started" ,
  "type"     : "info"     ,
  "outlined" : false         ,
  "onClick"  : "history.pushState({path: '/guide'}, '', '/guide')"
}}
[marks classes:index-top] {{
  { Marks }

  *Markup text*... the way it always should've been...

  **Marks** is a markup language that aims to keep the simplicity of *Markdown*,  
  and brings a world of possibilities by removing its limits... ::- variant:justify elt:div

  @@BtnGetStarted@@
}}

[marks classes:col ref:COL01] {{
![markup](/assets/Markup.svg)

**Markup** ::- variant:secondary

**Marks**  keeps most of the Markdown language, so if you already use Markdown, you know how to start with Marks.

___ ::- classes:d-md-none
}}

[marks classes:col ref:COL02] {{
![markup](/assets/Styles.svg)

**Styles** ::- variant:secondary

**Marks**  can be styled, with classes, theme and variant. There is nothing that prevents you rendering beautiful pages.

___ ::- classes:d-md-none
}}

[marks classes:col ref:COL03] {{
![markup](/assets/Component.svg)

**Components** ::- variant:secondary

**Marks**  is easily extensible thanks to its universal custom block declaration. It is so easy to expose components to help 
create rich content with minimal effort.

___ ::- classes:d-md-none
}}

[bs-grid]{{
  col-md,col-lg-4|@@COL01@@
  col-md,col-lg-4|@@COL02@@
  col-md,col-lg-4|@@COL03@@
}}

___ ::- classes:d-none,d-md-block

Some features ::- classes:mx-auto,center,largeText elt:div

[marks classes:col ref:COL01] {{
##### Almost MD compatible
You can use **almost** what you already know about `Markdown`. 
The **syntax** is the same whenever it is possible, some duplicates are not implemented. Some **news** are.
___ ::- classes:d-md-none
}}

[marks classes:col ref:COL02] {{
```markdown ::- pElt:div
This is **bold**  
This is *italic*
This is ~underline~
This is ~~stroke~~
```
___ ::- classes:d-md-none
}}

[marks classes:col,output variant:bgLight ref:COL03] {{
This is **bold**  
This is *italic*  
This is ~underline~  
This is ~~stroke~~

___ ::- classes:d-md-none
}}

[bs-grid]{{
  col-md,col-lg-6|@@COL01@@
  col-md,col-lg-3|@@COL02@@
  col-md,col-lg-3|@@COL03@@
}}

[marks classes:col ref:COL01] {{
##### Can be styled
You can apply **styles** to any `paragraph` or `block`. When available, you can use predefined **theme** or **variant**, otherwise you can still add **classes**
___ ::- classes:d-md-none
}}

[marks classes:col ref:COL02] {{
```markdown ::- pElt:div
  Styled text with variant  ::- variant:bgInfo,light
```
}}

[marks classes:col,output variant:bgLight ref:COL03] {{
Styled text with variant ::- variant:bgInfo,light
}}

[marks classes:col ref:COL04] {{
##### Can be styled on block too
To add style on a `block` defined with multiple lines, you have to set options on the first line
___ ::- classes:d-md-none
}}

[marks classes:col ref:COL05] {{
```markdown ::- pElt:div
|C1|C2| ::- variant:bordered
|--|--|
|A |B |

|C1|C2| ::- theme:dark variant:bordered
|--|--|
|A |B |
```
}}

[marks classes:col,output variant:bgLight ref:COL06] {{
|C1|C2| ::- variant:bordered
|--|--|
|A |B |

|C1|C2| ::- theme:dark variant:bordered
|--|--|
|A |B |
}}

[bs-grid variant:bgDLight]{{
  col-md,col-lg-12|@@COL01@@
  col-md,col-lg-6|@@COL02@@
  col-md,col-lg-6|@@COL03@@
}}

[bs-grid]{{
  col-md,col-lg-12|@@COL04@@
  col-md,col-lg-6|@@COL05@@
  col-md,col-lg-6|@@COL06@@
}}

[marks classes:col ref:COL01] {{
##### Can have custom components
**Marks** supports adding custom component with one `unique` way to use options. So you can add all options you need.
___ ::- classes:d-md-none
}}

```markdown ::- pElt:div classes:col ref:COL02
[table format:markdown] {{
  |C1|C2|
  |--|--|
  |A |B |
}}
```
[marks classes:col,output variant:bgLight ref:COL03] {{
  [table format:markdown] {{
    |C1|C2|
    |--|--|
    |A |B |
  }}
}}

```markdown ::- pElt:div classes:col ref:COL04
  [table format:csv] {{
    C1,C2
    A,B
  }}
```
[marks classes:col,output variant:bgLight ref:COL05] {{
  [table format:csv] {{
    C1,C2
    A,B
  }}
}}

[bs-grid variant:bgDLight]{{
  col-md,col-lg-12|@@COL01@@
  col-md,col-lg-6|@@COL02@@
  col-md,col-lg-6|@@COL03@@
}}

[bs-grid]{{
  col-md,col-lg-6|@@COL04@@
  col-md,col-lg-6|@@COL05@@
}}

[marks classes:index-top,index-top-get-started] {{
  @@BtnGetStarted2@@
}}

[marks fetch:/md/footer.mk classes:footer pElt:div]{{
}}