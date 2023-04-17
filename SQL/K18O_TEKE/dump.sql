-- CREATE DATABASE teke;
-- USE teke;

CREATE TABLE egyesuletek (
  id int,
  nev varchar(30) NOT NULL,
  CONSTRAINT pk_egyesuletek PRIMARY KEY (id)
);

CREATE TABLE versenyzok (
  rajtszam int,
  nev varchar(25) NOT NULL,
  egyid int NOT NULL,
  korcsop varchar(1) NOT NULL,
  CONSTRAINT pk_versenyzok PRIMARY KEY (rajtszam),
  CONSTRAINT fk_versenyzok FOREIGN KEY (egyid) REFERENCES egyesuletek(id)
);

CREATE TABLE eredmenyek (
  sorsz int,
  versenyzo int NOT NULL,
  teli int NOT NULL,
  tarolas int NOT NULL,
  ures int NOT NULL,
  CONSTRAINT pk_eredmenyek PRIMARY KEY (sorsz),
  CONSTRAINT fk_eredmenyek FOREIGN KEY (versenyzo) REFERENCES versenyzok(rajtszam)
);

INSERT INTO egyesuletek VALUES
(1, 'Ajka Kristály SE'), 
(2, 'Arborétum Herény SE'), 
(3, 'Bábolna SE'), 
(4, 'Balogunyom TK'), 
(5, 'Bátonyterenyei TK'), 
(6, 'BKV Előre SC'), 
(7, 'Csór am.'), 
(8, 'Csór T-T FC'), 
(9, 'Eger am.'), 
(10, 'EGIS am.'), 
(11, 'ESK Ménfőcsanak'), 
(12, 'Ferencvárosi TC'), 
(13, 'Fortuna TC'), 
(14, 'Főv. Vízművek SK'), 
(15, 'Horváth TK'), 
(16, 'Jáki SE'), 
(17, 'Jobb Dáma SE'), 
(18, 'Károlyháza'), 
(19, 'Kartográfia am.'), 
(20, 'Kazincbarcika am.'), 
(21, 'Kőszegi SE'), 
(22, 'Lauf - B TK'), 
(23, 'Nádújfalu KSE'), 
(24, 'NK Teke SE'), 
(25, 'Olajos TK'), 
(26, 'Petőháza SE'), 
(27, 'Postás am.'), 
(28, 'Postás SE'), 
(29, 'Rum TTE'), 
(30, 'Sajóbábonyi VTE'), 
(31, 'Sárvári Kinizsi'), 
(32, 'Scarbantia SE'), 
(33, 'SK Göc'), 
(34, 'Somosi TK'), 
(35, 'Szank am.'), 
(36, 'Szanki OBSE'), 
(37, 'Széchenyi SC'), 
(38, 'Székesfehérvár am.'), 
(39, 'Szolnoki MÁV SE'), 
(40, 'Szombathely am.'), 
(41, 'Thermalpark Szentgotthárd VSE'), 
(42, 'Tüker MSC'), 
(43, 'Viktória am.'), 
(44, 'Vilati Eger SE'), 
(45, 'Wiener Neustadt'), 
(46, 'Zalaegerszeg am.');

INSERT INTO versenyzok VALUES
(1, 'Bajzát Rafael', 37, 'A'), 
(2, 'Baksay Zoltán', 31, 'B'), 
(3, 'Baranyai Ernő', 31, 'A'), 
(4, 'Bertalan Tibor', 19, 'B'), 
(5, 'Bodnár Béla', 29, 'A'), 
(6, 'Borbély Tibor', 28, 'B'), 
(7, 'Csarankó László', 22, 'B'), 
(8, 'Csehi Sándor', 8, 'A'), 
(9, 'Cserényi Lajos', 36, 'A'), 
(10, 'Csiki Alajos', 42, 'B'), 
(11, 'Dobos János', 14, 'A'), 
(12, 'Fegyveres Sándor', 12, 'A'), 
(13, 'Feltein István', 38, 'A'), 
(14, 'Földi József', 39, 'A'), 
(15, 'Földvári Béla', 25, 'A'), 
(16, 'Gáspár Ervin', 4, 'A'), 
(17, 'Gundics Sándor', 26, 'A'), 
(18, 'Holló László', 10, 'A'), 
(19, 'Horváth János', 11, 'A'), 
(20, 'Horváth Mihály', 16, 'B'), 
(21, 'Horváth Péter', 32, 'B'), 
(22, 'Huber István', 5, 'B'), 
(23, 'Istiván Attila', 24, 'A'), 
(24, 'József-Polonyi Gábor', 27, 'A'), 
(25, 'Juhász Tibor', 30, 'B'), 
(26, 'Kalmár István', 45, 'B'), 
(27, 'Kisházi Kálmán', 42, 'B'), 
(28, 'Koltai László', 41, 'B'), 
(29, 'Kozmor László', 21, 'A'), 
(30, 'Körmendi István', 17, 'B'), 
(31, 'Lipp Vencel', 1, 'B'), 
(32, 'Lukács Zoltán', 37, 'A'), 
(33, 'Luther László', 20, 'A'), 
(34, 'Mészáros József', 6, 'B'), 
(35, 'Molnár Gyula', 15, 'B'), 
(36, 'Nagy Dezső', 23, 'B'), 
(37, 'Pálfi László', 18, 'A'), 
(38, 'Pámel Csaba', 46, 'A'), 
(39, 'Paréj Vilmos', 46, 'A'), 
(40, 'Pásztor János', 2, 'A'), 
(41, 'Pegán József', 40, 'B'), 
(42, 'Sattler Martin', 13, 'B'), 
(43, 'Sipos Csaba', 5, 'A'), 
(44, 'Spányik László', 43, 'A'), 
(45, 'Szabó József', 22, 'A'), 
(46, 'Szántó József', 8, 'A'), 
(47, 'Szegedi Jenő', 2, 'A'), 
(48, 'Szilágyi András', 3, 'A'), 
(49, 'Tamasi Antal', 44, 'A'), 
(50, 'Tarnaszentmiklósi Sándor', 35, 'B'), 
(51, 'Tarnóczi József', 43, 'B'), 
(52, 'Tóth Bagi József', 36, 'A'), 
(53, 'Tóth Ernő', 7, 'B'), 
(54, 'Tóth János I.', 46, 'B'), 
(55, 'Tóth László', 9, 'B'), 
(56, 'Varga István', 39, 'A'), 
(57, 'Verbovszky György', 34, 'A'), 
(58, 'Zelenyák Ferenc', 33, 'A'), 
(59, 'Zsirai Gyula', 32, 'A'), 
(60, 'Zsiros Péter', 44, 'A');


INSERT INTO eredmenyek VALUES 			
(1, 1, 86, 45, 0),
(2, 1, 90, 34, 2),
(3, 1, 87, 36, 3),
(4, 1, 97, 54, 0),
(5, 2, 135, 52, 6),
(6, 2, 138, 45, 5),
(7, 3, 93, 45, 0),
(8, 3, 83, 42, 0),
(9, 3, 75, 36, 0),
(10, 3, 81, 45, 1),
(11, 4, 105, 52, 7),
(12, 4, 107, 26, 14),
(13, 5, 84, 45, 1),
(14, 5, 84, 51, 0),
(15, 5, 80, 35, 1),
(16, 5, 73, 45, 2),
(17, 6, 147, 80, 2),
(18, 6, 146, 90, 0),
(19, 7, 167, 70, 1),
(20, 7, 141, 54, 3),
(21, 8, 94, 26, 3),
(22, 8, 86, 34, 2),
(23, 8, 90, 45, 0),
(24, 8, 83, 27, 1),
(25, 9, 86, 49, 0),
(26, 9, 92, 52, 2),
(27, 9, 97, 43, 0),
(28, 9, 91, 35, 0),
(29, 10, 118, 69, 6),
(30, 10, 123, 52, 2),
(31, 11, 87, 41, 1),
(32, 11, 94, 40, 1),
(33, 11, 91, 44, 0),
(34, 11, 81, 34, 1),
(35, 12, 90, 44, 0),
(36, 12, 87, 43, 1),
(37, 12, 88, 54, 1),
(38, 12, 84, 45, 2),
(39, 13, 97, 45, 2),
(40, 13, 78, 44, 3),
(41, 13, 77, 41, 0),
(42, 13, 91, 35, 1),
(43, 14, 87, 36, 1),
(44, 14, 85, 36, 2),
(45, 14, 89, 43, 0),
(46, 14, 94, 41, 0),
(47, 15, 84, 50, 0),
(48, 15, 78, 33, 1),
(49, 15, 77, 51, 0),
(50, 15, 90, 52, 3),
(51, 16, 91, 31, 3),
(52, 16, 90, 44, 0),
(53, 16, 87, 41, 1),
(54, 16, 98, 36, 1),
(55, 17, 85, 62, 0),
(56, 17, 77, 41, 4),
(57, 17, 78, 32, 3),
(58, 17, 79, 34, 2),
(59, 18, 84, 27, 2),
(60, 18, 97, 57, 0),
(61, 18, 88, 33, 2),
(62, 18, 95, 42, 1),
(63, 19, 88, 35, 2),
(64, 19, 78, 36, 3),
(65, 19, 95, 34, 2),
(66, 19, 84, 52, 1),
(67, 20, 161, 63, 5),
(68, 20, 149, 54, 5),
(69, 21, 155, 80, 1),
(70, 21, 133, 59, 4),
(71, 22, 145, 63, 1),
(72, 22, 140, 52, 8),
(73, 23, 106, 45, 1),
(74, 23, 89, 43, 2),
(75, 23, 104, 42, 1),
(76, 23, 87, 26, 3),
(77, 24, 75, 42, 2),
(78, 24, 83, 45, 3),
(79, 24, 92, 42, 1),
(80, 24, 83, 45, 0),
(81, 25, 144, 63, 1),
(82, 25, 153, 59, 3),
(83, 26, 133, 75, 5),
(84, 26, 144, 72, 1),
(85, 27, 145, 52, 5),
(86, 27, 143, 71, 8),
(87, 28, 170, 99, 0),
(88, 28, 135, 63, 1),
(89, 29, 87, 44, 1),
(90, 29, 85, 53, 0),
(91, 29, 91, 54, 0),
(92, 29, 86, 53, 1),
(93, 30, 148, 53, 4),
(94, 30, 155, 54, 6),
(95, 31, 147, 62, 0);

INSERT INTO eredmenyek VALUES
(96, 31, 156, 74, 2),
(97, 32, 93, 44, 2),
(98, 32, 78, 49, 0),
(99, 32, 93, 35, 3),
(100, 32, 80, 53, 1),
(101, 33, 84, 42, 0),
(102, 33, 70, 34, 2),
(103, 33, 81, 39, 1),
(104, 33, 94, 38, 2),
(105, 34, 155, 63, 1),
(106, 34, 159, 80, 1),
(107, 35, 153, 72, 2),
(108, 35, 140, 59, 2),
(109, 36, 133, 54, 3),
(110, 36, 143, 63, 3),
(111, 37, 0, 0, 0),
(112, 37, 0, 0, 0),
(113, 38, 90, 44, 1),
(114, 38, 84, 36, 3),
(115, 38, 97, 44, 3),
(116, 38, 88, 44, 1),
(117, 39, 89, 33, 2),
(118, 39, 80, 35, 1),
(119, 39, 85, 34, 4),
(120, 39, 80, 35, 1),
(121, 40, 90, 45, 0),
(122, 40, 92, 62, 0),
(123, 40, 88, 45, 2),
(124, 40, 80, 44, 2),
(125, 41, 128, 62, 4),
(126, 41, 128, 62, 4),
(127, 42, 140, 54, 4),
(128, 42, 136, 35, 7),
(129, 43, 85, 36, 0),
(130, 43, 82, 44, 1),
(131, 43, 79, 25, 2),
(132, 43, 79, 54, 1),
(133, 44, 77, 39, 3),
(134, 44, 85, 43, 0),
(135, 44, 93, 44, 2),
(136, 44, 83, 54, 1),
(137, 45, 87, 44, 0),
(138, 45, 75, 60, 0),
(139, 45, 93, 43, 1),
(140, 45, 97, 35, 2),
(141, 46, 72, 23, 4),
(142, 46, 85, 35, 3),
(143, 46, 86, 25, 4),
(144, 46, 90, 44, 2),
(145, 47, 90, 45, 1),
(146, 47, 102, 36, 4),
(147, 47, 97, 41, 1),
(148, 47, 80, 54, 0),
(149, 48, 77, 45, 1),
(150, 48, 81, 36, 3),
(151, 48, 90, 44, 1),
(152, 48, 94, 34, 3),
(153, 49, 94, 40, 0),
(154, 49, 85, 44, 1),
(155, 49, 97, 43, 1),
(156, 49, 95, 35, 1),
(157, 50, 159, 63, 3),
(158, 50, 139, 62, 3),
(159, 51, 143, 76, 1),
(160, 51, 156, 62, 3),
(161, 52, 99, 43, 1),
(162, 52, 87, 34, 0),
(163, 52, 85, 45, 1),
(164, 52, 94, 45, 0),
(165, 53, 155, 66, 0),
(166, 53, 156, 66, 3),
(167, 54, 142, 78, 0),
(168, 54, 148, 72, 4),
(169, 55, 148, 58, 3),
(170, 55, 149, 63, 1),
(171, 56, 83, 49, 0),
(172, 56, 86, 34, 3),
(173, 56, 96, 45, 0),
(174, 56, 96, 53, 0),
(175, 57, 88, 36, 3),
(176, 57, 89, 26, 5),
(177, 57, 96, 41, 2),
(178, 57, 89, 45, 2),
(179, 58, 83, 43, 2),
(180, 58, 91, 42, 3),
(181, 58, 83, 44, 0),
(182, 58, 96, 45, 1),
(183, 59, 82, 54, 1),
(184, 59, 84, 36, 0),
(185, 59, 90, 36, 0),
(186, 59, 86, 44, 0),
(187, 60, 83, 49, 1),
(188, 60, 96, 51, 0),
(189, 60, 85, 45, 1),
(190, 60, 91, 45, 1);
