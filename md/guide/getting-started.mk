
# Getting Started with { Marks }

**Marks** is a markup language and a renderer that aims to keep the simplicity of *Markdown*,  
and brings a world of possibilities by removing its limits...

**Marks** is almost compatible with Markdown, but brings more flexibility using styles, and allows the creation of custom components in an universal and easy way.

### Installation
```bash
# With npm
npm i -S @marksjs/marks

# With yarn
yarn add @marksjs/marks
```
**Marks** comes with Typescript declaration files, so you don't need to install separated definition.

### Get started

#### Minimal setup
```typescript
// Import the minimal set of Objects
import { MarksRenderer, Plugins } from "@marks-js/marks";

// Create a new instance of Marks renderer
const marks = new MarksRenderer();

// Register the default plugins in order to make it work
marks.registerRenderers(
  ...Plugins().map(_ => new _()), 
);

const htmlNode = marks.render(` Marks code here `);
document.querySelector("#MoutingPoint").appendChild(htmlNode);

// Alternaticely, you can pass the node as a second parameter
marks.render(` Marks code here `, document.querySelector("#MoutingPoint"));
```

**Marks** is compatible with almost *Markdown* syntax, so what is `cool` in *Markdown*, is still 
available in **Marks**. But Marks allows you to add styles, so it is now possible to have a page written in **Marks** with css.

___ ::- variant:dashed

### Installation from CDN and direct use

```html
<!-- Latest -->
<script type="text/javascript" src="https://unpkg.com/@marks-js/marks/dist/Marks.dist.js"></script>
<!-- Or specific version -->
<script type="text/javascript" src="https://unpkg.com/@marks-js/marks@1.0.38/dist/Marks.dist.js"></script>
```

```typescript
// Create a new instance of Marks renderer
const marks = new Marks.MarksRenderer();

// Register the default plugins in order to make it work
marks.registerRenderers(
  ...Marks.Plugins().map(_ => new _()), 
);

const htmlNode = marks.render(` Marks code here `);
document.querySelector("#MoutingPoint").appendChild(htmlNode);

// Alternaticely, you can pass the node as a second parameter
marks.render(` Marks code here `, document.querySelector("#MoutingPoint"));
```

