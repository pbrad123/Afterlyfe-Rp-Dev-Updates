DROP TABLE IF EXISTS `ak47_qb_drugmanager`;
CREATE TABLE `ak47_qb_drugmanager` (
  `identifier` varchar(100) COLLATE armscii8_bin DEFAULT NULL,
  `addiction` longtext COLLATE armscii8_bin DEFAULT NULL,
  `tolerance` longtext COLLATE armscii8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;
