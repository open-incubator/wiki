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

Node.js a un avantage unique car des milions de développeurs frontend qui écrivent déjà du code JavaScript pour le navigateur peuvent maintenant écrire du code côté-serveur *("server-side" en anglais)* en plus du code côté-client *("client-side" en anglais)* sans avoir besoin d'apprendre un language complètement différent.

En utilisant Node.js, les nouveaux standards ECMAScript peuvent être utilisés sans problème car vous n'avez pas besoin d'attendre que tout vos utilisateurs mette à jour leurs navigateurs. Vous décidez alors quelle version de ECMAScript vous souhaitez utiliser en changeant de version de Node.js, et vous pouvez aussi activez des fonctionnalités expérimentales en lançant Node.js avec des drapeaux *("flags" en anglais)*.

## Installation

Rendez-vous sur [la page de téléchargement](https://nodejs.org/fr/download/).
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

## Node.Js vs Navigateur

### L'avantage d'utiliser Node.js

Le navigateur et Node.js  utilise tout les deux JavaScript comme language de programmation.

Construire des applications pour navigateurs et une chose complètement différente que de construire 
une application Node.js.

En dépit du fait qu'il s'agit toujours de JavaScript, il y a quelques différences clées qui rendent l'expérience radicalement différente.

Du point de vu d'un développeur frontend qui utilise JavaScript quotidiennement. Les applications Node.js ont un grand avantage. Celui de pouvoir coder le frontend et le backend en un seul language.

### Les changements dans l'écosystème

D'une part, dans le navigateur, la plupart du temps vous interagissez avec le DOM, ou les autres plateformes d'APIs Web comme les Cookies. Celles-ci n'existent pas en Node.js bien-sûr. Vous n'avez pas accès au objects `document` et `window` ainsi que les autres objets mis à disposition par le navigateur.

D'autre part, dans le navigateur, vous n'avez pas accès à toutes les formidables APIs qu'apporte Node.js à travers ses modules, comme la fonctionnalité d'accès au fichier du système.

Pour finir, Node.js et le navigateur se complètent parfaitement, vous pouvez écrire votre code côté serveur avec Node.js et y accéder depuis le navigateur tout en utilisant seulement du Javascript.

## NPM

`npm` *(Pour "Node Package Manager")* est le gestionnaire de paquet *("package manager" en anglais)* standard pour Node.js.

En janvier 2017, plus de 350 000 paquets ont été signalés comme étant inscrits dans le registre npm, ce qui en fait le plus gros dépot de code pour un seul language dans le mode et vous pouvez être sûr qu'il y a un paquet pour (à peu près!) tout.

> [Yarn](https://yarnpkg.com/fr/) est une alternative à NPM, allez y jeter un coup d'oeil 😉

Mais que faire avec NPM ?

### Rechercher des paquets

Rendez vous sur []le site de NPM](https://www.npmjs.com/) afin de rechercher des paquets.

### Installer toutes vos dépendances

Si un projet à un fichier `package.json`, en utilisant la commande :

```bash
npm install
```

`npm` va installer toutes les dépendances listées dans ce fichier, dans le dossier `node_modules` en le créant si il n'existe pas déjà.

### Installer un paquet

Vous pouvez aussi installer un paquet spécifique en utilisant la commande :

```bash
npm install <nom-du-paquet>
```

*En remplaçant <nom-du-paquet> par le nom du paquet voulu.*

Vous allez souvent voir plus de drapeaux ajoutés à cette commande :

* `--save` installe et ajoute le nom du paquet et sa version dans les dépendances du fichier `package.json`.
* `--save-dev` installe et ajoute le nom du paquet et sa version dans les dépendances de développement du fichier `package.json`.

La différence est principalement que les dépendances de développement (`devDependencies`) sont souvent des outils de développements comme une librairie pour faire des tests, alors que les dépendances (`dependencies`) sont souvent liées à l'application en production.

### Mettre à jour les paquets

Mettre à jour les paquets est tout aussi facile, en utilisant la commande :

```bash
npm update
```

`npm` va checker tous les paquets et vérifier si il n'ya pas de nouvelle version qui satisfie vos contraintes de versions.

Vous pouvez aussi spécifier un paquet à mettre à jour:

```bash
npm update <nom-du-paquet>
```

*En remplaçant nom-du-paquet par le nom du paquet voulu.*

## Serveur HTTP
