DROP SCHEMA IF EXISTS public CASCADE;

CREATE SCHEMA public;
CREATE TABLE consemergencialeve(
	idConsulta INT NOT NULL UNIQUE,
	curpCliente CHAR(18) NOT NULL,
	nomMascota VARCHAR(50) NOT NULL CHECK(nomMascota <> ''),
	curpVeterinario CHAR(18) NOT NULL,
	idEstetica INT NOT NULL,
	precioEmergencia INT NOT NULL,
	procedimiento CHAR(100) CHECK(procedimiento <> '')
);

COMMENT ON TABLE consemergencialeve IS 'Tabla que contiene informacion sobre las consultas de emergencia leve';
COMMENT ON COLUMN consemergencialeve.idConsulta IS 'El id que identifica a la consulta';
COMMENT ON COLUMN consemergencialeve.curpCliente IS 'La CURP del cliente';
COMMENT ON COLUMN consemergencialeve.nomMascota IS 'El nombre de la mascota que entro a consulta';
COMMENT ON COLUMN consemergencialeve.curpVeterinario IS 'La CURP del veterinario que atendio a la mascota';
COMMENT ON COLUMN consemergencialeve.idEstetica IS 'El id con el que se identifica la estetica';
COMMENT ON COLUMN consemergencialeve.precioEmergencia IS 'El precio por la consulta';
COMMENT ON COLUMN consemergencialeve.procedimiento IS 'El procedimiento llevado a cabo por el veterinario';

CREATE TABLE consemergenciaconsiderable(
	idConsulta INT NOT NULL UNIQUE,
	curpCliente CHAR(18) NOT NULL,
	nomMascota VARCHAR(50) NOT NULL CHECK(nomMascota <> ''),
	curpVeterinario CHAR(18) NOT NULL,
	idEstetica INT NOT NULL,
	precioEmergencia INT NOT NULL,
	procedimiento CHAR(100) CHECK(procedimiento <> '')
);

COMMENT ON TABLE consemergenciaconsiderable IS 'Tabla que contiene informacion sobre las consultas de emergencia considerable';
COMMENT ON COLUMN consemergenciaconsiderable.idConsulta IS 'El id que identifica a la consulta';
COMMENT ON COLUMN consemergenciaconsiderable.curpCliente IS 'La CURP del cliente';
COMMENT ON COLUMN consemergenciaconsiderable.nomMascota IS 'El nombre de la mascota que entro a consulta';
COMMENT ON COLUMN consemergenciaconsiderable.curpVeterinario IS 'La CURP del veterinario que atendio a la mascota';
COMMENT ON COLUMN consemergenciaconsiderable.idEstetica IS 'El id con el que se identifica la estetica';
COMMENT ON COLUMN consemergenciaconsiderable.precioEmergencia IS 'El precio por la consulta';
COMMENT ON COLUMN consemergenciaconsiderable.procedimiento IS 'El procedimiento llevado a cabo por el veterinario';

CREATE TABLE consemergenciagrave(
	idConsulta INT NOT NULL UNIQUE,
	curpCliente CHAR(18) NOT NULL,
	nomMascota VARCHAR(50) NOT NULL CHECK(nomMascota <> ''),
	curpVeterinario CHAR(18) NOT NULL,
	idEstetica INT NOT NULL,
	precioEmergencia INT NOT NULL,
	procedimiento CHAR(100) CHECK(procedimiento <> '')
);

COMMENT ON TABLE consemergenciagrave IS 'Tabla que contiene informacion sobre las consultas de emergencia grave';
COMMENT ON COLUMN consemergenciagrave.idConsulta IS 'El id que identifica a la consulta';
COMMENT ON COLUMN consemergenciagrave.curpCliente IS 'La CURP del cliente';
COMMENT ON COLUMN consemergenciagrave.nomMascota IS 'El nombre de la mascota que entro a consulta';
COMMENT ON COLUMN consemergenciagrave.curpVeterinario IS 'La CURP del veterinario que atendio a la mascota';
COMMENT ON COLUMN consemergenciagrave.idEstetica IS 'El id con el que se identifica la estetica';
COMMENT ON COLUMN consemergenciagrave.precioEmergencia IS 'El precio por la consulta';
COMMENT ON COLUMN consemergenciagrave.procedimiento IS 'El procedimiento llevado a cabo por el veterinario';

CREATE TABLE consnormal(
	idConsulta INT NOT NULL UNIQUE,
	curpCliente CHAR(18) NOT NULL,
	nomMascota VARCHAR(50) NOT NULL CHECK(nomMascota <> ''),
	curpVeterinario CHAR(18) NOT NULL,
	idEstetica INT NOT NULL,
	precioNormal INT NOT NULL,
	estadoSalud VARCHAR(20) CHECK(estadoSalud <> ''),
	motivo VARCHAR(50) CHECK(motivo <> ''),
	fecha DATE NOT NULL
);

COMMENT ON TABLE consnormal IS 'Tabla que contiene informacion sobre las consultas de emergencia grave';
COMMENT ON COLUMN consnormal.idConsulta IS 'El id que identifica a la consulta';
COMMENT ON COLUMN consnormal.curpCliente IS 'La CURP del cliente';
COMMENT ON COLUMN consnormal.nomMascota IS 'El nombre de la mascota que entro a consulta';
COMMENT ON COLUMN consnormal.curpVeterinario IS 'La CURP del veterinario que atendio a la mascota';
COMMENT ON COLUMN consnormal.idEstetica IS 'El id con el que se identifica la estetica';
COMMENT ON COLUMN consnormal.precioNormal IS 'El precio por la consulta';
COMMENT ON COLUMN consnormal.estadoSalud IS 'El estado de salud de la mascota';
COMMENT ON COLUMN consnormal.motivo IS 'El motivo de la consulta';
COMMENT ON COLUMN consnormal.fecha IS 'La fecha en la que se realizo la consulta';

CREATE TABLE medicamentos(
	idConsulta INT NOT NULL,
	medicamentos VARCHAR(50) NOT NULL
);

COMMENT ON TABLE medicamentos IS 'Tabla que contiene informacion sobre los medicamentos';
COMMENT ON COLUMN medicamentos.idConsulta IS 'El id que identifica a la consulta';
COMMENT ON COLUMN medicamentos.medicamentos IS 'Los medicamentos de la mascota';

CREATE TABLE sintomaleve (
	idConsulta INT NOT NULL UNIQUE,
	sintoma VARCHAR (50)
);

COMMENT ON TABLE sintomaleve IS 'Tabla que contiene informacion sobre los medicamentos';
COMMENT ON COLUMN sintomaleve.idConsulta IS 'El id que identifica a la consulta';
COMMENT ON COLUMN sintomaleve.sintoma IS 'Los sintomas de la mascota en consulta emergencia leve';

CREATE TABLE sintomaconsiderable (
	idConsulta INT NOT NULL UNIQUE,
	sintoma VARCHAR (50)
);

COMMENT ON TABLE sintomaconsiderable IS 'Tabla que contiene informacion sobre los medicamentos';
COMMENT ON COLUMN sintomaconsiderable.idConsulta IS 'El id que identifica a la consulta';
COMMENT ON COLUMN sintomaconsiderable.sintoma IS 'Los sintomas de la mascota en consulta emergencia considerable';

CREATE TABLE sintomagrave (
	idConsulta INT NOT NULL UNIQUE,
	sintoma VARCHAR (50)
);

COMMENT ON TABLE sintomagrave IS 'Tabla que contiene informacion sobre los medicamentos';
COMMENT ON COLUMN sintomagrave.idConsulta IS 'El id que identifica a la consulta';
COMMENT ON COLUMN sintomagrave.sintoma IS 'Los sintomas de la mascota en consulta emergencia leve';

CREATE TABLE generarconsemergencialeve(
	idConsulta INT NOT NULL,
	idRecibo INT NOT NULL UNIQUE
);

COMMENT ON TABLE generarconsecuencialeve IS 'Tabla que contiene informacion sobre los medicamentos';
COMMENT ON COLUMN generarconsecuencialeve.idConsulta IS 'El id que identifica a la consulta';
COMMENT ON COLUMN generarconsecuencialeve.idRecibo IS 'El identificador del recibo de la consulta';

CREATE TABLE generarconsemergenciaconsiderable(
	idConsulta INT NOT NULL,
	idRecibo INT NOT NULL UNIQUE
);

COMMENT ON TABLE generarconsecuenciaconsiderable IS 'Tabla que contiene informacion sobre los medicamentos';
COMMENT ON COLUMN generarconsecuenciaconsiderable.idConsulta IS 'El id que identifica a la consulta';
COMMENT ON COLUMN generarconsecuenciaconsiderable.idRecibo IS 'El identificador del recibo de la consulta';

CREATE TABLE generarconsemergenciagrave(
	idConsulta INT NOT NULL,
	idRecibo INT NOT NULL UNIQUE
);

COMMENT ON TABLE generarconsecuenciagraveIS 'Tabla que contiene informacion sobre los medicamentos';
COMMENT ON COLUMN generarconsecuenciagrave.idConsulta IS 'El id que identifica a la consulta';
COMMENT ON COLUMN generarconsecuenciagrave.idRecibo IS 'El identificador del recibo de la consulta';

CREATE TABLE generarconsnormal(
	idConsulta INT NOT NULL,
	idRecibo INT NOT NULL UNIQUE
);

COMMENT ON TABLE generarconsnormal IS 'Tabla que contiene informacion sobre los medicamentos';
COMMENT ON COLUMN generarconsnormal.idConsulta IS 'El id que identifica a la consulta';
COMMENT ON COLUMN generarconsnormal.idRecibo IS 'El identificador del recibo de la consulta';

CREATE TABLE cliente(
    curp CHAR(18) NOT NULL UNIQUE,
    apellidoM VARCHAR(30) NOT NULL,
    apellidoP VARCHAR(30) NOT NULL,
    nombre VARCHAR(30) NOT NULL,
    estado VARCHAR(30) NOT NULL,
    calle VARCHAR(50) NOT NULL,
    numero SMALLINT NOT NULL,
    cp INT NOT NULL,
    telefono BIGINT NOT NULL, /*longitud*/
    cumpleanios DATE,
    email VARCHAR(100),
    esFrecuente BOOLEAN NOT NULL
);

CREATE TABLE tarjeta(
    numTarjeta VARCHAR(19) NOT NULL UNIQUE,
    curpCliente CHAR(18) NOT NULL,
    vencimiento DATE NOT NULL,
    titular VARCHAR(100) NOT NULL
);

CREATE TABLE mascota(
    nomMascota VARCHAR(50) NOT NULL UNIQUE ,
    curpCliente CHAR(18) NOT NULL,
    especie VARCHAR(50) NOT NULL,
    raza VARCHAR(50) NOT NULL,
    peso DECIMAL(5,2) NOT NULL,
    edad SMALLINT NOT NULL
);
 CREATE TABLE producto(
	 idProducto CHAR(10) NOT NULL UNIQUE CHECK(CHAR_LENGTH(idProducto) = 10) UNIQUE,
	 idEstetica INT CHECK(idEstetica <> 0),
	 idRecibo INT CHECK(idRecibo <> 0),
	 nombreImagen VARCHAR(30) NOT NULL CHECK(nombreImagen <> ''),
	 precio FLOAT CHECK(precio <> 0),
	 nombre VARCHAR(50) NOT NULL CHECK(nombre <> ''),
	 cantidad INT CHECK(cantidad <> 0),
	 descripcion VARCHAR(200) NOT NULL CHECK(descripcion <> ''),
	 tipo VARCHAR(30) NOT NULL CHECK(tipo <> ''),
	 caducidad DATE CHECK(caducidad > '2022-04-01'),
	 esProductoCaducable BOOLEAN NOT NULL
 );
 
 CREATE TABLE caja(
	 noCaja INT CHECK(noCaja <> 0) UNIQUE,
	 idEstetica INT CHECK(idEstetica <> 0)
 );
 
 CREATE TABLE recibo(
	 idRecibo INT CHECK(idRecibo <> 0) UNIQUE,
	 idEstetica INT CHECK(idEstetica <> 0),
	 noCaja INT CHECK(noCaja <> 0),
	 esFisico BOOLEAN NOT NULL,
	 esOnline BOOLEAN NOT NULL
 );

CREATE TABLE estetica(
	idEstetica INT NOT NULL UNIQUE,
	nombre VARCHAR (50) NOT NULL CHECK (nombre <>''),
	estado VARCHAR(50) NOT NULL CHECK (estado <>''),
	calle VARCHAR(50) NOT NULL CHECK (calle <>''),
	numero INT NOT NULL,
	cp INT CHECK(cp between 10000 and 99999),
	horario INT NOT NULL,
	noConsultorio INT NOT NULL
	
);

CREATE TABLE telefono(
	telefono CHAR(10) CHECK (telefono SIMILAR TO '[0-9]*'),
	idEstetica SERIAL NOT NULL UNIQUE
);

CREATE TABLE supervisor(
	curp CHAR(18) NOT NULL CHECK(CHAR_LENGTH(curp)=18),
	idEstetica INT NOT NULL UNIQUE,
	apellidoM VARCHAR (50) NOT NULL CHECK (apellidoM <>''),
	apellidoP VARCHAR (50) NOT NULL CHECK (apellidoP <>''),
	nombre VARCHAR (50) NOT NULL CHECK (nombre <>''),
	estado VARCHAR (50) NOT NULL CHECK (estado <>''),
	calle VARCHAR (50) NOT NULL CHECK (calle <>''),
	numero INT NOT NULL,
	cp INT CHECK(cp between 10000 and 99999),
	telefono CHAR(10) CHECK (telefono SIMILAR TO '[0-9]*'),
	genero CHAR(1) CHECK(genero = 'H' or genero = 'F'),
	nacimiento DATE NOT NULL,
	salario INT NOT NULL,
	RFC VARCHAR (30) NOT NULL CHECK (RFC <>''),
	inicio INT NOT NULL,
	fin INT NOT NULL,
	fechaInicio DATE NOT NULL,
	fechaTermino DATE NOT NULL
	
);

CREATE TABLE veterinario(
	curp CHAR(18) NOT NULL CHECK(CHAR_LENGTH(curp)=18),
	idEstetica INT NOT NULL UNIQUE,
	apellidoM VARCHAR (50) NOT NULL CHECK (apellidoM <>''),
	apellidoP VARCHAR (50) NOT NULL CHECK (apellidoP <>''),
	nombre VARCHAR (50) NOT NULL CHECK (nombre <>''),
	estado VARCHAR (50) NOT NULL CHECK (estado <>''),
	calle VARCHAR (50) NOT NULL CHECK (calle <>''),
	numero INT NOT NULL,
	cp INT CHECK(cp between 10000 and 99999),
	telefono CHAR(10) CHECK (telefono SIMILAR TO '[0-9]*'),
	genero CHAR(1) CHECK(genero = 'H' or genero = 'F'),
	nacimiento DATE NOT NULL,
	salario INT NOT NULL,
	RFC VARCHAR (30) NOT NULL CHECK (RFC <>''),
	inicio INT NOT NULL,
	fin INT NOT NULL,
	noPacientesActivos INT NOT NULL,
	fechaInicio DATE NOT NULL,
	fechaTermino DATE NOT NULL
	);
	
CREATE TABLE estilista(
	curp CHAR(18) NOT NULL CHECK(CHAR_LENGTH(curp)=18),
	idEstetica INT NOT NULL UNIQUE,
	apellidoM VARCHAR (50) NOT NULL CHECK (apellidoM <>''),
	apellidoP VARCHAR (50) NOT NULL CHECK (apellidoP <>''),
	nombre VARCHAR (50) NOT NULL CHECK (nombre <>''),
	estado VARCHAR (50) NOT NULL CHECK (estado <>''),
	calle VARCHAR (50) NOT NULL CHECK (calle <>''),
	numero INT NOT NULL,
	cp INT CHECK(cp between 10000 and 99999),
	telefono CHAR(10) CHECK (telefono SIMILAR TO '[0-9]*'),
	genero CHAR(1) CHECK(genero = 'H' or genero = 'F'),
	nacimiento DATE NOT NULL,
	salario INT NOT NULL,
	RFC VARCHAR (30) NOT NULL CHECK (RFC <>''),
	inicio INT NOT NULL,
	fin INT NOT NULL
	);
	

CREATE TABLE apartado(
	llave SERIAL NOT NULL UNIQUE,
	idEstetica SERIAL NOT NULL UNIQUE,
	tipoApartado VARCHAR(50)
);
ALTER TABLE apartado ADD CONSTRAINT apartado_pkey PRIMARY KEY (llave);
ALTER TABLE apartado ADD CONSTRAINT apartado_fkey FOREIGN KEY (idEstetica)
REFERENCES estetica(idEstetica);


--llaves foraneas
ALTER TABLE supervisor ADD CONSTRAINT supervisor_pkey PRIMARY KEY (curp);
ALTER TABLE supervisor ADD CONSTRAINT supervisor_fkey FOREIGN KEY (idEstetica)
REFERENCES estetica (idEstetica);

ALTER TABLE veterinario ADD CONSTRAINT veterinario_pkey PRIMARY KEY (curp);
ALTER TABLE veterinario ADD CONSTRAINT veterinario_fkey FOREIGN KEY (idEstetica)
REFERENCES estetica (idEstetica);

ALTER TABLE estilista ADD CONSTRAINT estilista_pkey PRIMARY KEY (curp);
ALTER TABLE estilista ADD CONSTRAINT estilista_fkey FOREIGN KEY (idEstetica)
REFERENCES estetica (idEstetica);

--LLAVES compuestas
ALTER TABLE telefono ADD CONSTRAINT telefono_pkey PRIMARY KEY (telefono, idEstetica);
ALTER TABLE telefono ADD CONSTRAINT telefono_fkey FOREIGN KEY (idEstetica)
REFERENCES estetica (idEstetica);

--llaves primarias
ALTER TABLE estetica ADD CONSTRAINT estetica_pkey PRIMARY KEY (idEstetica);
/*
 * Llaves producto
 */ 
 ALTER TABLE producto ADD CONSTRAINT producto_pkey PRIMARY KEY(idProducto);
 ALTER TABLE producto ADD CONSTRAINT producto_fkeyEstetica FOREIGN KEY(idEstetica)
REFERENCES estetica(idEstetica);
 ALTER TABLE producto ADD CONSTRAINT producto_fkeyRecibo FOREIGN KEY(idRecibo)
REFERENCES recibo(idRecibo);

/*
 * Llaves caja
 */ 
 ALTER TABLE caja ADD CONSTRAINT caja_pkey PRIMARY KEY(noCaja);
 ALTER TABLE caja ADD CONSTRAINT caja_fkey FOREIGN KEY(idEstetica)
REFERENCES estetica(idEstetica);

/*
 * Llaves recibo
 */
 ALTER TABLE recibo ADD CONSTRAINT recibo_pkey PRIMARY KEY(idRecibo); 
 ALTER TABLE recibo ADD CONSTRAINT recibo_fkeyRecibo FOREIGN KEY(idEstetica)
REFERENCES estetica(idEstetica);
 ALTER TABLE recibo ADD CONSTRAINT recibo_fkeycaja FOREIGN KEY(noCaja)
REFERENCES caja(noCaja);
/*
 * Llaves cliente
 */
 ALTER TABLE cliente ADD CONSTRAINT cliente_pkey PRIMARY KEY(curp);

 /*
 * Llaves tarjeta
 */
  ALTER TABLE tarjeta ADD CONSTRAINT tarjeta_pkey PRIMARY KEY(numTarjeta);
  ALTER TABLE tarjeta ADD CONSTRAINT tarjeta_fkeyCliente FOREIGN KEY(curpCliente)
REFERENCES cliente(curp);

/*
 * Llaves mascota
 */
ALTER TABLE mascota ADD CONSTRAINT mascota_pkey PRIMARY KEY(nomMascota, curpCliente);
/*
LLAVES PRIMARIAS
*/

/*
LLAVES COMPUESTAS
*/
ALTER TABLE medicamentos ADD CONSTRAINT medicamentos_pkey PRIMARY KEY (idConsulta,medicamentos);
ALTER TABLE sintomaleve ADD CONSTRAINT sintomaleve_pkey PRIMARY KEY (idConsulta,sintoma);
ALTER TABLE sintomaconsiderable ADD CONSTRAINT sintomaconsiderable_pkey PRIMARY KEY (idConsulta,sintoma);
ALTER TABLE sintomagrave ADD CONSTRAINT sintomagrave_pkey PRIMARY KEY (idConsulta,sintoma);

/*
LLAVES FORANEAS
*/
ALTER TABLE consemergencialeve ADD CONSTRAINT consemergencialeve_pkey PRIMARY KEY (idConsulta);
 ALTER TABLE consemergencialeve ADD CONSTRAINT consemergencialeve_fkey1 FOREIGN KEY (curpCliente) REFERENCES cliente(curp);
ALTER TABLE consemergencialeve ADD CONSTRAINT consemergencialeve_fkey2 FOREIGN KEY (nomMascota) REFERENCES mascota(nomMascota);
ALTER TABLE consemergencialeve ADD CONSTRAINT consemergencialeve_fkey3 FOREIGN KEY (curpVeterinario) REFERENCES veterinario(curp);
ALTER TABLE consemergencialeve ADD CONSTRAINT consemergencialeve_fkey4 FOREIGN KEY (idEstetica) REFERENCES estetica(idEstetica);
ALTER TABLE consemergenciaconsiderable ADD CONSTRAINT consemergenciaconsiderable_pkey PRIMARY KEY (idConsulta);
ALTER TABLE consemergenciaconsiderable ADD CONSTRAINT consemergenciaconsiderable_fkey1 FOREIGN KEY (curpCliente) REFERENCES cliente(curp);
ALTER TABLE consemergenciaconsiderable ADD CONSTRAINT consemergenciaconsiderable_fkey2 FOREIGN KEY (nomMascota) REFERENCES mascota(nomMascota);
ALTER TABLE consemergenciaconsiderable ADD CONSTRAINT consemergenciaconsiderable_fkey3 FOREIGN KEY (curpVeterinario) REFERENCES veterinario(curp);
ALTER TABLE consemergenciaconsiderable ADD CONSTRAINT consemergenciaconsiderable_fkey4 FOREIGN KEY (idEstetica) REFERENCES estetica(idEstetica);
ALTER TABLE consemergenciagrave ADD CONSTRAINT consemergenciagrave_pkey PRIMARY KEY (idConsulta);
ALTER TABLE consemergenciagrave ADD CONSTRAINT consemergenciagrave_fkey1 FOREIGN KEY (curpCliente) REFERENCES cliente(curp);
 ALTER TABLE consemergenciagrave ADD CONSTRAINT consemergenciagrave_fkey2 FOREIGN KEY (nomMascota) REFERENCES mascota(nomMascota);
ALTER TABLE consemergenciagrave ADD CONSTRAINT consemergenciagrave_fkey3 FOREIGN KEY (curpVeterinario) REFERENCES veterinario(curp);
ALTER TABLE consemergenciagrave ADD CONSTRAINT consemergenciagrave_fkey4 FOREIGN KEY (idEstetica) REFERENCES estetica(idEstetica);
ALTER TABLE consnormal ADD CONSTRAINT consnormal_pkey PRIMARY KEY (idConsulta);
ALTER TABLE consnormal ADD CONSTRAINT consnormal_fkey1 FOREIGN KEY (curpCliente) REFERENCES cliente(curp);
ALTER TABLE consnormal ADD CONSTRAINT consnormal_fkey2 FOREIGN KEY (nomMascota) REFERENCES mascota(nomMascota);
ALTER TABLE consnormal ADD CONSTRAINT consnormal_fkey3 FOREIGN KEY (curpVeterinario) REFERENCES veterinario(curp);
ALTER TABLE consnormal ADD CONSTRAINT consnormal_fkey4 FOREIGN KEY (idEstetica) REFERENCES estetica(idEstetica);

ALTER TABLE generarconsemergencialeve ADD CONSTRAINT generarconsemergencialeve_fkey1 FOREIGN KEY (idRecibo) REFERENCES recibo(idRecibo);
ALTER TABLE generarconsemergencialeve ADD CONSTRAINT generarconsemergencialeve_fkey2 FOREIGN KEY (idConsulta ) REFERENCES consemergencialeve (idConsulta);
ALTER TABLE generarconsemergencialeve ADD CONSTRAINT generarconsemergenciaconsiderable_fkey1 FOREIGN KEY (idConsulta ) REFERENCES recibo(idRecibo);
ALTER TABLE generarconsemergencialeve ADD CONSTRAINT generarconsemergenciaconsiderable_fkey2 FOREIGN KEY (idConsulta ) REFERENCES consemergenciaconsiderable (idConsulta);
ALTER TABLE generarconsemergenciagrave ADD CONSTRAINT generarconsemergenciagrave_fkey1 FOREIGN KEY (idConsulta ) REFERENCES recibo(idRecibo);
ALTER TABLE generarconsemergenciagrave ADD CONSTRAINT generarconsemergenciagrave_fkey2 FOREIGN KEY (idConsulta ) REFERENCES consemergenciagrave (idConsulta);
ALTER TABLE generarconsnormal ADD CONSTRAINT generarconsnormal_fkey1 FOREIGN KEY (idConsulta ) REFERENCES recibo(idRecibo);
ALTER TABLE generarconsnormal ADD CONSTRAINT generarconsnormal_fkey2 FOREIGN KEY (idConsulta ) REFERENCES consnormal (idConsulta);

