
CREATE TABLE TipoUsuario (
  tipo_usuario INT PRIMARY KEY,
  descripcion VARCHAR(100) NOT NULL
);

CREATE TABLE Ciudad (
  ciudad_id INT PRIMARY KEY,
  nombre_ciudad VARCHAR(100) NOT NULL,
  codigo_postal VARCHAR(10)
);


CREATE TABLE Usuario (
  usuario_id INT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  apellido VARCHAR(100) NOT NULL,
  tipo_usuario INT,
  condiciones VARCHAR(100),
  ciudad_id INT,
  FOREIGN KEY (tipo_usuario) REFERENCES TipoUsuario(tipo_usuario),
  FOREIGN KEY (ciudad_id) REFERENCES Ciudad(ciudad_id)
);

CREATE TABLE Departamento (
  departamento_id INT PRIMARY KEY,
  nombre_departamento VARCHAR(100)
);


CREATE TABLE Empleado (
  empleado_id INT PRIMARY KEY,
  usuario_id INT,
  cargos VARCHAR(100),
  departamento_id INT,
  FOREIGN KEY (usuario_id) REFERENCES Usuario(usuario_id)
  FOREIGN KEY (departamento_id) REFERENCES Departamento(departamento_id)
);


CREATE TABLE Servicio (
  servicio_id INT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  descripcion VARCHAR(255),
  estado VARCHAR(50)
);


CREATE TABLE Turno (
  turno_id INT PRIMARY KEY,
  usuario_id INT,
  servicio_id INT,
  empleado_id INT,
  fecha DATE,
  hora_inicio TIME,
  hora_fin TIME,
  estado VARCHAR(100),
  FOREIGN KEY (usuario_id) REFERENCES Usuario(usuario_id),
  FOREIGN KEY (servicio_id) REFERENCES Servicio(servicio_id),
  FOREIGN KEY (empleado_id) REFERENCES Empleado(empleado_id)
);

CREATE TABLE Medio (
  medio_id INT PRIMARY KEY,
  tipo_medio VARCHAR(50) NOT NULL
);


CREATE TABLE Notificacion (
  notificacion_id INT PRIMARY KEY,
  usuario_id INT,
  medio_id INT,
  mensaje VARCHAR(255),
  fecha_envio DATE,
  estado VARCHAR(50),
  FOREIGN KEY (usuario_id) REFERENCES Usuario(usuario_id),
  FOREIGN KEY (medio_id) REFERENCES Medio(medio_id)
);