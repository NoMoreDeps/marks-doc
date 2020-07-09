import * as Flux from "shadow-flux";
import { AppStore, appStoreId } from "./AppStore";

const dispatcher = new Flux.Dispatcher();
const subscriber = new Flux.Subscriber(dispatcher);

const appStore   = new AppStore();
dispatcher.register(appStore, appStoreId);

if (window.location.pathname.length > 1) {
  const path = window.location.pathname.endsWith("/") ?  window.location.pathname.substr(0, window.location.pathname.length -1): window.location.pathname ;
  window.history.pushState({ path }, "", path);
}

export { subscriber }
export { AppStoreActions, AppStoreState, appStoreId } from "./AppStore";
