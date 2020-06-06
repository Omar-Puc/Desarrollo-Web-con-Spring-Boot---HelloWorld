create database blog;
use blog;

create table grupo(
IdGrupo int not null auto_increment primary key,
Nombre varchar (20)
);

create table permiso(
IdPermiso int not null auto_increment primary key,
Nombre varchar (20)
);

create table grupo_permiso(
IdGrupo int not null,
IdPermiso int not null,
foreign key (IdGrupo) references grupo(IdGrupo),
foreign key (IdPermiso) references permiso(IdPermiso)
);

create table usuario(
IdUsuario int not null auto_increment primary key,
Nombre varchar (50) not null,
Apellido varchar (50) not null,
Contrasena varchar (50) not null,
Correo varchar (50) not null unique,
IdGrupo int not null,
foreign key(IdGrupo) references grupo(IdGrupo)
);