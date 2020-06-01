---
title: "Accueil"
date: 2020-05-04T12:38:32+02:00
draft: false
---
![Open:Incubator](/images/openincubator.png)

**Open**:*Incubator* et ses membres ont le plaisir de partager leurs connaissances et leur savoir à travers les divers tutoriels de ce site. 👋

*Les tutoriels et guides rédigés par les membres d'Open:Incubator sur ce site sont tous publiés sous licence libre.*
*Si vous souhaitez contribuer en ajoutant un tutoriel/guide ou en en modifiant un afin d'ajouter des choses ou de corriger des potentielles erreurs, le dêpot est [ici](https://github.com/open-incubator/wiki).*

## Contribuer

### Rédiger un guide/tutoriel

* Faites un fork du [dépôt](https://github.com/open-incubator/wiki).
* Créer votre fichier (en markdown) dans la section voulue (ici JavaScript) : `content/docs/Javascript/learn_nodejs.md`.
* Ajoutez y le template pour les métadonnées au début du fichier.
```
---
title: "Titre du tutoriel"
draft: false
---
# Titre du tutoriel
*Auteur(s): Votre Nom*
```
* Rédiger votre tutoriel en dessous de ces lignes.
* Ajoutez le dans le menu (`content/menu/index.md`)
```
- **[Section]()**
  - [Titre du tutoriel]({\{< relref "/docs/content//Section/fichier_du_tutoriel.md" >}})
```
* Pour finir faites une demande de fusion (Pull Request) sur notre dépôt.

### Indexer un guide/tutoriel déjà existant

* Faites un fork du [dépôt](https://github.com/open-incubator/wiki).
* Ajoutez le lien du tutoriel dans le menu (`content/menu/index.md`) :
```
- **[Section]()**
  - [Titre du tutoriel](https://liendututoriel.com)
```
* Pour finir faites une demande de fusion (Pull Request) sur notre dépôt.
