---
title: "Apprendre à utiliser Github"
draft: false
---
# Apprendre à utiliser Github

*Auteur(s) : Erwan ROUSSEL (traductions et commentaires)*

*Traduit de l'anglais depuis [ce guide](https://guides.github.com/activities/hello-world/)*

*Prérequis : [Apprendre à utiliser Git]({{<relref "learn_git">}})*

Dans ce tutoriel vous allez apprendre à créer et utiliser un dépôt, créer et gérer une nouvelle branche, faire des changements, les valider et les envoyer sur Github, ouvrir et fusionner une demande de fusion à travers la création d'un projet "Hello World".

## Github c'est quoi ?

Github est une plateforme d'hébergement de code pour le contrôle du versionnage et de la collaboration. Cela permet à vous et aux autres de travailler sur des projets de partout. *(Pour faire simple, c'est là où vous partagez votre code afin de pouvoir travailler avec d'autres personnes où tout simplement pour que tout le monde y ait accès)*

Afin de suivre ce tutoriel il vous faudra un [compte Github.com](https://github.com) et un accès à internet.

## Créer un dépôt

*Un dépôt ("repository" en anglais) est la plupart du temps utilisé pour organiser un projet. Il peut contenir des dossiers, fichiers, images, vidéos, classeurs et groupes de données ("data sets" en anglais).*

*Votre dépôt `hello-world` peut être un endroit où vous stockez vos idées, vos ressources ou même partager et discuter de celles-ci avec d'autres personnes*

1. Dans le coin en haut à droite, juste à côté de votre avatar, cliquez sur **+** puis sélectionnez **New repository** *(qui signifie "Nouveau dépôt")*.
2. Nommez votre dépôt `hello-world`.
3. Écrivez une courte description.
4. Sélectionnez **Initialize this repository with a README** *(qui signifie "Initialiser ce dépôt avec un LISEZ-MOI")*.

*Un fichier LISEZ-MOI ou README est un fichier à la base du dépôt qui sera visible sur la page du dépôt en dessous de la liste des fichiers sur Github, on y écrit souvent une courte description du projet ainsi que quelques lignes pour décrire son fonctionnement et son utilisation.*
![Créer un dépôt](/images/github_create-new-repo.png)

5. Cliquez sur **Create repository** *(qui signifie "Créer un dépôt")*.

## Créer une branche

Le concept de branche est expliqué [ici]({{<relref "learn_git#les-branches">}}) dans le tutoriel précédent.

Nous allons par la suite modifier le README.

1. Rendez-vous sur votre dépôt `hello-world`.
2. Cliquez sur le menu déroulant en haut de la liste de fichier sur lequel il est écrit **branch: master** (c'est la branche actuelle)
3. Écrivez le nom de votre branche, `readme-edits` *(qui signifie "modification du readme)*, dans le champ **Find or create a new branch...** *(qui signifie "Trouve ou crée une nouvelle branche)*.
4. Sélectionnez la boîte bleue **Create branch** *(qui signifie "Créer la branche")* ou appuyez sur la touche "Entrée" de votre clavier.
![Créer une branche](/images/github_readme-edits.gif)

Maintenant vous avez deux branches, `master` et `readme-edits`. Elles ont l'air exactement pareilles, mais plus pour longtemps! Dans le prochain chapitre nous allons ajouter des changements à la nouvelle branche.

## Faire des changements et les valider

### Depuis le site de Github

1. Cliquez sur le fichier `README.md`
2. Cliquez sur l'icône du crayon en haut à droite de l'affichage du fichier pour l'éditer.
3. Dans l'éditeur, écrivez un peu à propos de vous.
4. Écrivez un message de validation qui décrit le(s) changement(s) effectués.
5. Cliquez sur le boutton **Commit changes** *(qui signifie "Valider les changements")*.
![Valider les changements](/images/github_commit.png)

Ces changements seront appliqués seulement sur le fichier README de votre branche `readme-edits`, maintenant cette branche contient un contenu différent de la branche `master`.

### Depuis votre ordinateur

1. Clonez le dépôt comme expliqué [ici]({{<relref "learn_git#cloner-un-dépôt">}}) (l'addresse est indiquée en haut à droite sur la page de votre dépôt). 
![Cloner un dépôt](/images/github_clone.png)
2. Éditez le fichier `README.md` en y ajoutant des informations à propos de vous
3. Ajoutez et validez les modifications comme expliqué [ici]({{<relref "learn_git#ajouter-et-valider">}}).
4. Puis envoyez les changements comme expliqué [ici]({{<relref "learn_git#envoyer-des-changements">}}).
5. Actualisez la page de votre dépôt, rendez vous sur la branche `readme-edits`, vous devriez voir les modifications uniquement sur cette branche.

## Ouvrir une demande de fusion

Maintenant que vous avez des changements sur une branche autre que la branche `master` vous pouvez maintenant ouvrir une demande de fusion *("Pull request" en anglais)*

*Une pull-request ou demande de fusion désigne tout simplement l'action qui consiste à demander au détenteur du dépôt original de prendre en compte les modifications que vous avez apportées sur votre fork et que vous souhaitez partager. Cependant il peut s'agir de bien plus qu'une simple demande de prise en compte de vos modifications : il s'agit d'un forum dédié pour discuter de la fonctionnalité proposée. Si les changements posent problème, les membres de votre équipe peuvent entrer leurs commentaires dans la pull request et adapter la fonctionnalité en faisant un push de commits de suivi. Cette activité est directement suivie dans la pull request.*

Vous pouvez utiliser [le système de mention](https://help.github.com/articles/about-writing-and-formatting-on-github/#text-formatting-toolbar) *(le contenu du lien est en anglais)* dans vos demandes de fusions afin de demander des retours de personnes ou équipes spécifiques qu'il soit dans la même salle que vous ou des milliers de kilomètres.

Vous pouvez même ouvrir une demande de fusion sur votre propre dépôt et la fusionner vous mpeme. C'est une bonne manière d'adopter le "Gtihub flow" avant de travailler sur de plus gros projets.

Voici un tableau récapitulatif des étapes d'ouverture d'une demande de fusion *(vous pouvez cliquer sur les images pour les agrandir)* :

| Étape | Image |
| ----- | ----- |
| Cliquez sur l'onglet **Pull Request**, puis une fois sur la page, cliquez sur le bouton vert **New pull request** *(qui signifie "Nouvelle demande de fusion")*. | [![New pull request](/images/github_newpr.gif)](/images/github_newpr.gif) |
| Dans le tableau  **Example Comparisons** *(qui signifie "Example de comparaisons")*, sélectionnez la branche que vous avez créé : `readme-edits`, pour la comparer avec la branche originale : `master`. | [![Example Comparisons](/images/github_prcomparisons.png)](/images/github_prcomparisons.png) |
| Jetez un coup d'oeil au différence sur la page **Compare** pour être sûr que c'est ce que vous souhaitez envoyer. | [![Look over](/images/github_prlookover.png)](/images/github_prlookover.png) |
| Si vous êtes satisfait des changements que vous souhaitez envoyer, cliquez sur le gros boutons vert **Create pull request** *(qui signifie "Créer une demande de fusion")*. | [![Create pull request](/images/github_createpr.png)](/images/github_createpr.png) |
| Donnez un titre et une brève descripion de vos changements à votre demande de fusion. | [![Give title and description](/images/github_prform.png)](/images/github_prform.png) |

Une fois que vous avez complété ces étapes, cliquez sur **Create pull request** !

> **Astuce**: vous pouvez utiliser des [emoji](https://help.github.com/articles/basic-writing-and-formatting-syntax/#using-emoji) ainsi que du [glisser déposer d'image et de gifs](https://help.github.com/articles/file-attachments-on-issues-and-pull-requests/) *(le contenu de ces liens est en anglais)* dans les commentaires de demande de fusion.

## Fusionner votre demande

*Fusion se dit "merge" en anglais dans ce contexte*

Dans cette étape finale, il est temps de réunir nos changements, autrement dit fusionner la branche `readme-edits` dans la branche `master`.

1. Cliquez sur le bouton vert **Merge pull request** *(qui signifie "Fusionner la demande de fusion")* pour fusionner les changements dans la branche `master`.
2. Cliquez sur **Confirm merge** *(qui signifie "Confirmer la fusion")*.
![Merge pull request](/images/github_mergepr.png)
3. Maintenant que les changements ont été fusionnés dans la branche `master`, la branche `readme-edits` n'est plus utile. Descendez alors et cliquez sur le bouton violet **Delete branch** *(qui signifie "supprimer la branche")*.
![Delete branch](/images/github_deletebranch.png)
4. Rendez vous sur la page de votre dépôt, les modifications apparaissent sur la branche `master`.