CREATE TABLE typology
(id SERIAL  PRIMARY KEY  NOT NULL ,
description varchar(50) );

CREATE TABLE amenity
(id SERIAL  PRIMARY KEY  NOT NULL ,
description varchar(50) );

CREATE TABLE city
(id SERIAL  PRIMARY KEY  NOT NULL ,
description varchar(50) );

CREATE TABLE realestate_type
(id SERIAL  PRIMARY KEY  NOT NULL ,
description varchar(50) );

CREATE TABLE agent (
    id SERIAL PRIMARY KEY,
    name VARCHAR(150),
    cellphone VARCHAR(13),
    email VARCHAR(150) UNIQUE
);

CREATE TABLE client (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE,
    password VARCHAR(150) NOT NULL
);

CREATE TABLE visit_request (
    id SERIAL PRIMARY KEY,
    name VARCHAR(150),
    email VARCHAR(150) NOT NULL,
    fk_realestate_id INT
);

CREATE TABLE realestate (
	id SERIAL primary key,
	title VARCHAR(100) NOT NULL,
	adress VARCHAR(200) NOT NULL,
	zip_code VARCHAR(8) NOT NULL,
	description VARCHAR(200),
	build_date DATE NOT NULL,
	price DECIMAL(8,2) NOT NULL,
	square_meter INT NOT NULL,
	energy_class CHAR,
	fk_client_id INT,
	fk_agent_id INT,
	fk_realestate_type_id INT,
	fk_city_id INT,
	fk_typology_id INT
);

CREATE TABLE realestate_has_amenity (
    PRIMARY KEY (fk_realestate_id, fk_amenity_id),
    fk_realestate_id INT,
    fk_amenity_id INT 
);

ALTER TABLE realestate_has_amenity
	ADD CONSTRAINT fk_realestate_id FOREIGN KEY (fk_realestate_id) REFERENCES realestate(id),
	ADD CONSTRAINT fk_amenity_id FOREIGN KEY (fk_amenity_id) REFERENCES amenity(id);

ALTER TABLE realestate
ADD CONSTRAINT fk_client_id FOREIGN KEY (fk_client_id) REFERENCES client(id),
ADD CONSTRAINT fk_agent_id FOREIGN KEY (fk_agent_id) REFERENCES agent(id),
ADD CONSTRAINT fk_realestate_type_id FOREIGN KEY (fk_realestate_type_id) REFERENCES realestate_type(id),
ADD CONSTRAINT fk_city_id FOREIGN KEY (fk_city_id) REFERENCES city(id),
ADD CONSTRAINT fk_typology_id FOREIGN KEY (fk_typology_id) REFERENCES typology(id);

INSERT INTO realestate_type (description) VALUES
	('Garage'),
	('Bedroom'),
	('House'),
	('Apartment'),
	('Studio');

INSERT INTO amenity (description) VALUES
	('Laundry'),
	('Balcony'),
	('Pool'),
	('Terrace'),
	('Storage');

INSERT INTO typology (description) VALUES
	('T0'),
	('T1'),
	('T2'),
	('T3'),
	('T4'),
	('T5');

INSERT INTO city (description) VALUES
	('Odivelas'),
	('Seixal'),
	('Gondomar'),
	('Terraço'),
	('Valongo'),
	('Vila Nova de Gaia'),
	('Aveiro'),
	('Braga'),
	('Coimbra'),
	('Faro'),
	('Funchal'),
	('Guimarães'),
	('Ponta Delgada'),
	('Póvoa de Varzim'),
	('Setúbal'),
	('Sintra'),
	('Viana do Castelo'),
	('Vila Franca de Xira'),
	('Viseu');