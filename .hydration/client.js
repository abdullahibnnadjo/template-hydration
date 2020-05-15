// Client

import App from '../src/App.svelte';

// Defer hydration so we can see it in action
setTimeout(() => {const app = new App({
    target: document.getElementById("ssred"),
    hydrate: true
});
}, 3000);
