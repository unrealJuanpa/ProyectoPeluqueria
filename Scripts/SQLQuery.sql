/*
Created: 15/08/2022
Modified: 4/09/2022
Model: Microsoft SQL Server 2017
Database: MS SQL Server 2017
*/


-- Create tables section -------------------------------------------------

-- Table Cliente

CREATE TABLE [Cliente]
(
 [Id_Cliente] Int IDENTITY(1,1) NOT NULL,
 [Primer_nombre_Cliente] Varchar(100) NOT NULL,
 [Segundo_nombre_cliente] Varchar(100) NULL,
 [Primer_apellido_cliente] Varchar(100) NOT NULL,
 [Segundo_apellido_cliente] Varchar(100) NOT NULL,
 [NIT_cliente] Varchar(20) NULL,
 [teléfono] Bigint NULL
)
go

-- Add keys for table Cliente

ALTER TABLE [Cliente] ADD CONSTRAINT [PK_Cliente] PRIMARY KEY ([Id_Cliente])
go

-- Table Empleado

CREATE TABLE [Empleado]
(
 [CUI_empleado] Varchar(64) NOT NULL,
 [Primer_nombre_empleado] Varchar(100) NOT NULL,
 [Segundo_nombre_empleado] Varchar(100) NULL,
 [Primer_apellido_empleado] Varchar(100) NOT NULL,
 [Segundo_apellido_empleado] Varchar(100) NULL,
 [dirección] Varchar(1024) NOT NULL,
 [Id_rol_empleado] Int NULL
)
go

-- Create indexes for table Empleado

CREATE INDEX [IX_Relationship25] ON [Empleado] ([Id_rol_empleado])
go

-- Add keys for table Empleado

ALTER TABLE [Empleado] ADD CONSTRAINT [PK_Empleado] PRIMARY KEY ([CUI_empleado])
go

-- Table Retirar_producto

CREATE TABLE [Retirar_producto]
(
 [Id_retirar_producto] Int IDENTITY(1,1) NOT NULL,
 [Fecha_retiro] Datetime NOT NULL,
 [Unidades_Retira] Int NOT NULL,
 [Id_insumo] Int NULL,
 [CUI_empleado] Varchar(64) NULL,
 [Id_retiro_producto] Int NULL
)
go

-- Create indexes for table Retirar_producto

CREATE INDEX [IX_Relationship14] ON [Retirar_producto] ([Id_insumo])
go

CREATE INDEX [IX_Relationship15] ON [Retirar_producto] ([CUI_empleado])
go

CREATE INDEX [IX_Relationship27] ON [Retirar_producto] ([Id_retiro_producto])
go

-- Add keys for table Retirar_producto

ALTER TABLE [Retirar_producto] ADD CONSTRAINT [PK_Retirar_producto] PRIMARY KEY ([Id_retirar_producto])
go

-- Table Insumo

CREATE TABLE [Insumo]
(
 [Id_insumo] Int IDENTITY(1,1) NOT NULL,
 [Nombre_insumo] Varchar(120) NOT NULL,
 [Descripción] Varchar(1024) NULL
)
go

-- Add keys for table Insumo

ALTER TABLE [Insumo] ADD CONSTRAINT [PK_Insumo] PRIMARY KEY ([Id_insumo])
go

-- Table Registro_compra

CREATE TABLE [Registro_compra]
(
 [Id_compra] Int IDENTITY(1,1) NOT NULL,
 [Fecha_compra] Datetime NOT NULL,
 [costo_unidad] Decimal(6,2) NOT NULL,
 [total_unidades] Int NOT NULL,
 [Id_proveedor] Int NULL,
 [Id_insumo] Int NULL
)
go

-- Create indexes for table Registro_compra

CREATE INDEX [IX_Relationship28] ON [Registro_compra] ([Id_proveedor])
go

CREATE INDEX [IX_Relationship32] ON [Registro_compra] ([Id_insumo])
go

-- Add keys for table Registro_compra

ALTER TABLE [Registro_compra] ADD CONSTRAINT [PK_Registro_compra] PRIMARY KEY ([Id_compra])
go

-- Table Proveedor

CREATE TABLE [Proveedor]
(
 [Id_proveedor] Int IDENTITY(1,1) NOT NULL,
 [Nombre_proveedor] Varchar(100) NOT NULL,
 [teléfono] Bigint NOT NULL
)
go

-- Add keys for table Proveedor

ALTER TABLE [Proveedor] ADD CONSTRAINT [PK_Proveedor] PRIMARY KEY ([Id_proveedor])
go

-- Table registro_tratamiento_cliente

CREATE TABLE [registro_tratamiento_cliente]
(
 [Id_registro] Int IDENTITY(1,1) NOT NULL,
 [Fecha] Datetime NOT NULL,
 [Costo] Decimal(4,2) NOT NULL,
 [Id_Cliente] Int NULL,
 [CUI_empleado] Varchar(64) NULL,
 [Id_tipo_tratamiento] Int NULL
)
go

-- Create indexes for table registro_tratamiento_cliente

CREATE INDEX [IX_Relationship22] ON [registro_tratamiento_cliente] ([Id_Cliente])
go

CREATE INDEX [IX_Relationship23] ON [registro_tratamiento_cliente] ([CUI_empleado])
go

CREATE INDEX [IX_Relationship29] ON [registro_tratamiento_cliente] ([Id_tipo_tratamiento])
go

-- Add keys for table registro_tratamiento_cliente

ALTER TABLE [registro_tratamiento_cliente] ADD CONSTRAINT [PK_registro_tratamiento_cliente] PRIMARY KEY ([Id_registro])
go

-- Table Tipo_tratamiento

CREATE TABLE [Tipo_tratamiento]
(
 [Id_tipo_tratamiento] Int IDENTITY(1,1) NOT NULL,
 [Nombre_tratamiento] Varchar(100) NOT NULL,
 [Duracion_horas] Decimal(2,2) NOT NULL,
 [imágen_muestra] Image NOT NULL
)
go

-- Add keys for table Tipo_tratamiento

ALTER TABLE [Tipo_tratamiento] ADD CONSTRAINT [PK_Tipo_tratamiento] PRIMARY KEY ([Id_tipo_tratamiento])
go

-- Table Rol_empleado

CREATE TABLE [Rol_empleado]
(
 [Id_rol_empleado] Int IDENTITY(1,1) NOT NULL,
 [Nombre_rol_empleado] Varchar(100) NOT NULL,
 [descripcion] Varchar(400) NOT NULL,
 [nivel_acceso] Int NOT NULL
)
go

-- Add keys for table Rol_empleado

ALTER TABLE [Rol_empleado] ADD CONSTRAINT [PK_Rol_empleado] PRIMARY KEY ([Id_rol_empleado])
go

-- Table Promocion

CREATE TABLE [Promocion]
(
 [Id_promocion] Int IDENTITY(1,1) NOT NULL,
 [Nombre_promocion] Varchar(100) NOT NULL,
 [Descripcion] Varchar(400) NOT NULL,
 [Fecha_inicio] Datetime NOT NULL,
 [Fecha_fin] Datetime NOT NULL,
 [imagen_anuncio] Image NOT NULL,
 [Id_tipo_tratamiento] Int NULL
)
go

-- Create indexes for table Promocion

CREATE INDEX [IX_Relationship31] ON [Promocion] ([Id_tipo_tratamiento])
go

-- Add keys for table Promocion

ALTER TABLE [Promocion] ADD CONSTRAINT [PK_Promocion] PRIMARY KEY ([Id_promocion])
go

-- Table Razon_retiro_producto

CREATE TABLE [Razon_retiro_producto]
(
 [Id_retiro_producto] Int IDENTITY(1,1) NOT NULL,
 [Nombre_razon_retiro] Varchar(100) NOT NULL,
 [Descripcion_razon_retiro] Varchar(400) NOT NULL
)
go

-- Add keys for table Razon_retiro_producto

ALTER TABLE [Razon_retiro_producto] ADD CONSTRAINT [PK_Razon_retiro_producto] PRIMARY KEY ([Id_retiro_producto])
go

-- Create foreign keys (relationships) section ------------------------------------------------- 


ALTER TABLE [Retirar_producto] ADD CONSTRAINT [Relationship14] FOREIGN KEY ([Id_insumo]) REFERENCES [Insumo] ([Id_insumo]) ON UPDATE NO ACTION ON DELETE NO ACTION
go



ALTER TABLE [Retirar_producto] ADD CONSTRAINT [Relationship15] FOREIGN KEY ([CUI_empleado]) REFERENCES [Empleado] ([CUI_empleado]) ON UPDATE NO ACTION ON DELETE NO ACTION
go



ALTER TABLE [registro_tratamiento_cliente] ADD CONSTRAINT [Relationship22] FOREIGN KEY ([Id_Cliente]) REFERENCES [Cliente] ([Id_Cliente]) ON UPDATE NO ACTION ON DELETE NO ACTION
go



ALTER TABLE [registro_tratamiento_cliente] ADD CONSTRAINT [Relationship23] FOREIGN KEY ([CUI_empleado]) REFERENCES [Empleado] ([CUI_empleado]) ON UPDATE NO ACTION ON DELETE NO ACTION
go



ALTER TABLE [Empleado] ADD CONSTRAINT [Relationship25] FOREIGN KEY ([Id_rol_empleado]) REFERENCES [Rol_empleado] ([Id_rol_empleado]) ON UPDATE NO ACTION ON DELETE NO ACTION
go



ALTER TABLE [Retirar_producto] ADD CONSTRAINT [Relationship27] FOREIGN KEY ([Id_retiro_producto]) REFERENCES [Razon_retiro_producto] ([Id_retiro_producto]) ON UPDATE NO ACTION ON DELETE NO ACTION
go



ALTER TABLE [Registro_compra] ADD CONSTRAINT [Relationship28] FOREIGN KEY ([Id_proveedor]) REFERENCES [Proveedor] ([Id_proveedor]) ON UPDATE NO ACTION ON DELETE NO ACTION
go



ALTER TABLE [registro_tratamiento_cliente] ADD CONSTRAINT [Relationship29] FOREIGN KEY ([Id_tipo_tratamiento]) REFERENCES [Tipo_tratamiento] ([Id_tipo_tratamiento]) ON UPDATE NO ACTION ON DELETE NO ACTION
go



ALTER TABLE [Promocion] ADD CONSTRAINT [Relationship31] FOREIGN KEY ([Id_tipo_tratamiento]) REFERENCES [Tipo_tratamiento] ([Id_tipo_tratamiento]) ON UPDATE NO ACTION ON DELETE NO ACTION
go



ALTER TABLE [Registro_compra] ADD CONSTRAINT [Relationship32] FOREIGN KEY ([Id_insumo]) REFERENCES [Insumo] ([Id_insumo]) ON UPDATE NO ACTION ON DELETE NO ACTION
go




