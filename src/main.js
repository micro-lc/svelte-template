import App from "./App.svelte";

let app

export async function bootstrap() {}

export async function mount(props = {}) {
  app = new App({
	target: props.container || document.body,
	props,
  })
}

export async function unmount() {
  
}

if (!window.__POWERED_BY_QIANKUN__) {
	app = mount();
  }

export default app;
