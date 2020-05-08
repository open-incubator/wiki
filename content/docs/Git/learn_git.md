---
title: "Apprendre à utiliser Git"
draft: false
---
# Apprendre à utiliser Git

*Auteur(s) : Erwan ROUSSEL*

*Inspiré de [ce tutoriel](http://rogerdudler.github.io/git-guide/index.fr.html)*

## Installation

* [Télécharger git pour Mac OS](http://git-scm.com/download/mac)
* [Télécharger git pour Windows](http://msysgit.github.io/)
* [Télécharger git pour Linux](http://book.git-scm.com/2_installing_git.html)

## Configuration

*Ceci vous sera demandé lorsque vous allez essayer d'envoyer vos modifications*

Il est requis d'avoir configuré son nom d'utilisateur et son addresse email en exécutant ces commandes :

* `git config --global user.name "John Doe"` : configure le nom d'utilisateur en tant que *John Doe*
* `git config --global user.email johndoe@example.com` : configure l'addresse email en tant que *johndoe@example.com*

## Créer un nouveau dépôt

*Un dépôt ("repository" en anglais) Git est un entrepôt virtuel de votre projet. Il vous permet d'enregistrer votre code et ses versions ainsi que d'y accéder au besoin. [Source](https://www.atlassian.com/fr/git/tutorials/setting-up-a-repository)*

Pour initialiser un dépot Git :

* Créez un nouveau dossier, ouvrez le
* Exécutez la commande `git init`

Un dossier `.git` devrait apparaître dans celui-ci, ceci signifie que le dépôt a bien été initialisé (c’est un dossier caché situé à la racine du projet). Il contient l’historique des modifications des fichiers et la configuration de Git pour ce projet). *[Source](https://openclassrooms.com/fr/courses/1233741-gerez-vos-codes-source-avec-git#/id/r-1233973)*

## Cloner un dépôt

Si votre dépôt se situe déjà sur un serveur distant (comme Github, Gitlab, Bitbucket ou autre), il vous faudra le "cloner" (le télécharger) afin d'y accéder sur votre ordinateur.

Il y a deux méthodes pour faire ceci:

* Par défaut, en utilisant HTTP : `git clone https://nom-du-serveur.com/nom-d-utilisateur/nom-du-depot`

* Autrement (si ssh est configuré) : `git clone git@serveur:/nom-d-utilisateur/nom-du-depot`

## Arbres

*Un arbre (tree) Git est une forme de répertoire. Il va référencer une liste de trees et de blobs (sous-répertoires et fichiers) [Source](https://openclassrooms.com/fr/courses/5641721-utilisez-git-et-github-pour-vos-projets-de-developpement/6113071-identifiez-la-structure-de-fichier-de-git)*

Votre dépôt local est composé de trois "arbres" gérés par git. 

* Le premier est votre `espace de travail` qui contient réellement vos fichiers. 
* Le second est un `Index` qui joue un rôle d'espace de transit pour vos fichiers 
* Et enfin `HEAD` qui pointe vers la dernière validation que vous ayez faite. 

## Ajouter et valider

Vous pouvez proposer un changement (ajouter des fichiers à l'Index) en exécutant les commandes suivantes :

* `git add nom-du-fichier` ou `git add *` : c'est la première étape dans un workflow git basique. 
* `git commit -m "Message de validation"` : valide ces changement.

*En remplaçant nom-du-fichier par le nom du fichier a ajouter.*

Le fichier est donc ajouté au HEAD, mais pas encore dans votre dépôt distant.

## Les branches

*Les branches sont utilisées pour développer des fonctionnalités isolées des autres. La branche master est la branche par défaut quand vous créez un dépôt. Utilisez les autres branches pour le développement et fusionnez ensuite à la branche principale quand vous avez fini. [Source](http://rogerdudler.github.io/git-guide/index.fr.html)*

![Branches](/images/git_branches.png)

*Feature (en anglais) signifie fonctionnalité*

Les commandes suivantes vous permettent de manipuler les branches :
* Créer une nouvelle branche nommée "feature_x" et passer dessus pour l'utiliser : `git checkout -b feature_x`
* Retourner sur la branche principale : `git checkout master`
* Supprimer la branche : `git branch -d feature_x`

À savoir : une branche n'est pas disponible pour les autres tant que vous ne l'aurez pas envoyée vers votre dépôt distant

* Pour l'envoyer vers votre dépôt distant : `git push origin <branch>`

### Fusion

Pour fusionner les changements entre deux branches il existe la commande :

* `git merge branche` : qui va fusionner la branche indiquée avec la branche active (par exemple master)

*En remplaçant branche par la branche que vous souhaitez fusionner avec la branche active*

## Envoyer des changements

Vos changements sont maintenant dans le HEAD de la copie de votre dépôt local. Pour les envoyer à votre dépôt distant :

* Exécutez la commande `git push origin master`

*En remplaçant master par la branche dans laquelle vous souhaitez envoyer vos changements.*

Si vous n'avez pas cloné votre dépôt existant et voulez le connecter à votre dépôt sur un serveur distant (après l'avoir créé au préalable) :
* Ajoutez le avec : `git remote add origin addresse-du-depot`

*En remplaçant addresse du dépôt par l'addresse de votre dépôt*

Maintenant, vous pouvez envoyer vos changements vers le serveur distant sélectionné en éxécutant la commande précédante

## Mettre à jour

pour mettre à jour votre dépôt local vers les dernières validations, exécutez la commande
git pull
dans votre espace de travail pour récupérer et fusionner les changements distants.
Lors de la mise à jour, Git tente de fusionner votre branche avec celle du dépôt distant (git tente d'auto-fusionner les changements). 

### Conflits

Malheureusement, ça n'est pas toujours possible et résulte par des conflits. Vous devez alors régler ces conflits manuellement en éditant les fichiers indiqués par git.

Après l'avoir fait, vous devez :
* Les marquer comme fusionnés avec : `git add nom-du-fichier`
* Après avoir fusionné les changements, vous pouvez en avoir un aperçu en utilisant
`git diff branche-source branche-ciblee`.

*En remplaçant `nom-du-fichier`, `branche-source` et `branche-ciblee` par leurs valeurs respectives.*

## Les versions (ou release)

il est recommandé de créer des tags pour les versions de programmes. Vous pouvez créer un tag nommé 1.0.0 en exécutant les commandes : 
* `git log` : pour obtenir l'identifiant du changement (commit) auquel vous soubaitez attribuer la version
* `git tag 1.0.0 1b2e1d63ff` : le 1b2e1d63ff désigne les 10 premiers caractères de l'identifiant du changement (commit) que vous voulez référencer avec ce tag 

*Vous pouvez utiliser moins de caractères de cet identifiant, il doit juste rester unique.*

## Remplacer les changements locaux

Dans le cas où vous auriez fait quelque chose de travers, vous pouvez annuler les changements locaux en utilisant cette commande :

* `git checkout -- nom-du-fichier` : cela remplacera les changements dans votre arbre de travail avec le dernier contenu du HEAD. Les changements déjà ajoutés à l'index, aussi bien les nouveaux fichiers, seront gardés

*En remplaçant nom-du-fichier par le nom du fichier a remplacer.*

Si à la place vous voulez supprimer tous les changements et validations locaux, vous pouvez faire comme ceci :

* `git fetch origin` : récupére le dernier historique depuis le serveur
* `git reset --hard origin/master ` : pointe la branche principale locale dessus