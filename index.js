const global_config = {
  pages: [
    {name: "index", title: "Home", path: "/", isHardLink: true},
    {
      name: "guide", title: "Guide", path:"/guide", template: "rightenu", isHardLink: true,
      pages: [
        {name: "getting-started"     , title: "Getting Started"      , path: "/guide/getting-started"     , groupTitle: "Introduction" },
        {name: "document-structure"  , title: "Document structure"   , path: "/guide/document-structure"  , groupTitle: "Introduction" },
        {name: "html-xss"            , title: "Html & Xss"           , path: "/guide/html-xss"            , groupTitle: "Introduction" },
        {name: "emphasis"            , title: "Emphasis"             , path: "/guide/emphasis"            , groupTitle: "Elements" },
        {name: "emoji"               , title: "Emoji"                , path: "/guide/emoji"               , groupTitle: "Elements" },
        {name: "heading"             , title: "Heading"              , path: "/guide/heading"             , groupTitle: "Elements" },
        {name: "blockquote"          , title: "Blockquote"           , path: "/guide/blockquote"          , groupTitle: "Elements" },
        {name: "list"                , title: "List"                 , path: "/guide/list"                , groupTitle: "Elements" },
        {name: "task"                , title: "Task"                 , path: "/guide/task"                , groupTitle: "Elements" },
        {name: "table"               , title: "Table"                , path: "/guide/table"               , groupTitle: "Elements" },
        {name: "code"                , title: "Code block"           , path: "/guide/code"                , groupTitle: "Elements" },
        {name: "link"                , title: "Link / Image / Ruler" , path: "/guide/link"                , groupTitle: "Elements" },

        {name: "mb-image"            , title: "Image"                , path: "/guide/mb-image"            , groupTitle: "Marks Blocks" },        
        {name: "mb-table"            , title: "Table"                , path: "/guide/mb-table"            , groupTitle: "Marks Blocks" },        
        {name: "mb-marks"            , title: "Marks"                , path: "/guide/mb-marks"            , groupTitle: "Marks Blocks" },        
        {name: "mb-html"             , title: "HTML"                 , path: "/guide/mb-html"             , groupTitle: "Marks Blocks" },        

        {name: "custom-introduction" , title: "Introduction"         , path: "/guide/custom-introduction" , groupTitle: "Customization" },
        {name: "custom-blocks"       , title: "Blocks"               , path: "/guide/custom-blocks"       , groupTitle: "Customization" },
        {name: "custom-styles"       , title: "Styles"               , path: "/guide/custom-styles"       , groupTitle: "Customization" },
        {name: "custom-options"      , title: "Options"              , path: "/guide/custom-options"      , groupTitle: "Customization" },
        {name: "custom-nesting"      , title: "Nesting"              , path: "/guide/custom-nesting"      , groupTitle: "Customization" },
        
        {name: "marks-context"      , title: "Context"              , path: "/guide/marks-context"      , groupTitle: "Dynamic" },
        {name: "marks-actions"      , title: "Actions"              , path: "/guide/marks-actions"      , groupTitle: "Dynamic" },

        {name: "plugins-mermaid"     , title: "Mermaid"              , path: "/pluging-mermaid/intro"        , groupTitle: "Plugins" },
        {name: "theme-bootstrap"     , title: "Bootstrap"            , path: "/theme-bootstrap/intro"  , groupTitle: "Themes", html: "index-bs5", isHardLink: true},
      ]
    },
    {
      name: "pluging-mermaid", title: "Mermaid", path:"/pluging-mermaid", template: "rightenu", hidden: true,
      pages: [
        {name: "guide"               , title: "Go back to Guide"     , path: "/guide"                               , groupTitle: "Home"         },
        {name: "intro"               , title: "Intro"                , path: "/pluging-mermaid/intro"               , groupTitle: "Introduction"},
        {name: "getting-started"     , title: "Getting Started"      , path: "/pluging-mermaid/getting-started"     , groupTitle: "Introduction" },
        {name: "using-it"            , title: "Using it"             , path: "/pluging-mermaid/using-it"            , groupTitle: "Introduction" }
      ] 
    },
    {
      name: "theme-bootstrap", title: "Bootstrap", path:"/theme-bootstrap", template: "rightenu", hidden: true,
      pages: [
        {name: "guide"               , title: "Go back to Guide"     , path: "/guide"                               , groupTitle: "Home"        , html: "index-bs5", isHardLink: true},
        {name: "intro"               , title: "Intro"                , path: "/theme-bootstrap/intro"               , groupTitle: "Introduction", html: "index-bs5"},
        {name: "getting-started"     , title: "Getting Started"      , path: "/theme-bootstrap/getting-started"     , groupTitle: "Introduction", html: "index-bs5"},
        {name: "typography"          , title: "Typography"           , path: "/theme-bootstrap/typography"          , groupTitle: "Content", html: "index-bs5"},
        {name: "image"          , title: "Image"           , path: "/theme-bootstrap/image"          , groupTitle: "Content", html: "index-bs5"},
        {name: "table"          , title: "Table"           , path: "/theme-bootstrap/table"          , groupTitle: "Content", html: "index-bs5"}
      ] 
    },
    {name: "repl"  , title: "REPL"  , path: "/repl", template: "repl", isHardLink: true},
    {name: "about" , title: "About" , path: "/about", isHardLink: true}
  ]
};

const global_samples = [
  {name: "", path: ""},
  {name: "Headings"     , path: "/md/repl/Headings.mk"},
  {name: "Emphasis"     , path: "/md/repl/Emphasis.mk"},
  {name: "Lists"        , path: "/md/repl/Lists.mk"},
  {name: "Tables"       , path: "/md/repl/Tables.mk"},
  {name: "Styles"       , path: "/md/repl/Styles.mk"},
  {name: "Blocks"       , path: "/md/repl/Blocks.mk"},
  {name: "Nested"       , path: "/md/repl/Nested.mk"},
  {name: "Mermaid"      , path: "/md/repl/Mermaid.mk"},
  {name: "Full example" , path: "/md/repl/full.mk"}
]

const gb = (() => {
  try {
    return window;
  } catch { }
  return global;
})();
gb.global_config = global_config;