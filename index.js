const global_config = {
  pages: [
    {name: "index", title: "Home", path: "/"},
    {
      name: "guide", title: "Guide", path:"/guide", template: "rightenu",
      pages: [
        {name: "getting-started"     , title: "Getting Started"      , path: "/guide/getting-started"     , groupTitle: "Introduction" },
        {name: "document-structure"  , title: "Document structure"   , path: "/guide/document-structure"  , groupTitle: "Introduction" },
        {name: "emphasis"            , title: "Emphasis"             , path: "/guide/emphasis"            , groupTitle: "Elements" },
        {name: "heading"             , title: "Heading"              , path: "/guide/heading"             , groupTitle: "Elements" },
        {name: "blockquote"          , title: "Blockquote"           , path: "/guide/blockquote"          , groupTitle: "Elements" },
        {name: "list"                , title: "List"                 , path: "/guide/list"                , groupTitle: "Elements" },
        {name: "task"                , title: "Task"                 , path: "/guide/task"                , groupTitle: "Elements" },
        {name: "table"               , title: "Table"                , path: "/guide/table"               , groupTitle: "Elements" },
        {name: "code"                , title: "Code block"           , path: "/guide/code"                , groupTitle: "Elements" },
        {name: "link"                , title: "Link / Image / Ruler" , path: "/guide/link"                , groupTitle: "Elements" },
        {name: "custom-introduction" , title: "Introduction"         , path: "/guide/custom-introduction" , groupTitle: "Customization" },
        {name: "custom-blocks"       , title: "Blocks"               , path: "/guide/custom-blocks"       , groupTitle: "Customization" },
        {name: "custom-styles"       , title: "Styles"               , path: "/guide/custom-styles"       , groupTitle: "Customization" },
        {name: "custom-options"      , title: "Options"              , path: "/guide/custom-options"      , groupTitle: "Customization" },
        {name: "custom-nesting"      , title: "Nesting"              , path: "/guide/custom-nesting"      , groupTitle: "Customization" },
        {name: "plugins-mermaid"     , title: "Mermaid"              , path: "/pluging-mermaid"           , groupTitle: "Plugins" },
        {name: "theme-bootstrap"     , title: "Bootstrap"            , path: "/guide/theme-bootstrap"     , groupTitle: "Themes" },
      ]
    },
    {
      name: "pluging-mermaid", title: "Mermaid", path:"/pluging-mermaid", template: "rightenu", hidden: true,
      pages: [
        {name: "getting-started"     , title: "Getting Started"      , path: "/pluging-mermaid/getting-started"     , groupTitle: "Introduction" },
        {name: "using-it"            , title: "Using it"             , path: "/pluging-mermaid/using-it"            , groupTitle: "Introduction" }
      ] 
    },
    {name: "repl"  , title: "REPL"  , path: "/repl", template: "repl"},
    {name: "about" , title: "About" , path: "/about"}
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