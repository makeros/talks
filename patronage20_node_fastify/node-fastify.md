---
marp: true



---
# Node.js - what is it?

:package: + JavaScript

---
# Node Globals vs Browser DOM

- [node globals](https://nodejs.org/api/globals.html)
- [browser DOM](https://developer.mozilla.org/en-US/docs/Web/API/Document_Object_Model/Introduction)

---
# NPM - the Node Package Manager

- [NPM](https://en.wikipedia.org/wiki/Npm_(software))

---
# CLI i REPL (read-eval-print loop)

```bash
λ  ~  node
Welcome to Node.js v12.13.0.
Type ".help" for more information.
> console.log('REPL')
```
---
# Node as a webserver

- http and https
- websockets
- it's very fast :sunglasses:

---
# Callbacks - error first

```javascript
fs.readFile('/my/file', function (err, data) {
  console.log(data)
})
```

---
# Module

require, module.exports, import, export

```JavaScript
exports.foo = 'foo';
...
module.exports ={
  foo: 'foo'
}
```
`module.exports === exports` :ok_hand:

---
# Event driven - event loop + emmiters

- Event loop - Javascript Core [simply event loop](https://yatatb.files.wordpress.com/2016/02/nodejs20for20dotnet.png)
- [node addListener](https://nodejs.org/api/events.html#events_emitter_addlistener_eventname_listener)
```JavaScript
myEventEmmiter.on('foo', () => console.log('a'));
```

---
# Sync vs. Async

## Blocking vs nonBlocking
i.ex.:
- [async readFile](https://nodejs.org/api/fs.html#fs_fs_readfile_path_options_callback)
- [sync readFile](https://nodejs.org/api/fs.html#fs_fs_readfilesync_path_options)

---
# Utility modules - OS, Path, Net, DNS

---
# Web frameworks

express, hapi, koa, nest, fastify ...

---
# Fastify

tiny, fast, easy to use, powerful plugins

---
# Fastify - lifecycles

https://www.fastify.io/docs/latest/Lifecycle/

---
# Fastify - routes

- [fastify routes](https://www.fastify.io/docs/latest/Routes/)
```JavaScript
fastify.get('/', myRouteHandler)
```

---
# Fastify - request reply - myRouteHandler

```JavaScript

function myRouteHandler (request, reply) {
  // Doing fancy stuff :sunglasses:
  ...
  reply.send('OK')
}
```
---
# Fastify - middleware

- [fastify middleware](https://www.fastify.io/docs/latest/Middleware/
  )

---
# Fastify - decorators

- [fastify decorators](https://www.fastify.io/docs/latest/Decorators/)

---
# Fastify - validation and serialization

- JSON schema
- [fastify validation and serialization](https://www.fastify.io/docs/latest/Validation-and-Serialization/)

---
# Fastify - plugins

- [fastify plugins](https://www.fastify.io/docs/latest/Plugins/)
- keep your code clean! :yum:

```JavaScript
  const fp = require('fastify-plugin')

  fastify.register(fp((fastify, opts, done) => {
    fastify.decorate('foo_bar', { hello: 'world' })
  done()
  }))
  ...

  fastify.register(myFancyPlugins, { configs })
```

---
# Fastify - testing

- request simulation

```JavaScript
fastify
  .inject({
    method: String,
    url: String,
    query: Object,
    payload: Object,
    headers: Object,
    cookies: Object
  })
  .then(response => {
    // test my response here!!!!!!!!
  })
  .catch(err => {
    // handle error
  })
```

---
# The End :smile:
