import * as React from "react";
import { MarksRenderer } from "@marks-js/marks";
declare var MarksR: MarksRenderer;
declare var CodeMirror: any;
declare var global_samples: {name: string; path: string}[];
let CodeM: any  = null;

export function Repl() {
  const refDom = React.useRef<HTMLTextAreaElement>(null);
  const refOutDom = React.useRef<HTMLDivElement>(null);
  let hasChanged = false;
  let lastRender = "";

  React.useEffect(() => {
    var myCodeMirror = CodeMirror.fromTextArea(refDom.current, {
        lineNumbers: true,
        mode: "markdown",
        theme: "monokai"
    });

    CodeM = myCodeMirror;

    const x = setInterval(() => {
      const txt = myCodeMirror.getValue();
      if (txt !== lastRender) {
        lastRender = txt;
        hasChanged = false;
      } else {
        if (!hasChanged) {
          hasChanged = true;
          
          const res = MarksR.render(txt);
          refOutDom.current!.innerHTML = "";
          refOutDom.current?.appendChild(res);

          MarksR.triggerRenderFinished(res)
          }
        }
    }, 150);

    return () => clearInterval(x);
  }, []);
  return <>
    <div className="container-fluid" style={{paddingTop: 35}}>
      <div className="row">
        <div className="col-sm-6">
          <h5>
            You can use this page to test Marks engine. You will find some examples, but you can freely put the text you want.
      </h5></div>
      </div>
      <div className="row">
        <div className="col-sm-6">
          <select className="form-control" name="" id="" style={{marginTop: 20, marginBottom: 20}} onChange={(ev) => {
              const path = ((ev.target as HTMLSelectElement).value);
              path && fetch(path).then(_ => _.text()).then(_ => {
                CodeM.setValue(_)
              }); 
            }}>
            {
              (() => {
                return global_samples.map(_ => <option 
                  value={_.path}
                >{_.name}</option>)
              })()
            }
          </select>
        </div>
        <div className="col-sm-6">&nbsp;</div>
        <div className="col-sm-6" >
          <textarea ref={refDom}></textarea>
        </div>
        <div className="col-sm-6">
          <div className="card" ref={refOutDom}>

          </div>
        </div>
      </div>
    </div>
  
  </>;
}