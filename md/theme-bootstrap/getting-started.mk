

# Getting Started ::- classes:text-center


```bash
# With npm
npm i -S @marks-js/bootstrap

# With yarn
yarn add @marks-js/bootstrap
```


___ ::- variant:dashed


### Adding it in the code

```typescript
// Importing and adding it
import { BsPlugins } from "@marks-js/bootstrap";

const renderer = new MarksRenderer();
  marks.registerRenderers(
  /* ... */
  ...BsPlugins.map(_ => new _()),
  );


// Optionally you can override the bootstrap version
const renderer = new MarksRenderer();
renderer.registerRenderers(
  /* ... */
  BsPlugins.map(_ => new _({ version: "5.0.0-beta1" })), // Default version
  /* ... */
  );
```
  
___ ::- variant:dashed


### From CDN for direct use

```html
<!-- Latest version -->
<script src="https://unpkg.com/@marks-js/bootstrap/dist/Marks.Bootstrap.dist.js"></script>

<!-- Or a specific one-->
<script src="https://unpkg.com/@marks-js/bootstrap@1.0.22/dist/Marks.Bootstrap.dist.js"></script>
```


```typescript
// Adding it

const renderer = new Marks.MarksRenderer();

renderer.registerRenderers(
  ...Marks.Plugins.map(_ => new _()),
  ...Marks_Bootstrap.BsPlugins.map(_ => new _())
);
```