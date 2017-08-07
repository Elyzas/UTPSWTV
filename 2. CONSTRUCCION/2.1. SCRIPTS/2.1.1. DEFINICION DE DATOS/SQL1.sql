/*
Created: 23/07/2017
Modified: 3/08/2017
Model: ENCOMIENDAS
Database: MS SQL Server 2008
*/


-- Drop relationships section -------------------------------------------------

ALTER TABLE [dbo].[USUARIO] DROP CONSTRAINT [Relationship41]
go
ALTER TABLE [dbo].[FACTURA_DETALLE] DROP CONSTRAINT [Relationship31]
go
ALTER TABLE [dbo].[FACTURA_DETALLE] DROP CONSTRAINT [Relationship30]
go
ALTER TABLE [dbo].[FACTURA] DROP CONSTRAINT [Relationship29]
go
ALTER TABLE [dbo].[FACTURA] DROP CONSTRAINT [Relationship28]
go
ALTER TABLE [dbo].[BOLETA_DETALLE] DROP CONSTRAINT [Relationship27]
go
ALTER TABLE [dbo].[BOLETA_DETALLE] DROP CONSTRAINT [Relationship26]
go
ALTER TABLE [dbo].[BOLETA] DROP CONSTRAINT [Relationship25]
go
ALTER TABLE [dbo].[BOLETA] DROP CONSTRAINT [Relationship24]
go
ALTER TABLE [dbo].[USUARIO] DROP CONSTRAINT [Relationship22]
go
ALTER TABLE [dbo].[USUARIO] DROP CONSTRAINT [Relationship21]
go
ALTER TABLE [dbo].[CLIENTE] DROP CONSTRAINT [Relationship16]
go
ALTER TABLE [dbo].[PERSONA_DIRECCIONES] DROP CONSTRAINT [Relationship13]
go
ALTER TABLE [dbo].[PERSONA_DIRECCIONES] DROP CONSTRAINT [Relationship12]
go
ALTER TABLE [dbo].[PERSONA_TELEFONOS] DROP CONSTRAINT [Relationship11]
go
ALTER TABLE [dbo].[PERSONA_TELEFONOS] DROP CONSTRAINT [Relationship10]
go
ALTER TABLE [dbo].[EMPRESA_DIRECCIONES] DROP CONSTRAINT [Relationship7]
go
ALTER TABLE [dbo].[EMPRESA_DIRECCIONES] DROP CONSTRAINT [Relationship6]
go
ALTER TABLE [dbo].[EMPRESA_TELEFONOS] DROP CONSTRAINT [Relationship4]
go
ALTER TABLE [dbo].[EMPRESA_TELEFONOS] DROP CONSTRAINT [Relationship3]
go
ALTER TABLE [dbo].[MENU_ROLES] DROP CONSTRAINT [Relationship2]
go
ALTER TABLE [dbo].[MENU_ROLES] DROP CONSTRAINT [Relationship1]
go




-- Drop keys for tables section -------------------------------------------------

ALTER TABLE [dbo].[Entity17] DROP CONSTRAINT [Key21]
go
ALTER TABLE [dbo].[FACTURA_DETALLE] DROP CONSTRAINT [Key19]
go
ALTER TABLE [dbo].[BOLETA_DETALLE] DROP CONSTRAINT [Key18]
go
ALTER TABLE [dbo].[FACTURA] DROP CONSTRAINT [Key17]
go
ALTER TABLE [dbo].[BOLETA] DROP CONSTRAINT [Key16]
go
ALTER TABLE [dbo].[PRODUCTO] DROP CONSTRAINT [Key15]
go
ALTER TABLE [dbo].[PERSONA_DIRECCIONES] DROP CONSTRAINT [Key14]
go
ALTER TABLE [dbo].[PERSONA_TELEFONOS] DROP CONSTRAINT [Key13]
go
ALTER TABLE [dbo].[PERSONA] DROP CONSTRAINT [Key12]
go
ALTER TABLE [dbo].[CLIENTE] DROP CONSTRAINT [Key11]
go
ALTER TABLE [dbo].[USUARIO] DROP CONSTRAINT [Key10]
go
ALTER TABLE [dbo].[EMPRESA_DIRECCIONES] DROP CONSTRAINT [Key9]
go
ALTER TABLE [dbo].[EMPRESA_TELEFONOS] DROP CONSTRAINT [Key8]
go
ALTER TABLE [dbo].[TELEFONOS] DROP CONSTRAINT [Key7]
go
ALTER TABLE [dbo].[DIRECCIONES] DROP CONSTRAINT [Key6]
go
ALTER TABLE [dbo].[EMPRESA] DROP CONSTRAINT [Key5]
go
ALTER TABLE [dbo].[MENU_ROLES] DROP CONSTRAINT [Key4]
go
ALTER TABLE [dbo].[ROLES] DROP CONSTRAINT [Key3]
go
ALTER TABLE [dbo].[MENU] DROP CONSTRAINT [Key2]
go
ALTER TABLE [dbo].[SUCURSAL] DROP CONSTRAINT [Key1]
go




-- Drop tables section ---------------------------------------------------

DROP TABLE [dbo].[Entity17]
go
DROP TABLE [dbo].[FACTURA_DETALLE]
go
DROP TABLE [dbo].[BOLETA_DETALLE]
go
DROP TABLE [dbo].[FACTURA]
go
DROP TABLE [dbo].[BOLETA]
go
DROP TABLE [dbo].[PRODUCTO]
go
DROP TABLE [dbo].[PERSONA_DIRECCIONES]
go
DROP TABLE [dbo].[PERSONA_TELEFONOS]
go
DROP TABLE [dbo].[PERSONA]
go
DROP TABLE [dbo].[CLIENTE]
go
DROP TABLE [dbo].[USUARIO]
go
DROP TABLE [dbo].[EMPRESA_DIRECCIONES]
go
DROP TABLE [dbo].[EMPRESA_TELEFONOS]
go
DROP TABLE [dbo].[TELEFONOS]
go
DROP TABLE [dbo].[DIRECCIONES]
go
DROP TABLE [dbo].[EMPRESA]
go
DROP TABLE [dbo].[MENU_ROLES]
go
DROP TABLE [dbo].[ROLES]
go
DROP TABLE [dbo].[MENU]
go
DROP TABLE [dbo].[SUCURSAL]
go

-- Create tables section -------------------------------------------------

-- Table dbo.SUCURSAL

CREATE TABLE [dbo].[SUCURSAL]
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
go

-- Add keys for table dbo.SUCURSAL

ALTER TABLE [dbo].[SUCURSAL] ADD CONSTRAINT [Key1] PRIMARY KEY ([SUCU_Codigo])
go

-- Table dbo.MENU

CREATE TABLE [dbo].[MENU]
(
 [MENU_Codigo] Nvarchar(10) NOT NULL,
 [MENU_Nombre] Nvarchar(100) NULL,
 [MENU_CodigoPadre] Nvarchar(10) NULL,
 [MENU_URL] Nvarchar(200) NULL,
 [MENU_Nivel] Int NULL,
 [MENU_Redirecciona] Bit NULL,
 [MENU_Estado] Int NULL,
 [AUDI_UsuAdd] Nvarchar(11) NULL,
 [AUDI_FecAdd] Datetime NULL,
 [AUDI_UsuMod] Nvarchar(11) NULL,
 [AUDI_FecMod] Datetime NULL
)
go

-- Add keys for table dbo.MENU

ALTER TABLE [dbo].[MENU] ADD CONSTRAINT [Key2] PRIMARY KEY ([MENU_Codigo])
go

-- Table dbo.ROLES

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

-- Add keys for table dbo.ROLES

ALTER TABLE [dbo].[ROLES] ADD CONSTRAINT [Key3] PRIMARY KEY ([ROL_Codigo])
go

-- Table dbo.MENU_ROLES

CREATE TABLE [dbo].[MENU_ROLES]
(
 [MENU_Codigo] Nvarchar(10) NOT NULL,
 [ROL_Codigo] Int NOT NULL
)
go

-- Add keys for table dbo.MENU_ROLES

ALTER TABLE [dbo].[MENU_ROLES] ADD CONSTRAINT [Key4] PRIMARY KEY ([MENU_Codigo],[ROL_Codigo])
go

-- Table dbo.EMPRESA

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

-- Add keys for table dbo.EMPRESA

ALTER TABLE [dbo].[EMPRESA] ADD CONSTRAINT [Key5] PRIMARY KEY ([EMPR_Codigo])
go

-- Table dbo.DIRECCIONES

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

-- Add keys for table dbo.DIRECCIONES

ALTER TABLE [dbo].[DIRECCIONES] ADD CONSTRAINT [Key6] PRIMARY KEY ([DIRE_Codigo])
go

-- Table dbo.TELEFONOS

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

-- Add keys for table dbo.TELEFONOS

ALTER TABLE [dbo].[TELEFONOS] ADD CONSTRAINT [Key7] PRIMARY KEY ([TELE_Codigo])
go

-- Table dbo.EMPRESA_TELEFONOS

CREATE TABLE [dbo].[EMPRESA_TELEFONOS]
(
 [EMTE_Codigo] Int IDENTITY NOT NULL,
 [EMPR_Codigo] Int NOT NULL,
 [TELE_Codigo] Int NOT NULL
)
go

-- Add keys for table dbo.EMPRESA_TELEFONOS

ALTER TABLE [dbo].[EMPRESA_TELEFONOS] ADD CONSTRAINT [Key8] PRIMARY KEY ([EMPR_Codigo],[TELE_Codigo],[EMTE_Codigo])
go

-- Table dbo.EMPRESA_DIRECCIONES

CREATE TABLE [dbo].[EMPRESA_DIRECCIONES]
(
 [EMDI_Codigo] Int IDENTITY NOT NULL,
 [DIRE_Codigo] Int NOT NULL,
 [EMPR_Codigo] Int NOT NULL
)
go

-- Add keys for table dbo.EMPRESA_DIRECCIONES

ALTER TABLE [dbo].[EMPRESA_DIRECCIONES] ADD CONSTRAINT [Key9] PRIMARY KEY ([DIRE_Codigo],[EMDI_Codigo],[EMPR_Codigo])
go

-- Table dbo.USUARIO

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

-- Add keys for table dbo.USUARIO

ALTER TABLE [dbo].[USUARIO] ADD CONSTRAINT [Key10] PRIMARY KEY ([USUA_Codigo])
go

-- Table dbo.CLIENTE

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

-- Add keys for table dbo.CLIENTE

ALTER TABLE [dbo].[CLIENTE] ADD CONSTRAINT [Key11] PRIMARY KEY ([CLIE_Codigo])
go

-- Table dbo.PERSONA

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

-- Add keys for table dbo.PERSONA

ALTER TABLE [dbo].[PERSONA] ADD CONSTRAINT [Key12] PRIMARY KEY ([PERS_Codigo])
go

-- Table dbo.PERSONA_TELEFONOS

CREATE TABLE [dbo].[PERSONA_TELEFONOS]
(
 [PETE_Codigo] Int IDENTITY NOT NULL,
 [PERS_Codigo] Int NOT NULL,
 [TELE_Codigo] Int NOT NULL
)
go

-- Add keys for table dbo.PERSONA_TELEFONOS

ALTER TABLE [dbo].[PERSONA_TELEFONOS] ADD CONSTRAINT [Key13] PRIMARY KEY ([PERS_Codigo],[TELE_Codigo],[PETE_Codigo])
go

-- Table dbo.PERSONA_DIRECCIONES

CREATE TABLE [dbo].[PERSONA_DIRECCIONES]
(
 [PEDI_Codigo] Int IDENTITY NOT NULL,
 [PERS_Codigo] Int NOT NULL,
 [DIRE_Codigo] Int NOT NULL
)
go

-- Add keys for table dbo.PERSONA_DIRECCIONES

ALTER TABLE [dbo].[PERSONA_DIRECCIONES] ADD CONSTRAINT [Key14] PRIMARY KEY ([PERS_Codigo],[DIRE_Codigo],[PEDI_Codigo])
go

-- Table dbo.PRODUCTO

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

-- Add keys for table dbo.PRODUCTO

ALTER TABLE [dbo].[PRODUCTO] ADD CONSTRAINT [Key15] PRIMARY KEY ([PROD_Codigo])
go

-- Table dbo.BOLETA

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

-- Add keys for table dbo.BOLETA

ALTER TABLE [dbo].[BOLETA] ADD CONSTRAINT [Key16] PRIMARY KEY ([BOLE_Codigo])
go

-- Table dbo.FACTURA

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

-- Add keys for table dbo.FACTURA

ALTER TABLE [dbo].[FACTURA] ADD CONSTRAINT [Key17] PRIMARY KEY ([FACT_Codigo])
go

-- Table dbo.BOLETA_DETALLE

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

-- Add keys for table dbo.BOLETA_DETALLE

ALTER TABLE [dbo].[BOLETA_DETALLE] ADD CONSTRAINT [Key18] PRIMARY KEY ([BODE_Codigo],[BOLE_Codigo],[PROD_Codigo])
go

-- Table dbo.FACTURA_DETALLE

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

-- Add keys for table dbo.FACTURA_DETALLE

ALTER TABLE [dbo].[FACTURA_DETALLE] ADD CONSTRAINT [Key19] PRIMARY KEY ([FADE_Codigo],[PROD_Codigo],[FACT_Codigo])
go

-- Table dbo.Entity17

CREATE TABLE [dbo].[Entity17]
(
 [VEHI_Codigo] Int IDENTITY NOT NULL,
 [VEHI_Placa] Nvarchar(8) NULL,
 [VEHI_Marca] Nvarchar(50) NULL,
 [VEHI_Modelo] Nvarchar(50) NULL,
 [VEHI_Color] Nvarchar(50) NULL,
 [TIPO_Vehiculo] Int NULL,
 [VEHI_AnioFabricacion] Int NULL,
 [AUDI_UsuAdd] Nvarchar(11) NULL,
 [AUDI_FecAdd] Datetime NULL,
 [AUDI_UsuMod] Nvarchar(11) NULL,
 [AUDI_FecMod] Datetime NULL
)
go

-- Add keys for table dbo.Entity17

ALTER TABLE [dbo].[Entity17] ADD CONSTRAINT [Key21] PRIMARY KEY ([VEHI_Codigo])
go

-- Create relationships section ------------------------------------------------- 

ALTER TABLE [dbo].[MENU_ROLES] ADD CONSTRAINT [Relationship1] FOREIGN KEY ([MENU_Codigo]) REFERENCES [dbo].[MENU] ([MENU_Codigo])
go

ALTER TABLE [dbo].[MENU_ROLES] ADD CONSTRAINT [Relationship2] FOREIGN KEY ([ROL_Codigo]) REFERENCES [dbo].[ROLES] ([ROL_Codigo])
go

ALTER TABLE [dbo].[EMPRESA_TELEFONOS] ADD CONSTRAINT [Relationship3] FOREIGN KEY ([EMPR_Codigo]) REFERENCES [dbo].[EMPRESA] ([EMPR_Codigo])
go

ALTER TABLE [dbo].[EMPRESA_TELEFONOS] ADD CONSTRAINT [Relationship4] FOREIGN KEY ([TELE_Codigo]) REFERENCES [dbo].[TELEFONOS] ([TELE_Codigo])
go

ALTER TABLE [dbo].[EMPRESA_DIRECCIONES] ADD CONSTRAINT [Relationship6] FOREIGN KEY ([DIRE_Codigo]) REFERENCES [dbo].[DIRECCIONES] ([DIRE_Codigo])
go

ALTER TABLE [dbo].[EMPRESA_DIRECCIONES] ADD CONSTRAINT [Relationship7] FOREIGN KEY ([EMPR_Codigo]) REFERENCES [dbo].[EMPRESA] ([EMPR_Codigo])
go

ALTER TABLE [dbo].[PERSONA_TELEFONOS] ADD CONSTRAINT [Relationship10] FOREIGN KEY ([PERS_Codigo]) REFERENCES [dbo].[PERSONA] ([PERS_Codigo])
go

ALTER TABLE [dbo].[PERSONA_TELEFONOS] ADD CONSTRAINT [Relationship11] FOREIGN KEY ([TELE_Codigo]) REFERENCES [dbo].[TELEFONOS] ([TELE_Codigo])
go

ALTER TABLE [dbo].[PERSONA_DIRECCIONES] ADD CONSTRAINT [Relationship12] FOREIGN KEY ([PERS_Codigo]) REFERENCES [dbo].[PERSONA] ([PERS_Codigo])
go

ALTER TABLE [dbo].[PERSONA_DIRECCIONES] ADD CONSTRAINT [Relationship13] FOREIGN KEY ([DIRE_Codigo]) REFERENCES [dbo].[DIRECCIONES] ([DIRE_Codigo])
go

ALTER TABLE [dbo].[CLIENTE] ADD CONSTRAINT [Relationship16] FOREIGN KEY ([PERS_Codigo]) REFERENCES [dbo].[PERSONA] ([PERS_Codigo])
go

ALTER TABLE [dbo].[USUARIO] ADD CONSTRAINT [Relationship21] FOREIGN KEY ([PERS_Codigo]) REFERENCES [dbo].[PERSONA] ([PERS_Codigo])
go

ALTER TABLE [dbo].[USUARIO] ADD CONSTRAINT [Relationship22] FOREIGN KEY ([SUCU_Codigo]) REFERENCES [dbo].[SUCURSAL] ([SUCU_Codigo])
go

ALTER TABLE [dbo].[BOLETA] ADD CONSTRAINT [Relationship24] FOREIGN KEY ([USUA_Codigo]) REFERENCES [dbo].[USUARIO] ([USUA_Codigo])
go

ALTER TABLE [dbo].[BOLETA] ADD CONSTRAINT [Relationship25] FOREIGN KEY ([CLIE_Codigo]) REFERENCES [dbo].[CLIENTE] ([CLIE_Codigo])
go

ALTER TABLE [dbo].[BOLETA_DETALLE] ADD CONSTRAINT [Relationship26] FOREIGN KEY ([BOLE_Codigo]) REFERENCES [dbo].[BOLETA] ([BOLE_Codigo])
go

ALTER TABLE [dbo].[BOLETA_DETALLE] ADD CONSTRAINT [Relationship27] FOREIGN KEY ([PROD_Codigo]) REFERENCES [dbo].[PRODUCTO] ([PROD_Codigo])
go

ALTER TABLE [dbo].[FACTURA] ADD CONSTRAINT [Relationship28] FOREIGN KEY ([USUA_Codigo]) REFERENCES [dbo].[USUARIO] ([USUA_Codigo])
go

ALTER TABLE [dbo].[FACTURA] ADD CONSTRAINT [Relationship29] FOREIGN KEY ([EMPR_Codigo]) REFERENCES [dbo].[EMPRESA] ([EMPR_Codigo])
go

ALTER TABLE [dbo].[FACTURA_DETALLE] ADD CONSTRAINT [Relationship30] FOREIGN KEY ([PROD_Codigo]) REFERENCES [dbo].[PRODUCTO] ([PROD_Codigo])
go

ALTER TABLE [dbo].[FACTURA_DETALLE] ADD CONSTRAINT [Relationship31] FOREIGN KEY ([FACT_Codigo]) REFERENCES [dbo].[FACTURA] ([FACT_Codigo])
go

ALTER TABLE [dbo].[USUARIO] ADD CONSTRAINT [Relationship41] FOREIGN KEY ([ROL_Codigo]) REFERENCES [dbo].[ROLES] ([ROL_Codigo])
go



