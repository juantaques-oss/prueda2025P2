-- Create on 20250909
-- Datebse tiendaonline

Create database if not exists tiendaonline default character set utf8 collate utf8_unicode_ci;

use tiendaonline;
-----------
--parametric tables---
----------------------

--01
--table roles 
Create if not exists roles(
    id_rol tinyint not null AUTO_INCREMENT,
    nombre_rol varchar(30) collate utf8_unicode_ci not null,
    PRIMARY KEY (id_rol)
) engine=iNNODB default CHARSET= UTF8 collate= utf8_unicode_ci AUTO_INCREMENT=1; 


--02
--table marcas
Create if not exists marcas(
    id_rol tinyint not null AUTO_INCREMENT,
    nombre_rol varchar(40) collate utf8_unicode_ci not null,
    PRIMARY KEY (id_rol)
) engine=iNNODB default CHARSET= UTF8 collate= utf8_unicode_ci AUTO_INCREMENT=1; 

--------------------
--tables with foreigh keys
-----------------------------




--03
--table usuarios
Create if not exists usuarios(
    nombre_usuario varchar(15) collate utf8_unicode_ci not null,
    id_usuario varchar(50) collate utf8_unicode_ci not null,
    email_usuario varchar(80) collate utf8_unicode_ci not null,
    direcion_usuario varchar(80) collate utf8_unicode_ci not null,
    telefono_usuario varchar(15) collate utf8_unicode_ci not null,
    clave_usuario varchar(80) collate utf8_unicode_ci not null,
    id_rol_usuario tinyint not null,
    PRIMARY KEY (id_usuario)
) engine=iNNODB default CHARSET= UTF8 collate= utf8_unicode_ci AUTO_INCREMENT=1; 

alter table usuarios
    add key(id_rol_usuario),
    add constraint fk_rol-usuario foreign key (id_rol_usuario)
        references roles(id_rol)
        on update no action
        on delete no action;