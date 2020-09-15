
# Html and Xss

By default, and this is where Marks differs the most from Markdown, the use of HTML is not possible by default. To use HTML, you must use an HTML block provided for this purpose.

In unusual cases, if you want to prevent the Xss filter from affecting a block, simply specify the xss option with the value false

##### This is the default behaviour :
```md ::- ref:cell01
<span style="color:red">  
  This is an Html piece of code  
</span>
```

<span style="color:red">  ::- ref:cell02
  This is an Html piece of code  
</span>

[bs-grid]{{
col-sm-12,col-md-7|@@cell01@@
col-sm-12,col-md-5,outputNoBg|@@cell02@@
}}

```md ::- ref:cell01
[html]{{
  <span style="color:red">
    This is an Html piece of code
  </span>
}}
```

[html ref:cell02]{{
  <span style="color:red">This is an Html piece of code</span>
}}

[bs-grid]{{
col-sm-12,col-md-7|@@cell01@@
col-sm-12,col-md-5,outputNoBg|@@cell02@@
}}

```md ::- ref:cell01
<span style="color:red"> ::- xss:false ref:cell02
  This is an Html piece of code
</span> 
```

<span style="color:red"> ::- xss:false ref:cell02
  This is an Html piece of code
</span> 

[bs-grid]{{
col-sm-12,col-md-7|@@cell01@@
col-sm-12,col-md-5,outputNoBg|@@cell02@@
}}

### Script Tag

To be crystal clear :smile: ** script tag** will never be interpreted, no matter you use an HTML block or not. `*~End of story~*`

### Link block & Img

When you use a link or Img block, Xss filter will remove any reference to the keywork `javascript` and `onerror`, on any case used, to avoid link of style `<a href="javascript:..."`