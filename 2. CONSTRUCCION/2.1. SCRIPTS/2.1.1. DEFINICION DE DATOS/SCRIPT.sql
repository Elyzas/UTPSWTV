CREATE DATABASE ENCOMIENDAS

USE ENCOMIENDAS

/*
Created: 7/23/2017
Modified: 8/15/2017
Model: ENCOMIENDAS
Database: MS SQL Server 2008
*/


-- Drop relationships section -------------------------------------------------

ALTER TABLE [dbo].[GUIA_REMISION] DROP CONSTRAINT [REL_VEHICULO_GUIA_REMISION]
go
ALTER TABLE [dbo].[GUIA_REMISION] DROP CONSTRAINT [REL_SUCURSAL_DESTINO_GUIA_REMISION]
go
ALTER TABLE [dbo].[GUIA_REMISION] DROP CONSTRAINT [REL_ALMACEN_GUIA_REMISION]
go
ALTER TABLE [dbo].[UBICACIONES] DROP CONSTRAINT [REL_VEHICULO_UBICACIONES]
go
ALTER TABLE [dbo].[VEHICULO] DROP CONSTRAINT [REL_VEHICULO_USUARIO]
go
ALTER TABLE [dbo].[PERSONA_DIRECCIONES] DROP CONSTRAINT [REL_DIRECCIONES_PERSONA]
go
ALTER TABLE [dbo].[PERSONA_DIRECCIONES] DROP CONSTRAINT [REL_PERSONA_DIRECCIONES]
go
ALTER TABLE [dbo].[USUARIO] DROP CONSTRAINT [REL_USUARIO_ROLES]
go
ALTER TABLE [dbo].[ALMACEN] DROP CONSTRAINT [REL_ALMACEN_USUARIO_ENTREGA]
go
ALTER TABLE [dbo].[ALMACEN] DROP CONSTRAINT [REL_ALMACEN_USUARIO_RECEPCIONA]
go
ALTER TABLE [dbo].[ALMACEN] DROP CONSTRAINT [REL_ALMACEN_PRODUCTO]
go
ALTER TABLE [dbo].[ALMACEN] DROP CONSTRAINT [REL_ALMACEN_SUCURSAL_DESTINO]
go
ALTER TABLE [dbo].[ALMACEN] DROP CONSTRAINT [REL_ALMACEN_SUCURSAL_ORIGEN]
go
ALTER TABLE [dbo].[FACTURA_DETALLE] DROP CONSTRAINT [REL_FACTURA_FACTURA_DETALLE]
go
ALTER TABLE [dbo].[FACTURA_DETALLE] DROP CONSTRAINT [REL_FACTURA_DETALLE_PRODUCTO]
go
ALTER TABLE [dbo].[FACTURA] DROP CONSTRAINT [REL_FACTURA_EMPRESA]
go
ALTER TABLE [dbo].[FACTURA] DROP CONSTRAINT [REL_FACTURA_USUARIO]
go
ALTER TABLE [dbo].[BOLETA_DETALLE] DROP CONSTRAINT [REL_BOLETA_DETALLE_PRODUCTO]
go
ALTER TABLE [dbo].[BOLETA_DETALLE] DROP CONSTRAINT [REL_BOLETA_BOLETA_DETALLE]
go
ALTER TABLE [dbo].[BOLETA] DROP CONSTRAINT [REL_CLIENTE_BOLETA]
go
ALTER TABLE [dbo].[BOLETA] DROP CONSTRAINT [REL_BOLETA_USUARIO]
go
ALTER TABLE [dbo].[USUARIO] DROP CONSTRAINT [REL_USUARIO_SUCURSAL]
go
ALTER TABLE [dbo].[USUARIO] DROP CONSTRAINT [REL_USUARIO_PERSONA]
go
ALTER TABLE [dbo].[CLIENTE] DROP CONSTRAINT [REL_CLIENTE_PERSONA]
go
ALTER TABLE [dbo].[PERSONA_TELEFONOS] DROP CONSTRAINT [REL_TELEFONOS_PERSONA]
go
ALTER TABLE [dbo].[PERSONA_TELEFONOS] DROP CONSTRAINT [REL_PERSONA_TELEFONOS]
go
ALTER TABLE [dbo].[EMPRESA_DIRECCIONES] DROP CONSTRAINT [REL_EMPRESA_DIRECCIONES]
go
ALTER TABLE [dbo].[EMPRESA_DIRECCIONES] DROP CONSTRAINT [REL_DIRECCIONES_EMPRESA]
go
ALTER TABLE [dbo].[EMPRESA_TELEFONOS] DROP CONSTRAINT [REL_TELEFONOS_EMPRESA]
go
ALTER TABLE [dbo].[EMPRESA_TELEFONOS] DROP CONSTRAINT [REL_EMPRESA_TELEFONOS]
go
ALTER TABLE [dbo].[MENU_ROLES] DROP CONSTRAINT [REL_ROLES_MENU]
go
ALTER TABLE [dbo].[MENU_ROLES] DROP CONSTRAINT [REL_MENU_ROLES]
go




-- Drop keys for tables section -------------------------------------------------

ALTER TABLE [dbo].[GUIA_REMISION] DROP CONSTRAINT [PK_GUIA_REMISION]
go
ALTER TABLE [dbo].[UBICACIONES] DROP CONSTRAINT [PK_UBICACIONES]
go
ALTER TABLE [dbo].[PERSONA_DIRECCIONES] DROP CONSTRAINT [PFK_PERSONA_DIRECCIONES]
go
ALTER TABLE [dbo].[VEHICULO] DROP CONSTRAINT [PK_VEHICULO]
go
ALTER TABLE [dbo].[ALMACEN] DROP CONSTRAINT [PFK_ALMACEN]
go
ALTER TABLE [dbo].[FACTURA_DETALLE] DROP CONSTRAINT [PFK_FACTURA_DETALLE]
go
ALTER TABLE [dbo].[BOLETA_DETALLE] DROP CONSTRAINT [PFK_BOLETA_DETALLE]
go
ALTER TABLE [dbo].[FACTURA] DROP CONSTRAINT [PK_FACTURA]
go
ALTER TABLE [dbo].[BOLETA] DROP CONSTRAINT [PK_BOLETA]
go
ALTER TABLE [dbo].[PRODUCTO] DROP CONSTRAINT [PK_PRODUCTO]
go
ALTER TABLE [dbo].[PERSONA_TELEFONOS] DROP CONSTRAINT [PFK_PERSONA_TELEFONOS]
go
ALTER TABLE [dbo].[PERSONA] DROP CONSTRAINT [PK_PERSONA]
go
ALTER TABLE [dbo].[CLIENTE] DROP CONSTRAINT [PK_CLIENTE]
go
ALTER TABLE [dbo].[USUARIO] DROP CONSTRAINT [PK_USUARIO]
go
ALTER TABLE [dbo].[EMPRESA_DIRECCIONES] DROP CONSTRAINT [PFK_EMPRESA_DIRECCIONES]
go
ALTER TABLE [dbo].[EMPRESA_TELEFONOS] DROP CONSTRAINT [PFK_EMPRESA_TELEFONOS]
go
ALTER TABLE [dbo].[TELEFONOS] DROP CONSTRAINT [PK_TELEFONOS]
go
ALTER TABLE [dbo].[DIRECCIONES] DROP CONSTRAINT [PK_DIRECCIONES]
go
ALTER TABLE [dbo].[EMPRESA] DROP CONSTRAINT [PK_EMPRESA]
go
ALTER TABLE [dbo].[MENU_ROLES] DROP CONSTRAINT [PFK_MENU_ROLES]
go
ALTER TABLE [dbo].[ROLES] DROP CONSTRAINT [PK_ROLES]
go
ALTER TABLE [dbo].[MENUS] DROP CONSTRAINT [PK_MENU]
go
ALTER TABLE [dbo].[SUCURSAL] DROP CONSTRAINT [PK_SUCURSAL]
go




-- Drop tables section ---------------------------------------------------

DROP TABLE [dbo].[GUIA_REMISION]
go
DROP TABLE [dbo].[UBICACIONES]
go
DROP TABLE [dbo].[PERSONA_DIRECCIONES]
go
DROP TABLE [dbo].[VEHICULO]
go
DROP TABLE [dbo].[ALMACEN]
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
DROP TABLE [dbo].[MENUS]
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
 [AUDI_UsuAdd] Nvarchar(20) NULL,
 [AUDI_FecAdd] Datetime NULL,
 [AUDI_UsuMod] Nvarchar(20) NULL,
 [AUDI_FecMod] Datetime NULL
)
go

-- Add keys for table dbo.SUCURSAL

ALTER TABLE [dbo].[SUCURSAL] ADD CONSTRAINT [PK_SUCURSAL] PRIMARY KEY ([SUCU_Codigo])
go

-- Table dbo.MENUS

CREATE TABLE [dbo].[MENUS]
(
 [MENU_Codigo] Nvarchar(10) NOT NULL,
 [MENU_Nombre] Nvarchar(100) NULL,
 [MENU_CodigoPadre] Nvarchar(10) NULL,
 [MENU_URL] Nvarchar(200) NULL,
 [MENU_Nivel] Int NULL,
 [MENU_Redirecciona] Bit NULL,
 [MENU_Estado] Int NULL,
 [AUDI_UsuAdd] Nvarchar(20) NULL,
 [AUDI_FecAdd] Datetime NULL,
 [AUDI_UsuMod] Nvarchar(20) NULL,
 [AUDI_FecMod] Datetime NULL
)
go

-- Add keys for table dbo.MENUS

ALTER TABLE [dbo].[MENUS] ADD CONSTRAINT [PK_MENU] PRIMARY KEY ([MENU_Codigo])
go

-- Table dbo.ROLES

CREATE TABLE [dbo].[ROLES]
(
 [ROL_Codigo] Int IDENTITY NOT NULL,
 [ROL_Nombre] Nvarchar(100) NULL,
 [ROL_Estado] Int NULL,
 [AUDI_UsuAdd] Nvarchar(20) NULL,
 [AUDI_FecAdd] Datetime NULL,
 [AUDI_UsuMod] Nvarchar(20) NULL,
 [AUDI_FecMod] Datetime NULL
)
go

-- Add keys for table dbo.ROLES

ALTER TABLE [dbo].[ROLES] ADD CONSTRAINT [PK_ROLES] PRIMARY KEY ([ROL_Codigo])
go

-- Table dbo.MENU_ROLES

CREATE TABLE [dbo].[MENU_ROLES]
(
 [MERO_Codigo] Int IDENTITY NOT NULL,
 [MENU_Codigo] Nvarchar(10) NOT NULL,
 [ROL_Codigo] Int NOT NULL
)
go

-- Add keys for table dbo.MENU_ROLES

ALTER TABLE [dbo].[MENU_ROLES] ADD CONSTRAINT [PFK_MENU_ROLES] PRIMARY KEY ([MENU_Codigo],[ROL_Codigo],[MERO_Codigo])
go

-- Table dbo.EMPRESA

CREATE TABLE [dbo].[EMPRESA]
(
 [EMPR_Codigo] Int IDENTITY NOT NULL,
 [EMPR_RUC] Nvarchar(11) NULL,
 [EMPR_RazonSocial] Nvarchar(200) NULL,
 [AUDI_UsuAdd] Nvarchar(20) NULL,
 [AUDI_FecAdd] Datetime NULL,
 [AUDI_UsuMod] Nvarchar(20) NULL,
 [AUDI_FecMod] Datetime NULL
)
go

-- Add keys for table dbo.EMPRESA

ALTER TABLE [dbo].[EMPRESA] ADD CONSTRAINT [PK_EMPRESA] PRIMARY KEY ([EMPR_Codigo])
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
 [AUDI_UsuAdd] Nvarchar(20) NULL,
 [AUDI_FecAdd] Datetime NULL,
 [AUDI_UsuMod] Nvarchar(20) NULL,
 [AUDI_FecMod] Datetime NULL
)
go

-- Add keys for table dbo.DIRECCIONES

ALTER TABLE [dbo].[DIRECCIONES] ADD CONSTRAINT [PK_DIRECCIONES] PRIMARY KEY ([DIRE_Codigo])
go

-- Table dbo.TELEFONOS

CREATE TABLE [dbo].[TELEFONOS]
(
 [TELE_Codigo] Int IDENTITY NOT NULL,
 [TELE_Numero] Nvarchar(20) NULL,
 [TIPO_Telefono] Int NULL,
 [TELE_Observacion] Nvarchar(300) NULL,
 [TELE_ANEXO] Nvarchar(100) NULL,
 [AUDI_UsuAdd] Nvarchar(20) NULL,
 [AUDI_FecAdd] Datetime NULL,
 [AUDI_UsuMod] Nvarchar(20) NULL,
 [AUDI_FecMod] Datetime NULL
)
go

-- Add keys for table dbo.TELEFONOS

ALTER TABLE [dbo].[TELEFONOS] ADD CONSTRAINT [PK_TELEFONOS] PRIMARY KEY ([TELE_Codigo])
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

ALTER TABLE [dbo].[EMPRESA_TELEFONOS] ADD CONSTRAINT [PFK_EMPRESA_TELEFONOS] PRIMARY KEY ([EMPR_Codigo],[TELE_Codigo],[EMTE_Codigo])
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

ALTER TABLE [dbo].[EMPRESA_DIRECCIONES] ADD CONSTRAINT [PFK_EMPRESA_DIRECCIONES] PRIMARY KEY ([DIRE_Codigo],[EMDI_Codigo],[EMPR_Codigo])
go

-- Table dbo.USUARIO

CREATE TABLE [dbo].[USUARIO]
(
 [USUA_Codigo] Nvarchar(20) NOT NULL,
 [USUA_Contraseņa] Nvarchar(200) NULL,
 [USUA_Estado] Int NULL,
 [USUA_Correo] Nvarchar(100) NULL,
 [USUA_FechaInicio] Datetime NULL,
 [USUA_FechaFin] Datetime NULL,
 [AUDI_UsuAdd] Nvarchar(20) NULL,
 [AUDI_FecAdd] Datetime NULL,
 [AUDI_UsuMod] Nvarchar(20) NULL,
 [AUDI_FecMod] Datetime NULL,
 [PERS_Codigo] Int NULL,
 [SUCU_Codigo] Int NULL,
 [ROL_Codigo] Int NULL
)
go

-- Add keys for table dbo.USUARIO

ALTER TABLE [dbo].[USUARIO] ADD CONSTRAINT [PK_USUARIO] PRIMARY KEY ([USUA_Codigo])
go

-- Table dbo.CLIENTE

CREATE TABLE [dbo].[CLIENTE]
(
 [CLIE_Codigo] Int IDENTITY NOT NULL,
 [AUDI_UsuAdd] Nvarchar(20) NULL,
 [AUDI_FecAdd] Datetime NULL,
 [AUDI_UsuMod] Nvarchar(20) NULL,
 [AUDI_FecMod] Datetime NULL,
 [PERS_Codigo] Int NULL
)
go

-- Add keys for table dbo.CLIENTE

ALTER TABLE [dbo].[CLIENTE] ADD CONSTRAINT [PK_CLIENTE] PRIMARY KEY ([CLIE_Codigo])
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
 [AUDI_UsuAdd] Nvarchar(20) NULL,
 [AUDI_FecAdd] Datetime NULL,
 [AUDI_UsuMod] Nvarchar(20) NULL,
 [AUDI_FecMod] Datetime NULL
)
go

-- Add keys for table dbo.PERSONA

ALTER TABLE [dbo].[PERSONA] ADD CONSTRAINT [PK_PERSONA] PRIMARY KEY ([PERS_Codigo])
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

ALTER TABLE [dbo].[PERSONA_TELEFONOS] ADD CONSTRAINT [PFK_PERSONA_TELEFONOS] PRIMARY KEY ([PERS_Codigo],[TELE_Codigo],[PETE_Codigo])
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
 [AUDI_UsuAdd] Nvarchar(20) NULL,
 [AUDI_FecAdd] Datetime NULL,
 [AUDI_UsuMod] Nvarchar(20) NULL,
 [AUDI_FecMod] Datetime NULL
)
go

-- Add keys for table dbo.PRODUCTO

ALTER TABLE [dbo].[PRODUCTO] ADD CONSTRAINT [PK_PRODUCTO] PRIMARY KEY ([PROD_Codigo])
go

-- Table dbo.BOLETA

CREATE TABLE [dbo].[BOLETA]
(
 [BOLE_Codigo] Int IDENTITY NOT NULL,
 [BOLE_FechaEmision] Datetime NULL,
 [BOLE_Estado] Int NULL,
 [BOLE_Total] Decimal(18,0) NULL,
 [AUDI_UsuAdd] Nvarchar(20) NULL,
 [AUDI_FecAdd] Datetime NULL,
 [AUDI_UsuMod] Nvarchar(20) NULL,
 [AUDI_FecMod] Datetime NULL,
 [USUA_Codigo] Nvarchar(20) NULL,
 [CLIE_Codigo] Int NULL
)
go

-- Add keys for table dbo.BOLETA

ALTER TABLE [dbo].[BOLETA] ADD CONSTRAINT [PK_BOLETA] PRIMARY KEY ([BOLE_Codigo])
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
 [AUDI_UsuAdd] Nvarchar(20) NULL,
 [AUDI_FecAdd] Datetime NULL,
 [AUDI_UsuMod] Nvarchar(20) NULL,
 [AUDI_FecMod] Datetime NULL,
 [USUA_Codigo] Nvarchar(20) NULL,
 [EMPR_Codigo] Int NULL
)
go

-- Add keys for table dbo.FACTURA

ALTER TABLE [dbo].[FACTURA] ADD CONSTRAINT [PK_FACTURA] PRIMARY KEY ([FACT_Codigo])
go

-- Table dbo.BOLETA_DETALLE

CREATE TABLE [dbo].[BOLETA_DETALLE]
(
 [BODE_Codigo] Int IDENTITY NOT NULL,
 [BODE_Cantidad] Decimal(18,2) NULL,
 [BODE_Importe] Decimal(18,2) NULL,
 [AUDI_UsuAdd] Nvarchar(20) NULL,
 [AUDI_FecAdd] Datetime NULL,
 [AUDI_UsuMod] Nvarchar(20) NULL,
 [AUDI_FecMod] Datetime NULL,
 [BOLE_Codigo] Int NOT NULL,
 [PROD_Codigo] Int NOT NULL
)
go

-- Add keys for table dbo.BOLETA_DETALLE

ALTER TABLE [dbo].[BOLETA_DETALLE] ADD CONSTRAINT [PFK_BOLETA_DETALLE] PRIMARY KEY ([BODE_Codigo],[BOLE_Codigo],[PROD_Codigo])
go

-- Table dbo.FACTURA_DETALLE

CREATE TABLE [dbo].[FACTURA_DETALLE]
(
 [FADE_Codigo] Int IDENTITY NOT NULL,
 [FADE_Cantidad] Decimal(18,0) NULL,
 [FADE_PrecioUnitario] Decimal(18,0) NULL,
 [FADE_Importe] Decimal(18,0) NULL,
 [AUDI_UsuAdd] Nvarchar(20) NULL,
 [AUDI_FecAdd] Datetime NULL,
 [AUDI_UsuMod] Nvarchar(20) NULL,
 [AUDI_FecMod] Datetime NULL,
 [PROD_Codigo] Int NOT NULL,
 [FACT_Codigo] Int NOT NULL
)
go

-- Add keys for table dbo.FACTURA_DETALLE

ALTER TABLE [dbo].[FACTURA_DETALLE] ADD CONSTRAINT [PFK_FACTURA_DETALLE] PRIMARY KEY ([FADE_Codigo],[PROD_Codigo],[FACT_Codigo])
go

-- Table dbo.ALMACEN

CREATE TABLE [dbo].[ALMACEN]
(
 [ALMA_Codigo] Int IDENTITY NOT NULL,
 [ALMA_FechaIngreso] Datetime NULL,
 [ALMA_FechaSalida] Datetime NULL,
 [ALMA_Estado] Int NULL,
 [ALMA_Observaciones] Char(1) NULL,
 [TIPO_Accion] Int NULL,
 [AUDI_UsuAdd] Nvarchar(20) NULL,
 [AUDI_FecAdd] Datetime NULL,
 [AUDI_UsuMod] Nvarchar(20) NULL,
 [AUDI_FecMod] Datetime NULL,
 [SUCU_CodigoOrigen] Int NULL,
 [SUCU_CodigoDestino] Int NULL,
 [PROD_Codigo] Int NOT NULL,
 [USUA_CodigoRecepcion] Nvarchar(20) NULL,
 [USUA_CodigoEntrega] Nvarchar(20) NULL
)
go

-- Add keys for table dbo.ALMACEN

ALTER TABLE [dbo].[ALMACEN] ADD CONSTRAINT [PFK_ALMACEN] PRIMARY KEY ([ALMA_Codigo],[PROD_Codigo])
go

-- Table dbo.VEHICULO

CREATE TABLE [dbo].[VEHICULO]
(
 [VEHI_Codigo] Int IDENTITY NOT NULL,
 [VEHI_Placa] Nvarchar(8) NULL,
 [VEHI_Marca] Nvarchar(50) NULL,
 [VEHI_Modelo] Nvarchar(50) NULL,
 [VEHI_Color] Nvarchar(50) NULL,
 [TIPO_Vehiculo] Int NULL,
 [VEHI_AnioFabricacion] Int NULL,
 [AUDI_UsuAdd] Nvarchar(20) NULL,
 [AUDI_FecAdd] Datetime NULL,
 [AUDI_UsuMod] Nvarchar(20) NULL,
 [AUDI_FecMod] Datetime NULL,
 [USUA_Codigo] Nvarchar(20) NOT NULL
)
go

-- Add keys for table dbo.VEHICULO

ALTER TABLE [dbo].[VEHICULO] ADD CONSTRAINT [PK_VEHICULO] PRIMARY KEY ([VEHI_Codigo],[USUA_Codigo])
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

ALTER TABLE [dbo].[PERSONA_DIRECCIONES] ADD CONSTRAINT [PFK_PERSONA_DIRECCIONES] PRIMARY KEY ([PERS_Codigo],[DIRE_Codigo],[PEDI_Codigo])
go

-- Table dbo.UBICACIONES

CREATE TABLE [dbo].[UBICACIONES]
(
 [UBIC_Codigo] Int IDENTITY NOT NULL,
 [UBIC_Latitud] Decimal(18,6) NULL,
 [UBIC_Longitud] Decimal(18,6) NULL,
 [UBIC_Fecha] Datetime NULL,
 [VEHI_Codigo] Int NOT NULL,
 [USUA_Codigo] Nvarchar(20) NOT NULL
)
go

-- Add keys for table dbo.UBICACIONES

ALTER TABLE [dbo].[UBICACIONES] ADD CONSTRAINT [PK_UBICACIONES] PRIMARY KEY ([UBIC_Codigo],[VEHI_Codigo],[USUA_Codigo])
go

-- Table dbo.GUIA_REMISION

CREATE TABLE [dbo].[GUIA_REMISION]
(
 [GREM_Codigo] Int IDENTITY NOT NULL,
 [GREM_Fecha] Datetime NULL,
 [GREM_Estado] Int NULL,
 [GREM_Observaciones] Nvarchar(300) NULL,
 [ALMA_Codigo] Int NOT NULL,
 [PROD_Codigo] Int NOT NULL,
 [SUCU_Destino] Int NOT NULL,
 [VEHI_Codigo] Int NOT NULL,
 [USUA_Codigo] Nvarchar(20) NOT NULL,
 [AUDI_UsuAdd] Nvarchar(20) NULL,
 [AUDI_FecAdd] Datetime NULL,
 [AUDI_UsuMod] Nvarchar(20) NULL,
 [AUDI_FecMod] Datetime NULL
)
go

-- Add keys for table dbo.GUIA_REMISION

ALTER TABLE [dbo].[GUIA_REMISION] ADD CONSTRAINT [PK_GUIA_REMISION] PRIMARY KEY ([GREM_Codigo],[ALMA_Codigo],[PROD_Codigo],[SUCU_Destino],[VEHI_Codigo],[USUA_Codigo])
go

-- Create relationships section ------------------------------------------------- 

ALTER TABLE [dbo].[MENU_ROLES] ADD CONSTRAINT [REL_MENU_ROLES] FOREIGN KEY ([MENU_Codigo]) REFERENCES [dbo].[MENUS] ([MENU_Codigo])
go

ALTER TABLE [dbo].[MENU_ROLES] ADD CONSTRAINT [REL_ROLES_MENU] FOREIGN KEY ([ROL_Codigo]) REFERENCES [dbo].[ROLES] ([ROL_Codigo])
go

ALTER TABLE [dbo].[EMPRESA_TELEFONOS] ADD CONSTRAINT [REL_EMPRESA_TELEFONOS] FOREIGN KEY ([EMPR_Codigo]) REFERENCES [dbo].[EMPRESA] ([EMPR_Codigo])
go

ALTER TABLE [dbo].[EMPRESA_TELEFONOS] ADD CONSTRAINT [REL_TELEFONOS_EMPRESA] FOREIGN KEY ([TELE_Codigo]) REFERENCES [dbo].[TELEFONOS] ([TELE_Codigo])
go

ALTER TABLE [dbo].[EMPRESA_DIRECCIONES] ADD CONSTRAINT [REL_DIRECCIONES_EMPRESA] FOREIGN KEY ([DIRE_Codigo]) REFERENCES [dbo].[DIRECCIONES] ([DIRE_Codigo])
go

ALTER TABLE [dbo].[EMPRESA_DIRECCIONES] ADD CONSTRAINT [REL_EMPRESA_DIRECCIONES] FOREIGN KEY ([EMPR_Codigo]) REFERENCES [dbo].[EMPRESA] ([EMPR_Codigo])
go

ALTER TABLE [dbo].[PERSONA_TELEFONOS] ADD CONSTRAINT [REL_PERSONA_TELEFONOS] FOREIGN KEY ([PERS_Codigo]) REFERENCES [dbo].[PERSONA] ([PERS_Codigo])
go

ALTER TABLE [dbo].[PERSONA_TELEFONOS] ADD CONSTRAINT [REL_TELEFONOS_PERSONA] FOREIGN KEY ([TELE_Codigo]) REFERENCES [dbo].[TELEFONOS] ([TELE_Codigo])
go

ALTER TABLE [dbo].[CLIENTE] ADD CONSTRAINT [REL_CLIENTE_PERSONA] FOREIGN KEY ([PERS_Codigo]) REFERENCES [dbo].[PERSONA] ([PERS_Codigo])
go

ALTER TABLE [dbo].[USUARIO] ADD CONSTRAINT [REL_USUARIO_PERSONA] FOREIGN KEY ([PERS_Codigo]) REFERENCES [dbo].[PERSONA] ([PERS_Codigo])
go

ALTER TABLE [dbo].[USUARIO] ADD CONSTRAINT [REL_USUARIO_SUCURSAL] FOREIGN KEY ([SUCU_Codigo]) REFERENCES [dbo].[SUCURSAL] ([SUCU_Codigo])
go

ALTER TABLE [dbo].[BOLETA] ADD CONSTRAINT [REL_BOLETA_USUARIO] FOREIGN KEY ([USUA_Codigo]) REFERENCES [dbo].[USUARIO] ([USUA_Codigo])
go

ALTER TABLE [dbo].[BOLETA] ADD CONSTRAINT [REL_CLIENTE_BOLETA] FOREIGN KEY ([CLIE_Codigo]) REFERENCES [dbo].[CLIENTE] ([CLIE_Codigo])
go

ALTER TABLE [dbo].[BOLETA_DETALLE] ADD CONSTRAINT [REL_BOLETA_BOLETA_DETALLE] FOREIGN KEY ([BOLE_Codigo]) REFERENCES [dbo].[BOLETA] ([BOLE_Codigo])
go

ALTER TABLE [dbo].[BOLETA_DETALLE] ADD CONSTRAINT [REL_BOLETA_DETALLE_PRODUCTO] FOREIGN KEY ([PROD_Codigo]) REFERENCES [dbo].[PRODUCTO] ([PROD_Codigo])
go

ALTER TABLE [dbo].[FACTURA] ADD CONSTRAINT [REL_FACTURA_USUARIO] FOREIGN KEY ([USUA_Codigo]) REFERENCES [dbo].[USUARIO] ([USUA_Codigo])
go

ALTER TABLE [dbo].[FACTURA] ADD CONSTRAINT [REL_FACTURA_EMPRESA] FOREIGN KEY ([EMPR_Codigo]) REFERENCES [dbo].[EMPRESA] ([EMPR_Codigo])
go

ALTER TABLE [dbo].[FACTURA_DETALLE] ADD CONSTRAINT [REL_FACTURA_DETALLE_PRODUCTO] FOREIGN KEY ([PROD_Codigo]) REFERENCES [dbo].[PRODUCTO] ([PROD_Codigo])
go

ALTER TABLE [dbo].[FACTURA_DETALLE] ADD CONSTRAINT [REL_FACTURA_FACTURA_DETALLE] FOREIGN KEY ([FACT_Codigo]) REFERENCES [dbo].[FACTURA] ([FACT_Codigo])
go

ALTER TABLE [dbo].[ALMACEN] ADD CONSTRAINT [REL_ALMACEN_SUCURSAL_ORIGEN] FOREIGN KEY ([SUCU_CodigoOrigen]) REFERENCES [dbo].[SUCURSAL] ([SUCU_Codigo])
go

ALTER TABLE [dbo].[ALMACEN] ADD CONSTRAINT [REL_ALMACEN_SUCURSAL_DESTINO] FOREIGN KEY ([SUCU_CodigoDestino]) REFERENCES [dbo].[SUCURSAL] ([SUCU_Codigo])
go

ALTER TABLE [dbo].[ALMACEN] ADD CONSTRAINT [REL_ALMACEN_PRODUCTO] FOREIGN KEY ([PROD_Codigo]) REFERENCES [dbo].[PRODUCTO] ([PROD_Codigo])
go

ALTER TABLE [dbo].[ALMACEN] ADD CONSTRAINT [REL_ALMACEN_USUARIO_RECEPCIONA] FOREIGN KEY ([USUA_CodigoRecepcion]) REFERENCES [dbo].[USUARIO] ([USUA_Codigo])
go

ALTER TABLE [dbo].[ALMACEN] ADD CONSTRAINT [REL_ALMACEN_USUARIO_ENTREGA] FOREIGN KEY ([USUA_CodigoEntrega]) REFERENCES [dbo].[USUARIO] ([USUA_Codigo])
go

ALTER TABLE [dbo].[USUARIO] ADD CONSTRAINT [REL_USUARIO_ROLES] FOREIGN KEY ([ROL_Codigo]) REFERENCES [dbo].[ROLES] ([ROL_Codigo])
go

ALTER TABLE [dbo].[PERSONA_DIRECCIONES] ADD CONSTRAINT [REL_PERSONA_DIRECCIONES] FOREIGN KEY ([PERS_Codigo]) REFERENCES [dbo].[PERSONA] ([PERS_Codigo])
go

ALTER TABLE [dbo].[PERSONA_DIRECCIONES] ADD CONSTRAINT [REL_DIRECCIONES_PERSONA] FOREIGN KEY ([DIRE_Codigo]) REFERENCES [dbo].[DIRECCIONES] ([DIRE_Codigo])
go

ALTER TABLE [dbo].[VEHICULO] ADD CONSTRAINT [REL_VEHICULO_USUARIO] FOREIGN KEY ([USUA_Codigo]) REFERENCES [dbo].[USUARIO] ([USUA_Codigo])
go

ALTER TABLE [dbo].[UBICACIONES] ADD CONSTRAINT [REL_VEHICULO_UBICACIONES] FOREIGN KEY ([VEHI_Codigo], [USUA_Codigo]) REFERENCES [dbo].[VEHICULO] ([VEHI_Codigo], [USUA_Codigo])
go

ALTER TABLE [dbo].[GUIA_REMISION] ADD CONSTRAINT [REL_ALMACEN_GUIA_REMISION] FOREIGN KEY ([ALMA_Codigo], [PROD_Codigo]) REFERENCES [dbo].[ALMACEN] ([ALMA_Codigo], [PROD_Codigo])
go

ALTER TABLE [dbo].[GUIA_REMISION] ADD CONSTRAINT [REL_SUCURSAL_DESTINO_GUIA_REMISION] FOREIGN KEY ([SUCU_Destino]) REFERENCES [dbo].[SUCURSAL] ([SUCU_Codigo])
go

ALTER TABLE [dbo].[GUIA_REMISION] ADD CONSTRAINT [REL_VEHICULO_GUIA_REMISION] FOREIGN KEY ([VEHI_Codigo], [USUA_Codigo]) REFERENCES [dbo].[VEHICULO] ([VEHI_Codigo], [USUA_Codigo])
go




