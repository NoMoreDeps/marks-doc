
# Context

It is possible for an Marks renderer instance to set a context in order to share data. Data can then be mapped to the document with the same syntax as the Nested placeholder syntax.

If you pass the followinf context to the renderer...
```typescript
marksRenderer.context = {
  hello: "Hello kitty"
}
```
Then you can use a placeholder in your document. Placeholder are first checked as context mapping before internal ref.

```markdown
Say @@hello@@
```
[marks classes:outputNoBg]{{
  Say @@hello@@
}}
