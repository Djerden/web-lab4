CREATE TABLE Owner (
    login VARCHAR NOT NULL,
    password VARCHAR NOT NULL,
    PRIMARY KEY (login)
);

CREATE TABLE Coordinates (
    coordinates_id SERIAL PRIMARY KEY,
    x double precision,
    y double precision,
    r double precision
);

CREATE TABLE Attempt (
    id SERIAL PRIMARY KEY,
    do_fit_area BOOLEAN ,
    coordinates BIGINT,
    owner_login VARCHAR,
    FOREIGN KEY (coordinates) REFERENCES coordinates(coordinates_id),
    FOREIGN KEY (owner_login) REFERENCES Owner(login)
);
