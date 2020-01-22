USE tex_adlister_db;

DROP TABLE IF EXISTS ads;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS types_categories;
DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS types;



CREATE TABLE users
(
    id       INT UNSIGNED NOT NULL AUTO_INCREMENT,
    username VARCHAR(240) NOT NULL,
    email    VARCHAR(240) NOT NULL,
    password VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE types
(
    id   INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(50)  NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE categories
(
    id      INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name    VARCHAR(50)  NOT NULL,
    type_id INT UNSIGNED DEFAULT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (type_id) REFERENCES types (id)
);

CREATE TABLE ads
(
    id          INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id     INT UNSIGNED NOT NULL,
    title       VARCHAR(240) NOT NULL,
    description TEXT         NOT NULL,
    location    VARCHAR(50)  NOT NULL,
    type_id     INT UNSIGNED NOT NULL,
    category_id  INT UNSIGNED NOT NULL,
    date        DATE         NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users (id),
    FOREIGN KEY (type_id) REFERENCES types (id),
    FOREIGN KEY (category_id) REFERENCES categories (id)
);



INSERT INTO types (name)
VALUES ('Buy');
INSERT INTO types (name)
VALUES ('Sell');
INSERT INTO types (name)
VALUES ('Housing');
INSERT INTO types (name)
VALUES ('Jobs');
INSERT INTO categories (name, type_id)
VALUES ('Automotive', 1),
       ('Electronics', 1),
       ('Jewelry', 1),
       ('Furniture', 1),
       ('Appliances', 1),
       ('Tools', 1),
       ('Renting', 3),
       ('Real Estate', 3),
       ('Engineering', 4),
       ('Customer Service', 4),
       ('Sales', 4),
       ('Education', 4),
       ('Retail', 4);

