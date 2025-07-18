DROP DATABASE examen_mysql;
CREATE DATABASE examen_mysql;
USE examen_mysql;

CREATE TABLE IF NOT EXISTS pais (
    id_pais SMALLINT PRIMARY KEY,
    nombre VARCHAR(50),
    ultima_actualizacion TIMESTAMP
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS ciudad (
    id_ciudad SMALLINT PRIMARY KEY,
    nombre VARCHAR(50),
    id_pais SMALLINT,
    ultima_actualizacion TIMESTAMP,
    CONSTRAINT fk_id_pais_ciudad FOREIGN KEY (id_pais) REFERENCES pais(id_pais)
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS direccion (
    id_direccion SMALLINT PRIMARY KEY,
    direccion VARCHAR(50),
    direccion2 VARCHAR(50),
    distrito VARCHAR(20),
    id_ciudad SMALLINT,
    codigo_postal VARCHAR(10),
    telefono VARCHAR(20),
    ultima_actualizacion TIMESTAMP,
    CONSTRAINT fk_id_ciudad_direccion FOREIGN KEY (id_ciudad) REFERENCES ciudad(id_ciudad)
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS almacen (
    id_almacen TINYINT PRIMARY KEY,
    id_empleado_jefe TINYINT,
    id_direccion SMALLINT,
    ultima_actualizacion TIMESTAMP,
    CONSTRAINT fk_id_direccion_almacen FOREIGN KEY (id_direccion) REFERENCES direccion(id_direccion)
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS empleado (
    id_empleado TINYINT PRIMARY KEY,
    nombre VARCHAR(45),
    apellidos VARCHAR(45),
    id_direccion SMALLINT, 
    imagen blob,
    email VARCHAR(50),
    -- revisar lo del id almacen
    id_almacen TINYINT,
    activo TINYINT,
    username VARCHAR(16),
    password VARCHAR(40),
    ultima_actualizacion TIMESTAMP,
    CONSTRAINT fk_id_direccion_empleado FOREIGN KEY (id_direccion) REFERENCES direccion(id_direccion),
    CONSTRAINT fk_id_almacen_empleado FOREIGN KEY (id_almacen) REFERENCES almacen(id_almacen)
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS idioma (
    id_idioma TINYINT PRIMARY KEY,
    nombre CHAR(20),
    ultima_actualizacion TIMESTAMP
) ENGINE=INNODB;


CREATE TABLE IF NOT EXISTS pelicula (
    id_pelicula SMALLINT PRIMARY KEY,
    titulo VARCHAR(255),
    descripcion TEXT,
    anyo_lanzamiento YEAR,
    id_idioma TINYINT,
    id_idioma_original TINYINT,
    duracion_alquiler TINYINT,
    rental_rate DECIMAL(4,2),
    duracion SMALLINT,
    replacement_cost DECIMAL(5,2),
    clasificacion ENUM('G','PG','PG-13','R','NC-17'),
    caracteristicas_especiales SET('Trailers','Commentaries','Deleted Scenes','Behind the Scenes'),
    ultima_actualizacion TIMESTAMP,
    CONSTRAINT fk_id_idioma_pelicula FOREIGN KEY (id_idioma) REFERENCES idioma(id_idioma)
) ENGINE=INNODB;


CREATE TABLE IF NOT EXISTS actor (
    id_actor SMALLINT PRIMARY KEY,
    nombre VARCHAR(45),
    apellidos VARCHAR(45),
    ultima_actualizacion TIMESTAMP
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS pelicula_actor (
    id_actor SMALLINT,
    id_pelicula SMALLINT,
    PRIMARY KEY(id_actor, id_pelicula),
    ultima_actualizacion TIMESTAMP,
    CONSTRAINT fk_id_actor_pelicula_actor FOREIGN KEY (id_actor) REFERENCES actor(id_actor)
) ENGINE=INNODB;


CREATE TABLE IF NOT EXISTS categoria (
    id_categoria TINYINT PRIMARY KEY,
    nombre VARCHAR(25),
    ultima_actualizacion TIMESTAMP
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS pelicula_categoria (
    id_pelicula SMALLINT,
    id_categoria TINYINT,
    PRIMARY KEY(id_pelicula, id_categoria),
    ultima_actualizacion TIMESTAMP,
    CONSTRAINT fk_id_pelicula_pelicula_categoria FOREIGN KEY (id_pelicula) REFERENCES pelicula(id_pelicula),
    CONSTRAINT fk_id_categoria_pelicula_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria)
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS inventario (
    id_inventario MEDIUMINT PRIMARY KEY,
    id_pelicula SMALLINT,
    id_almacen TINYINT,
    ultima_actualizacion TIMESTAMP,
    CONSTRAINT fk_id_almacen_inventario FOREIGN KEY (id_pelicula) REFERENCES pelicula(id_pelicula),
    CONSTRAINT fk_id_pelicula_inventario FOREIGN KEY (id_almacen) REFERENCES almacen(id_almacen)
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS cliente (
    id_cliente SMALLINT PRIMARY KEY,
    id_almacen TINYINT,
    nombre VARCHAR(45),
    apellidos VARCHAR(45),
    email VARCHAR(50),
    id_direccion SMALLINT,
    activo TINYINT,
    fecha_creacion DATETIME,
    ultima_actualizacion TIMESTAMP,
    CONSTRAINT fk_id_almacen_cliente FOREIGN KEY (id_almacen) REFERENCES almacen(id_almacen),
    CONSTRAINT fk_id_direccion_cliente FOREIGN KEY (id_direccion) REFERENCES direccion(id_direccion)
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS alquiler (
    id_alquiler INT PRIMARY KEY,
    fecha_alquiler DATETIME,
    id_inventario MEDIUMINT,
    id_cliente SMALLINT,
    fecha_devolucion DATETIME,
    id_empleado TINYINT,
    ultima_actualizacion TIMESTAMP,
    CONSTRAINT fk_id_inventario_alquiler FOREIGN KEY (id_inventario) REFERENCES inventario(id_inventario),
    CONSTRAINT fk_id_cliente_alquiler FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    CONSTRAINT fk_id_empleado_alquiler FOREIGN KEY (id_empleado) REFERENCES empleado(id_empleado)
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS pago (
    id_pago SMALLINT,
    id_cliente SMALLINT,
    id_empleado TINYINT,
    id_alquiler INT,
    total DECIMAL(5,2),
    fecha_pago DATETIME,
    ultima_actualizacion TIMESTAMP,
    CONSTRAINT fk_id_cliente_pago FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    CONSTRAINT fk_id_empleado_pago FOREIGN KEY (id_empleado) REFERENCES empleado(id_empleado),
    CONSTRAINT fk_id_alquiler_pago FOREIGN KEY (id_alquiler) REFERENCES alquiler(id_alquiler)
) ENGINE=INNODB;