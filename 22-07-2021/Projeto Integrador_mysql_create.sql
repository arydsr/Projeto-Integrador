CREATE TABLE `Postagens` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`titulo` varchar(255) NOT NULL,
	`data` TIMESTAMP NOT NULL,
	`texto` varchar(3000) NOT NULL,
	`link` varchar(255),
	`tema_id` bigint NOT NULL,
	`usuario_id` bigint NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Usuarios` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`nome` varchar(255) NOT NULL,
	`email` varchar(255) NOT NULL,
	`senha` varchar(255) NOT NULL,
	`Colaborador` BOOLEAN NOT NULL,
	`Beneficiário` BOOLEAN NOT NULL,
	`Instituição` BOOLEAN NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Tema` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`Descrição` varchar(255) NOT NULL,
	`Palavra-chave` varchar(255) NOT NULL,
	`Hashtag` varchar(255) NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `Postagens` ADD CONSTRAINT `Postagens_fk0` FOREIGN KEY (`tema_id`) REFERENCES `Tema`(`id`);

ALTER TABLE `Postagens` ADD CONSTRAINT `Postagens_fk1` FOREIGN KEY (`usuario_id`) REFERENCES `Usuarios`(`id`);




