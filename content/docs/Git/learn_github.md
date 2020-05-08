---
title: "Apprendre à utiliser Github"
draft: false
---
# Apprendre à utiliser Github

*Auteur(s) : Erwan ROUSSEL (traductions et commentaires)*

*Traduit de l'anglais depuis [ce guide](https://guides.github.com/activities/hello-world/)*

*Prérequis : [Apprendre à utiliser Git]({{< relref "learn_git">}})*

Dans ce tutoriel vous allez apprendre à créer et utiliser un dépôt, créer et gérer une nouvelle branche, faire des changements, les valider et les envoyer sur Github, ouvrir et fusionner une demande de fusion à travers la création d'un projet "Hello World".

## Github c'est quoi ?

Github est une plateforme d'hébergement de code pour le controle du versionnage et de la collaboration. Cela permet à vous et aux autres de travailler sur des projets de partout. *(Pour faire simple, c'est là où vous partagez votre code afin de pouvoir travailler avec d'autres personnes où tout simplement pour que tout le monde y ait accès)*

Afin de suivre ce tutoriel il vous faudra un [compte Github.com](https://github.com) et un accès à internet.

## Créer un dépôt

*Un dépôt ("repository" en anglais) est la plupart du temps utilisé pour organiser un projet. Il peut contenir des dossiers, fichiers, images, vidéos, classeurs et groupe de données ("data sets" en anglais).*

*Votre dépôt `hello-world` peut être un endroit où vous stockez vos idées, vos ressources ou même partager et discuter de celles-ci avec d'autres personnes*

1. Dans le coin en haut à droite, juste à côté de votre avatar, cliquez sur **+** puis sélectionnez **New repository** *qui signifie "Nouveau dépôt"*.
2. Nommez votre dépôt `hello-world`.
3. Écrivez une courte description.
4. Sélectionnez **Initialize this repository with a README** *(qui signifie "Initialiser ce dépôt avec un LISEZ-MOI")*.

*Un fichier LISEZ-MOI ou README est un fichier à la base du dépôt qui sera visible sur la page du dépôt en dessous de la liste des fichiers sur Github, on y écrit souvent une courte description du projet ainsi que quelque ligne pour décrire son fonctionnement et son utilisation.*

![Créer un dépôt](/images/github_create-new-repo.png)

5. Cliquez sur **Create repository** *qui signifie "Créer un dépôt*.

## Créer une branche

Le concept de branche est expliqué [ici]({{< relref "learn_git#les-branches">}}) dans le tutoriel précédent.

Nous allons par la suite modifier le README.

1. Rendez-vous sur votre dépôt `hello-world`.
2. Cliquez sur le menu déroulant en haut de la liste de fichier sur lequel il est écrit **branch: master** (c'est la branche actuelle)
3. Écrivez le nom de votre branche, `readme-edits` *qui signifie "modification du readme*, dans le champ **Find or create a new branch...** *qui signifie "Trouve ou crée une nouvelle branche*.
4. Sélectionne la boîte bleue **Create branch** *qui signifie "Créer la branche" ou appuyez sur la touche "Entrée" de votre clavier.

![Créer une branche](/images/github_readme-edits.gif)

Maintenant vous avez deux branches, `master` et `readme-edits`. Elles ont l'air exactement pareilles, mais plus pour longtemps! Dans le prochain chapitre nous allons ajouter des changements à la nouvelle branche.

## Faire des changements et les valider

### Depuis le site de Github

1. Cliquez sur le fichier `README.md`
2. Cliquez sur l'icône du crayon en haut à droite de l'affichage du fichier pour l'éditer.
3. Dans l'éditeur, écrivez un peu à propos de vous.
4. Écrivez un message de validation qui décrit le(s) changement(s) effectués.
5. Cliquez sur le boutton **Commit changes** *qui signifie "Valider les changements*.

![Valider les changements](/images/github_commit.png)

Ces changements seront appliqués seulement sur le fichier README de votre branche `readme-edits`, maintenant cette branche contient un contenu différent de la branche `master`.

### Depuis votre ordinateur