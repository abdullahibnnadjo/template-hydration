// Server

var args = process.argv.slice(2);
if (!args[0])
	process.exit(1);

import App from '../src/App.svelte';

const { head, html, css } = App.render({});

//console.log("head:", head);
if (args[0] === "html")
	console.log(html);
else if (args[0] === "css")
	console.log(css.code);
