USE master;

CREATE SCHEMA cc;

CREATE TABLE cc.parcels_to_deliver
(
    barcode               INT           NOT NULL PRIMARY KEY,
    weight                DECIMAL(4, 2) NOT NULL,
    from_name             VARCHAR(100)  NOT NULL,
    from_address          VARCHAR(100)  NOT NULL,
    from_postal           INT           NOT NULL,
    from_city             VARCHAR(100)  NOT NULL,
    to_name               VARCHAR(100)  NOT NULL,
    to_address            VARCHAR(100)  NOT NULL,
    to_postal             INT           NOT NULL,
    to_city               VARCHAR(100)  NOT NULL,
    sender_phone_number   VARCHAR(20)   NOT NULL,
    receiver_phone_number VARCHAR(20)   NOT NULL
);

CREATE TABLE cc.delivered_parcels
(
    barcode      INT          NOT NULL PRIMARY KEY,
    from_name    VARCHAR(100) NOT NULL,
    from_address VARCHAR(100) NOT NULL,
    from_postal  INT          NOT NULL,
    from_city    VARCHAR(100) NOT NULL,
    to_name      VARCHAR(100) NOT NULL,
    to_address   VARCHAR(100) NOT NULL,
    to_postal    INT          NOT NULL,
    to_city      VARCHAR(100) NOT NULL,
);

-- Einfügen von Werten in die Tabelle cc.parcels_to_deliver
INSERT INTO cc.parcels_to_deliver (barcode, weight, from_name, from_address, from_postal, from_city, to_name, to_address, to_postal, to_city, sender_phone_number, receiver_phone_number)
VALUES
(1001, 2.50, 'Max Mustermann', 'Musterstraße 1', 12345, 'Musterstadt', 'Erika Musterfrau', 'Beispielweg 2', 54321, 'Beispielstadt', '01234-567890', '09876-543210'),
(1002, 1.75, 'John Doe', 'Baker Street 221B', 10001, 'London', 'Sherlock Holmes', 'Baker Street 221B', 10001, 'London', '+44 20 7946 0958', '+44 20 7946 0959'),
(1003, 3.00, 'Alice Smith', 'Queen Road 5', 75001, 'Paris', 'Bob Brown', 'Rue de Rivoli 10', 75001, 'Paris', '+33 1 70 18 99 00', '+33 1 70 18 99 01');

-- Einfügen von Werten in die Tabelle cc.delivered_parcels
INSERT INTO cc.delivered_parcels (barcode, from_name, from_address, from_postal, from_city, to_name, to_address, to_postal, to_city)
VALUES
(1001, 'Max Mustermann', 'Musterstrasse 1', 12345, 'Musterstadt', 'Erika Musterfrau', 'Beispielweg 2', 54321, 'Beispielstadt'),
(1002, 'John Doe', 'Baker Street 221B', 10001, 'London', 'Sherlock Holmes', 'Baker Street 221B', 10001, 'London'),
(1003, 'Alice Smith', 'Queen Road 5', 75001, 'Paris', 'Bob Brown', 'Rue de Rivoli 10', 75001, 'Paris');

SELECT * FROM cc.delivered_parcels;

SELECT * FROM cc.parcels_to_deliver;