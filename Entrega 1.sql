-- Eliminar la base de datos si ya existe
DROP DATABASE IF EXISTS agencia_marketing;

-- Crear la base de datos
CREATE DATABASE IF NOT EXISTS agencia_marketing;

-- Usar la base de datos
USE agencia_marketing;

-- Tabla cliente
CREATE TABLE cliente (
    idCliente INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    telefono VARCHAR(15),
    correo VARCHAR(100)
);

-- Tabla tipo_inversion
CREATE TABLE tipo_inversion (
    idTipoInversion INT PRIMARY KEY AUTO_INCREMENT,
    TipoInversion VARCHAR(100)
);

-- Tabla proveedor_inversion
CREATE TABLE proveedor_inversion (
    idProveedor INT PRIMARY KEY AUTO_INCREMENT,
    Proveedor VARCHAR(100)
);

-- Tabla inversiones
CREATE TABLE inversiones (
    inversion INT PRIMARY KEY AUTO_INCREMENT,
    idCliente INT,
    idTipoInversion INT,
    idProveedor INT,
    MontoInvertido DECIMAL(10, 2),
    FOREIGN KEY (idCliente) REFERENCES cliente(idCliente),
    FOREIGN KEY (idTipoInversion) REFERENCES tipo_inversion(idTipoInversion),
    FOREIGN KEY (idProveedor) REFERENCES proveedor_inversion(idProveedor)
);

-- Tabla objetivo_cliente
CREATE TABLE objetivo_cliente (
    idObjetivo INT PRIMARY KEY AUTO_INCREMENT,
    idCliente INT,
    Objetivo VARCHAR(255),
    FOREIGN KEY (idCliente) REFERENCES cliente(idCliente)
);

-- Tabla fecha_pago_factura
CREATE TABLE fecha_pago_factura (
    idFactura INT PRIMARY KEY AUTO_INCREMENT,
    idCliente INT,
    FormaDePago VARCHAR(50),
    FechaVencimiento DATE,
    FOREIGN KEY (idCliente) REFERENCES cliente(idCliente)
);

-- Tabla rubro_cliente
CREATE TABLE rubro_cliente (
    idRubro INT PRIMARY KEY AUTO_INCREMENT,
    idCliente INT,
    Rubro VARCHAR(100),
    FOREIGN KEY (idCliente) REFERENCES cliente(idCliente)
);
