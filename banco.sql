CREATE TABLE IF NOT EXISTS `mydb`.`curso` (
  `idcurso` INT AUTO_INCREMENT PRIMARY KEY,
  `nome` VARCHAR(220) NULL,
  `preco` DOUBLE NULL,
  `created` DATETIME NULL,
  `modified` DATETIME NULL
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `mydb`.`sits_usuario` (
  `idsits_usuario` INT AUTO_INCREMENT PRIMARY KEY,
  `nome` VARCHAR(45) NULL,
  `created` DATETIME NULL,
  `modified` DATETIME NULL
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `mydb`.`niveis_acessos` (
  `idniveis_acessos` INT AUTO_INCREMENT PRIMARY KEY,
  `nome` VARCHAR(45) NULL,
  `created` DATETIME NULL,
  `modified` DATETIME NULL
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `mydb`.`usuarios` (
  `idusuarios` INT AUTO_INCREMENT PRIMARY KEY,
  `nome` VARCHAR(220) NULL,
  `email` VARCHAR(220) NULL,
  `site_usuarios_id` INT NULL,
  `niveis_acesso_id` INT NULL,
  `modified` DATETIME NULL,
  FOREIGN KEY (`site_usuarios_id`) REFERENCES `sits_usuario`(`idsits_usuario`),
  FOREIGN KEY (`niveis_acesso_id`) REFERENCES `niveis_acessos`(`idniveis_acessos`)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `mydb`.`aulas` (
  `idaulas` INT AUTO_INCREMENT PRIMARY KEY,
  `nome` VARCHAR(220) NULL,
  `conteudos` VARCHAR(220) NULL,
  `curso_id` INT NULL,
  `created` DATETIME NULL,
  `modified` DATETIME NULL,
  FOREIGN KEY (`curso_id`) REFERENCES `curso`(`idcurso`)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `mydb`.`acesso_aulas` (
  `idacesso_aulas` INT AUTO_INCREMENT PRIMARY KEY,
  `Ip` VARCHAR(220) NULL,
  `usuarios_id` INT NULL,
  `aulas_id` INT NULL,
  `created` DATETIME NULL,
  `modified` DATETIME NULL,
  FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios`(`idusuarios`),
  FOREIGN KEY (`aulas_id`) REFERENCES `aulas`(`idaulas`)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `mydb`.`endereco` (
  `idendereco` INT AUTO_INCREMENT PRIMARY KEY,
  `logradouro` VARCHAR(220) NULL,
  `numero` VARCHAR(220) NULL,
  `bairro` VARCHAR(220) NULL,
  `cidade` VARCHAR(220) NULL,
  `usuario_id` INT NULL,
  `created` DATETIME NULL,
  `modified` DATETIME NULL,
  FOREIGN KEY (`usuario_id`) REFERENCES `usuarios`(`idusuarios`)
) ENGINE = InnoDB;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
