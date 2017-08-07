/********************************************************************
Descripción: Creacion de la base de datos
Fecha:05-08-17
Autor:Elizabeth Huanca Encalada
Versión: Segunda version
Cambios Importantes:
*********************************************************************/

/*CREATE DATABASE TRANSPORTEV;*/

/********************************************************************
Descripción: Creacion tablas
Fecha:05-08-17
Autor:Elizabeth Huanca Encalada
Versión: Segunda version
Cambios Importantes:
*********************************************************************/

IF EXISTS(SELECT * FROM SYSOBJECTS WHERE TYPE='U' AND name='SUCURSAL')
DROP TABLE SUCURSAL
GO

CREATE TABLE SUCURSAL 
(
	 [SUCU_Codigo] Int IDENTITY NOT NULL,
	 [SUCU_Nombre] Nvarchar(100) NULL, 
	 [SUCU_Direccion] Nvarchar(300) NULL,
	 [SUCU_Telefono] Nvarchar(200) NULL,
	 [SUCU_Estado] Int NULL,
	 [AUDI_UsuAdd] Nvarchar(11) NULL,
	 [AUDI_FecAdd] Datetime NULL,
	 [AUDI_UsuMod] Nvarchar(11) NULL,
	 [AUDI_FecMod] Datetime NULL
)
GO

IF EXISTS(SELECT * FROM SYSOBJECTS WHERE TYPE='U' AND name='ROLES')
DROP TABLE ROLES
GO

CREATE TABLE [dbo].[ROLES]
(
	 [ROL_Codigo] Int IDENTITY NOT NULL,
	 [ROL_Nombre] Nvarchar(100) NULL,
	 [ROL_Estado] Int NULL,
	 [AUDI_UsuAdd] Nvarchar(11) NULL,
	 [AUDI_FecAdd] Datetime NULL,
	 [AUDI_UsuMod] Nvarchar(11) NULL,
	 [AUDI_FecMod] Datetime NULL
)
go

IF EXISTS(SELECT * FROM SYSOBJECTS WHERE TYPE='U' AND name='MENU_ROLES')
DROP TABLE MENU_ROLES
GO

CREATE TABLE [dbo].[MENU_ROLES]
(
	 [MENU_Codigo] Nvarchar(10) NOT NULL,
	 [ROL_Codigo] Int NOT NULL
)
go

IF EXISTS(SELECT * FROM SYSOBJECTS WHERE TYPE='U' AND name='EMPRESA')
DROP TABLE EMPRESA
GO
CREATE TABLE [dbo].[EMPRESA]
(
	 [EMPR_Codigo] Int IDENTITY NOT NULL,
	 [EMPR_RUC] Nvarchar(1) NULL,
	 [EMPR_RazonSocial] Nvarchar(1) NULL,
	 [AUDI_UsuAdd] Nvarchar(1) NULL,
	 [AUDI_FecAdd] Datetime NULL,
	 [AUDI_UsuMod] Nvarchar(1) NULL,
	 [AUDI_FecMod] Datetime NULL
)
go

IF EXISTS(SELECT * FROM SYSOBJECTS WHERE TYPE='U' AND name='DIRECCIONES')
DROP TABLE DIRECCIONES
GO
CREATE TABLE [dbo].[DIRECCIONES]
(
	 [DIRE_Codigo] Int IDENTITY NOT NULL,
	 [DIRE_Direccion] Nvarchar(200) NULL,
	 [DIRE_Calle] Nvarchar(200) NULL,
	 [DIRE_Numero] Nvarchar(10) NULL,
	 [DIRE_Referencia] Nvarchar(300) NULL,
	 [DIRE_Ubigeo] Nvarchar(8) NULL,
	 [TIPO_Direccion] Int NULL,
	 [AUDI_UsuAdd] Nvarchar(11) NULL,
	 [AUDI_FecAdd] Datetime NULL,
	 [AUDI_UsuMod] Nvarchar(11) NULL,
	 [AUDI_FecMod] Datetime NULL
)
go

IF EXISTS(SELECT * FROM SYSOBJECTS WHERE TYPE='U' AND name='TELEFONOS')
DROP TABLE TELEFONOS
GO
CREATE TABLE [dbo].[TELEFONOS]
(
	 [TELE_Codigo] Int IDENTITY NOT NULL,
	 [TELE_Numero] Nvarchar(20) NULL,
	 [TIPO_Telefono] Int NULL,
	 [TELE_Observacion] Nvarchar(300) NULL,
	 [TELE_ANEXO] Nvarchar(100) NULL,
	 [AUDI_UsuAdd] Nvarchar(11) NULL,
	 [AUDI_FecAdd] Datetime NULL,
	 [AUDI_UsuMod] Nvarchar(11) NULL,
	 [AUDI_FecMod] Datetime NULL
)
go
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE TYPE='U' AND name='EMPRESA_TELEFONOS')
DROP TABLE EMPRESA_TELEFONOS
GO
CREATE TABLE [dbo].[EMPRESA_TELEFONOS]
(
	 [EMTE_Codigo] Int IDENTITY NOT NULL,
	 [EMPR_Codigo] Int NOT NULL,
	 [TELE_Codigo] Int NOT NULL
)
go

IF EXISTS(SELECT * FROM SYSOBJECTS WHERE TYPE='U' AND name='EMPRESA_DIRECCIONES')
DROP TABLE EMPRESA_DIRECCIONES
GO
CREATE TABLE [dbo].[EMPRESA_DIRECCIONES]
(
	 [EMDI_Codigo] Int IDENTITY NOT NULL,
	 [DIRE_Codigo] Int NOT NULL,
	 [EMPR_Codigo] Int NOT NULL
)
go


IF EXISTS(SELECT * FROM SYSOBJECTS WHERE TYPE='U' AND name='USUARIO')
DROP TABLE USUARIO
GO

CREATE TABLE [dbo].[USUARIO]
(
	 [USUA_Codigo] Nvarchar(20) NOT NULL,
	 [USUA_Contraseña] Nvarchar(200) NULL,
	 [USUA_Estado] Int NULL,
	 [USUA_Correo] Nvarchar(100) NULL,
	 [USUA_FechaInicio] Datetime NULL,
	 [USUA_FechaFin] Datetime NULL,
	 [AUDI_UsuAdd] Nvarchar(11) NULL,
	 [AUDI_FecAdd] Datetime NULL,
	 [AUDI_UsuMod] Nvarchar(11) NULL,
	 [AUDI_FecMod] Datetime NULL,
	 [PERS_Codigo] Int NULL,
	 [SUCU_Codigo] Int NULL,
	 [ROL_Codigo] Int NULL
)
go

IF EXISTS(SELECT * FROM SYSOBJECTS WHERE TYPE='U' AND name='CLIENTE')
DROP TABLE CLIENTE
GO

CREATE TABLE [dbo].[CLIENTE]
(
	 [CLIE_Codigo] Int IDENTITY NOT NULL,
	 [AUDI_UsuAdd] Nvarchar(1) NULL,
	 [AUDI_FecAdd] Datetime NULL,
	 [AUDI_UsuMod] Nvarchar(1) NULL,
	 [AUDI_FecMod] Datetime NULL,
	 [PERS_Codigo] Int NULL
)
go

IF EXISTS(SELECT * FROM SYSOBJECTS WHERE TYPE='U' AND name='PERSONA')
DROP TABLE PERSONA
GO
CREATE TABLE [dbo].[PERSONA]
(
	 [PERS_Codigo] Int IDENTITY NOT NULL,
	 [PERS_Nombres] Nvarchar(100) NULL,
	 [PERS_Apellidos] Nvarchar(100) NULL,
	 [PERS_FechaNacimiento] Datetime NULL,
	 [PERS_Correo] Nvarchar(100) NULL,
	 [PERS_Sexo] Nvarchar(30) NULL,
	 [PERS_NumDocumento] Nvarchar(8) NULL,
	 [AUDI_UsuAdd] Nvarchar(11) NULL,
	 [AUDI_FecAdd] Datetime NULL,
	 [AUDI_UsuMod] Nvarchar(11) NULL,
	 [AUDI_FecMod] Datetime NULL
)
go
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE TYPE='U' AND name='PERSONA_TELEFONOS')
DROP TABLE PERSONA_TELEFONOS
GO
CREATE TABLE [dbo].[PERSONA_TELEFONOS]
(
	 [PETE_Codigo] Int IDENTITY NOT NULL,
	 [PERS_Codigo] Int NOT NULL,
	 [TELE_Codigo] Int NOT NULL
)
go

IF EXISTS(SELECT * FROM SYSOBJECTS WHERE TYPE='U' AND name='PERSONA_DIRECCIONES')
DROP TABLE PERSONA_DIRECCIONES
GO
CREATE TABLE [dbo].[PERSONA_DIRECCIONES]
(
	 [PEDI_Codigo] Int IDENTITY NOT NULL,
	 [PERS_Codigo] Int NOT NULL,
	 [DIRE_Codigo] Int NOT NULL
)
go

IF EXISTS(SELECT * FROM SYSOBJECTS WHERE TYPE='U' AND name='PRODUCTO')
DROP TABLE PRODUCTO
GO
CREATE TABLE [dbo].[PRODUCTO]
(
	 [PROD_Codigo] Int IDENTITY NOT NULL,
	 [PROD_Cantidad] Int NULL,
	 [PROD_Peso] Decimal(18,2) NULL,
	 [TIPO_Producto] Int NULL,
	 [PROD_Detalle] Nvarchar(300) NULL,
	 [PROD_Estado] Int NULL,
	 [AUDI_UsuAdd] Nvarchar(11) NULL,
	 [AUDI_FecAdd] Datetime NULL,
	 [AUDI_UsuMod] Nvarchar(11) NULL,
	 [AUDI_FecMod] Datetime NULL
)
go

IF EXISTS(SELECT * FROM SYSOBJECTS WHERE TYPE='U' AND name='BOLETA')
DROP TABLE BOLETA
GO

CREATE TABLE [dbo].[BOLETA]
(
	 [BOLE_Codigo] Int IDENTITY NOT NULL,
	 [BOLE_FechaEmision] Datetime NULL,
	 [BOLE_Estado] Int NULL,
	 [BOLE_Total] Decimal(18,0) NULL,
	 [AUDI_UsuAdd] Nvarchar(11) NULL,
	 [AUDI_FecAdd] Datetime NULL,
	 [AUDI_UsuMod] Nvarchar(11) NULL,
	 [AUDI_FecMod] Datetime NULL,
	 [USUA_Codigo] Nvarchar(20) NULL,
	 [CLIE_Codigo] Int NULL
)
go
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE TYPE='U' AND name='BOLETA_DETALLE')
DROP TABLE BOLETA_DETALLE
GO

CREATE TABLE [dbo].[BOLETA_DETALLE]
(
 [BODE_Codigo] Int IDENTITY NOT NULL,
 [BODE_Cantidad] Decimal(18,2) NULL,
 [BODE_Importe] Decimal(18,2) NULL,
 [AUDI_UsuAdd] Nvarchar(11) NULL,
 [AUDI_FecAdd] Datetime NULL,
 [AUDI_UsuMod] Nvarchar(11) NULL,
 [AUDI_FecMod] Datetime NULL,
 [BOLE_Codigo] Int NOT NULL,
 [PROD_Codigo] Int NOT NULL
)
go

IF EXISTS(SELECT * FROM SYSOBJECTS WHERE TYPE='U' AND name='FACTURA')
DROP TABLE FACTURA
GO
CREATE TABLE [dbo].[FACTURA]
(
	 [FACT_Codigo] Int IDENTITY NOT NULL,
	 [FACT_FechaEmision] Datetime NULL,
	 [FACT_Estado] Int NULL,
	 [FACT_SubTotal] Decimal(18,2) NULL,
	 [FACT_Total] Decimal(18,2) NULL,
	 [FACT_IGV] Decimal(18,2) NULL,
	 [AUDI_UsuAdd] Nvarchar(11) NULL,
	 [AUDI_FecAdd] Datetime NULL,
	 [AUDI_UsuMod] Nvarchar(11) NULL,
	 [AUDI_FecMod] Datetime NULL,
	 [USUA_Codigo] Nvarchar(20) NULL,
	 [EMPR_Codigo] Int NULL
)
go

IF EXISTS(SELECT * FROM SYSOBJECTS WHERE TYPE='U' AND name='FACTURA_DETALLE')
DROP TABLE FACTURA_DETALLE
GO

CREATE TABLE [dbo].[FACTURA_DETALLE]
(
	 [FADE_Codigo] Int IDENTITY NOT NULL,
	 [FADE_Cantidad] Decimal(18,0) NULL,
	 [FADE_PrecioUnitario] Decimal(18,0) NULL,
	 [FADE_Importe] Decimal(18,0) NULL,
	 [AUDI_UsuAdd] Nvarchar(11) NULL,
	 [AUDI_FecAdd] Datetime NULL,
	 [AUDI_UsuMod] Nvarchar(11) NULL,
	 [AUDI_FecMod] Datetime NULL,
	 [PROD_Codigo] Int NOT NULL,
	 [FACT_Codigo] Int NOT NULL
)
go

/*Creación de las claves primarias*/

