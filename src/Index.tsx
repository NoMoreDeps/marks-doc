import * as React                      from "react"               ;
import * as ReactDOM                   from "react-dom"           ;
import { App }                         from "./App"               ;
import { MarksRenderer, Plugins }      from "@marks-js/marks"     ;
import { BlockMermaidRenderer }        from "@marks-js/mermaid"   ;
import { BsPlugins }                   from "@marks-js/bootstrap" ;
import { EmojiPreviewRenderer } from "./MarksPlugins/EmojiPreviewRenderer";

const m = new MarksRenderer();
(window as any).m = m;
m.registerRenderers(
  ...Plugins.map(_ => new _()), 
  new BlockMermaidRenderer({ version:"8.8.0" }),
  ...BsPlugins.map(_ => new _()),
  new EmojiPreviewRenderer()
  );
  m.context = {
    hello: "Hello kitty",
    show1: true,
    show2: false,
    names: [{ name: "Bob"}, {name: "Alice"}]
  }

m.setThemeStyle({
  text: {
    variant: {
      danger  : "text-danger" ,
      justify : "justify"     ,
    }
  },
  blockquote: {
    classes: "blockquote"
  },
  table: {
    classes: "table",
    variant: {
      striped  : "table-striped"  ,
      bordered : "table-bordered" ,
      small    : "table-sm"       ,
      headDark : "headDark"       ,
    },
    theme: {
      primary   : "table-primary"   ,
      secondary : "table-secondary" ,
      success   : "table-success"   ,
      danger    : "table-danger"    ,
      warning   : "table-warning"   ,
      info      : "table-info"      ,
      light     : "table-light"     ,
      dark      : "table-dark"      ,
    }
  },
  img: {
    variant: {
      fluid     : "img-fluid"      ,
      thumbnail : "img-thumbnail"  ,
      rounded   : "rounded"        ,
      circle    : "rounded-circle" ,
    }
  },
  all: {
    variant: {
      primary     : "text-primary"   ,
      secondary   : "text-secondary" ,
      success     : "text-success"   ,
      danger      : "text-danger"    ,
      warning     : "text-warning"   ,
      info        : "text-info"      ,
      light       : "text-light"     ,
      bgPrimary   : "bg-primary"     ,
      bgSecondary : "bg-secondary"   ,
      bgSuccess   : "bg-success"     ,
      bgDanger    : "bg-danger"      ,
      bgWarning   : "bg-warning"     ,
      bgInfo      : "bg-info"        ,
      bgLight     : "bg-light"       ,
      bgDark      : "bg-dark"        ,
      bgDLight    : "bg-dLight"      ,
    }
  }
});

(window as any)["MarksR"] = m;

const target = document.querySelector<HTMLDivElement>("#app");
ReactDOM.render(<App />
  , target
);