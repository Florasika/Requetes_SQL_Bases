-- ============================================================
--  JOUR 1 / 10 DAYS OF SQL — SELECT, WHERE, ORDER BY, LIMIT
-- ============================================================

-- ── 1. SELECT * : toutes les colonnes ───────────────────────
SELECT * FROM employees;


-- ── 2. SELECT colonnes spécifiques ──────────────────────────
SELECT prenom, nom, departement, salaire
FROM employees;


-- ── 3. WHERE : filtrer avec un opérateur de comparaison ─────
-- Employés du département IT
SELECT prenom, nom, poste, salaire
FROM employees
WHERE departement = 'IT';


-- ── 4. WHERE avec opérateur numérique ───────────────────────
-- Employés gagnant plus de 50 000€
SELECT prenom, nom, salaire
FROM employees
WHERE salaire > 50000;


-- ── 5. WHERE avec AND : plusieurs conditions ────────────────
-- Développeurs basés à Paris
SELECT prenom, nom, poste, ville
FROM employees
WHERE departement = 'IT' AND ville = 'Paris';


-- ── 6. WHERE avec OR ─────────────────────────────────────────
-- Employés du Marketing OU des RH
SELECT prenom, nom, departement
FROM employees
WHERE departement = 'Marketing' OR departement = 'RH';


-- ── 7. WHERE avec IN : équivalent de plusieurs OR ───────────
SELECT prenom, nom, departement
FROM employees
WHERE departement IN ('Marketing', 'RH', 'Finance');


-- ── 8. WHERE avec BETWEEN : intervalle ──────────────────────
-- Salaires entre 40 000€ et 50 000€
SELECT prenom, nom, salaire
FROM employees
WHERE salaire BETWEEN 40000 AND 50000;


-- ── 9. WHERE avec LIKE : recherche partielle ────────────────
-- Emails se terminant par corp.fr (tous, ici exemple générique)
SELECT prenom, nom, email
FROM employees
WHERE email LIKE '%corp.fr';

-- Prénoms commençant par "L"
SELECT prenom, nom
FROM employees
WHERE prenom LIKE 'L%';


-- ── 10. ORDER BY : trier les résultats ──────────────────────
-- Tri par salaire croissant (par défaut = ASC)
SELECT prenom, nom, salaire
FROM employees
ORDER BY salaire ASC;

-- Tri par salaire décroissant
SELECT prenom, nom, salaire
FROM employees
ORDER BY salaire DESC;


-- ── 11. ORDER BY sur plusieurs colonnes ─────────────────────
-- Tri par département, puis par salaire décroissant dans chaque département
SELECT departement, prenom, nom, salaire
FROM employees
ORDER BY departement ASC, salaire DESC;


-- ── 12. LIMIT : limiter le nombre de résultats ──────────────
-- Les 5 salaires les plus élevés
SELECT prenom, nom, departement, salaire
FROM employees
ORDER BY salaire DESC
LIMIT 5;


-- ── 13. LIMIT + OFFSET : pagination ─────────────────────────
-- Page 2 : lignes 6 à 10 (offset = 5, limit = 5)
SELECT prenom, nom, salaire
FROM employees
ORDER BY salaire DESC
LIMIT 5 OFFSET 5;


-- ── 14. REQUÊTE COMPLÈTE — combinant tout ───────────────────
-- Les 3 employés les mieux payés du département IT ou Ventes,
-- embauchés avant 2022, triés par salaire décroissant
SELECT prenom, nom, departement, poste, salaire, date_embauche
FROM employees
WHERE departement IN ('IT', 'Ventes')
  AND date_embauche < '2022-01-01'
  AND salaire > 40000
ORDER BY salaire DESC
LIMIT 3;
