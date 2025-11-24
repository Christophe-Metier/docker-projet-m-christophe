# docker-projet-m-christophe

## Auteur
**Nom :** Metier  
**Prénom :** Christophe  

## Table des matières
1. [Présentation du projet](#présentation-du-projet)  
2. [Prérequis](#prérequis)  
3. [Installation et lancement](#installation-et-lancement)  
4. [Utilisation](#utilisation)  
5. [Gestion des environnements](#gestion-des-environnements)  
6. [Liens utiles](#liens-utiles)  
7. [Sources du projet](#sources-du-projet)  

---
## Présentation du projet
Ce projet est une application web permettant de générer aléatoirement 10 noms de groupes de musique anglais selon le template suivant :  


Les données sont stockées dans une base de données MySQL.  
Le projet est entièrement conteneurisé via Docker Compose avec trois services :  

1. **web** : application Flask (Python) traitant les requêtes et générant les noms.  
2. **db** : base de données MySQL avec jeu de données initial.  
3. **adminer** : interface d’administration de la base de données.  

---

## Prérequis
- Docker et Docker Compose installés  
- Git  

---

## Installation et lancement

1. **Cloner le dépôt :**

```bash
git clone https://github.com/votre-utilisateur/docker-projet-m-christophe.git
cd docker-projet-m-christophe
```
2. **Créer le fichier .env à partir du fichier exemple :**

```bash
cp .env.dist .env
```
3. **Lancer le projet en environnement de développement :**
```bash
docker-compose up --build
```
Accès aux services :

Application : http://localhost:8085

Adminer : http://localhost:8086


4. **Construire l'image du service web pour la production**
```bash
docker build -t bandnamesgenerator:1.0.0 ./web
```

## Utilisation

Une fois en ligne :

La page affiche l’état de la connexion à la base MySQL :

- ✔️ “Communication avec la base de données établie”

- ❌ “Impossible de se connecter à la base de données”

Un bouton permet de générer une nouvelle liste de 10 noms

Chaque nom respecte le format :
```
The Midnight Llamas
The Golden Dreams
The Crazy Wolves
```
## Gestion des environnements

Lorsque l'on passe d'un environnement de développement à celui de production, plusieurs éléments changent.
Il faut faire attention aux ports que l'on exposent, aux mots de passes, utilisateurs que l'on exposent.

Il faut faire également attention à essayer de journaliser les changements, ainsi qu'à essayer d'avoir un stockage/une back up externe, si un conflit ou une erreur surgit lors de la mise en production, on aimerait pouvoir revenir à une backup sans problèmes.

## Liens Utiles

Docker Compose : https://docs.docker.com/compose/

MySQL Officiel : https://hub.docker.com/_/mysql

Adminer : https://www.adminer.org/

Flask : https://flask.palletsprojects.com/

## Sources du projet

```pgsql
db/
  └── init.sql
web/
  ├── Dockerfile
  ├── index/php
.env.dst
.gitignore
compose.yaml
.README.md
```