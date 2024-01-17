import './css/sanitize.css';
import './css/style.css';
import './css/mobile.css';
import './css/tablet.css';
import './css/desktop.css';

import { Elm } from './src/Main.elm';

if (process.env.NODE_ENV === 'development') {
  const ElmDebugTransform = await import('elm-debug-transformer');

  ElmDebugTransform.register({
    simple_mode: true,
  });
}

const root = document.querySelector('#app');
const app = Elm.Main.init({ node: root });
