import * as Flux from "shadow-flux";

declare var global_config: TGlobalConfig;

export type AppStoreState = {
 mainMenuitem  : TPage         ;
 subMenuItem   : TPage | null  ;
 template      : string        ;
 config        : TGlobalConfig ;
}

export type  TPage = {
  title    ?: string  ;
  name      : string  ;
  template ?: string  ;
  path      : string  ;
  md       ?: string  ;
  hidden   ?: boolean ;
  pages    ?: TPage[] ;
}

export type TGlobalConfig = {
  pages: TPage[];
}

export type Nav = {
  type : "Nav"  ;
  name : string ;
}

export const appStoreId = "AppStore";

export class AppStore extends Flux.BaseStore<AppStoreState> {
  updateTemplate() {
    const newState = {
      ...this.getState()
    };

    if (newState.subMenuItem?.template) {
      this.nextState({
        ...newState,
        template: newState.subMenuItem?.template
      });
      return;
    }

    if (newState.mainMenuitem?.template) {
      this.nextState({
        ...newState,
        template: newState.mainMenuitem?.template
      });
      return;
    }

    this.nextState({
      ...newState,
      template: "Default"
    });
  }

  async initState() {
    this.nextState({
      mainMenuitem : global_config.pages.filter(_ => _.path === "/")[0] ,
      subMenuItem  : null                                               ,
      config       : global_config
    });

    this.updateTemplate();

    window.onpopstate = (ev: PopStateEvent) => {
      this.sendAction(AppStoreActions.nav(ev.state?.name ?? ev.state?.path));
    };

    const pushState = window.history.pushState.bind(window.history);
    window.history.pushState = (...args) => {
      pushState(...args);
      this.sendAction(AppStoreActions.nav(args[0].path));
    }

    console.log("Init", window.location.href);
  }

  async actionNav(payload: Nav) {
    try {
      console.log("Nav", payload)
      let segments  = payload.name.split("/");
      segments.shift();
      segments        = segments.filter(_ => _.length) ;
      let pages       = this.getState().config?.pages  ;
      let item: TPage = null as unknown as TPage       ;
      let template    = "Default"                      ;

      
      segments.forEach(s => {
        item     = pages?.filter(_ => _.name === s)[0]! ;
        pages    = item.pages                           ;
        template = item.template ?? template            ;
      });

      if (segments.length === 0) {
        item = pages?.filter(_ => _.name === "index")[0]!
      }
      
      if (!item.md) {
        const md = await (await fetch(`/md${item?.path !== "/" ? item?.path : "/index"}.mk`)).text();
        item.md  = md;
      }
      
      console.log("nav", item);
      this.nextState({
        ...this.getState(),
        mainMenuitem : this.getState().config?.pages.filter(_ => _.path === `/${segments[0]}`)[0] ?? item,
        subMenuItem  : segments.length > 1 ? item : null
      });
      this.updateTemplate();
      this.emit();
    } catch (ex) {
      console.error(ex);
    }
  }

  async actionInit() {
    if (this.getState().mainMenuitem) {
      if (!this.getState().mainMenuitem?.md) {
        const md = await (await fetch(`/md${this.getState().mainMenuitem?.path !== "/" ? this.getState().mainMenuitem?.path : "/index"}.mk`)).text();
        const newState = { ...this.getState() };
        newState.mainMenuitem!.md = md;
        this.nextState(newState);
      }
    }
    this.emit();
  }
}

export const AppStoreActions = {
  init: () => ({ type: "Init" }),
  nav: (name: string) => ({ type: "Nav", name })
}