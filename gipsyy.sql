-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.4.27-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.2.0.6576
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Copiando dados para a tabela gipsyy.categorias: ~6 rows (aproximadamente)
INSERT INTO `categorias` (`id`, `nome`) VALUES
	(1, 'electronics'),
	(2, 'jewelery'),
	(3, 'men\'s clothing'),
	(4, 'women\'s clothing'),
	(5, 'Nova categoria'),
	(6, 'Teste de criacao 2');

-- Copiando dados para a tabela gipsyy.produtos: ~20 rows (aproximadamente)
INSERT INTO `produtos` (`id`, `nome`, `descricao`, `preco`, `categoria`, `imagem`, `avaliacao`) VALUES
	(1, 'Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops', 'Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday', 109.95, 3, 'https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg', 4),
	(2, 'Mens Casual Premium Slim Fit T-Shirts ', 'Slim-fitting style, contrast raglan long sleeve, three-button henley placket, light weight & soft fabric for breathable and comfortable wearing. And Solid stitched shirts with round neck made for durability and a great fit for casual fashion wear and', 22.3, 3, 'https://fakestoreapi.com/img/71-3HjGNDUL._AC_SY879._SX._UX._SY._UY_.jpg', 4),
	(3, 'Mens Cotton Jacket', 'great outerwear jackets for Spring/Autumn/Winter, suitable for many occasions, such as working, hiking, camping, mountain/rock climbing, cycling, traveling or other outdoors. Good gift choice for you or your family member. A warm hearted love to Fath', 55.99, 3, 'https://fakestoreapi.com/img/71li-ujtlUL._AC_UX679_.jpg', 5),
	(4, 'Mens Casual Slim Fit', 'The color could be slightly different between on the screen and in practice. / Please note that body builds vary by person, therefore, detailed size information should be reviewed below on the product description.', 15.99, 3, 'https://fakestoreapi.com/img/71YXzeOuslL._AC_UY879_.jpg', 2),
	(5, 'John Hardy Women\'s Legends Naga Gold & Silver Dragon Station Chain Bracelet', 'From our Legends Collection, the Naga was inspired by the mythical water dragon that protects the ocean\'s pearl. Wear facing inward to be bestowed with love and abundance, or outward for protection.', 695, 2, 'https://fakestoreapi.com/img/71pWzhdJNwL._AC_UL640_QL65_ML3_.jpg', 5),
	(6, 'Solid Gold Petite Micropave ', 'Satisfaction Guaranteed. Return or exchange any order within 30 days.Designed and sold by Hafeez Center in the United States. Satisfaction Guaranteed. Return or exchange any order within 30 days.', 168, 2, 'https://fakestoreapi.com/img/61sbMiUnoGL._AC_UL640_QL65_ML3_.jpg', 4),
	(7, 'White Gold Plated Princess', 'Classic Created Wedding Engagement Solitaire Diamond Promise Ring for Her. Gifts to spoil your love more for Engagement, Wedding, Anniversary, Valentine\'s Day...', 9.99, 2, 'https://fakestoreapi.com/img/71YAIFU48IL._AC_UL640_QL65_ML3_.jpg', 3),
	(8, 'Pierced Owl Rose Gold Plated Stainless Steel Double', 'Rose Gold Plated Double Flared Tunnel Plug Earrings. Made of 316L Stainless Steel', 10.99, 2, 'https://fakestoreapi.com/img/51UDEzMJVpL._AC_UL640_QL65_ML3_.jpg', 2),
	(9, 'WD 2TB Elements Portable External Hard Drive - USB 3.0 ', 'USB 3.0 and USB 2.0 Compatibility Fast data transfers Improve PC Performance High Capacity; Compatibility Formatted NTFS for Windows 10, Windows 8.1, Windows 7; Reformatting may be required for other operating systems; Compatibility may vary dependin', 64, 1, 'https://fakestoreapi.com/img/61IBBVJvSDL._AC_SY879_.jpg', 3),
	(10, 'SanDisk SSD PLUS 1TB Internal SSD - SATA III 6 Gb/s', 'Easy upgrade for faster boot up, shutdown, application load and response (As compared to 5400 RPM SATA 2.5” hard drive; Based on published specifications and internal benchmarking tests using PCMark vantage scores) Boosts burst write performance, mak', 109, 1, 'https://fakestoreapi.com/img/61U7T1koQqL._AC_SX679_.jpg', 3),
	(11, 'Silicon Power 256GB SSD 3D NAND A55 SLC Cache Performance Boost SATA III 2.5', '3D NAND flash are applied to deliver high transfer speeds Remarkable transfer speeds that enable faster bootup and improved overall system performance. The advanced SLC Cache Technology allows performance boost and longer lifespan 7mm slim design sui', 109, 1, 'https://fakestoreapi.com/img/71kWymZ+c+L._AC_SX679_.jpg', 5),
	(12, 'WD 4TB Gaming Drive Works with Playstation 4 Portable External Hard Drive', 'Expand your PS4 gaming experience, Play anywhere Fast and easy, setup Sleek design with high capacity, 3-year manufacturer\'s limited warranty', 114, 1, 'https://fakestoreapi.com/img/61mtL65D4cL._AC_SX679_.jpg', 5),
	(13, 'Acer SB220Q bi 21.5 inches Full HD (1920 x 1080) IPS Ultra-Thin', '21. 5 inches Full HD (1920 x 1080) widescreen IPS display And Radeon free Sync technology. No compatibility for VESA Mount Refresh Rate: 75Hz - Using HDMI port Zero-frame design | ultra-thin | 4ms response time | IPS panel Aspect ratio - 16: 9. Color', 599, 1, 'https://fakestoreapi.com/img/81QpkIctqPL._AC_SX679_.jpg', 3),
	(14, 'Samsung 49-Inch CHG90 144Hz Curved Gaming Monitor (LC49HG90DMNXZA) – Super Ultrawide Screen QLED ', '49 INCH SUPER ULTRAWIDE 32:9 CURVED GAMING MONITOR with dual 27 inch screen side by side QUANTUM DOT (QLED) TECHNOLOGY, HDR support and factory calibration provides stunningly realistic and accurate color and contrast 144HZ HIGH REFRESH RATE and 1ms ', 999.99, 1, 'https://fakestoreapi.com/img/81Zt42ioCgL._AC_SX679_.jpg', 2),
	(15, 'BIYLACLESEN Women\'s 3-in-1 Snowboard Jacket Winter Coats', 'Note:The Jackets is US standard size, Please choose size as your usual wear Material: 100% Polyester; Detachable Liner Fabric: Warm Fleece. Detachable Functional Liner: Skin Friendly, Lightweigt and Warm.Stand Collar Liner jacket, keep you warm in co', 56.99, 4, 'https://fakestoreapi.com/img/51Y5NI-I5jL._AC_UX679_.jpg', 3),
	(16, 'Lock and Love Women\'s Removable Hooded Faux Leather Moto Biker Jacket', '100% POLYURETHANE(shell) 100% POLYESTER(lining) 75% POLYESTER 25% COTTON (SWEATER), Faux leather material for style and comfort / 2 pockets of front, 2-For-One Hooded denim style faux leather jacket, Button detail on waist / Detail stitching at sides', 29.95, 4, 'https://fakestoreapi.com/img/81XH0e8fefL._AC_UY879_.jpg', 3),
	(17, 'Rain Jacket Women Windbreaker Striped Climbing Raincoats', 'Lightweight perfet for trip or casual wear---Long sleeve with hooded, adjustable drawstring waist design. Button and zipper front closure raincoat, fully stripes Lined and The Raincoat has 2 side pockets are a good size to hold all kinds of things, i', 39.99, 4, 'https://fakestoreapi.com/img/71HblAHs5xL._AC_UY879_-2.jpg', 4),
	(18, 'MBJ Women\'s Solid Short Sleeve Boat Neck V ', '95% RAYON 5% SPANDEX, Made in USA or Imported, Do Not Bleach, Lightweight fabric with great stretch for comfort, Ribbed on sleeves and neckline / Double stitching on bottom hem', 9.85, 4, 'https://fakestoreapi.com/img/71z3kpMAYsL._AC_UY879_.jpg', 5);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
