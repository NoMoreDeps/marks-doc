
# Marks Action

when a context is set to the renderer, it is possible to use it in order to control how / when a content should be displayed.

### Mk-Show
The `mk-show` action will render the block only if the context value mapped to it is true.

Set the context in the renderer.
```typescript
marksRenderer.context = {
  show1: true,
  show2: false
}
```

Use the action on a paragraph
```none
  Text show 1 ::- mk-show:show1

  Text show 2 ::- mk-show:show2
```

[marks classes:outputNoBg]{{
  Text show 1 ::- mk-show:show1

  Text show 2 ::- mk-show:show2
}}

___ ::- variant:dashed

### Mk-repeat
If the context value mapped to this action is an Array, then for each item on it, the block will try to do a render, 
and the context will be the Item for each iteration scope.

```typescript
marksRenderer.context = {
  names: [
    { name: "Bob" }, 
    { name: "Alice" }
  ]
}

```

```markdown
# Names

Name : @@name@@ ::- mk-repeat:names

OR
# Names

[marks mk-repeat:names] {{
  Name : @@name@@
}}
```

[marks classes:outputNoBg] {{
  # Names

  Name : @@name@@ ::- mk-repeat:names
}}