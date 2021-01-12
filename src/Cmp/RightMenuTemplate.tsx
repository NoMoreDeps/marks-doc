import * as React from "react"        ;
import * as Flux  from "../Flux/Flux" ;

export type RightMenuTemplateProps = {
  refDom : React.MutableRefObject<HTMLDivElement> ;
  state  : Flux.AppStoreState                     ;
}

export function RightMenuTemplate(props: RightMenuTemplateProps) {
  const [toggleMenu, setToggleMenu]   = React.useState(false);
  const [collaspMenu, setCollaspMenu] = React.useState<{[key: string]: boolean}>({});

  const pages = props.state.mainMenuitem.pages ?? [];
  const hash = {} as any;

  pages.forEach((_:any) => {
    if (!hash[_.groupTitle]) {
      hash[_.groupTitle] = [];
    }
    hash[_.groupTitle].push(_);
  });

  const items = [<br/>] as JSX.Element[];

  let idx = 0;
  for(var i in hash) {
    if (idx++ > 0) {
      items.push(<hr style={{
        marginTop       : "1rem"                     ,
        opacity         : 1                          ,
        marginBottom    : "1rem"                     ,
        border          : 0                          ,
        borderTop       : "1px solid rgba(0,0,0,.1)" ,
        boxSizing       : "content-box"              ,
        height          : 0                          ,
        overflow        : "visible"                  ,
        borderStyle     : "dashed"                   ,
        backgroundColor : "inherit"                  ,
        borderColor     : "#2e8ac0"
      }}/>);
    }

    const ActName = i;
    items.push(<h5 onClick={function(){ setCollaspMenu({
      ...collaspMenu,
      [ActName]: !!!collaspMenu[ActName]
    }); }} style={{color: "#2e8ac0", cursor: "pointer"}}>{ActName}</h5>);

    items.push(hash[i].map(function(_:any) { 
      return <h6 
      style={{
        marginTop   : "12px",
        borderLeft  : _.path === props.state.subMenuItem?.path ? "3px solid #2e8ac0" : "3px solid transparent",
        paddingLeft : "10px",
        marginLeft  : "10px",
        color       : _.path === props.state.subMenuItem?.path ? "#2e8ac0" : "#494d51",
        cursor      : "pointer",
        display     : collaspMenu[i] ? "block" : "none"
      }} 
      onClick={() => {
        window.history.pushState({path: _.path}, "", _.path);
        setToggleMenu(false);
      }}
    >{_.title}</h6>; }));
  }
  return <>
    <div className="container-fluid">
      <div className="row">
        <div id="sidebarMenu" className="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse" style={{overflowY: "scroll", height: "calc(100vh - 50px)"}}>
          {items}
        </div>
        <div role="main" className="col-md-9 ml-sm-auto col-lg-10 px-md-4" style={{overflowY: "scroll", height: "calc(100vh - 50px)"}}>
          <div ref={props.refDom} className="container" style={{display: toggleMenu ? "none" : "block"}}></div>
          <div style={{display: !toggleMenu ? "none" : "block"}}>{items}</div>
        </div>
        <button className="btn btn-outline-primary d-block d-md-none" style={{position: "fixed", bottom: "10px", right: "10px", width: "initial"}} onClick={() => setToggleMenu(!toggleMenu)}>Menu</button>
      </div>
    </div>
  </>;
}