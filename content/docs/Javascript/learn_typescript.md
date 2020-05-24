---
title: "Apprendre le Typescript"
draft: false
---
# Apprendre le Typescript

 *Auteur(s): Erwan ROUSSEL*

> TypeScript est un langage de programmation libre et open source développé par Microsoft qui a pour but d'améliorer et de sécuriser la production de code JavaScript. C'est un sur-ensemble de JavaScript.

*Wikipédia*

## Installer Typescript

Pour installer typescript vous devez avoir télécharger et installer *[nodejs](https://nodejs.org/en/)* afin d'utiliser son gestionnaire de paquets *npm*.

Rendez-vous dans le terminal de votre choix et taper la commande suivante :

```bash
npm install -g typescript
```

ou bien via yarn :

```bash
yarn add global typescript
```

*-g* signifie que typescript va être installé sur tout votre ordinateur.

Pour éviter les erreurs et être sûr d'avoir la même version il est recommandé de ne pas l'installer globalement mais de l'ajouter aux dépendances du projet :

```bash
npm init
npm install --save-dev typescript
```

*npm init* va initialiser votre projet avec un fichier package.json
*npm install --save-dev* va ajouter typescript aux dépendances de développement

ou bien via yarn :

```bash
yarn init
yarn add -D typescript
```

*yarn init* va initialiser le projet avec un package.json
*yarn add -D typescript* va ajouter typescript aux dépendances de développement

*Vous pouvez aussi installer l'extension  [TYPESCRIPT](https://www.typescriptlang.org/#download-links) sur votre éditeur de texte préféré*

Vous pouvez maintenant compiler votre code grace à la commande suivante :

(si vous avez installé typescript globalement)

```bash
tsc lenomduscript.ts
```

Sinon :

```bash
npx tsc lenomduscript.ts
```

## Utiliser Typescript

* ### Le typage

La surcouche Typescript apporte le support de types tel que :

* Boolean :

```javascript
let happy: boolean = false;
```

* String :

```javascript
let salut: string = "Hello World";
```

* Number :

```javascript
let nombre: number = 1;
```

* Array :

```javascript
let liste: number[] = [1, 2, 3];
```

Cependant vous pouvez aussi l'écrire de cette manière :

```javascript
let liste: Array<number> = [1, 2, 3];
```

Avec : `Array<TypeDeLElement>`

* Tuple :

```javascript
let x: [string, number];
x = ["hello", 10];
```

Ainsi si vous inversez `"hello"` et `10` vous obtiendrez une erreur puisqu'ils ne correspondront plus aux types définis.

*Si vous attribuer une valeur qui ne correspond pas au type tel que :*

```javascript
let nombre: number = "Salut";
```

Lors de la compilation, vous aurez l'erreur suivante :

`error TS2345: Argument of type 'string' is not assignable to parameter of type 'number'.`

*Il existe d'autres types tels que `Any`, `Void` ou `Enum` qui sont décrits dans [la documentation de Typecsript](https://www.typescriptlang.org/docs/handbook/basic-types.html)*

* ### Les Interfaces

```typescript
interface Utilisateur{
	nom: string;
	age: number;
}
```

On crée alors une interface avec plusieurs types.

```typescript
let utilisateur: Utilisateur = {
	nom: 'Gérard',
	age: 23
}
```

Et on l'utilise comme les autres types.

*[Voir plus ici](https://www.typescriptlang.org/docs/handbook/interfaces.html)*

* ### Les Classes

Typescript apporte le support des classes.

```typescript
class Personnage{
	public nom: string;
	public vie: number;

	letructor(nom: string, vie: number, pouvoirs: string[]){
		this.nom = nom;
		this.vie = vie;
	}
}
```

L'héritage aussi.

```typescript
class Sorcier extends Personnage{
	// La classe
}
```

*[Voir plus ici](https://www.typescriptlang.org/docs/handbook/classes.html)*

## Import (es6)

Typescript apporte aussi la fonctionnalité d'importer des modules à la manière des imporrt es6, sur nodeJS :

```javascript
const express = require('express')
```

De cette manière :

```typescript
import * as express from 'express';
```

*Remplacer **express** par le module souhaité.*

Ou bien :

```typescript
import bodyParser from "body-parser";
```
Pour importer un seul élèment.

On peut aussi importer seulement les élèments souhaités (à l'aide du [`destructuring`](https://developer.mozilla.org/fr/docs/Web/JavaScript/Reference/Opérateurs/Affecter_par_décomposition)):

```typescript
import { get, post } from "axios";
```

## Pour aller plus loin

[Utiliser tsconfig](https://www.typescriptlang.org/docs/handbook/tsconfig-json.html)

[Utiliser Typescript et NodeJS (Grafikart)](https://www.grafikart.fr/tutoriels/nodejs/nodejs-typescript-1018)

J'ai fait le tour des principes de bases de Typescript, vous pouvez maintenant lire la [documentation complète](https://www.typescriptlang.org/docs/).
