---
title: "Mise en pratique de Node.js"
draft: false
---
# Mise en pratique de Node.js

*Auteur(s) : Erwan ROUSSEL*

*Prérequis: [Apprendre à utiliser NodeJS]({{< relref "learn_nodejs" >}})*

## Introduction
Dans ce mini-tutoriel vous allez réaliser une petite API avec Node.Js et les librairies ExpressJs. À partir d'un fichier JSON répertoriant des fleurs, nous allons retourner la liste et les détails de celles-ci.

*Nous allons utiliser un fichier JSON pour simuler une base de donnée mais il est plus fréquent d'utiliser une base de donnée surtout dès lors qu'il y a des données sensibles à stocker (comme des mots de passe ou des informations sur l'utilisateur).*

## Installation des dépendances

Nous allons tout d'abbord initialiser le projet :

* Créer un dossier, puis s'y rendre avec un terminal
* Utilisez la commande `npm init` et validez les champs par défaut

Un fichier `package.json` est alors créé à la racine du projet.

Nous allons installer ExpressJs un *framework web minimalist* (un outil pour vous aider à créer des applications web plus rapidement). ExpressJs n'est pas le seul framework disponible pour NodeJS, voici une liste non-exhaustive de ceux-ci (liste plus complète [ici](https://nodejs.dev/learn#nodejs-frameworks-and-tools) *le contenu du lien est en anglais*):


* [**AdonisJs**](https://adonisjs.com/): Un framework complet hautement orienté sur la stabilité et l'ergonomie du développeur. Adonis est l'un des frameworks Node.js les plus rapide.
* [**Fastify**](https://fastify.io/): Un frameworks web qui a pour but de donner au développeur la meilleure expérience possible avec moins de prise de tête et un puissant système de plugin. Il est aussi l'un des plus rapide.
* [**hapi**](https://hapijs.com): Un framework riche pour construire des applications et des services qui permette au développeur de se concentrer sur l'écriture d'une logique réutilisable au lieu de perdre du temps à construire l'infrastructure.
* [**Socket.io**](https://socket.io/): Un moteur de communication en temps réel pour construire des applications réseaux.
 
Comme vu dans le guide précédent, il suffit de lancer cette commande afin d'installer ExpressJs :

```bash
npm install express --save
```

*Le drapeau `--save` indique à npm d'ajouter express à la liste de dépendances du fichier package.json, ainsi si vous reprenez le projet sur un autre ordinateur vous n'aurez qu'à faire `npm install` afin d'installer toutes les dépendances listées dans le `package.json`*.

Nous allons aussi télécharger le fichier JSON répertoriant les fleurs [ici](https://gist.github.com/sandeepcmsm/2e1f5762fa5ca351d8f129e73c730071).

## Création de l'application express
Nous allons maintenant commencer à coder.

* Créez un fichier .js (nous allons créer `index.js` mais vous pouvez très bien l'appeler app.js ou bien server.js ou bien comme vous souhaitez le nommer).

```js
// On importe la librairie express précédament installée
const express = require('express')

// On initialise notre application express
const app = express()

// On définit le port sur lequel notre application va se lancer
const port = 3000

// On crée notre première route (plus de détails sur cette partie juste en dessous)
app.get('/', (req, res) => res.send('Hello World!'))

// On lance le serveur avec le port défini
app.listen(port, () => console.log(`Le serveur écoute sur le port ${port}`))
``` 

La méthode get prend deux paramètres, le chemin de la route (ici `/`, c'est à dire `http://localhost:3000/`') et la fonction a appeler avec les données de la requête (ici elle renvoie juste `Hello World!`).

Si vous vous rendez sur votre navigateur à l'addresse [http://localhost:3000/](http://localhost:3000/) vous devriez apercevoir `Hello World!`.

## Création de l'API

Nous allons avoir seulement deux routes pour cette API (nous ne ferons pas de modifications donc nous ne traiterons pas de requête POST ou PUT)

* `GET /flowers` : liste toutes les fleurs
* `GET /flowers/:id` : affiche les détails d'une fleur

### Liste des fleurs

```js
// On importe le module fs au début du fichier
const fs = require('fs')

// ...

// On déclare la route
app.get('/flowers', (req, res, next) => {

	// On lit le fichier 
	fs.readFile('flowers.json', (err, data) => {
		if(err) {
			next(err)
		} else {
			// On envoie le contenu du fichier en précisant qu'il s'agit de JSON
			res.json(data)	
		}
	})
})
```

On remarque qu'on a un paramètre en plus à notre callback, le paramètre `next` il permet ici à express de gérer les erreurs à notre place.

`res.json(data)` quant à lui modifie le Header appelé `Content-Type` pour préciser qu'il s'agit de JSON puis envoie la réponse avec le contenu du fichier.

Vous pouvez maintenant vous rendre à cette addresse [http://localhost:3000/flowers](http://localhost:3000/flowers) vous devriez voir la liste des fleurs

### Afficher le détail d'une fleur

```js
app.get('/flower/:id', (req, res, next) => {
	// On récupère le paramètre de l'URL
	const id = req.params.id

	// On lit le fichier
	fs.readFile('flowers.json', (err, data) => {
    if(err) {                
      next(err)              
    } else {                
 	    // On récupère l'objet de la fleur dans le json 
      const flower = JSON.parse(data[id])

			// On renvoit l'objet sous format json
      res.json(JSON.stringify(flower))
    }                           
  })	
})
```

On a ici appris à récupèrer les paramètres d'une URL à l'aide de la propriété `req.params`.

## Pour approfondir

Après cette petite découverte je vous invite à aller regarder [la documentation d'ExpressJS](https://expressjs.com/) *le contenu de ce lien est en anglais* ainsi que celle des autres frameworks que j'ai mis au dessus.

Vous pouvez aussi jeter un coup d'oeil à [ce guide](https://www.frugalprototype.com/developpez-propre-api-node-js-express/) qui est plus complet puisqu'il aborde aussi la récupération des données envoyées par la méthode POST.
