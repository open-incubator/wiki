---
title: "Apprendre à utiliser NodeJS"
draft: false
---
# Apprendre à utiliser NodeJS

*Auteur(s) : Erwan ROUSSEL (traductions et commentaires)*

*Traduit de l'anglais depuis [ce guide](https://nodejs.dev)*

*Prérequis : [Apprendre le Javascript](https://developer.mozilla.org/fr/docs/Web/JavaScript/Guide), [Les requêtes HTTP](https://developer.mozilla.org/fr/docs/Web/HTTP/Aper%C3%A7u)*

## Introduction

Node.js est un environnement d'exécution open-source et cross-platform (qui peut être utilisé sur n'importe quel système d'exploitation) JavaScript. C'est un outil populaire pour à peu près tout les types de projets!

Node.js utilise le moteur JavaScript V8, le coeur de Google Chrome, en dehors du navigateur. Cela permet à Node.js d'être très performant.

Une application Node.js est lancée dans un seul processus *("process" en anglais)*, sans créer de nouveau fil d'éxécution *("thread" en anglais)* pour chaque requête. Node.js apporte une collection d'I/O primitifs dans sa librairie standard qui évite au code JavaScript d'être bloquant. Les librairieNode.js sont généralement écrites de manière non-bloquante, faisant de la programmation bloquante une exception plutôt qu'une norme.

Quand Node.js a besoin d'effectuer un opération I/O, comme lire depuis le réseau, accéder à une base de données ou à un système de fichier,  au lieu de bloquer le fil d'éxécution, Node.js reprendra les opérations lorsque la réponse lui reviendra.

Cela permet à Node.js de gérer des centaines de connections en même temps sur un seul serveur sans avoir à introduire le fardeau de gérer les fils d'éxécution simultannés, qui peut être une source importante de bugs.

Node.js a un avantage unique car des milions de développeurs frontend qui écrivent déjà du code JavaScript pour le navigateur peuvent maintenant écrire du code côté-serveur *("server-side" en anglais)* en plus du code côté-client *("client-side" en anglais)* sans avoir besoin d'apprendre un language complétement différent.

En utilisant Node.js, les nouveaux standards ECMAScript peuvent être utilisés sans problème car vous n'avez pas besoin d'attendre que tout vos utilisateurs mette à jour leurs navigateurs. Vous décidez alors quelle version de ECMAScript vous souhaitez utiliser en changeant de version de Node.js, et vous pouvez aussi activez des fonctionnalités expérimentales en lançant Node.js avec des drapeaux *("flags" en anglais)*.

## Example d'application Node.js

```js
const http = require('http')

const hostname = '127.0.0.1'
const port = process.env.PORT

const server = http.createServer((req, res) => {
  res.statusCode = 200
  res.setHeader('Content-Type', 'text/plain')
  res.end('Hello World!\n')
})

server.listen(port, hostname, () => {
  console.log(`Server running at http://${hostname}:${port}/`)
})
```

Ce code inclut premièrement le module Node.js `http`.

Node.js a un librairie standard fantastique, qui inclue un support *"first-class"* pour le réseau.

La méthode `createServer()` du module `http` crée un nouveau  serveur HTTP et le retourne.

Le serveur écoute alors sur le port et le nom d'hôte spécifié. Quand le serveur est prêt, la fonction passée en paramètre *("callback" en anglais)* est alors exécutée, dans ce cas elle nous informe via la console que le serveur est lancé.

Dès lors qu'une requête est réçue, l'[évènement `request`](https://nodejs.org/api/http.html#http_event_request) est appelé, apportant deux objets: la requête (un objet [`http.IncomingMessage`](https://nodejs.org/api/http.html#http_class_http_incomingmessage)) et une réponse (un objet [`http.ServerResponse`](https://nodejs.org/api/http.html#http_class_http_serverresponse)).

Ces deux objets sont essentiels pour gérer une requête HTTP.

Le premier apporte les détails de la requête. Dans cet example il n'est pas utilisé mais vous pouvez accéder au header de la requête et aux données de celle-ci.

Le second est utilisé pour retourner des données à celui qui fait la requête.

Dans ce cas avec:

```js
res.statusCode = 200
```

On attribue la valeur `200` à la propriété `statusCode` pour indiquer une réponse réussie.

```js
res.setHeader('Content-Type', 'text/plain')
```

On attribue la valeur `text/plain` à l'en-tête `Content-Type` à l'aide de la méthode `setHeader` afin de spécifier que nous renvoyons du texte.

```js
res.end('Hello World\n')
```

et on termine en fermant la réponse en ajoutant le contenu en argument à la fonction `end`.
