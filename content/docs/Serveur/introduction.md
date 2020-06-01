---
title: "Apprendre à utiliser NodeJS"
draft: false
---
# Introduction

*Auteur(s): Erwan ROUSSEL*

## Qu'est ce qu'un serveur ?

> Un serveur informatique est un dispositif informatique (matériel et logiciel) qui offre des services à un ou plusieurs clients (parfois des milliers). 

Les services les plus courants sont :

* l'accès aux informations du World Wide Web (en hébergeant un site web);
* le courrier électronique (en hébergeant un serveur mail);
* le partage de périphériques (imprimantes, disque durs, etc.) ;
* le commerce électronique ;
* le stockage en base de données ;
* la gestion de l'authentification et du contrôle d'accès ;
* le jeu et la mise à disposition de logiciels applicatifs.

*Source: Wikipedia*

Pour résumer son fonctionnement, un client appelle un serveur à l'aide d'un [protocole réseau](https://fr.wikipedia.org/wiki/Protocole_réseau) adapté au service qu'il souhaite utiliser et le serveur se charge de le diriger vers le bon service sur celui-ci.

![Fonctionnement Client/Serveur](/images/server_clientserver.png)

## Comment installer un serveur web ?

Peut-être avez-vous développé un site internet que vous souhaiteriez héberger vous même 🤷. Dans ce cas il va vous falloir installer votre propre serveur.

N'importe quel vieil ordinateur qui ne vous sert plus peut suffir pour un (très) faible traffic. Vous pouvez aussi acquérir un [Raspberry pi](https://www.raspberrypi.org/products/raspberry-pi-4-model-b/) pour seulement 35$ (il s'agit d'un "mini-ordinateur") ou bien acheter un vrai serveur si vous en ressentez le besoin. Cet ordinateur devra être allumé en permanence afin de pouvoir rendre votre site web accessible à qui le souhaite à tout heure de la journée (et de la nuit).

Pour les besoins des guides suivants nous allons installer notre serveur sur une machine virtuelle puisque nous ne faisons qu'apprendre et nous n'avons pas besoin de rendre notre site acessible h24 7/7j. Vous pourrez alors utiliser votre ordinateur afin d'apprendre à installer et utiliser un serveur.

### Linux

Il est possible d'installer un serveur windows mais le système d'exploitation le plus largement utilisé sur des serveurs est: **Linux** et toutes ses distributions. Nous allons utiliser la distribution [Debian](https://debian.org), simple, efficace, dôtée d'une bonne communauté, si vous avez des difficultés à installer ou à utiliser debian vous aurez forcément quelqu'un qui a déjà eu le même problème que vous sur internet et donc la solution à votre problème.

Pour installer Debian sur une machine virtuelle vous pouvez suivre [ce lien](https://cdiese.fr/installation-de-debian-sur-une-machine-virtuelle-virtualbox/).

## Qu'allons nous faire par la suite ?

* Installer un serveur web
* Configurer votre serveur web pour PHP
* Configurer votre serveur web pour NodeJS/Python/Serverless
* Sécuriser votre serveur
* Utiliser docker et docker-compose

