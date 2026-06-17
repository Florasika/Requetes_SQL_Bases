# 🗄️ Jour 1 / 10 — SQL : Requêtes SELECT Basiques

> **Série : 10 Days of SQL** · Jour 1/10  
> Concepts : SELECT · WHERE · ORDER BY · LIMIT · OFFSET

---

## 📁 Structure du projet

```
day-01-select-basics/
│
├── 01_setup.sql           ← CREATE TABLE + 20 lignes de données
├── 02_select_basics.sql   ← 14 requêtes commentées
├── entreprise.db           ← Base SQLite prête à l'emploi
└── README.md
```

---

## 🚀 Installation & Lancement

### Option 1 — SQLite (recommandé pour débuter)

```bash
# Installer SQLite (si nécessaire)
# Mac : brew install sqlite
# Linux : sudo apt install sqlite3
# Windows : https://sqlite.org/download.html

# Cloner le repo
git clone https://github.com/ton-pseudo/10-days-sql.git
cd 10-days-sql/day-01-select-basics

# Ouvrir la base directement (déjà créée)
sqlite3 entreprise.db

# OU recréer la base depuis zéro
sqlite3 entreprise.db < 01_setup.sql
```

### Option 2 — PostgreSQL / MySQL

Le fichier `01_setup.sql` utilise une syntaxe SQL standard compatible avec la plupart des SGBD. Adaptations mineures possibles :
- `INTEGER PRIMARY KEY` → `SERIAL PRIMARY KEY` (PostgreSQL) ou `INT AUTO_INCREMENT PRIMARY KEY` (MySQL)
- `DATE` reste identique partout

```bash
psql -U postgres -d ma_base -f 01_setup.sql
```

### Exécuter les requêtes

```bash
sqlite3 entreprise.db < 02_select_basics.sql

# Ou en mode interactif pour tester une requête à la fois
sqlite3 entreprise.db
sqlite> SELECT prenom, nom, salaire FROM employees ORDER BY salaire DESC LIMIT 5;
```

---

## 📊 Le schéma — table `employees`

| Colonne | Type | Description |
|---------|------|-------------|
| `id` | INTEGER | Clé primaire |
| `prenom`, `nom` | TEXT | Identité de l'employé |
| `departement` | TEXT | Ventes, IT, RH, Finance, Marketing |
| `poste` | TEXT | Intitulé du poste |
| `salaire` | INTEGER | Salaire annuel en euros |
| `date_embauche` | DATE | Format YYYY-MM-DD |
| `ville` | TEXT | Ville de travail |
| `email` | TEXT | Adresse email |

20 employés répartis sur 5 départements et 6 villes — assez de variété pour pratiquer chaque concept sans bruit inutile.

---

## 🔑 Les 4 concepts expliqués

### 1. SELECT — choisir les colonnes
```sql
-- Tout
SELECT * FROM employees;

-- Colonnes spécifiques (toujours préférable en production)
SELECT prenom, nom, departement, salaire FROM employees;
```
`SELECT *` est pratique pour explorer, mais en production on précise toujours les colonnes : plus rapide, plus lisible, moins fragile si la table change.

---

### 2. WHERE — filtrer les lignes
```sql
-- Comparaison simple
WHERE salaire > 50000

-- Texte exact
WHERE departement = 'IT'

-- Plusieurs conditions
WHERE departement = 'IT' AND ville = 'Paris'
WHERE departement = 'Marketing' OR departement = 'RH'

-- IN : équivalent de plusieurs OR
WHERE departement IN ('RH', 'Finance', 'Marketing')

-- BETWEEN : intervalle inclusif
WHERE salaire BETWEEN 40000 AND 50000

-- LIKE : recherche partielle (% = n'importe quels caractères)
WHERE prenom LIKE 'L%'      -- commence par L
WHERE email LIKE '%corp.fr' -- termine par corp.fr
```

---

### 3. ORDER BY — trier les résultats
```sql
-- Croissant (par défaut)
ORDER BY salaire ASC

-- Décroissant
ORDER BY salaire DESC

-- Plusieurs colonnes : département A→Z, puis salaire du plus haut au plus bas
ORDER BY departement ASC, salaire DESC
```

---

### 4. LIMIT — restreindre le nombre de résultats
```sql
-- Top 5
SELECT prenom, nom, salaire
FROM employees
ORDER BY salaire DESC
LIMIT 5;

-- Pagination (page 2 : lignes 6 à 10)
LIMIT 5 OFFSET 5;
```

---

## 🧠 Ordre logique d'exécution SQL

SQL ne s'exécute pas dans l'ordre où on l'écrit :

```
FROM   → d'où viennent les données
WHERE  → quelles lignes garder
SELECT → quelles colonnes afficher
ORDER BY → comment trier
LIMIT  → combien de lignes garder
```

Comprendre cet ordre explique pourquoi on ne peut pas utiliser un alias de `SELECT` dans `WHERE` — `WHERE` s'exécute avant que `SELECT` existe.

---

## 💡 Pour aller plus loin

- [ ] Ajouter `DISTINCT` pour lister les départements sans doublon
- [ ] Combiner `WHERE` avec `NOT IN`
- [ ] Tester `ORDER BY` sur une colonne calculée
- [ ] Explorer `WHERE date_embauche > '2021-01-01'`

---

## 🗓️ Prochains projets

| Jour | Sujet | Concepts |
|------|-------|----------|
| **Jour 2** | Jointures multi-tables | INNER JOIN, LEFT JOIN, FULL OUTER |
| **Jour 3** | Agrégations | GROUP BY, HAVING, COUNT, SUM, AVG |
| **Jour 4** | Sous-requêtes & CTE | WITH AS, subquery, EXISTS |
| **Jour 5** | Window Functions | ROW_NUMBER, RANK, LAG, LEAD |

---


---

⭐ **Si ce projet t'aide, mets une étoile !**
