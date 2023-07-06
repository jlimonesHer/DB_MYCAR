# DB_MYCAR
Relational database for a car rental company with some queries.

## CREACION DE TABLAS

### Crear tabla pais
```
CREATE TABLE pais (
id_pais CHAR(3) NOT NULL,
nombre_pais VARCHAR(50) NOT NULL,
PRIMARY KEY (id_pais),
UNIQUE INDEX nombre_pais_UNIQUE (nombre_pais ASC)
)
ENGINE = InnoDB; 
```
### Crear tabla clientes
```
CREATE TABLE clientes (
	id_cliente INT NOT NULL AUTO_INCREMENT,
    nombre_cliente VARCHAR(50) NOT NULL,
    apellido1 VARCHAR(50) NOT NULL,
    apellido2 VARCHAR(50) NOT NULL,
    doc_ide VARCHAR(12) NOT NULL,
    telefono VARCHAR (9),
    sexo VARCHAR (6),
    id_pais VARCHAR(50) NOT NULL,
    fecha_nacimiento DATE,
    PRIMARY KEY (id_cliente),
    UNIQUE INDEX doc_id_UNIQUE (nombre_cliente ASC),
    INDEX pais_cliente_FK(id_pais ASC),
    CONSTRAINT pais_cliente_FK FOREIGN KEY (id_pais)
    	REFERENCES pais (id_pais)
)
ENGINE=INNODB;
```

### Crear tabla reservas
```
CREATE TABLE reservas (
	id_reserva INT NOT NULL AUTO_INCREMENT,
    trayecto VARCHAR (80) NOT NULL,
    fecha_alquiler DATE NOT NULL,
    inicio_alquiler TIME NOT NULL,
    fin_alquiler TIME NOT NULL,
    id_vehiculo INT,
    id_cliente INT,
    PRIMARY KEY (id_reserva),
    INDEX id_vehiculo_FK (id_vehiculo ASC),
    CONSTRAINT id_vehiculo_FK FOREIGN KEY (id_vehiculo)
    	REFERENCES vehiculo (id_vehiculo),
    CONSTRAINT id_cliente_FK FOREIGN KEY (id_cliente)
    	REFERENCES cliente (id_cliente)
	ON DELETE SET NULL
	ON UPDATE CASCADE 

)
ENGINE=INNODB;
```

### Crear tabla marca
```
CREATE TABLE marca (
	id_marca INT NOT NULL AUTO_INCREMENT,
    nombre_marca VARCHAR (30),
    PRIMARY kEY (id_marca),
    UNIQUE INDEX nombre_marca_UNIQUE (nombre_marca ASC)
)
ENGINE = INNODB;
```

### Crear tabla categoria
```
CREATE TABLE categoria (
	id_categoria INT NOT NULL AUTO_INCREMENT,
    tipo VARCHAR (30),
    PRIMARY kEY (id_categoria),
    UNIQUE INDEX tipo_UNIQUE (tipo ASC)
)
ENGINE = INNODB;
```

### Crear tabla modelo
```
CREATE TABLE modelo (
	id_modelo INT NOT NULL AUTO_INCREMENT,
    modelo VARCHAR (20),
    id_marca INT NOT NULL,
    id_categoria INT NOT NULL,
    PRIMARY KEY (id_modelo),
    UNIQUE INDEX tmodelo_UNIQUE (modelo ASC),
    INDEX marca_modelo_FK (id_marca ASC),
    CONSTRAINT marca_modelo_FK FOREIGN KEY (id_marca)
    	REFERENCES marca (id_marca),
    INDEX categoria_modelo_FK (id_categoria ASC),
    CONSTRAINT categoria_modelo_FK FOREIGN KEY (id_categoria)
    	REFERENCES categoria (id_categoria)
)
ENGINE=INNODB;
```

### Crear tabla vehiculo
```
CREATE TABLE vehiculo(
	id_vehiculo INT NOT NULL AUTO_INCREMENT,
    matricula VARCHAR(7),
    id_modelo INT,
    itv YEAR,
    id_categoria INT NOT NULL,
    PRIMARY KEY (id_vehiculo),
    UNIQUE INDEX matricula_UNIQUE (matricula ASC),
    INDEX modelo_vehiculo_FK (id_modelo ASC),
    CONSTRAINT modelo_vehiculo_FK FOREIGN KEY (id_modelo)
    	REFERENCES modelo (id_modelo),
    INDEX categoria_vehiculo_FK (id_categoria ASC),
    CONSTRAINT categoria_vehiculo_FK FOREIGN KEY (id_categoria)
    	REFERENCES categoria (id_categoria)
)
ENGINE=INNODB;
```

## INSERCION DE DATOS

```
INSERT INTO marca
(nombre_marca) VALUES ('SEAT');
INSERT INTO marca
(nombre_marca) VALUES ('MERCEDES');
INSERT INTO marca
(nombre_marca) VALUES ('AUDI');
INSERT INTO marca
(nombre_marca) VALUES ('BMW');
INSERT INTO marca
(nombre_marca) VALUES ('FIAT');
INSERT INTO marca
(nombre_marca) VALUES ('HONDA');
INSERT INTO marca
(nombre_marca) VALUES ('IVECO');
```



```
INSERT INTO categoria
(tipo)VALUES('turismo');
INSERT INTO categoria
(tipo)VALUES('mixto');
INSERT INTO categoria
(tipo)VALUES('furgoneta');
INSERT INTO categoria
(tipo)VALUES('furgoneta camper');
INSERT INTO categoria
(tipo)VALUES('camion MMA 3500');
INSERT INTO categoria
(tipo)VALUES('motocicleta');
INSERT INTO categoria
(tipo)VALUES('autocvaravana');
```

```
INSERT INTO modelo
(modelo, id_marca, id_categoria) VALUES ('COMBO', '1', '2');
INSERT INTO modelo
(modelo, id_marca, id_categoria) VALUES ('LEON', '1', '1');
INSERT INTO modelo
(modelo, id_marca, id_categoria) VALUES ('SPRINTER', '2', '3');
INSERT INTO modelo
(modelo, id_marca, id_categoria) VALUES ('CLS500', '2', '1');
INSERT INTO modelo
(modelo, id_marca, id_categoria) VALUES ('A4', '3', '1');
INSERT INTO modelo
(modelo, id_marca, id_categoria) VALUES ('A5', '3', '1');
INSERT INTO modelo
(modelo, id_marca, id_categoria) VALUES ('A6', '3', '1');
INSERT INTO modelo
(modelo, id_marca, id_categoria) VALUES ('F 900 R', '4', '6');
INSERT INTO modelo
(modelo, id_marca, id_categoria) VALUES ('320 TDI', '4', '1');
INSERT INTO modelo
(modelo, id_marca, id_categoria) VALUES ('DUCATO', '5', '7');
INSERT INTO modelo
(modelo, id_marca, id_categoria) VALUES ('DUCATO COMBI', '5', '7');
INSERT INTO modelo
(modelo, id_marca, id_categoria) VALUES ('ODYSSEY', '6', '4');
INSERT INTO modelo
(modelo, id_marca, id_categoria) VALUES ('600R', '6', '6');
INSERT INTO modelo
(modelo, id_marca, id_categoria) VALUES ('DAILY', '7', '5');
INSERT INTO modelo
(modelo, id_marca, id_categoria) VALUES ('DAILY MMA 3500', '7', '5');
```

```
INSERT INTO vehiculo
(matricula, id_modelo, itv, id_categoria) VALUES ('0000BBB', '1', '2018', '2');
INSERT INTO vehiculo
(matricula, id_modelo, itv, id_categoria) VALUES ('1111CCC', '1', '2018', '2');
INSERT INTO vehiculo
(matricula, id_modelo, itv, id_categoria) VALUES ('2222DDD', '2', '2018', '1');
INSERT INTO vehiculo
(matricula, id_modelo, itv, id_categoria) VALUES ('3333FFF', '2', '2018', '1');
INSERT INTO vehiculo
(matricula, id_modelo, itv, id_categoria) VALUES ('4444GGG', '3', '2019', '3');
INSERT INTO vehiculo
(matricula, id_modelo, itv, id_categoria) VALUES ('5555HHH', '3', '2019', '3');
INSERT INTO vehiculo
(matricula, id_modelo, itv, id_categoria) VALUES ('6666JJJ', '4', '2019', '1');
INSERT INTO vehiculo
(matricula, id_modelo, itv, id_categoria) VALUES ('7777KKK', '4', '2020', '1');
INSERT INTO vehiculo
(matricula, id_modelo, itv, id_categoria) VALUES ('8888LLL', '5', '2010', '1');
INSERT INTO vehiculo
(matricula, id_modelo, itv, id_categoria) VALUES ('9999MMM', '5', '2020', '1');
INSERT INTO vehiculo
(matricula, id_modelo, itv, id_categoria) VALUES ('1010NNN', '6', '2020', '1');
INSERT INTO vehiculo
(matricula, id_modelo, itv, id_categoria) VALUES ('1011PPP', '6', '2020', '1');
INSERT INTO vehiculo
(matricula, id_modelo, itv, id_categoria) VALUES ('1212QQQ', '7', '2021', '1');
INSERT INTO vehiculo
(matricula, id_modelo, itv, id_categoria) VALUES ('1313RRR', '7', '2021', '1');
INSERT INTO vehiculo
(matricula, id_modelo, itv, id_categoria) VALUES ('1414SSS', '8', '2021', '6');
INSERT INTO vehiculo
(matricula, id_modelo, itv, id_categoria) VALUES ('1515TTT', '8', '2021', '6');
INSERT INTO vehiculo
(matricula, id_modelo, itv, id_categoria) VALUES ('1616VVV', '9', '2021', '1');
INSERT INTO vehiculo
(matricula, id_modelo, itv, id_categoria) VALUES ('1717WWW', '9', '2021', '1');
INSERT INTO vehiculo
(matricula, id_modelo, itv, id_categoria) VALUES ('1818XXX', '10', '2021', '7');
INSERT INTO vehiculo
(matricula, id_modelo, itv, id_categoria) VALUES ('1919YYY', '10', '2021', '7');
INSERT INTO vehiculo
(matricula, id_modelo, itv, id_categoria) VALUES ('2020ZZZ', '11', '2021', '7');
INSERT INTO vehiculo
(matricula, id_modelo, itv, id_categoria) VALUES ('2121BBB', '11', '2021', '7');
INSERT INTO vehiculo
(matricula, id_modelo, itv, id_categoria) VALUES ('2022CCC', '12', '2022', '4');
INSERT INTO vehiculo
(matricula, id_modelo, itv, id_categoria) VALUES ('2323DDD', '12', '2022', '4');
INSERT INTO vehiculo
(matricula, id_modelo, itv, id_categoria) VALUES ('2424FFF', '13', '2022', '6');
INSERT INTO vehiculo
(matricula, id_modelo, itv, id_categoria) VALUES ('2525GGG', '13', '2022', '6');
INSERT INTO vehiculo
(matricula, id_modelo, itv, id_categoria) VALUES ('2626HHH', '14', '2022', '5');
INSERT INTO vehiculo
(matricula, id_modelo, itv, id_categoria) VALUES ('2727LLL', '14', '2022', '5');
INSERT INTO vehiculo
(matricula, id_modelo, itv, id_categoria) VALUES ('2828MMM', '15', '2022', '5');
INSERT INTO vehiculo
(matricula, id_modelo, itv, id_categoria) VALUES ('2929NNN', '15', '2022', '5');
```
```
INSERT INTO clientes
(`nombre_cliente`, `apellido1`, `apellido2`, `doc_ide`, `telefono`, `sexo`, `id_pais`, `fecha_nacimiento`) 
VALUES ('Helena','Limones','Moyano','33333333L','123123123','mujer','ESP','1997-10-18');
INSERT INTO clientes
(`nombre_cliente`, `apellido1`, `apellido2`, `doc_ide`, `telefono`, `sexo`, `id_pais`, `fecha_nacimiento`) 
VALUES ('Angel','Hernandez','Moyano','44444444S','456123789','hombre','ESP','1990-06-15');
INSERT INTO clientes
(`nombre_cliente`, `apellido1`, `apellido2`, `doc_ide`, `telefono`, `sexo`, `id_pais`, `fecha_nacimiento`) 
VALUES ('shin','sho','hai','55555555M','666555444','hombre','CHI','1978-06-08');
INSERT INTO clientes
(`nombre_cliente`, `apellido1`, `apellido2`, `doc_ide`, `telefono`, `sexo`, `id_pais`, `fecha_nacimiento`) 
VALUES ('Andres','Gonzales','Fernandes','1245678945P','123456123','hombre','COL','2000-01-01');
INSERT INTO clientes
(`nombre_cliente`, `apellido1`, `apellido2`, `doc_ide`, `telefono`, `sexo`, `id_pais`, `fecha_nacimiento`) 
VALUES ('Julie','Martial','kounde','12345678945D','565412385','mujer','FRA','1995-04-15');
INSERT INTO clientes
(`nombre_cliente`, `apellido1`, `apellido2`, `doc_ide`, `telefono`, `sexo`, `id_pais`, `fecha_nacimiento`) 
VALUES ('Robert','Merkel','Odoncor','12541254125G','696969369','hombre','GER','1958-03-25');
INSERT INTO clientes
(`nombre_cliente`, `apellido1`, `apellido2`, `doc_ide`, `telefono`, `sexo`, `id_pais`, `fecha_nacimiento`) 
VALUES ('Inmaculada','Moyano','Marques','11111111C','654654654','mujer','ESP','1985-12-01');
INSERT INTO clientes
(`nombre_cliente`, `apellido1`, `apellido2`, `doc_ide`, `telefono`, `sexo`, `id_pais`, `fecha_nacimiento`) 
VALUES ('Juan','Limones','Diaz','22222222C','654654456','hombre','ESP','1962-03-18');
```

```
INSERT INTO `reservas`(`trayecto`, `fecha_alquiler`, `inicio_alquiler`, `fin_alquiler`, `id_vehiculo`, `id_cliente`) 
VALUES ('Sevilla/Huelva','2022-02-28','00:00:00','10:00:00','4','1');
INSERT INTO `reservas`(`trayecto`, `fecha_alquiler`, `inicio_alquiler`, `fin_alquiler`, `id_vehiculo`, `id_cliente`) 
VALUES ('Sevilla/Zaragoza','2022-03-02','09:00:00','22:00:00','8','6');
INSERT INTO `reservas`(`trayecto`, `fecha_alquiler`, `inicio_alquiler`, `fin_alquiler`, `id_vehiculo`, `id_cliente`) 
VALUES ('Cordoba/Cadiz','2022-04-15','10:00:00','13:00:00','8','3');
INSERT INTO `reservas`(`trayecto`, `fecha_alquiler`, `inicio_alquiler`, `fin_alquiler`, `id_vehiculo`, `id_cliente`) 
VALUES ('Valencia/Barcelona','2022-05-12','13:00:00','15:00:00','15','4');
INSERT INTO `reservas`(`trayecto`, `fecha_alquiler`, `inicio_alquiler`, `fin_alquiler`, `id_vehiculo`, `id_cliente`) 
VALUES ('Murcia/Almeria','2022-04-18','20:00:00','23:00:00','9','7');
INSERT INTO `reservas`(`trayecto`, `fecha_alquiler`, `inicio_alquiler`, `fin_alquiler`, `id_vehiculo`, `id_cliente`) 
VALUES ('Oviedo/Badajoz','2022-06-03','15:00:00','20:00:00','19','8');
INSERT INTO `reservas`(`trayecto`, `fecha_alquiler`, `inicio_alquiler`, `fin_alquiler`, `id_vehiculo`, `id_cliente`) 
VALUES ('Ciudadreal/Huesca','2022-08-15','07:00:00','10:00:00','25','5');
INSERT INTO `reservas`(`trayecto`, `fecha_alquiler`, `inicio_alquiler`, `fin_alquiler`, `id_vehiculo`, `id_cliente`) 
VALUES ('Malaga/Cadiz','2022-12-15','05:00:00','13:00:00','11','1');
INSERT INTO `reservas`(`trayecto`, `fecha_alquiler`, `inicio_alquiler`, `fin_alquiler`, `id_vehiculo`, `id_cliente`) 
VALUES ('Girona/Barcelona','2022-03-12','11:00:00','15:00:00','22','6');
```

SOLUCION DE CONSULTAS PROPUESTAS

1.1 Muestra la cantidad de vehículos que tenemos de cada categoría, mostrando el nombre de la categoría y al lado la cantidad
con el alias “Total_Vehículos”. (0.2 puntos)
```
SELECT 
c.tipo,
COUNT(v.id_modelo) AS Total_Vehiculos
FROM
vehiculo v,
categoria c
WHERE (c.id_categoria = v.id_categoria)
GROUP BY v.id_categoria
```



1.2 Muestra toda la información de los clientes mayores a 40 años.
(0.2 puntos)

```
SELECT 
*
FROM
clientes c
WHERE
(DATE_SUB(c.fecha_nacimiento,INTERVAL -40 YEAR)<CURDATE())
```

Muestra el nombre de los clientes que no tengan ninguna reserva realizada. (0.2 puntos)

Muestra todos los datos de los vehículos que se hayan reservado más de una vez. (0.2 puntos)


```
SELECT
c.nombre_cliente AS Clientes_sin_reserva
FROM
clientes c
WHERE  NOT EXISTS(
	SELECT r.id_cliente
    FROM reservas r
    WHERE c.id_cliente = r.id_cliente 
)
```



Muestra todos los datos de los vehículos que se hayan reservado más de una vez. (0.2 puntos)
```
SELECT v.* FROM vehiculo v WHERE v.id_vehiculo IN (
SELECT id_vehiculo FROM reservas r GROUP BY r.id_vehiculo HAVING COUNT(id_vehiculo)>1
)
```



Muestra la matrícula de los coches que hayan pasado la itv antes del año 2020. (0.2 puntos)
```
SELECT v.matricula FROM vehiculo v WHERE v.itv < 2020
```

Muestra la cantidad de clientes que hay de cada país ordenados alfabéticamente con el alias “Total Clientes” (0.25 puntos)
```
SELECT COUNT(c.id_pais) AS 'Total clientes',
c.id_pais
FROM clientes c GROUP BY c.id_pais 
ORDER BY c.id_pais ASC
```


Muestra el promedio de edades de los clientes, el cliente más
joven y el cliente más mayor de cada país (0.25 puntos)
```
SELECT 
p.nombre_pais,
ROUND(AVG(DATEDIFF(CURDATE(),(c.fecha_nacimiento))/365)) AS 'Media de edad',
MIN(c.fecha_nacimiento) AS 'cliente mayor',
MAX(c.fecha_nacimiento) AS 'cliente mas joven'
FROM clientes c, pais p
WHERE c.id_pais=p.id_pais
GROUP BY c.id_pais 
```


Muestra el nombre de los clientes y la cantidad de vehículos
que ha reservado cada uno, ordenado alfabéticamente (0.25
puntos)
```
SELECT
c.nombre_cliente AS 'Nombre',
COUNT(r.id_cliente) AS 'Numero de reservas'
FROM
clientes c, reservas r
WHERE r.id_cliente = c.id_cliente
GROUP BY r.id_cliente
ORDER BY c.nombre_cliente ASC
```


Muestra el nombre de las marcas y la cantidad de vehículos
que pertenecen a cada una. (0.25 puntos)
```
SELECT 
mr.nombre_marca AS 'Marca',
COUNT(v.id_modelo) AS 'Numero de vehiculos'
FROM modelo m, vehiculo v, marca mr
WHERE (m.id_modelo = v.id_modelo) AND (mr.id_marca = m.id_marca)
GROUP BY mr.id_marca;
```



Muestra todos los datos de los clientes españoles que hayan
reservado un vehículo más de una vez. (0.50 puntos).
```
SELECT 
c.*,
COUNT(r.id_cliente) AS 'numero de reservas'
FROM clientes c
 LEFT JOIN reservas r on r.id_cliente = c.id_cliente
WHERE (c.id_pais='ESP') AND (r.id_cliente=c.id_cliente)
GROUP by r.id_cliente
HAVING COUNT(r.id_cliente)>1
```



Muestra todos los datos de los vehículos de la marca “Renault” Cambio renault por audi
que hayan sido reservados menos de tres veces (0.50 puntos)
```
SELECT 
v.*,
COUNT(v.id_vehiculo) AS 'numero de veces alquilado'
FROM  reservas r
 LEFT JOIN vehiculo v on r.id_vehiculo = v.id_vehiculo
WHERE (r.id_vehiculo=v.id_vehiculo)AND(id_modelo IN(5,6,7))
GROUP by r.id_vehiculo
HAVING COUNT(r.id_vehiculo)<3;
```


o Muestra la matrícula y año de itv de los vehículos que pertenezcan a la categoría “coche” y que no se hayan reservado (turismo)
nunca. (050 puntos)
```
SELECT 
v.id_vehiculo,
v.id_categoria,
v.matricula,
v.itv
FROM vehiculo v
WHERE v.id_vehiculo NOT IN(
	SELECT
    r.id_vehiculo
    FROM
    reservas r
) AND v.id_categoria=1
```


Muestra el nombre de los clientes españoles cuya edad sea
superior a la media. (0.50 puntos)
```
SELECT 
c.nombre_cliente
FROM clientes c
WHERE (DATEDIFF(CURDATE(),(c.fecha_nacimiento))/365) > (
	SELECT
    ROUND(AVG(DATEDIFF(CURDATE(),(c.fecha_nacimiento))/365))
    FROM clientes c
) AND

(c.id_pais= 'ESP')  
```

Modifica el campo de sexo para que aparezca “H” de hombre
dónde actualmente aparecía la palabra que habías designado
para los hombres. (0.1 punto)
```
UPDATE clientes c SET c.sexo = 'H' WHERE c.sexo = 'hombre';
```

Modifica el país para que aparezca “Spain” dónde actualmente
aparece “España” (0.1 punto)
```
UPDATE pais p SET p.nombre_pais = 'Spain' WHERE p.nombre_pais = 'España';
```

Asigna la palabra “corto” a los trayectos para los que el tiempo
de reserva haya sido inferior a 2 horas. Asigna la palabra “medio” a los trayectos para los que el tiempo de reserva del
vehículo haya sido de más de 3 horas e inferior a 5 horas y
asigna la palabra “largo” para todos los trayectos en los que el
tiempo de reserva del vehículo haya sido superior a las 5 horas.
(0.2 puntos)
```
UPDATE reservas r SET r.trayecto = 'largo' WHERE (SUBTIME( r.fin_alquiler,r.inicio_alquiler)>(MAKETIME(05,00,00)));
UPDATE reservas r SET r.trayecto = 'medio' WHERE (SUBTIME( r.fin_alquiler,r.inicio_alquiler)<(MAKETIME(05,00,00))) AND 
(SUBTIME( r.fin_alquiler,r.inicio_alquiler)>(MAKETIME(03,00,00)));
UPDATE reservas r SET r.trayecto = 'corto' WHERE (SUBTIME( r.fin_alquiler,r.inicio_alquiler)<(MAKETIME(02,00,00)));
```


Crea una vista que permita recuperar toda la información de
las reservas realizadas por clientes no españoles (0.2 puntos)
```
CREATE OR REPLACE VIEW reservas_extranjeras_view AS SELECT r.* FROM reservas r WHERE r.id_cliente IN( SELECT c.id_cliente FROM clientes c WHERE c.id_pais!='ESP' );
```

Realiza una copia de seguridad de la base de datos (0.1 punto)

Elimina la tabla de categorías (0.1 punto)
```
ALTER TABLE vehiculo
DROP FOREIGN KEY categoria_vehiculo_FK;
ALTER TABLE modelo
DROP FOREIGN KEY categoria_modelo_FK;
DROP TABLE categoria;
```
Elimina la base de datos (0.1 punto)
```
DROP DATABASE alquiler_vehiculos;
```
