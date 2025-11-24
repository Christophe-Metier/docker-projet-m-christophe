CREATE DATABASE IF NOT EXISTS bandnames
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

USE bandnames;

CREATE TABLE IF NOT EXISTS adjectives (
    id INT AUTO_INCREMENT PRIMARY KEY,
    label VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS nouns (
    id INT AUTO_INCREMENT PRIMARY KEY,
    label VARCHAR(50) NOT NULL
);

INSERT INTO adjectives (label) VALUES
('Neon'),
('Silver'),
('Hidden'),
('Furious'),
('Frozen'),
('Dangerous'),
('Scarlet'),
('Lost'),
('Violet'),
('Thunderous');

INSERT INTO nouns (label) VALUES
('Rebels'),
('Serpents'),
('Machines'),
('Legends'),
('Angels'),
('Horizons'),
('Nomads'),
('Shadows'),
('Miracles'),
('Voyagers');
