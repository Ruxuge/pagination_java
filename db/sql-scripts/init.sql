DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS addons;

CREATE TABLE cars (
    id              INT AUTO_INCREMENT NOT NULL,
    production_year VARCHAR(4),
    model           VARCHAR(255),
    manufacturer    VARCHAR(255),
    PRIMARY KEY     (id)
);

CREATE TABLE addons (
    id              INT AUTO_INCREMENT NOT NULL,
    name            VARCHAR(255) NOT NULL,
    price           DECIMAL(9,2) NOT NULL,
    car_id          INT NOT NULL,
    PRIMARY KEY     (id),
    FOREIGN KEY (car_id) REFERENCES cars(id)
);

INSERT INTO cars(production_year, model, manufacturer) VALUES ("1989", "126p", "Fiat");
INSERT INTO cars(production_year, model, manufacturer) VALUES ("2004", "Fusion", "Ford");
INSERT INTO cars(production_year, model, manufacturer) VALUES ("2018", "Focus", "Ford");
INSERT INTO cars(production_year, model, manufacturer) VALUES ("1974", "Mustang", "Ford");
INSERT INTO cars(production_year, model, manufacturer) VALUES ("2016", "XC60", "Volvo");
INSERT INTO cars(production_year, model, manufacturer) VALUES ("2017", "XC90", "Volvo");
INSERT INTO cars(production_year, model, manufacturer) VALUES ("2018", "S60", "Volvo");
INSERT INTO cars(production_year, model, manufacturer) VALUES ("2019", "S90", "Volvo");
INSERT INTO cars(production_year, model, manufacturer) VALUES ("2001", "A4", "Audi");
INSERT INTO cars(production_year, model, manufacturer) VALUES ("2003", "A3", "Audi");
INSERT INTO cars(production_year, model, manufacturer) VALUES ("2005", "Q7", "Audi");
INSERT INTO cars(production_year, model, manufacturer) VALUES ("2008", "Q5", "Audi");

INSERT INTO addons (name, car_id, price) VALUES ("AC" , 2, 0.0);
INSERT INTO addons (name, car_id, price) VALUES ("AC" , 3, 0.0);
INSERT INTO addons (name, car_id, price) VALUES ("AC" , 5, 0.0);
INSERT INTO addons (name, car_id, price) VALUES ("AC" , 6, 0.0);
INSERT INTO addons (name, car_id, price) VALUES ("AC" , 7, 0.0);
INSERT INTO addons (name, car_id, price) VALUES ("AC" , 8, 0.0);
INSERT INTO addons (name, car_id, price) VALUES ("AC" , 9, 0.0);
INSERT INTO addons (name, car_id, price) VALUES ("AC" , 10, 0.0);
INSERT INTO addons (name, car_id, price) VALUES ("AC" , 11, 0.0);
INSERT INTO addons (name, car_id, price) VALUES ("AC" , 12, 0.0);
INSERT INTO addons (name, car_id, price) VALUES ("Radio", 1, 0.0);
INSERT INTO addons (name, car_id, price) VALUES ("Radio", 2, 0.0);
INSERT INTO addons (name, car_id, price) VALUES ("Radio", 3, 0.0);
INSERT INTO addons (name, car_id, price) VALUES ("Radio", 4, 0.0);
INSERT INTO addons (name, car_id, price) VALUES ("Radio", 5, 0.0);
INSERT INTO addons (name, car_id, price) VALUES ("Radio", 6, 0.0);
INSERT INTO addons (name, car_id, price) VALUES ("Radio", 7, 0.0);
INSERT INTO addons (name, car_id, price) VALUES ("Radio", 8, 0.0);
INSERT INTO addons (name, car_id, price) VALUES ("Radio", 9, 0.0);
INSERT INTO addons (name, car_id, price) VALUES ("Radio", 10, 0.0);
INSERT INTO addons (name, car_id, price) VALUES ("Radio", 11, 0.0);
INSERT INTO addons (name, car_id, price) VALUES ("Radio", 12, 0.0);
INSERT INTO addons (name, car_id, price) VALUES ("Bluetooth", 1, 100.0);
INSERT INTO addons (name, car_id, price) VALUES ("Tinted Glass", 5, 1000.0);
INSERT INTO addons (name, car_id, price) VALUES ("Tinted Glass", 6, 2000.0);
INSERT INTO addons (name, car_id, price) VALUES ("Tinted Glass", 7, 3000.0);
INSERT INTO addons (name, car_id, price) VALUES ("Tinted Glass", 8, 4000.0);
INSERT INTO addons (name, car_id, price) VALUES ("Tinted Glass", 9 , 1500.0);
INSERT INTO addons (name, car_id, price) VALUES ("Chrome Wheels", 10, 12000.0);
INSERT INTO addons (name, car_id, price) VALUES ("Chrome Wheels", 11, 12000.0);