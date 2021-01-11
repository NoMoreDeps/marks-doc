

# Code block ::- classes:text-center


You can make text appear as a block of code. Start and end a line with `\`\`\`` and place you code inside.

```none ::- ref:cell01
  ```
    Place some code here
  ```
```

```none ::- ref:cell02
  Place some code here
```
___ ::- variant:dashed

[bs-grid]{{
col-sm-12,col-md-6|@@cell01@@
col-sm-12,col-md-6,outputNoBg|@@cell02@@
}}
___ ::- variant:dashed

**Marks** allows syntax highlighting by providing a built-in support for `[PrismJs](https://prismjs.com/ "new")`. *This can be deactivated when loading default plugins.*

To color your code just add the langage name after the `\`\`\``.

```none ::- ref:cell01
  ```javascript
  class Hello {
    sayHello() {
      return "Hello Kitty";
    }
  }
  ```
```

```javascript ::- ref:cell02
class Hello {
  sayHello() {
    return "Hello Kitty";
  }
}
```

```none ::- ref:cell03
  ```css
  .cat {
    background-color: #000000;
  }
  ```
```

```css ::- ref:cell04
.cat {
  background-color: #000000;
}
```
___ ::- variant:dashed

[bs-grid]{{
col-sm-12,col-md-6|@@cell01@@
col-sm-12,col-md-6,outputNoBg|@@cell02@@
col-sm-12,col-md-6|@@cell03@@
col-sm-12,col-md-6,outputNoBg|@@cell04@@
}}