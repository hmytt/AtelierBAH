-- -----------------------------------------------------
-- Schema full-stack-ecommerce
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `full-stack-ecommerce`;

CREATE SCHEMA `full-stack-ecommerce`;
USE `full-stack-ecommerce` ;

-- -----------------------------------------------------
-- Table `full-stack-ecommerce`.`product_category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `full-stack-ecommerce`.`product_category` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `category_name` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE=InnoDB
AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Table `full-stack-ecommerce`.`product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `full-stack-ecommerce`.`product` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `sku` VARCHAR(255) DEFAULT NULL,
  `name` VARCHAR(255) DEFAULT NULL,
  `description` VARCHAR(255) DEFAULT NULL,
  `unit_price` DECIMAL(13,2) DEFAULT NULL,
  `image_url` VARCHAR(255) DEFAULT NULL,
  `active` BIT DEFAULT 1,
  `units_in_stock` INT(11) DEFAULT NULL,
  `date_created` DATETIME(6) DEFAULT NULL,
  `last_updated` DATETIME(6) DEFAULT NULL,
  `category_id` BIGINT(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_category` (`category_id`),
  CONSTRAINT `fk_category` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`id`)
) 
ENGINE=InnoDB
AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Categories
-- -----------------------------------------------------
INSERT INTO product_category(category_name) VALUES ('MAISON');
INSERT INTO product_category(category_name) VALUES ('PAPETERIE');

-- -----------------------------------------------------
-- MAISON
-- -----------------------------------------------------
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('MAISON-1000', 'Arcs Trolley - HAY DESIGN', 
'Designed by Belgian duo Muller Van Severen, Arcs Trolley is a functional and decorative trolley encased in a unified chain of vertical arcs.
', 'assets/images/products/maison/maison-1000.jpg', 1, 10, 284.99, 1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('MAISON-1001', 'Brew Cup - HAY DESIGN', 
'Crafted in durable, heat-resistant borosilicate glass, the Brew Cup has a functional design with a playful twist.
', 'assets/images/products/maison/maison-1001.jpg', 1, 40, 44.99, 1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('MAISON-1002', 'Porte Plante - FERM LIVING', 
'Use a Plant stand from ferm LIVING to display plants and flowers in an upright and elegant way. 
The thin and oblong structures can transform your green plants into small artworks.', 'assets/images/products/maison/maison-1002.webp', 1, 20, 35.00, 1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('MAISON-1003', 'Jardinière - FERM LIVING', 
'Elegant and timeless, this box on its delicate and thin legs in powder coated metal can be used for everything from plants to books or children\’s toys all around the house.', 'assets/images/products/maison/maison-1003.jpg', 1, 15, 130.99, 1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('MAISON-1004', 'Cagette Color Mix S - HAY DESIGN', 
'HAY Colour Crate Mix is a series of colourful storage boxes with a distinctive, perforated design.
', 'assets/images/products/maison/maison-1004.jpg', 1, 33, 27.00, 1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('MAISON-1005', 'Chaise Alu Chair Muller Van Severen - VALERIE OBJECTS', 
'Imaginée par le couple créatif Fien Muller et Hannes Van Severen, la chaise Alu pour Valerie Objects se décline en 13 assemblages de couleurs différents.
', 'assets/images/products/maison/maison-1005.webp', 1, 40, 44.99, 1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('MAISON-1006', 'Bouteille thermos Sowden bleu 0,35 L - HAY DESIGN', 
'La bouteille thermos Sowden bleu de 0,35 L est née de la collaboration entre la marque Hay et le designer Georges Sowden.', 'assets/images/products/maison/maison-1006.webp', 1, 20, 35.00, 1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('MAISON-1007', 'Carafe poisson Fish & Fish Paola Navone 1 L - SERAX', 
'La carafe poisson Fish & Fish en verre crée par la designer Italienne Paola Navone pour la marque Serax.', 'assets/images/products/maison/maison-1007.webp', 1, 15, 130.99, 1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('MAISON-1008', 'Pot de fleurs vert Sixties - SERAX', 
'Ce pot de fleurs fabriqué en faïence fait partie de la collection Sixties de chez Serax.
', 'assets/images/products/maison/maison-1008.webp', 1, 10, 284.99, 1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('MAISON-1009', 'Strap Mirror No 2 - HAY DESIGN', 
'With a functional and minimalistic design, Strap Mirror features a subtle groove around the edge that contains a woven strap for mounting the mirror on the wall. 
', 'assets/images/products/maison/maison-1009.jpg', 1, 40, 250.00, 1, NOW());

-- -----------------------------------------------------
-- PAPETERIE
-- -----------------------------------------------------
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('PAPETERIE-1000', 'Cartouches d\'encre x10 couleurs - KAWECO', 
'Découvrez ce petit paquet de 10 cartouches d\'encre colorées ! De format standard, elles s\'adaptent aux stylos plume Kaweco mais également à une grande variété d\'autres marques et modèles.', 'assets/images/products/papeterie/papeterie-1000.webp', 1, 30, 9.00, 2, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('PAPETERIE-1001', 'Porte-mine Classic Sport 3,2 mm - KAWECO', 
'Le porte-mine Classic Sport 3,2 mm se présente sous la forme d\'un crayon à mine parfait pour dessiner et donner vie à vos idées!', 'assets/images/products/papeterie/papeterie-1001.webp', 1, 19, 28.00, 2, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('PAPETERIE-1002', 'Cartouches d\'encre x10 couleurs - KAWECO', 
'Découvrez ce petit paquet de 10 cartouches d\'encre colorées ! De format standard, elles s\'adaptent aux stylos plume Kaweco mais également à une grande variété d\'autres marques et modèles.', 'assets/images/products/papeterie/papeterie-1002.webp', 1, 30, 9.00, 2, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('PAPETERIE-1003', 'Carnet règle avec intercalaires - KIKKERLAND', 
'Découvrez le carnet règle avec intercalaires de chez Kikkerland. Avec ses 6 intercalaires, ce cahier vous permettra d\'organiser vos notes dans les différents onglets.', 'assets/images/products/papeterie/papeterie-1003.webp', 1, 30, 9.00, 2, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('PAPETERIE-1004', 'Set de 4 stylos billes - KIKKERLAND', 
'Le set de 4 stylos billes de chez Kikkerland. Ce set de stylos en acier inoxydable et laiton ne laissera pas indifférent. Leur design coloré a été conçu par Goodlines.', 'assets/images/products/papeterie/papeterie-1004.jpg', 1, 12, 15.00, 2, NOW());
