CREATE TABLE `registrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(255) NOT NULL,
  `plate` varchar(255) NOT NULL,
  `duration` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
);

CREATE TABLE `plates_for_sale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seller` varchar(255) NOT NULL,
  `plate` varchar(255) NOT NULL,
  `price` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
);