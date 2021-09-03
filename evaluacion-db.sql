CREATE TABLE `evaluacion-db`.`usuarios` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `nombre` VARCHAR(255) NOT NULL,
    `email` VARCHAR(100) NOT NULL,
    `notas_id` INT NOT NULL,
    PRIMARY KEY (`id`)
);

CREATE TABLE `evaluacion-db`.`categorias` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `nombre` VARCHAR(100) NOT NULL,
    PRIMARY KEY (`id`)
);

CREATE TABLE `evaluacion-db`.`notas` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `titulo` VARCHAR(100) NOT NULL,
    `description` VARCHAR(255) NULL,
    `fecha_creacion` DATE NULL,
    `fecha_modificacion` DATE NULL,
    `eliminar` TINYINT(1) NULL,
     `usuarios_id` INT NOT NULL,
    PRIMARY KEY (`id`),
    CONSTRAINT `FK_notas_usuarios` FOREIGN KEY (`usuarios_id`)
  REFERENCES `evaluacion-db`.`usuarios` (`id`)
  ON DELETE NO ACTION ON UPDATE NO ACTION
);

CREATE TABLE `evaluacion-db`.`notascategorias` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `categorias_id` INT NOT NULL,
    `notas_id` INT NOT NULL,
    PRIMARY KEY (`id`),
    INDEX `FK_notasCategorias_categorias_idx` (`categorias_id` ASC),
    INDEX `FK_notasCategorias_notas_idx` (`notas_id` ASC),
    CONSTRAINT `FK_notasCategorias_categorias` FOREIGN KEY (`categorias_id`)
        REFERENCES `evaluacion-db`.`categorias` (`id`)
        ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT `FK_notasCategorias_notas` FOREIGN KEY (`notas_id`)
        REFERENCES `evaluacion-db`.`notas` (`id`)
        ON DELETE NO ACTION ON UPDATE NO ACTION
);

INSERT INTO categorias
VALUES (DEFAULT, 'casa'), (DEFAULT, 'trabajo'),(DEFAULT, 'curso'),(DEFAULT, 'deporte'),(DEFAULT, 'escuela'),
(DEFAULT, 'compras'),
(DEFAULT, 'tramites'),(DEFAULT, 'pagos'),
(DEFAULT, 'recreacion'),(DEFAULT, 'tareas');

INSERT INTO usuarios
values (DEFAULT, 'maria','maria@gmail.com',2),(DEFAULT, 'pedro','pedro@gmail.com',3),
(DEFAULT, 'lorena','lorena@gmail.com',7),(DEFAULT, 'flor','flor@gmail.com',10),
(DEFAULT, 'juan','juan@gmail.com',4),(DEFAULT, 'zowy','zowy@gmail.com',8),
(DEFAULT, 'claudio','claudio@gmail.com',5),(DEFAULT, 'gonzalo','gonzalo@gmail.com',1),
(DEFAULT, 'juliana','juliana@gmail.com',6),(DEFAULT, 'elias','elias@gmail.com',9);

INSERT INTO notas (id, titulo, description, fecha_creacion, fecha_modificacion, usuarios_id)
VALUES (DEFAULT, 'Fiesta', 'El sábado llevar bebidas','2010-04-08','2010-04-08',2),
(DEFAULT, 'Para hacer', 'Pintar sillas','2010-04-08','2020-08-10',4),
(DEFAULT, 'Escribir', 'Monografia de lenguaje','2021-01-01','2021-01-01',10),
(DEFAULT, 'Vence luz', 'Pagar factura electronica','2019-03-02','2019-03-02',5),
(DEFAULT, 'Cine', 'Estreno Black Widow','2021-05-18','2021-05-18',2),
(DEFAULT, 'Terminar tarea', 'Terminar tarea quimica, entrega próxima semana','2019-04-08','2019-04-08',8),
(DEFAULT, 'Lista super', 'Tomates, zanahorias, arroz, leche','2021-06-28','2021-06-28',7),
(DEFAULT, 'Informe antes del 10', 'Entregar informe contabilidad antes del 10','2020-12-15','2020-12-15',10),
(DEFAULT, 'Retirar pedido', 'Llamar para coordinar retiro del pedido','2021-04-15','2021-04-15',1),
(DEFAULT, 'Alquilar cancha', 'Alquilar cancha de futbol hoy','2019-11-30','2019-11-30',9);

INSERT INTO notascategorias (id,categorias_id,notas_id)
VALUES(1,1,9),(2, 2, 1 ),(3, 3, 10),(4,4, 8 ),(5,5, 9 ),(6, 6, 10),(7, 7,6),
(8, 8, 2),(9, 9, 9),(10, 10,4);