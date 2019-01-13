-- MySQL dump 10.13  Distrib 8.0.13, for Linux (x86_64)
--
-- Host: localhost    Database: wisata_maluku
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `app_sessions`
--

DROP TABLE IF EXISTS `app_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `app_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL,
  `data` blob NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_sessions`
--

LOCK TABLES `app_sessions` WRITE;
/*!40000 ALTER TABLE `app_sessions` DISABLE KEYS */;
INSERT INTO `app_sessions` VALUES ('04a9c5c1t73l040smh53q2vu5desqtbm','127.0.0.1',1544689553,_binary '__ci_last_regenerate|i:1544689553;'),('0dop3k88mak5gjsuinq5ddp6cdkugvnr','::1',1544137451,_binary '__ci_last_regenerate|i:1544137394;'),('0knhqrti0j3hrs6d0hi90ktppfnmm0dm','127.0.0.1',1544164193,_binary '__ci_last_regenerate|i:1544164193;'),('0u5rp409s63ur7rvt74and74tq8ncvqo','127.0.0.1',1544138244,_binary '__ci_last_regenerate|i:1544138202;'),('18q33hbobt1jli87fk00l9q4vs8ogvbp','127.0.0.1',1544941829,_binary '__ci_last_regenerate|i:1544941820;'),('1k36ptk0ske239467kttfif5p91l763g','127.0.0.1',1544687805,_binary '__ci_last_regenerate|i:1544687805;'),('1uq0c5vcchcukn2dj7r79lhvstpi2f2s','127.0.0.1',1544153510,_binary '__ci_last_regenerate|i:1544153510;'),('2ltndd3ouav00fn3tv7utppfpru1ca81','::1',1544102751,_binary '__ci_last_regenerate|i:1544102737;'),('2mg7g4vclipqf9lvheg0ap1r69kgbpa4','::1',1544098850,_binary '__ci_last_regenerate|i:1544098850;'),('3263q0n3cpq6lc244f9p9fv4pm8r4grt','127.0.0.1',1544151904,_binary '__ci_last_regenerate|i:1544151904;'),('3l1iau59hvta4co2broknutq34p7q2b3','::1',1544100428,_binary '__ci_last_regenerate|i:1544100428;'),('3m1cs91bvfr9rvgekvuolcon12e1brkm','::1',1544099765,_binary '__ci_last_regenerate|i:1544099765;'),('411lmas3c31sga9k652evqroho3qc3br','127.0.0.1',1544153208,_binary '__ci_last_regenerate|i:1544153208;'),('5njh32e0qfikupfcjpkjt1d4toqiua2t','127.0.0.1',1544681689,_binary '__ci_last_regenerate|i:1544681689;'),('6egbh7omsld5b4jl3mg63qei19sihgkb','::1',1544676042,_binary '__ci_last_regenerate|i:1544676008;'),('6h361bdu0mkjrs1tnm28bddutksrmb5q','127.0.0.1',1544683559,_binary '__ci_last_regenerate|i:1544683559;'),('73ob8c5dot5mbs3ro8dmmlc1k1qvm7hg','::1',1544136376,_binary '__ci_last_regenerate|i:1544136376;'),('77lp32rgcb9lr4cgmi7utk9scoqu6af4','127.0.0.1',1544690092,_binary '__ci_last_regenerate|i:1544690092;'),('7h7j4ar8hrppjov2orp4ag8q1o12osto','127.0.0.1',1544767613,_binary '__ci_last_regenerate|i:1544767613;'),('8j8afkbdc6r2tir7259f0pgbul4jj9r1','127.0.0.1',1544684414,_binary '__ci_last_regenerate|i:1544684414;'),('8rc81lu811kn4lr25heut42qbmhpfd4n','127.0.0.1',1544685700,_binary '__ci_last_regenerate|i:1544685700;'),('9mlrdjpnm8uiu8n9ph401p2bch7ma53r','127.0.0.1',1544152893,_binary '__ci_last_regenerate|i:1544152892;'),('9v7d9q41bnisjs173hulsan4a13nslnr','127.0.0.1',1544159825,_binary '__ci_last_regenerate|i:1544159824;'),('a096qh8amupk2143egldlav0ilojgdro','127.0.0.1',1544682403,_binary '__ci_last_regenerate|i:1544682403;'),('anhgi467ulb5hkqu8sb5fjt3ifngae51','127.0.0.1',1544137893,_binary '__ci_last_regenerate|i:1544137893;'),('baqla5tkahvet30c0dtr31j5eqiivcme','::1',1544676008,_binary '__ci_last_regenerate|i:1544676008;'),('bdvpi4v8pvli72i1lu88mhl4uikcueih','127.0.0.1',1544162657,_binary '__ci_last_regenerate|i:1544162657;'),('bj69v9afkkni5tsf10mnd59g42gvlol2','::1',1544098473,_binary '__ci_last_regenerate|i:1544098473;'),('cf40db49nerr6o90meduli868ks31tvk','127.0.0.1',1544682031,_binary '__ci_last_regenerate|i:1544682031;'),('cquiukmt19l88sl851mjf3nscuv0vgu0','127.0.0.1',1544686783,_binary '__ci_last_regenerate|i:1544686783;'),('fiqflr6k7hl0k3089nsjh19s25918r63','127.0.0.1',1544676632,_binary '__ci_last_regenerate|i:1544676632;'),('fkp9doo03k340b35i909r3kcvf4g636e','127.0.0.1',1544673543,_binary '__ci_last_regenerate|i:1544673543;'),('flcbr6ulljvcsa1k1pbg4d05f3fqedai','127.0.0.1',1544153814,_binary '__ci_last_regenerate|i:1544153814;'),('g0bqfp66ltkmb559m4b3uij1j6ji4sfu','127.0.0.1',1544690478,_binary '__ci_last_regenerate|i:1544690478;'),('g6bu7n5f3n4glpdhvfgs4e26m99vglq5','127.0.0.1',1544155886,_binary '__ci_last_regenerate|i:1544155886;'),('g9mbev4ak0rp9dn1mrogfdogt9q85l5k','127.0.0.1',1544681324,_binary '__ci_last_regenerate|i:1544681324;'),('gbmk5d953gmv92rcdcd47rulnueqdi0e','127.0.0.1',1544673929,_binary '__ci_last_regenerate|i:1544673929;'),('gcm9cpshpi2pqtcll110btnrj0hbfslk','127.0.0.1',1544151598,_binary '__ci_last_regenerate|i:1544151598;'),('gqno0fce1ol3bq8s9c50i74hgkv2t5f6','127.0.0.1',1544137889,_binary '__ci_last_regenerate|i:1544137889;'),('h0932qahjlfhbujnopvor1n1re1o2o0n','127.0.0.1',1544767642,_binary '__ci_last_regenerate|i:1544767613;'),('h0v3bdfo3sq7ol3kmue3esb2jg2gvukd','127.0.0.1',1544156203,_binary '__ci_last_regenerate|i:1544156203;'),('h2jkfml7t1db3dv1hllvcf6n22mivelq','127.0.0.1',1544138202,_binary '__ci_last_regenerate|i:1544138202;'),('h69u98rq0feljlclklk677ll0869ao0u','127.0.0.1',1544941821,_binary '__ci_last_regenerate|i:1544941820;'),('iiplnr1i3bjl5up605c4833fv9jpao7e','127.0.0.1',1544676167,_binary '__ci_last_regenerate|i:1544676167;'),('j8r0easuknop9hchq4cu25lek07mg33d','127.0.0.1',1544683879,_binary '__ci_last_regenerate|i:1544683879;'),('k29s6q84j69db850jscc8lq7njs39cgm','::1',1544100082,_binary '__ci_last_regenerate|i:1544100082;'),('k5ui9k1nf3eausko84m36d8djkt88d1l','::1',1544097134,_binary '__ci_last_regenerate|i:1544097134;'),('l10uaiv4h0bqgvsvm4clanq00a0nhl65','::1',1544102737,_binary '__ci_last_regenerate|i:1544102737;'),('l2g919gm47j7v403uqnfm7ern58883tb','127.0.0.1',1544677117,_binary '__ci_last_regenerate|i:1544677117;'),('lpugm83pi3up21amb32v8i90qkqdntqa','127.0.0.1',1544329960,_binary '__ci_last_regenerate|i:1544329905;'),('lrqepa8goiarbb3elldnmlci7eu1k4ci','::1',1544135982,_binary '__ci_last_regenerate|i:1544135982;'),('m5l12rc7aq4gurqlh2o4l128d63cq0kn','127.0.0.1',1544164651,_binary '__ci_last_regenerate|i:1544164645;'),('mqph334oni085bu8kgrl5kdmuve95g6t','127.0.0.1',1544163879,_binary '__ci_last_regenerate|i:1544163879;'),('necatk5179t06iirdct706q1jkn9c7rs','::1',1544329902,_binary '__ci_last_regenerate|i:1544329894;'),('obatv9h2sd5df6suifici2gkhfmetjnh','127.0.0.1',1544687095,_binary '__ci_last_regenerate|i:1544687095;'),('p2jpsdu5irhttq9jh4eiu0rumolvcp5v','::1',1544098145,_binary '__ci_last_regenerate|i:1544098145;'),('pmrmgjra11b7555bh8msrboohgfc0led','::1',1544096677,_binary '__ci_last_regenerate|i:1544096677;'),('q3oclq2phreb11mgtfac7p118hq7rqhl','127.0.0.1',1544162980,_binary '__ci_last_regenerate|i:1544162980;'),('q9368jlm4k1qieltctep2qnnb0oscvqi','::1',1544100898,_binary '__ci_last_regenerate|i:1544100898;'),('qbhml4957223st33gk52htmtptadp0ht','127.0.0.1',1544164645,_binary '__ci_last_regenerate|i:1544164645;'),('r9eu6mnq8bqgi1fgh9cp0gphmrdd6s0r','::1',1544097466,_binary '__ci_last_regenerate|i:1544097466;'),('rgarb301vmgfa3pn9ko86v0g84sfu1tn','127.0.0.1',1544683182,_binary '__ci_last_regenerate|i:1544683182;'),('rjb8bp2um17daktnvjdjffsj5mll7j0v','127.0.0.1',1544329905,_binary '__ci_last_regenerate|i:1544329905;'),('s17v7314k4cdf6hqcn3it7f7487smi80','::1',1544137394,_binary '__ci_last_regenerate|i:1544137394;'),('s81ktnnpdkcdnsfe28rinj6so27gmm0d','127.0.0.1',1544162299,_binary '__ci_last_regenerate|i:1544162299;'),('s8il0s7jo331nf9egi93lcdqo4q6tgbg','127.0.0.1',1544682880,_binary '__ci_last_regenerate|i:1544682880;'),('t2ms1lr7dnuspvfr86rr913rtgpg7j3a','127.0.0.1',1544673175,_binary '__ci_last_regenerate|i:1544673175;'),('tg2ndngsemfi83uj6lbk6etougn2936h','127.0.0.1',1544690727,_binary '__ci_last_regenerate|i:1544690478;'),('tkivga9v1qpj1f7h16q7bl5800k7qpld','127.0.0.1',1544686143,_binary '__ci_last_regenerate|i:1544686143;'),('tr4lhq476bo9uafu06i5fgo0fme2ohjh','127.0.0.1',1544688166,_binary '__ci_last_regenerate|i:1544688166;'),('u67mfcv5adtvbpb3bt3d4ku2rq9lv86v','127.0.0.1',1544152559,_binary '__ci_last_regenerate|i:1544152559;'),('ubuh071uh9m83jtg85hjqh3hho71l3rf','127.0.0.1',1544764682,_binary '__ci_last_regenerate|i:1544764681;'),('ug7hpb1b4sbc93i4qg6bid5brsbkqhpj','127.0.0.1',1544674317,_binary '__ci_last_regenerate|i:1544674317;'),('umpqgo6lfaqiv72q2ivoo2pkej3brura','127.0.0.1',1544686469,_binary '__ci_last_regenerate|i:1544686469;'),('unfpdusai4vqb7sdjl53hqeiuanqd5vo','127.0.0.1',1544688521,_binary '__ci_last_regenerate|i:1544688521;'),('v5qt507gqtrtrajvj6fk7ajjqmuc9k3q','::1',1544096286,_binary '__ci_last_regenerate|i:1544096286;'),('vmehg655lbvi74vpib5jbh5dhjk3ms4f','127.0.0.1',1544154424,_binary '__ci_last_regenerate|i:1544154424;');
/*!40000 ALTER TABLE `app_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kategori`
--

DROP TABLE IF EXISTS `kategori`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kategori` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(60) NOT NULL,
  `foto` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategori`
--

LOCK TABLES `kategori` WRITE;
/*!40000 ALTER TABLE `kategori` DISABLE KEYS */;
INSERT INTO `kategori` VALUES (1,'alam','alam5.jpg'),(2,'budaya','adat.jpg'),(3,'sejarah','sejarah.jpg');
/*!40000 ALTER TABLE `kategori` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kota`
--

DROP TABLE IF EXISTS `kota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kota` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(60) NOT NULL,
  `provinsi_id` int(11) NOT NULL,
  `foto` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `provinsi_id` (`provinsi_id`),
  CONSTRAINT `fk_kota_to_provinsi` FOREIGN KEY (`provinsi_id`) REFERENCES `provinsi` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kota`
--

LOCK TABLES `kota` WRITE;
/*!40000 ALTER TABLE `kota` DISABLE KEYS */;
INSERT INTO `kota` VALUES (1,'Maluku Tengah',1,'maluku_tengah.png'),(2,'Maluku Barat Daya',1,'maluku_barat_daya.png'),(3,'Maluku Tenggara Barat',1,'maluku_tenggara_barat.png'),(4,'Maluku Utara',2,'maluku_utara.png');
/*!40000 ALTER TABLE `kota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provinsi`
--

DROP TABLE IF EXISTS `provinsi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `provinsi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(60) NOT NULL,
  `wilayah` point DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provinsi`
--

LOCK TABLES `provinsi` WRITE;
/*!40000 ALTER TABLE `provinsi` DISABLE KEYS */;
INSERT INTO `provinsi` VALUES (1,'Maluku ',_binary '\0\0\0\0\0\0\0\Ğ*^\è	ÀP¿f¦D`@'),(2,'Maluku Utara',_binary '\0\0\0\0\0\0\0NŸx)\Ğ\"ù?`O\à\Â\ó_@');
/*!40000 ALTER TABLE `provinsi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tempat_wisata`
--

DROP TABLE IF EXISTS `tempat_wisata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tempat_wisata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori_id` int(11) NOT NULL,
  `kota_id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kordinat` point NOT NULL,
  `deskripsi` longtext NOT NULL,
  `gambar` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `kategori_id` (`kategori_id`),
  KEY `kota_id` (`kota_id`),
  CONSTRAINT `tempat_wisata_ibfk_1` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`id`),
  CONSTRAINT `tempat_wisata_ibfk_2` FOREIGN KEY (`kota_id`) REFERENCES `kota` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tempat_wisata`
--

LOCK TABLES `tempat_wisata` WRITE;
/*!40000 ALTER TABLE `tempat_wisata` DISABLE KEYS */;
INSERT INTO `tempat_wisata` VALUES (2,1,4,'Gunung Gamalama',_binary '\0\0\0\0\0\0\0r¿CQ O\é?Üµ\Û\Ø_@','Gunung yang diambil dari kata Kie Gam Lamo berarti Negeri yang Besar dan menjadi simbol kebesaran bangsa yang mendiami Pulau Ternate. Gamalama memiliki ketinggian mencapai 1.715 meter di atas permukaan laut dengan Hutan hijau lebat mencapai ketinggian 1.500 meter.','gunung-gamalama.JPG'),(3,1,1,'Pantai Liang',_binary '\0\0\0\0\0\0\0HÄ”H¢·@\È\ïmú³Ÿ\\@','Pantai Liang adalah salah satu pantai yang bisa Anda kunjungi di Ambon Maluku.Pantai Liang atau biasa juga di sebut sebagai Pantai Hunmua merupakan pantai yang terltak di desa Liang, Kecamatan Salahutu, Kabupaten  Maluku Tengah, Provinsi Maluku.',''),(4,3,4,'Benteng Toluko',_binary '\0\0\0\0\0\0\0^)\ËÀ²h:; ^@','Keindahan Benteng Toluko yaitu Lokasi Benteng yang berada di dekat Pantai dan terlihat seperti di atas Bukit. Dan penataan Ruang di Luar maupun di dalam Benteng yang memiliki Makna Arsitektur yang luar biasa. Bunga â€“ bunga yang di tata di luar Bentengpun turut menghiasi Indahnya pemandangan Benteng Toluko.',''),(5,1,4,'Pantai Jikomalomo',_binary '\0\0\0\0\0\0\0¶-\Êl\É@’³°§(Y@','',''),(6,1,4,'Pulau Halmahera',_binary '\0\0\0\0\0\0\0\ß\Û\ôg?\÷?µ\Û.45_@','',''),(7,1,4,'Teluk Jailolo',_binary '\0\0\0\0\0\0\0aıŸ\Ã|@S£’:AY@','',''),(8,1,4,'Pantai Wakatobi',_binary '\0\0\0\0\0\0\0¶-\Êl\É@’³°§(Y@','',''),(9,3,4,'Benteng Tolukko',_binary '\0\0\0\0\0\0\0^)\ËÀ²h:; ^@','',''),(12,3,4,'Bentang Kastela',_binary '\0\0\0\0\0\0\01±ù¸6T\é?M2r\ö\Ò_@','Benteng Kastela terletak di Jalan Raya Benteng Kastela Santo Paulo, Desa Kastela, Kecamatan Pulau Ternate, Kota Ternate, Provinsi Maluku Utara. Lokasi benteng ini berada di sebelah utara kawasan wisata Pantai Kastela.\r\nMenurut catatan sejarah, setelah Malaka ditaklukkan oleh Portugis pada tahun 1511, Laksamana Alfonso dâ€™Alburquerque mengirim Antonio de Abreu dan Francisco Serrao dengan armada yang terdiri dari tiga kapal ke Maluku pada Desember 1511. Dalam bulan Januari 1512, mereka tiba di Banda. Setelah beberapa waktu di Ambon, karena mengalami naas dengan karamnya kapal yang ditumpangi. Kemudian Serrao dijemput utusan Sultan Ternate dan dibawa ke Ternate pada awal 1512.',''),(13,3,4,'Benteng Orange',_binary '\0\0\0\0\0\0\0S®\ğ.±\rÀú\Ğ\õ-`@','Benteng Orange merupakan benteng Belanda pertama di Nusantara yang di bangun pada tahun 1607 di Ternate, Maluku Utara oleh Gubernur Jendral Belanda Matelief De Jonge. Benteng ini merupakan bekas peniggalan benteng tua yang dibangun oleh Melayu yang diberi nama Benteng Malayo. Benteng ini juga pernah menjadi pusat pemerintahan tertinggi Hindia Belanda, yang dipimpin oleh Gubernur Jendral VOC Pieter Both, Laurenz Real, Herarld Reyist dan J.C Coum.\r\n',''),(14,3,4,'Benteng kota janji',_binary '\0\0\0\0\0\0\0‚\Å\áÌ¯\æÀ5\ÒRy;tZ@','Benteng yang berdenah trapesium ini berukuran 20 x 20 m berdiri di atas lahan dengan luas sekitar 2.147,25 mÂ², dan berada pada ketinggian 50 m di atas permukaan laut. Benteng yang konon terbilang megah ini kini telah runtuh. Bagian benteng yang masih dapat disaksikan sekarang hanyalah bagian dinding luarnya yang tersusun dari batu kali (andesit), batu karang, dan campuran pasir dengan kapur, sedangkan bagian dalam sudah tertimbun dengan tanah. Pada sisi timur benteng, terdapat tangga yang mengarah naik ke atas benteng di mana di sekitar itu terdapat semacam kolam yang telah mengering.',''),(15,1,1,'Pantai Banda Naira',_binary '\0\0\0\0\0\0\0û:p\Î(ÀE>‘\'>`@','Pulau Banda atau kepulauan Banda merupakan suatu daerah di maluku yang kaya akan sejarah, budaya dan keindahan alam, oleh sebab itu, Banda sudah dikenal oleh masyarakat internasional (wisatawan mancanegara) dari cerita sejarah yang telah menjadikan Banda sebagai tujuan wisata tertua di Indonesia. setiap tahunnya ribuan turis asing berdatangan untuk menikmati keindahan dan keramahtamahan masyarakat Banda. Salah satu pulau di Banda pernah di tukar dengan pulau Manhattan di Amerika antara Inggris dan Belanda (pada masa VOC), ',''),(16,1,1,'Pantai Ora',_binary '\0\0\0\0\0\0\0\Ù\Ä\ëúÀ\ß\Z\Ø*Á\n`@','Pantai Ora adalah surga tersembunyi, begitulah bagi sebagian orang yang pernah berkunjung ke sana, hal ini telah menjadikan Pantai Ora sebagai tujuan wisata favorit ke Maluku saat ini, baik bagi turis lokal maupun mancanegara, berlibur di pantai Ora dan menikmati keindahan alam sekitarnya, maupun alam bawah lautnya, akan memberikan suatu sensasi liburan yang tenang dan santai. Pantai Ora sebagai tujuan wisata ke Maluku dapat dikategorikan sebagai eco wisata atau wisata alam. Perjalanan menuju ke Pantai Ora sangatlah jauh dari Bandara Internasional Pattimura, Ambon ',''),(17,1,4,'Pantai Sulamadaha',_binary '\0\0\0\0\0\0\0?§ ?\É@O$˜jf(Y@','Letak : Pantai Sulamadaha terletak di Desa Sulamadaha. untuk mencapai tempat butuh waktu 30 menit saja dari pusat kota Ternate.\r\nDeskripsi : Sulamadaha adalah pantai yang paling terkenal di Ternate. Tidak hanya di Indonesia, namun pantai ini juga sudah diketahui oleh warga mancanegara. pantai Sulamadaha merupakan satu aset wisata penting yang dimiliki oleh Ternate, Maluku Utara.',''),(18,1,3,'Pantai Ngurtafur',_binary '\0\0\0\0\0\0\0¶ÀyÌ›>Àú\æ£1ÿ’`@','','pantai_ngurtafur.jpg'),(19,1,3,'Kei Island',_binary '\0\0\0\0\0\0\0e\r(\åÿÿÀ\ÙÖª¸Ì–`@','','kei_island.jpeg'),(20,1,3,'Gua Hawang',_binary '\0\0\0\0\0\0\0wi\ÃaiÀŸ\Ï\Ûs–`@','','gua_hawang.jpg'),(21,1,3,'Bukit Masbait',_binary '\0\0\0\0\0\0\0[6„t\Â\õÀœ\Û)\Âr\Ë_@','','bukit_masbait.jpeg'),(22,1,3,'Pantai Ohoidertawun',_binary '\0\0\0\0\0\0\0\Zl\ê„ÀU)\âY•`@','','pantai_ohoidertawun.jpg'),(23,1,3,'Pantai Pasir Panjang',_binary '\0\0\0\0\0\0\0»–ªœÀ»”_k”`@','','pantai_pasar_panjang.jpg'),(24,2,3,'Meti Kei',_binary '\0\0\0\0\0\0\0\÷Jp4¹ÀúıQŠL‘`@','','meti_kei.jpg'),(25,2,3,'Taman Ziarah Mgr Johanes',_binary '\0\0\0\0\0\0\0C\0O¦ÀW¤xK¨—`@','','taman_ziarah_johanes.jpg'),(26,3,3,'Monumen Resirenan',_binary '\0\0\0\0\0\0\0ş2À¡\Âl]Er`@','Sejarah singkat Resirenan pada abad 16 dia (Resirenan) ditemukan dan dinobatkan menjadi anggota keluarga LOLI dengan nama RESIRENANA. Ia hidup menyatu dalam lima komunitas masyarakt saat itu antara lain : AHU MALMOLI, DEMWULUR MATRAAT, AHUNARA WERDIAN dan ABAT WADAN MALELA LERAWULAN. Perkelahian yang mengakibatkan korban jiwa setiap saat karena perebutan Hak atas tanah dan jenis hak lainnya. Dari lima komunitas itu dibentuk menjadi dua besar yang satu di Timur dengan LAMDESAR (KORATUTUL) dan disebelah Barat dengan nama KELIOBAR (URTATAN) berhasil disatukan lewat pengorbanan dirinya dengan pesan moral singkat ISA DEK NOT SIAN ISA Artinya â€œSATU DENGAN YANG LAIN JANGAN SALING MENYAKITIâ€. Peristiwa ini telah ditetapkan untuk diperingati sebagai salah satu upacara panas pela yang ditetapkan dalam Calender Of Event pada tanggal 30 Oktober.\r\n\r\nJarak tempuh dapat melalui darat dan laut.  Jarak tempuh ke lokasi tersebut 269km dengan transportasi darat dari ibu kota Kabupaten dengan waktu tempuh 5 jam jarak tempuh dari ibu kota Kecamatan ke lokasi monument 19km dengan waktu tempuh 1 jam.','monumen_resirenan.jpg'),(27,3,3,'Bunker Jepang',_binary '\0\0\0\0\0\0\0r×·8\Ï} Àm\r[i[`@','Desa Lingat merupakan  salah satu desa wisata sejarah, ditemukan beberapa situs sejarah peninggalan tentara Jepang pada masa  Perang Dunia ke â€“ 2 (Dua). Situs sejarah tempat tinggal /persembunyian Jendral tentara Jepang yaitu NISIHARA BOTAI DAN NAKAMURA BOTAI pada saat Perang Dunia ke-2 sejak tahun 1942 - 1945 dalam melawan tentara Sekutu. Lokasi di Desa Lingat Kecamatan Selaru. Dapat ditempuh menggunakan transportasi Laut dari Saumlaki  sekitar Â± 2- 4 jam.\r\n\r\nBunker Jepang adalah tempat yang digunakan oleh tentara Jepang untuk mengintai musuh, pada Perang Dunia ke-2 sejak tahun 1942 â€“ 1945. Terletak di Karang sepanjang pinggir pantai Ituwau. Karakteristik dari tempat persembunyian ini memiliki dua pintu masuk-keluar dan 4 ventilasi udara, pada bagian dalam  memiliki ruang yang luas dan terbagi atas dua ruangan.','bunker_jepang.jpg'),(28,3,3,'wuarmalay',_binary '\0\0\0\0\0\0\0	ƒ\×Ó³½À\Ä\Ú\ÂX``@','Wuarmalay atau manusia hilang adalah salah satu objek wisata sejarah yang merupakan cerita rakyat desa Weratan Kecamatan Wermaktian tentang manusia yang diyakini memiliki kemampuan bisa hilang dari pandangan, dengan meninggalkan sepasang sepatu yang dianggap mengandung nilai mistis yang berada di tepi karang curam di pinggiran pantai. Jarak tempuh ke lokasi wisata tersebut kurang lebih 4-5 jam (300 menit).','wuarmalay.jpg'),(29,1,2,'Danau Tihu',_binary '\0\0\0\0\0\0\0\É*[\Ú/À8X\î»X–_@','Danau ini berlokasi di Pulau Wetar dan merupakan satu-satunya danau yang ada di sana. Untuk menuju danau yang masih perawan itu perlu perjalanan panjang. Kalian harus trekking menuruni lembah untuk menjangkau permukaan airnya. Namun letih akan hilang karena sepanjang perjalanan dihiasi oleh panorama alam yang cantik dan mempesona.\r\n \r\nAir danau berwarna sangat biru dan akan mengalami pasang serta surut seperti laut. Di tengah danau ini terdapat sebuah pulau kecil yang diberi nama Pulau Ibu. Tak hanya memikat, danau ini mempunyai legenda. Konon di danau ini hidup dua ekor buaya berkepala tujuh dan berkepala dua.','danau_tihu.jpg'),(30,1,2,'Gunung Kerbau',_binary '\0\0\0\0\0\0\0\Ú[%³\ÕT À[¯ˆNû_@','Ini adalah ikonnya Pulau Moa dan Kabupaten Maluku Barat Daya. Wisatawan rasanya belum lengkap datang kalau belum ke gunung ini. Di kaki gunung, terdapat keunikan yang memikat. Terdapat sebuah savana dengan populasi kerbau yang hampir tak terhitung jumlahnya. Maka itulah gunung tersebut dinamakan Gunung Kerbau.','gunung_kerbau.jpg'),(31,1,2,'Pantai Liran',_binary '\0\0\0\0\0\0\0¶ø\0\ã À¼„ù\áVm_@','','pantai_liran.jpg');
/*!40000 ALTER TABLE `tempat_wisata` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-14  5:24:59
