import * as React               from "react"               ;
import { makeStyles }           from "@material-ui/styles" ;
import * as Flux                from "../Flux/Flux"        ;
import { TPage, TGlobalConfig } from "../Flux/AppStore"    ;

declare var config: any;

const useStyles = makeStyles({
  logo: {
    fontWeight  : "bolder"       ,
    color       : "#59a9d8"      ,
    display     : "inline-block" ,
    marginRight : 30             ,
  },
  menuItem: {
    height       : 47                      ,
    borderBottom : "3px solid transparent" ,
    lineHeight   : "47px"                  ,
    color        : "white"                 ,
    display      : "inline-block"          ,
    paddingLeft  : 12                      ,
    paddingRight : 12                      ,
    marginLeft   : 3                       ,
    marginRight  : 3                       ,
    cursor       : "pointer"               ,
    "&:hover"    : {
      color        : "#59a9d8"           ,
      borderBottom : "3px solid #59a9d8" ,
    }
  },
  active : {
    color        : "#59a9d8"           ,
    borderBottom : "3px solid #59a9d8" ,
  }
});

export function TopMenu() {
  const classes           = useStyles() ;
  const [state, setState] = React.useState<Flux.AppStoreState>({
    config       : { pages: [] } ,
    subMenuItem  : {} as TPage   ,
    mainMenuitem : {} as TPage   ,
    template     : "Default"
  }) ;
  const menuItems = [] as JSX.Element[] ;

  React.useEffect(() => {
    const sub = Flux.subscriber.subscribe<Flux.AppStoreState>(Flux.appStoreId, (state) => {
      setState(state);
    });
    Flux.subscriber.sendAction(Flux.AppStoreActions.init())
    return () => sub.off();
  }, []);


  for(let page of state!.config.pages) {
    if (!page.hidden) {
      menuItems.push(
        <div 
        className = {`${classes.menuItem} ${page.path === state.mainMenuitem.path ? classes.active : ""}`}
        onClick   = {() => window.history.pushState(page, "", page.path)}
        >{page.title}</div>
      );
    }
  }
 
  return <>
    <div className={`${classes.logo} d-none d-md-inline`}>
      {`{ Marks }`}
    </div>
    {menuItems}
  </>
}