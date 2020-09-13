import * as React            from "react"                   ;
import { Header }            from "./Header/Header"         ;
import * as Flux             from "./Flux/Flux"             ;
import { MarksRenderer }     from "@marks-js/marks"         ;
import { TPage }             from "./Flux/AppStore"         ;
import { RightMenuTemplate } from "./Cmp/RightMenuTemplate" ;
import { Repl }              from "./Cmp/Repl"              ;

declare var MarksR: MarksRenderer;

export function App() {
  const refDom = React.useRef<HTMLDivElement>(document.createElement("div"));
  const [state, setState] = React.useState<Flux.AppStoreState>({
    config       : { pages: [] } ,
    subMenuItem  : {} as TPage   ,
    mainMenuitem : {} as TPage   ,
    template     : "Default"
  }) ;
  
  React.useEffect(() => {
    Flux.subscriber.subscribe<Flux.AppStoreState>(Flux.appStoreId, (state) => {      
      setState(state);
    });
  }, []);
  
  React.useEffect(() => { 
    try {
      setTimeout(() => {
        try {

          let elt = document.createElement("div");
          refDom.current.childNodes.forEach(_ => _.remove());
          refDom.current.appendChild(elt);
          
          if (!state.subMenuItem?.md && !state.mainMenuitem?.md) {
            return;
          }
          
          MarksR.render((state.subMenuItem?.md || state.mainMenuitem?.md || ""), elt);
        } catch(ex) {
          console.error("Catched error", ex)
        }
      }, 0);
    } catch(ex) {}
  }, [state]);

  return <>
    <Header />
    <div style={{backgroundColor: "#ffffff", minHeight: "calc(100vh)", paddingTop: "50px"}}>
    {
      (() => {switch(state.template) {
        case "rightenu":
          return <>
            <div>
              <RightMenuTemplate refDom={refDom} state={state}/>
            </div>
          </>;
        case "repl":
          return <Repl />
        default:
          return <>
             <div>
              <div key="renderer" ref={refDom}></div>
            </div>
          </>;
      }})()
    }
    </div>
  </>;
}