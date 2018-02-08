CREATE DATABASE HugeGames
on ( NAME='HugeGames_dat',FILENAME='C:\HellDocs\HugeGames\Base de datos\HugeGames.dbo')
GO
-----------------------------------------------------
USE HugeGames
GO
-----------------------------------------------------
CREATE TABLE Juegos (

Nombre_JUE VARCHAR (50) NOT NULL,
Link_JUE VARCHAR (max) NOT NULL,
ImagenGrande_JUE (max) NOT NULL,
ImagenChica_JUE (max) NOT NULL,
Descripcion_JUE (max) NOT NULL,
Requisitos_JUE (50) NOT NULL,
Precio_JUE DECIMAL (10,2) NOT NULL,
Borrado_JUE INT NOT DEFAULT 0,
CONSTRAINT PK_JUE PRIMARY KEY (Nombre_JUE)
)
GO
-----------------------------------------------------
CREATE TABLE PackDeJuegos (

NombrePack_PDJ VARCHAR (50) NOT NULL,
Precio_PDJ DECIMAL (10,2) NOT NULL,
FechaInicio_PDJ DATE NOT NULL,
FechaFinal_PDJ DATE NOT NULL,
CantVendidos_PDJ INT NOT NULL,
Juego1Nom_PDJ VARCHAR (50) NOT NULL,
Juego2Nom_PDJ VARCHAR (50) NOT NULL,
Juego3Nom_PDJ VARCHAR (50) NOT NULL,
Juego4Nom_PDJ VARCHAR (50) NOT NULL,
Juego5Nom_PDJ VARCHAR (50) NOT NULL,
Borrado_PDJ INT NULL DEFAULT 0,
CONSTRAINT PK_PDJ PRIMARY KEY (NombrePack_PDJ)
)
GO
-----------------------------------------------------
CREATE TABLE Generos (

NombreGen_GEN VARCHAR (50) NOT NULL,
CONSTRAINT PK_GEN PRIMARY KEY (NombreGen_GEN)
)
GO
-----------------------------------------------------
CREATE TABLE GeneroXJuego (

NombreGen_GXJ VARCHAR (50) NOT NULL,
NombreJue_GXJ VARCHAR (50) NOT NULL,
CONSTRAINT PK_GXJ PRIMARY KEY (NombreGen_GXJ,NombreJue_GXJ)
)
GO
-----------------------------------------------------
CREATE TABLE DescuentosXFecha (

NombreJue_DXF VARCHAR (50) NOT NULL,
FechaInicio_DXF DATE NOT NULL,
FechaFinal_DXF DATE NOT NULL,
Descuento_DXF DECIMAL (10,1) NOT NULL,
CONSTRAINT PK_DXF PRIMARY KEY (NombreJue_DXF)
)
GO
-----------------------------------------------------
CREATE TABLE Ventas (

CodVenta_VEN INT IDENTITY(1,1) NOT NULL,
NombreUser_VEN VARCHAR (50) NOT NULL,
Fecha_VEN DATE NOT NULL,
Monto_VEN DECIMAL (10,2) NOT NULL,
Borrado_VEN INT NULL DEFAULT 0,
CONSTRAINT PK_VEN PRIMARY KEY (CodVenta_VEN)
)
GO
-----------------------------------------------------
CREATE TABLE VentasXJuegos (

NombreJue_VXJ VARCHAR (50) NOT NULL,
CodVenta_VXJ INT NOT NULL,
CONSTRAINT PK_VXJ PRIMARY KEY (NombreJue_VXJ,CodVenta_VXJ)
)
GO
-----------------------------------------------------
CREATE TABLE Usuarios (

NombreUser_USU VARCHAR (50) NOT NULL,
Mail_USU VARCHAR (max) NOT NULL,
Password_USU BINARY(64) NOT NULL,
CodTarjeta_USU BINARY(64) NOT NULL,
NombreTarj_USU VARCHAR(20) NOT NULL,
Borrado_USU INT NULL DEFAULT 0,
CONSTRAINT PK_USU PRIMARY KEY (NombreUser_USU)
)
GO
-----------------------------------------------------
CREATE TABLE VentasXUsuario (

NonbreUser_VXU VARCHAR (50) NOT NULL,
CodVenta_VXU INT NOT NULL,
CONSTRAINT PK_VXU PRIMARY KEY (NombreUser_VXU,CodVenta_VXU)
)
GO
-----------------------------------------------------
--ClAVES FORANEAS:

ALTER TABLE GeneroXJuego
ADD CONSTRAINT FK_GCJ1 FOREIGN KEY (NombreGen_GXJ) REFERENCES Generos (NombreGen_GEN)
GO
ADD CONSTRAINT FK_GCJ2 FOREIGN KEY (NombreJue_GXJ) REFERENCES Juegos (NombreJue_JUE)
GO
-----------------------------------------------------
ALTER TABLE VentasXJuegos
ADD CONSTRAINT FK_VXJ1 FOREIGN KEY (NombreJue_VXJ) REFERENCES Juegos (NombreJue_JUE)
GO
ADD CONSTRAINT FK_VXJ2 FOREIGN KEY (CodVenta_VXJ) REFERENCES Ventas (CodVenta_VEN)
GO
-----------------------------------------------------
ALTER TABLE VentasXUsuario
ADD CONSTRAINT FK_VXU1 FOREIGN KEY (NombreJue_VXJ) REFERENCES Juegos (NombreJue_JUE)
GO
ADD CONSTRAINT FK_VXJ2 FOREIGN KEY (CodVenta_VXJ) REFERENCES Ventas (CodVenta_VEN)
GO
-----------------------------------------------------
ALTER TABLE PackDeJuegos
ADD CONSTRAINT FK_PDJ1 FOREIGN KEY (Juego1Nom_PDJ) REFERENCES Juegos (NombreJue_JUE)
ADD CONSTRAINT FK_PDJ2 FOREIGN KEY (Juego2Nom_PDJ) REFERENCES Juegos (NombreJue_JUE)
ADD CONSTRAINT FK_PDJ3 FOREIGN KEY (Juego3Nom_PDJ) REFERENCES Juegos (NombreJue_JUE)
ADD CONSTRAINT FK_PDJ4 FOREIGN KEY (Juego4Nom_PDJ) REFERENCES Juegos (NombreJue_JUE)
ADD CONSTRAINT FK_PDJ5 FOREIGN KEY (Juego5Nom_PDJ) REFERENCES Juegos (NombreJue_JUE)
GO
ADD CONSTRAINT FK_PDJ6 FOREIGN KEY (Juego1Nom_PDJ) REFERENCES VentasXJuegos (NombreJue_VPJ)
ADD CONSTRAINT FK_PDJ7 FOREIGN KEY (Juego2Nom_PDJ) REFERENCES VentasXJuegos (NombreJue_VPJ)
ADD CONSTRAINT FK_PDJ8 FOREIGN KEY (Juego3Nom_PDJ) REFERENCES VentasXJuegos (NombreJue_VPJ)
ADD CONSTRAINT FK_PDJ9 FOREIGN KEY (Juego4Nom_PDJ) REFERENCES VentasXJuegos (NombreJue_VPJ)
ADD CONSTRAINT FK_PDJ10 FOREIGN KEY (Juego5Nom_PDJ) REFERENCES VentasXJuegos (NombreJue_VPJ)
GO
-----------------------------------------------------
ALTER TABLE DescuentosXFecha
ADD CONSTRAINT FK_DXF FOREIGN KEY (NombreJue_DXF) REFERENCES Juegos (NombreJue_JUE)
GO
-----------------------------------------------------------------------------------------
--CARGA DE DATOS--
-----------------------------------------------------------------------------------------








-----------------------------------------------------------------------------------------
--PROCEDIMIENTOS--
-----------------------------------------------------------------------------------------
