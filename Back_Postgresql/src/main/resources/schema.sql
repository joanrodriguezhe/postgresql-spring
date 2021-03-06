DROP TABLE IF EXISTS usuario;
DROP TABLE IF EXISTS ciudad;
DROP TABLE IF EXISTS estado;
DROP TABLE IF EXISTS pais;

CREATE TABLE pais(id SERIAL PRIMARY KEY, nombre VARCHAR);
CREATE TABLE estado(id SERIAL PRIMARY KEY, paisId INT, nombre VARCHAR, CONSTRAINT fk_pais FOREIGN KEY(paisId) REFERENCES pais(id));
CREATE TABLE ciudad(id SERIAL PRIMARY KEY, estadoId INT, nombre VARCHAR, CONSTRAINT fk_estado FOREIGN KEY(estadoId) REFERENCES estado(id));
CREATE TABLE usuario(id SERIAL PRIMARY KEY, ciudadId INT, nombre VARCHAR, edad INT, CONSTRAINT fk_ciudad FOREIGN KEY(ciudadId) REFERENCES ciudad(id));