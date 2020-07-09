import * as React     from "react"               ;
import { makeStyles } from "@material-ui/styles" ;
import { TopMenu } from "./TopMenu";

const useStyles = makeStyles({
  root: {
    backgroundColor : "#20232a" ,
    height          : "50px"    ,
  },
 
});

export function Header() {
  const styles = useStyles();

  return <>
    <div className={`container-fluid ${styles.root}`} style={{position: "fixed", zIndex: 1000}}>
      <div className="ribbon"><span>Beta</span></div>
      {/*<div className="ribbonR"><span>Support Us</span></div>*/}
      <div className="container">
        <TopMenu />
      </div>
    </div>  
  </>;
}