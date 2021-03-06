--CREATE DATABASE HugeGames

USE [HugeGames]
GO
SET DATEFORMAT YMD
GO
/****** Object:  Table [dbo].[Administradores]    Script Date: 25/2/2018 23:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Administradores](
	[NombreUser_ADM] [varchar](50) NOT NULL,
	[Mail_ADM] [varchar](max) NOT NULL,
	[Password_ADM] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[NombreUser_ADM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DescuentosXFecha]    Script Date: 25/2/2018 23:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DescuentosXFecha](
	[NombreJue_DXF] [varchar](50) NOT NULL,
	[FechaInicio_DXF] [date] NOT NULL,
	[FechaFinal_DXF] [date] NOT NULL,
	[Descuento_DXF] [decimal](10, 1) NOT NULL,
 CONSTRAINT [PK_DXF] PRIMARY KEY CLUSTERED 
(
	[NombreJue_DXF] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Generos]    Script Date: 25/2/2018 23:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Generos](
	[NombreGen_GEN] [varchar](50) NOT NULL,
 CONSTRAINT [PK_GEN] PRIMARY KEY CLUSTERED 
(
	[NombreGen_GEN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GeneroXJuego]    Script Date: 25/2/2018 23:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GeneroXJuego](
	[NombreGen_GXJ] [varchar](50) NOT NULL,
	[NombreJue_GXJ] [varchar](50) NOT NULL,
 CONSTRAINT [PK_GXJ] PRIMARY KEY CLUSTERED 
(
	[NombreGen_GXJ] ASC,
	[NombreJue_GXJ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Juegos]    Script Date: 25/2/2018 23:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Juegos](
	[Nombre_JUE] [varchar](50) NOT NULL,
	[Link_JUE] [varchar](max) NOT NULL,
	[ImagenGrande_JUE] [varchar](max) NOT NULL,
	[ImagenChica_JUE] [varchar](max) NOT NULL,
	[Descripcion_JUE] [varchar](max) NOT NULL,
	[Requisitos_JUE] [varchar](50) NOT NULL,
	[Precio_JUE] [decimal](10, 2) NOT NULL,
	[Borrado_JUE] [int] NULL,
 CONSTRAINT [PK_JUE] PRIMARY KEY CLUSTERED 
(
	[Nombre_JUE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PackDeJuegos]    Script Date: 25/2/2018 23:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PackDeJuegos](
	[NombrePack_PDJ] [varchar](50) NOT NULL,
	[Precio_PDJ] [decimal](10, 2) NOT NULL,
	[FechaInicio_PDJ] [date] NOT NULL,
	[FechaFinal_PDJ] [date] NOT NULL,
	[CantVendidos_PDJ] [int] NOT NULL,
	[Juego1Nom_PDJ] [varchar](50) NOT NULL,
	[Juego2Nom_PDJ] [varchar](50) NOT NULL,
	[Juego3Nom_PDJ] [varchar](50) NOT NULL,
	[Juego4Nom_PDJ] [varchar](50) NOT NULL,
	[Juego5Nom_PDJ] [varchar](50) NOT NULL,
	[Borrado_PDJ] [int] NULL,
 CONSTRAINT [PK_PDJ] PRIMARY KEY CLUSTERED 
(
	[NombrePack_PDJ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 25/2/2018 23:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[NombreUser_USU] [varchar](50) NOT NULL,
	[Mail_USU] [varchar](max) NOT NULL,
	[Password_USU] [varchar](50) NOT NULL,
	[CodTarjeta_USU] [varchar](50) NOT NULL,
	[NombreTarj_USU] [varchar](20) NOT NULL,
	[Borrado_USU] [int] NULL,
 CONSTRAINT [PK_USU] PRIMARY KEY CLUSTERED 
(
	[NombreUser_USU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ventas]    Script Date: 25/2/2018 23:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ventas](
	[CodVenta_VEN] [int] IDENTITY(1,1) NOT NULL,
	[NombreUser_VEN] [varchar](50) NOT NULL,
	[Fecha_VEN] [date] NOT NULL,
	[Monto_VEN] [decimal](10, 2) NOT NULL,
	[Borrado_VEN] [int] NULL,
 CONSTRAINT [PK_VEN] PRIMARY KEY CLUSTERED 
(
	[CodVenta_VEN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VentasXJuegos]    Script Date: 25/2/2018 23:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VentasXJuegos](
	[NombreJue_VXJ] [varchar](50) NOT NULL,
	[CodVenta_VXJ] [int] NOT NULL,
	[Monto] [decimal](10, 2) NULL,
 CONSTRAINT [PK_VXJ] PRIMARY KEY CLUSTERED 
(
	[NombreJue_VXJ] ASC,
	[CodVenta_VXJ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VentasXUsuario]    Script Date: 25/2/2018 23:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VentasXUsuario](
	[NombreUser_VXU] [varchar](50) NOT NULL,
	[CodVenta_VXU] [int] NOT NULL,
 CONSTRAINT [PK_VXU] PRIMARY KEY CLUSTERED 
(
	[NombreUser_VXU] ASC,
	[CodVenta_VXU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Administradores] ([NombreUser_ADM], [Mail_ADM], [Password_ADM]) VALUES (N'admin', N'administrador@admin.com', N'admin')
GO
INSERT [dbo].[Juegos] ([Nombre_JUE], [Link_JUE], [ImagenGrande_JUE], [ImagenChica_JUE], [Descripcion_JUE], [Requisitos_JUE], [Precio_JUE], [Borrado_JUE]) VALUES (N'Fifa 2017', N'http://www.youtube.com/embed/-3fjoe5Njpc', N'http://via.placeholder.com/1280x720', N'http://via.placeholder.com/800x500', N'Fulbito', N'I9, 40GB RAM', CAST(250.00 AS Decimal(10, 2)), 0)
GO
INSERT [dbo].[Juegos] ([Nombre_JUE], [Link_JUE], [ImagenGrande_JUE], [ImagenChica_JUE], [Descripcion_JUE], [Requisitos_JUE], [Precio_JUE], [Borrado_JUE]) VALUES (N'For Honor', N'https://www.youtube.com/embed/y1HkuGUaNBY', N'http://via.placeholder.com/1280x720', N'http://via.placeholder.com/800x500', N'Bla bla blaaa', N'Bla bla bla', CAST(100.00 AS Decimal(10, 2)), 0)
GO
INSERT [dbo].[Juegos] ([Nombre_JUE], [Link_JUE], [ImagenGrande_JUE], [ImagenChica_JUE], [Descripcion_JUE], [Requisitos_JUE], [Precio_JUE], [Borrado_JUE]) VALUES (N'Grand Theft Auto V', N'http://www.youtube.com/embed/VjZ5tgjPVfU', N'http://via.placeholder.com/1280x720', N'http://via.placeholder.com/800x500', N'Juego de Rockstar', N'Mucha PC', CAST(500.00 AS Decimal(10, 2)), 0)
GO
INSERT [dbo].[Usuarios] ([NombreUser_USU], [Mail_USU], [Password_USU], [CodTarjeta_USU], [NombreTarj_USU], [Borrado_USU]) VALUES (N'test', N'test2@test.com', N'1234', N'1234567891', N'visa', 0)
GO
SET IDENTITY_INSERT [dbo].[Ventas] ON 
GO
INSERT [dbo].[Ventas] ([CodVenta_VEN], [NombreUser_VEN], [Fecha_VEN], [Monto_VEN], [Borrado_VEN]) VALUES (1, N'admin', CAST(N'2018-02-25' AS Date), CAST(100.00 AS Decimal(10, 2)), 0)
GO
INSERT [dbo].[Ventas] ([CodVenta_VEN], [NombreUser_VEN], [Fecha_VEN], [Monto_VEN], [Borrado_VEN]) VALUES (2, N'test', CAST(N'2018-02-25' AS Date), CAST(250.00 AS Decimal(10, 2)), 0)
GO
INSERT [dbo].[Ventas] ([CodVenta_VEN], [NombreUser_VEN], [Fecha_VEN], [Monto_VEN], [Borrado_VEN]) VALUES (3, N'admin', CAST(N'2018-02-25' AS Date), CAST(750.00 AS Decimal(10, 2)), 0)
GO
SET IDENTITY_INSERT [dbo].[Ventas] OFF
GO
INSERT [dbo].[VentasXJuegos] ([NombreJue_VXJ], [CodVenta_VXJ], [Monto]) VALUES (N'Fifa 2017', 2, CAST(250.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[VentasXJuegos] ([NombreJue_VXJ], [CodVenta_VXJ], [Monto]) VALUES (N'Fifa 2017', 3, CAST(250.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[VentasXJuegos] ([NombreJue_VXJ], [CodVenta_VXJ], [Monto]) VALUES (N'For Honor', 1, CAST(100.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[VentasXJuegos] ([NombreJue_VXJ], [CodVenta_VXJ], [Monto]) VALUES (N'Grand Theft Auto V', 3, CAST(500.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[VentasXUsuario] ([NombreUser_VXU], [CodVenta_VXU]) VALUES (N'admin', 1)
GO
INSERT [dbo].[VentasXUsuario] ([NombreUser_VXU], [CodVenta_VXU]) VALUES (N'admin', 3)
GO
INSERT [dbo].[VentasXUsuario] ([NombreUser_VXU], [CodVenta_VXU]) VALUES (N'test', 2)
GO
ALTER TABLE [dbo].[Juegos] ADD  DEFAULT ((0)) FOR [Borrado_JUE]
GO
ALTER TABLE [dbo].[PackDeJuegos] ADD  DEFAULT ((0)) FOR [Borrado_PDJ]
GO
ALTER TABLE [dbo].[Usuarios] ADD  CONSTRAINT [DF__Usuarios__Borrad__44FF419A]  DEFAULT ((0)) FOR [Borrado_USU]
GO
ALTER TABLE [dbo].[Ventas] ADD  DEFAULT ((0)) FOR [Borrado_VEN]
GO
ALTER TABLE [dbo].[GeneroXJuego]  WITH CHECK ADD  CONSTRAINT [FK_GCJ1] FOREIGN KEY([NombreGen_GXJ])
REFERENCES [dbo].[Generos] ([NombreGen_GEN])
GO
ALTER TABLE [dbo].[GeneroXJuego] CHECK CONSTRAINT [FK_GCJ1]
GO
/****** Object:  StoredProcedure [dbo].[UP_HG_Administradores_ABM]    Script Date: 25/2/2018 23:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[UP_HG_Administradores_ABM]
@op varchar(30),
@usuario varchar(50) = null,
@email varchar(50) = null,
@contraseña varchar(50) = null
AS
BEGIN
	IF @op = 'update'
	BEGIN
		UPDATE Administradores
		SET
			NombreUser_ADM = ISNULL(@usuario, NombreUser_ADM),
			Mail_ADM = ISNULL(@email, Mail_ADM),
			Password_ADM = ISNULL(@contraseña, Password_ADM)
		WHERE
			NombreUser_ADM = @usuario
		IF @@ROWCOUNT > 0
			SELECT 'OK', 'Administrador actualizado con exito'
		ELSE 
			SELECT 'NO', 'No se pudo actualizar el administrador'
	END
END
GO
/****** Object:  StoredProcedure [dbo].[UP_HG_Administradores_Consultar]    Script Date: 25/2/2018 23:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[UP_HG_Administradores_Consultar]
@op varchar(30),
@usuario varchar(50) = null
AS
BEGIN
	IF @op = 'get'
	BEGIN
		SELECT 
			NombreUser_ADM AS [user],
			Mail_ADM AS email
		FROM
			Administradores
		WHERE
			NombreUser_ADM = @usuario
	END
END
GO
/****** Object:  StoredProcedure [dbo].[UP_HG_Administradores_Login]    Script Date: 25/2/2018 23:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--UP_HG_Usuarios_Login 'test', '123'

CREATE procedure [dbo].[UP_HG_Administradores_Login]
@usuario varchar(50),
@pwd varchar(50)
AS
BEGIN
	SELECT * FROM Administradores where NombreUser_ADM = @usuario and Password_ADM = @pwd
END
GO
/****** Object:  StoredProcedure [dbo].[UP_HG_ComprasPorUsuario]    Script Date: 25/2/2018 23:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UP_HG_ComprasPorUsuario]
@Minimo int = NULL,
@Maximo int = NULL,
@alt varchar(50) = NULL,
@accion varchar(50) = NULL,
@FechaDesde varchar(50) = NULL,
@FechaHasta varchar(50) = NULL
AS
BEGIN
	SET DATEFORMAT DMY;

	DECLARE @FechaHastaD datetime
	DECLARE @FechaDesdeD datetime

	if @Minimo = ''
	set @Minimo = NULL
	if @Maximo = ''
	set @Maximo = NULL
	if @alt = ''
	set @alt = NULL
	if @accion = ''
	set @accion = NULL
	IF @FechaHasta = ''
	SET @FechaHasta = NULL
	ELSE
	SET @FechaHastaD = CONVERT(datetime, @FechaHasta)
	IF @FechaDesde = ''
	SET @FechaDesde = NULL
	ELSE
	SET @FechaDesdeD = CONVERT(datetime, @FechaDesde)

	IF @accion IS NULL
	BEGIN
		SET NOCOUNT ON;
		
		IF @alt IS NULL
		BEGIN
			SELECT * FROM 
			(
				SELECT
					v.NombreUser_VEN as Usuario,
					COUNT(*) as Cantidad
				FROM
					Ventas v
				WHERE
					(v.Fecha_VEN >= @FechaDesdeD or @FechaDesdeD is null) AND (v.Fecha_VEN <= @FechaHastaD or @FechaHastaD is null)
				GROUP BY
					v.NombreUser_VEN
			) AS T
			WHERE (Cantidad <= @Maximo or @Maximo is NULL) AND (Cantidad >= @Minimo or @Minimo is NULL)
			ORDER BY 2 DESC 
		END
	END
	ELSE IF @accion = 'grilla'
	BEGIN
		SELECT
			v.CodVenta_VEN as codigo,
			v.Fecha_VEN as fecha,
			v.Monto_VEN as monto,
			v.Borrado_VEN as borrado
		FROM
			Ventas v
		WHERE
			v.NombreUser_VEN = @alt
	END
END
GO
/****** Object:  StoredProcedure [dbo].[UP_HG_Historial]    Script Date: 25/2/2018 23:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UP_HG_Historial]
@user varchar(50)
AS
BEGIN
	SELECT
		v.Fecha_VEN AS fecha,
		vj.NombreJue_VXJ AS juego,
		vj.Monto AS monto
	FROM
		Ventas v
	INNER JOIN
		VentasXJuegos vj
	ON
		v.CodVenta_VEN = vj.CodVenta_VXJ
	WHERE
		v.NombreUser_VEN = @user
END
GO
/****** Object:  StoredProcedure [dbo].[UP_HG_Juegos_ABM]    Script Date: 25/2/2018 23:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[UP_HG_Juegos_ABM]
@operation varchar(30),
@nombre varchar(50),
@link varchar(max) ,
@imagenGrande varchar(max),
@imagenChica varchar(max),
@descripcion varchar(50),
@requisitos varchar(50),
@precio decimal(10,2),
@borrado int = null
AS
BEGIN
	IF @operation = 'insert'
	BEGIN
		BEGIN TRY
			INSERT INTO Juegos
			VALUES(
			@nombre,
			@link,
			@imagenGrande,
			@imagenChica,
			@descripcion,
			@requisitos,
			@precio,
			@borrado)

			IF @@ROWCOUNT > 0
				SELECT 'OK', 'Juego insertado con exito'
			ELSE
				SELECT 'NO', 'Ocurrió un error al insertar el juego'
		END TRY
		BEGIN CATCH
			SELECT 'NO', 'Ocurrio un error al insertar el juego'
		END CATCH
	END
	IF @operation = 'update'
	BEGIN
		BEGIN TRY
			UPDATE Juegos SET
			Link_JUE = @link,
			ImagenGrande_JUE = @imagenGrande,
			ImagenChica_JUE = @imagenChica,
			Descripcion_JUE = @descripcion,
			Requisitos_JUE = @requisitos,
			Precio_JUE = @precio,
			Borrado_JUE = @borrado
			WHERE Nombre_JUE = @nombre

			IF @@ROWCOUNT > 0
				SELECT 'OK', 'Juego actualizado con éxito'
			ELSE
				SELECT 'NO', 'Ocurrió un error al actualizar el juego'
		END TRY
		BEGIN CATCH
			SELECT 'NO', 'Ocurrió un error al actualizar el juego'
		END CATCH
	END
END
GO
/****** Object:  StoredProcedure [dbo].[UP_HG_Juegos_Consultar]    Script Date: 25/2/2018 23:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[UP_HG_Juegos_Consultar]
@op varchar(30),
@nombre varchar(50) = null
AS
BEGIN
	IF @op = 'con'
	BEGIN
		SELECT
			Nombre_JUE as nombre,
			Descripcion_JUE as descripcion,
			Precio_JUE as precio,
			Borrado_JUE as borrado
		FROM
			Juegos
		WHERE
			Nombre_JUE = @nombre or @nombre is null
	END
	ELSE IF @op = 'get'
	BEGIN
		SELECT
			Nombre_JUE as nombre,
			Link_JUE as link,
			ImagenGrande_JUE as imagenGrande,
			ImagenChica_JUE as imagenChica,
			Descripcion_JUE as descripcion,
			Requisitos_JUE as requisitos,
			Precio_JUE as precio,
			Borrado_JUE as borrado
		FROM
			Juegos
		WHERE
			Nombre_JUE = @nombre
	END
END
GO
/****** Object:  StoredProcedure [dbo].[UP_HG_Usuarios_ABM]    Script Date: 25/2/2018 23:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[UP_HG_Usuarios_ABM]
@op varchar(30),
@usuario varchar(50) = null,
@email varchar(50) = null,
@numtarjeta varchar(50) = null,
@nomtarjeta varchar(20) = null,
@contraseña varchar(50) = null
AS
BEGIN
	IF @op = 'update'
	BEGIN
		UPDATE Usuarios
		SET
			NombreUser_USU = ISNULL(@usuario, NombreUser_USU),
			Mail_USU = ISNULL(@email, Mail_USU),
			CodTarjeta_USU = ISNULL(@numtarjeta, CodTarjeta_USU),
			NombreTarj_USU = ISNULL(@nomtarjeta, NombreTarj_USU),
			Password_USU = ISNULL(@contraseña, Password_USU)
		WHERE
			NombreUser_USU = @usuario
		IF @@ROWCOUNT > 0
			SELECT 'OK', 'Usuario actualizado con exito'
		ELSE 
			SELECT 'NO', 'No se pudo actualizar el usuario'
	END
END
GO
/****** Object:  StoredProcedure [dbo].[UP_HG_Usuarios_Consultar]    Script Date: 25/2/2018 23:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[UP_HG_Usuarios_Consultar]
@op varchar(30),
@usuario varchar(50) = null
AS
BEGIN
	IF @op = 'get'
	BEGIN
		SELECT 
			NombreUser_USU AS [user],
			Mail_USU AS email,
			CodTarjeta_USU AS ncard,
			NombreTarj_USU AS card
		FROM
			Usuarios
		WHERE
			NombreUser_USU = @usuario
	END
END
GO
/****** Object:  StoredProcedure [dbo].[UP_HG_Usuarios_Login]    Script Date: 25/2/2018 23:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--UP_HG_Usuarios_Login 'test', '123'

CREATE procedure [dbo].[UP_HG_Usuarios_Login]
@usuario varchar(50),
@pwd varchar(50)
AS
BEGIN
	SELECT * FROM Usuarios where NombreUser_USU = @usuario and Password_USU = @pwd
END
GO
