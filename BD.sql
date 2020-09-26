CREATE DATABASE TRUPER
Use TRUPER

create table Producto (
SKU				varchar(30) primary key not null,
Precio			decimal(6,2),
NombreProducto  varchar(30)
)
select * from Producto

insert into Producto values ('111',500.00,'Taladro')
insert into Producto values ('222',600.00,'Escalera')
insert into Producto values ('333',100.00,'Guantes')
insert into Producto values ('555',200.00,'Lentes')

create table Pedido(
idPedido       int   NOT NULL,
SKU			   varchar(30),
NombreUsuario  varchar(50),
Cantidad	   int,
PRIMARY KEY CLUSTERED 
(
	[idPedido] ASC,
	[SKU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


select * from Producto