-- ============================================================
--  JOUR 1 / 10 DAYS OF SQL — Setup de la base de données
--  Table : employees (table principale utilisée toute la série)
-- ============================================================

DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
    id  INT PRIMARY KEY AUTO_INCREMENT,
    prenom          TEXT NOT NULL,
    nom             TEXT NOT NULL,
    departement     TEXT NOT NULL,
    poste           TEXT NOT NULL,
    salaire         INTEGER NOT NULL,
    date_embauche   DATE NOT NULL,
    ville           TEXT NOT NULL,
    email           TEXT
);

INSERT INTO employees (id, prenom, nom, departement, poste, salaire, date_embauche, ville, email) VALUES
(1,  'Alice',   'Martin',   'Ventes',       'Manager Ventes',     58000, '2019-03-12', 'Paris',     'alice.martin@corp.fr'),
(2,  'Karim',   'Benali',   'Ventes',       'Commercial',         42000, '2021-06-01', 'Marseille', 'karim.benali@corp.fr'),
(3,  'Lucie',   'Dubois',   'Marketing',    'Chargée Marketing',  39000, '2022-01-15', 'Lyon',      'lucie.dubois@corp.fr'),
(4,  'Thomas',  'Roux',     'IT',           'Développeur',        46000, '2020-09-23', 'Paris',     'thomas.roux@corp.fr'),
(5,  'Nadia',   'Khelifi',  'Ventes',       'Commerciale',        43500, '2021-11-08', 'Toulouse',  'nadia.khelifi@corp.fr'),
(6,  'Julien',  'Petit',    'IT',           'Lead Développeur',   62000, '2018-02-14', 'Paris',     'julien.petit@corp.fr'),
(7,  'Sophie',  'Moreau',   'RH',           'Responsable RH',     55000, '2017-05-19', 'Lyon',      'sophie.moreau@corp.fr'),
(8,  'Pierre',  'Lambert',  'Finance',      'Analyste Financier', 48000, '2020-04-02', 'Bordeaux',  'pierre.lambert@corp.fr'),
(9,  'Emma',    'Garcia',   'Marketing',    'Directrice Marketing',67000, '2016-08-30', 'Paris',    'emma.garcia@corp.fr'),
(10, 'Maxime',  'David',    'IT',           'Développeur',        44000, '2022-03-21', 'Lyon',      'maxime.david@corp.fr'),
(11, 'Chloé',   'Bertrand', 'Ventes',       'Commerciale',        41000, '2023-01-10', 'Marseille', 'chloe.bertrand@corp.fr'),
(12, 'Hugo',    'Fontaine', 'Finance',      'Directeur Financier',75000, '2015-11-03', 'Paris',     'hugo.fontaine@corp.fr'),
(13, 'Léa',     'Girard',   'RH',           'Chargée RH',         38000, '2022-07-18', 'Toulouse',  'lea.girard@corp.fr'),
(14, 'Antoine', 'Mercier',  'IT',           'Développeur Junior', 36000, '2023-09-05', 'Paris',     'antoine.mercier@corp.fr'),
(15, 'Camille', 'Lefebvre', 'Marketing',    'Chargée Marketing',  40000, '2021-04-27', 'Bordeaux',  'camille.lefebvre@corp.fr'),
(16, 'Yanis',   'Robert',   'Ventes',       'Commercial',         42500, '2020-12-14', 'Lyon',      'yanis.robert@corp.fr'),
(17, 'Manon',   'Simon',    'Finance',      'Analyste Financier', 47000, '2021-08-09', 'Paris',     'manon.simon@corp.fr'),
(18, 'Lucas',   'Laurent',  'IT',           'Développeur',        45000, '2019-10-22', 'Toulouse',  'lucas.laurent@corp.fr'),
(19, 'Inès',    'Michel',   'RH',           'Chargée RH',         37500, '2023-02-13', 'Marseille', 'ines.michel@corp.fr'),
(20, 'Nathan',  'Leroy',    'Ventes',       'Manager Ventes',     59000, '2018-06-25', 'Paris',     'nathan.leroy@corp.fr');
