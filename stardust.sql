-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Set 07, 2021 alle 10:54
-- Versione del server: 10.4.19-MariaDB
-- Versione PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stardust`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `autisti`
--

CREATE TABLE `autisti` (
  `ref_impiegato` varchar(11) NOT NULL,
  `informazioni` varchar(200) NOT NULL,
  `tipologia_mezzo` varchar(15) NOT NULL,
  `costo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `cliente`
--

CREATE TABLE `cliente` (
  `id_client` int(100) NOT NULL,
  `name` varchar(15) NOT NULL,
  `surname` varchar(15) NOT NULL,
  `gender` char(2) NOT NULL,
  `cf` varchar(15) NOT NULL,
  `birthdate` date NOT NULL,
  `address` varchar(30) NOT NULL,
  `city` varchar(100) NOT NULL,
  `region` varchar(100) NOT NULL,
  `personal_document` varchar(20) NOT NULL,
  `cellphone_number` varchar(30) NOT NULL,
  `cvv2` int(3) NOT NULL,
  `code_cdc` int(16) NOT NULL,
  `expiration_date` date NOT NULL,
  `code_document` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(350) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `cliente`
--

INSERT INTO `cliente` (`id_client`, `name`, `surname`, `gender`, `cf`, `birthdate`, `address`, `city`, `region`, `personal_document`, `cellphone_number`, `cvv2`, `code_cdc`, `expiration_date`, `code_document`, `email`, `password`) VALUES
(1, 'ezio', 'pluto', 'm', 'cf_prova', '1990-01-04', 'via topolino 43', 'palermo', 'sicilia', 'patente', '+393367208383', 176, 0, '2012-01-04', 'a-b-a2', 'nola@live.it', 'ad3db2ebdd91f8436842807e859efad6cc0bff3a58eeed847ff30fd58be58ef5b4e10c679b0afb52df2840bb55fb98ee7ee9ea7beebbbbf6fbe0fbcc1fff9d73'),
(2, 'pippo', 'pluto', 'm', 'cf_prova', '1990-01-04', 'via topolino 43', 'palermo', 'sicilia', 'carta identità', '+393367208383', 176, 0, '2012-01-04', 'a-b-a2', 'nola1@live.it', '9670888ac415b14d0120d6bc6695c968c209d4bfc1a6fb13af0915d2e4efee807867a7da30a1a79cae8474cd701774a6d010e3f073806ca0f3512a71a35b0cba'),
(4, 'Gino', 'Dalia', 'm', '12345asdf', '1998-09-17', 'asdfghjk', 'asdfghj', 'asdfghj', 'patente', '12345666', 1234567, 234567890, '2021-12-01', 'SDFGHJ567', 'ginodalia98@gmail.com', '4bb458532786b4988e9287c1b799522809e6da88f1fc30c9184a640612662e238a8cb3e63cc9c22d903763e5114064ad89a468910dbd81f3b8045ba439479312'),
(5, 'carlo', 'calenda', 'f', '12345', '2000-12-12', 'via vai', 'dove', 'vuoi', 'cartaidentita', '1234', 234, 23456789, '2021-09-05', '3456DFGH', 'carlone@gmail.com', '1f18e6f23b9a826057dae9a67c6774674a32e5c1802f2ddba2e955bf507c46315717964b7c04c603b498eeccf6b0b9ced792120e63766b8b5ba2dbfd207439d6'),
(6, 'ciao', 'ciao', 'm', '123', '1999-11-10', 'prova 30', 'aaa', 'aa', 'passaporto', '123', 231, 456789, '2021-09-04', '5RFG', 'ciaociao@gmail.com', '4bb458532786b4988e9287c1b799522809e6da88f1fc30c9184a640612662e238a8cb3e63cc9c22d903763e5114064ad89a468910dbd81f3b8045ba439479312');

-- --------------------------------------------------------

--
-- Struttura della tabella `corse`
--

CREATE TABLE `corse` (
  `id_ride` int(15) NOT NULL,
  `ref_pren` int(11) NOT NULL,
  `ref_client` int(15) NOT NULL,
  `ref_driver` int(15) DEFAULT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `corse`
--

INSERT INTO `corse` (`id_ride`, `ref_pren`, `ref_client`, `ref_driver`, `price`) VALUES
(17, 69, 4, 10, 480),
(19, 71, 4, NULL, 12);

-- --------------------------------------------------------

--
-- Struttura della tabella `impiegati`
--

CREATE TABLE `impiegati` (
  `id_impiegato` int(6) NOT NULL,
  `name` varchar(10) NOT NULL,
  `surname` varchar(10) NOT NULL,
  `gender` varchar(2) NOT NULL,
  `birthdate` date NOT NULL,
  `address` varchar(30) NOT NULL,
  `cf` varchar(15) NOT NULL,
  `residence` varchar(20) NOT NULL,
  `cellphone_number` varchar(15) NOT NULL,
  `personal_document` varchar(20) NOT NULL,
  `code_document` varchar(40) NOT NULL,
  `role` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `impiegati`
--

INSERT INTO `impiegati` (`id_impiegato`, `name`, `surname`, `gender`, `birthdate`, `address`, `cf`, `residence`, `cellphone_number`, `personal_document`, `code_document`, `role`, `email`, `password`) VALUES
(1, 'PROVA', 'pluto', 'm', '2000-11-11', 'via napoleone n°43', 'cfjwn', '', '+393367208383', 'patente', '471JNS', 'admin', 'ginodalia98@gmail.com', '4bb458532786b4988e9287c1b799522809e6da88f1fc30c9184a640612662e238a8cb3e63cc9c22d903763e5114064ad89a468910dbd81f3b8045ba439479312'),
(8, 'ciccio', 'pluto', 'm', '1990-01-04', 'via topolino 43', 'cf_prova', '', '+393367208383', 'patente', '', 'driver', 'ciccio@prova.it', '9670888ac415b14d0120d6bc6695c968c209d4bfc1a6fb13af0915d2e4efee807867a7da30a1a79cae8474cd701774a6d010'),
(9, 'Impiegato', 'Modificato', 'm', '1999-11-11', 'via 11', '123', 'prova', '123', 'patente', '', 'driver', 'modificato@gmail.com', 'ba84fe723878db9d22e4e04ce65d2c9e11c043f826d75dd2b98e040e096c8e2f9a0695a24f476b5f733b73073a6ba8fd9b5c11efa2dedfd2ab64093ecfb33f60'),
(10, 'aaaaa', 'bbbbb', 'm', '2000-11-11', 'via prova', '123k', 'milano', '1234', 'patente', '123EJDN', 'admin', 'prova@aggiunto.it', '4bb458532786b4988e9287c1b799522809e6da88f1fc30c9184a640612662e238a8cb3e63cc9c22d903763e5114064ad89a468910dbd81f3b8045ba439479312');

-- --------------------------------------------------------

--
-- Struttura della tabella `pagamenti`
--

CREATE TABLE `pagamenti` (
  `id_client` int(20) NOT NULL,
  `code_prenotation` int(20) NOT NULL,
  `code_cdc` varchar(20) NOT NULL,
  `price` float NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `pagamenti`
--

INSERT INTO `pagamenti` (`id_client`, `code_prenotation`, `code_cdc`, `price`, `date`) VALUES
(4, 69, 'ae7b2d1b161023dd02a0', 480, '2021-09-06'),
(4, 70, 'ae7b2d1b161023dd02a0', 1920, '2021-09-06'),
(4, 71, 'ae7b2d1b161023dd02a0', 12, '2021-09-06');

-- --------------------------------------------------------

--
-- Struttura della tabella `prenotazioni`
--

CREATE TABLE `prenotazioni` (
  `code_prenotation` int(10) NOT NULL,
  `ref_client` int(11) NOT NULL,
  `primary_opt` varchar(20) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `start_address` varchar(30) NOT NULL,
  `end_address` varchar(30) NOT NULL,
  `vehicle_type` varchar(15) DEFAULT NULL,
  `ref_vehicle` varchar(15) DEFAULT NULL,
  `ref_driver` varchar(15) DEFAULT NULL,
  `price` float NOT NULL,
  `complete` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `prenotazioni`
--

INSERT INTO `prenotazioni` (`code_prenotation`, `ref_client`, `primary_opt`, `start_date`, `end_date`, `start_address`, `end_address`, `vehicle_type`, `ref_vehicle`, `ref_driver`, `price`, `complete`) VALUES
(69, 4, 'autista', '2021-09-09 00:00:00', '2021-09-10 17:35:48', 'Via Cavour 24', 'via ritardo', NULL, NULL, '10', 585, 'true'),
(70, 4, 'mezzo', '2021-09-06 00:00:00', '2021-09-17 17:30:31', '', 'via graa', 'luxury', 'prova', NULL, 1950, 'true'),
(71, 4, 'mezzo', '2021-09-05 23:48:02', '2021-09-07 00:18:02', '', 'Via Cavour 24', 'Renault', 'abcdef', NULL, 12, 'true');

-- --------------------------------------------------------

--
-- Struttura della tabella `prenotazioni_tmp`
--

CREATE TABLE `prenotazioni_tmp` (
  `code_prenotation` int(10) NOT NULL,
  `ref_client` int(11) NOT NULL,
  `primary_opt` varchar(20) DEFAULT NULL,
  `start_date` datetime(6) DEFAULT NULL,
  `end_date` datetime(6) DEFAULT NULL,
  `start_address` varchar(30) DEFAULT NULL,
  `end_address` varchar(30) DEFAULT NULL,
  `vehicle_type` varchar(15) DEFAULT NULL,
  `ref_vehicle` varchar(15) NOT NULL,
  `ref_driver` varchar(15) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `complete` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `prenotazioni_tmp`
--

INSERT INTO `prenotazioni_tmp` (`code_prenotation`, `ref_client`, `primary_opt`, `start_date`, `end_date`, `start_address`, `end_address`, `vehicle_type`, `ref_vehicle`, `ref_driver`, `price`, `complete`) VALUES
(2, 1, 'mezzo', '2021-12-21 03:30:00.000000', '2021-12-21 04:00:00.000000', NULL, NULL, 'SUV', 'abcde', NULL, 50, 'true');

-- --------------------------------------------------------

--
-- Struttura della tabella `stalli`
--

CREATE TABLE `stalli` (
  `id` int(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  `ref_vehicle` varchar(20) DEFAULT NULL,
  `type_vehicle` varchar(50) NOT NULL,
  `model_vehicle` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `stalli`
--

INSERT INTO `stalli` (`id`, `address`, `ref_vehicle`, `type_vehicle`, `model_vehicle`) VALUES
(1, 'Corso Calatafimi, 22', 'prova', 'Peugeot', '208'),
(2, 'Corso Calatafimi, 22', 'prv', 'Honda', 'CB125R'),
(3, 'Viale della Libertà, 28', 'suv_1', 'Tesla', 'Model 3'),
(12, 'Viale della Libertà, 28', 'abcdef', 'Renault', 'Zoe'),
(25, 'Viale della Libertà, 28', 'abcde', 'Dacia', 'Spring'),
(26, 'Via Ernesto Basile, 120', 'ebk1', 'Bultaco', 'Brinco S'),
(27, 'Via Ernesto Basile, 120', 'ebk2', 'Decathlon', 'Stilus E-ST'),
(28, 'Via Ernesto Basile, 120', 'ebk3', 'Porsche', 'eBike Cross'),
(29, 'Via Ernesto Basile, 120', 'ksks', 'Aprilia', 'eSR 2'),
(30, 'Corso dei Mille, 10', 'abc123', 'Dacia', 'Spring'),
(31, 'Corso dei Mille, 10', 'abc321', 'Renault', 'Zoe'),
(32, 'Corso dei Mille,10', 'mnptt1', 'Xiaomi', 'Mi Electric Scooter'),
(33, 'Via Oreto, 43', 'mnpttn', 'Aprilia', 'eSR 2'),
(34, 'Via Oreto, 43', 'prv1', 'Honda', 'CB125R'),
(35, 'Via Oreto, 43', 'SSTCM', 'Super Soco', 'TC Max'),
(36, 'Via Oreto, 43', 'SSTCM2', 'Super Soco', 'TC Max'),
(37, 'Corso dei Mille,10', 'zfxs', 'Zero', 'FXS');

-- --------------------------------------------------------

--
-- Struttura della tabella `veicoli`
--

CREATE TABLE `veicoli` (
  `id_vehicle` varchar(6) NOT NULL,
  `price` float NOT NULL,
  `type` varchar(10) NOT NULL,
  `model` varchar(40) NOT NULL,
  `licences_needed` tinyint(1) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `open` tinyint(1) NOT NULL,
  `ref_stallo` varchar(150) NOT NULL DEFAULT '',
  `image` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `veicoli`
--

INSERT INTO `veicoli` (`id_vehicle`, `price`, `type`, `model`, `licences_needed`, `description`, `open`, `ref_stallo`, `image`) VALUES
('abc123', 10, 'Dacia', 'Spring', 1, 'Accessibile, robusta e spaziosa. Nuova Dacia Spring 100% Elettrica è una city car che coniuga i codici del brand Dacia ai vantaggi di una motorizzazione 100% elettrica. Approfitta di una guida morbida e silenziosa per goderti un comfort esclusivo sia nei percorsi urbani sia nei tragitti extraurbani.', 0, 'Corso dei Mille, 10', 'https://www.giacobbeautomobili.com/wp-content/uploads/2021/03/Dacia-Spring-Bianco-Kaolin-6.jpeg'),
('abc321', 12, 'Renault', 'Zoe', 1, 'A bordo di Zoe E-Tech electric, usufruisci di numerosi servizi connessi accessibili dal sistema multimediale EASY LINK o attraverso l’app MY Renault. Potrai, ad esempio, eseguire il precondizionamento dell\'abitacolo di Zoe o pianificare la ricarica e i tragitti.', 0, 'Corso dei Mille, 10', 'https://www.motorionline.com/wp-content/uploads/2019/07/Auto-elettriche-per-donne-i-10-modelli-migliori-da-comprare_01.jpg'),
('abcde', 10, 'Dacia', 'Spring', 1, 'Accessibile, robusta e spaziosa. Nuova Dacia Spring 100% Elettrica è una city car che coniuga i codici del brand Dacia ai vantaggi di una motorizzazione 100% elettrica. Approfitta di una guida morbida e silenziosa per goderti un comfort esclusivo sia nei percorsi urbani sia nei tragitti extraurbani.', 0, 'Viale della Libertà, 28', 'https://www.giacobbeautomobili.com/wp-content/uploads/2021/03/Dacia-Spring-Bianco-Kaolin-6.jpeg'),
('abcdef', 12, 'Renault', 'Zoe', 1, 'A bordo di Zoe E-Tech electric, usufruisci di numerosi servizi connessi accessibili dal sistema multimediale EASY LINK o attraverso l’app MY Renault. Potrai, ad esempio, eseguire il precondizionamento dell\'abitacolo di Zoe o pianificare la ricarica e i tragitti.', 0, 'Viale della Libertà, 28', 'https://www.motorionline.com/wp-content/uploads/2019/07/Auto-elettriche-per-donne-i-10-modelli-migliori-da-comprare_01.jpg'),
('ebk1', 8, 'Bultaco', 'Brinco S', 0, 'Progettato per ambienti urbani, è il modello Brinco più comodo, grazie alla sua bassa altezza del sedile, al manubrio per tour e al sedile orientato alla comodità. Brividi come mai prima: spinta umana-elettrica. Motore elettrico al 100% e sistema a pedali indipendente.', 0, 'Via Ernesto Basile, 120', 'https://www.motociclismo.it/files/articoli/6/0/7/60744/bultaco-brinco-bicicletta-elettrica-con-prestazioni-da-moto_1.jpg'),
('ebk2', 8, 'Decathlon', 'Stilus E-ST', 0, 'Questa MTB a pedalata assistita è ideata per le escursioni in MTB in montagna.  Divertiti con la MTB a pedalata assistita STILUS ST: grazie al telaio full suspended andrai più lontano e con più comfort.', 0, 'Via Ernesto Basile, 120', 'https://contents.mediadecathlon.com/p2094399/k$e75ab76eecad855dd8f54d02fd69ef1d/sq/mtb-elettrica-a-pedalata-assistita-stilus-e-st-29.jpg?format=auto&f=720x720'),
('ebk3', 10, 'Porsche', 'eBike Cross', 0, 'E-bike sportiva ed elegante di Porsche, realizzata in collaborazione con ROTWILD. Con potente motore Shimano e supporto Pedelec fino a 25 km/h. La compagna di viaggio ideale per terreni facili e percorsi fuoristrada.', 0, 'Via Ernesto Basile, 120', 'https://d9w5i958y8lo6.cloudfront.net/media/IMG-P-WAP061EBS0M00-01-1920Wx2160H?context=bWFzdGVyfGFzc2V0c3w1NTc2OTZ8aW1hZ2UvanBlZ3xhc3NldHMvaGI4L2hjOS85MDgyOTAzMjY1MzEwLmpwZ3w4YTQ3ZjEzMjRkNTJkY2Y3NDNjNjQyMjNjMGYyYzA2OTM5MTEwY2RlZDM3ZDNjMmM0OTNlNzNkYTZjZjg5MmM4'),
('ksks', 5, 'Aprilia', 'eSR2', 0, 'eSR2 è il monopattino elettrico dall’animo sportivo pensato per chi vuole sentirsi sempre pronto alle sfide in città, grazie al supporto offerto dalla doppia sospensione anteriore e dalla connessione all’App integrata, che permette di tenere sempre sotto controllo le prestazioni ed accedere ai servizi di assistenza tecnica in tempo reale.', 0, 'Via Ernesto Basile, 120', 'https://static1.unieuro.it/medias/sys_master/root/h91/h85/32954612285470/-api-rest-00ed29448a7522f610cac04d7b9ea7e0-assets-691ac89e6ff91501c75a8027fa6b24b7-preview-sgmConversionBaseFormat.jpg'),
('mnptt1', 5, 'Xiaomi', 'Mi Electric Scooter', 0, 'Elegante e dal design minimale, portatile e sicuro; linee pulite e ricercate, scocca principale in lega di alluminio di tipo aerospaziale, si piega in appena 3 secondi Mi Electric Scooter 1S è un modello intermedio, pensato da Xiaomi per i rider meno esigenti, che percorrono tragitti piu’ corti; l’ottima qualità delle batterie offre un’autonomia di guida fino a 30 Km', 0, 'Corso dei Mille,10', 'https://www.filmatech.it/225-large_default/monopattino-elettrico-xiaomi-mi-electric-scooter.jpg'),
('mnpttn', 5, 'Aprilia', 'eSR2', 0, 'eSR2 è il monopattino elettrico dall’animo sportivo pensato per chi vuole sentirsi sempre pronto alle sfide in città, grazie al supporto offerto dalla doppia sospensione anteriore e dalla connessione all’App integrata, che permette di tenere sempre sotto controllo le prestazioni ed accedere ai servizi di assistenza tecnica in tempo reale.', 0, 'Via Oreto, 43', 'https://static1.unieuro.it/medias/sys_master/root/h91/h85/32954612285470/-api-rest-00ed29448a7522f610cac04d7b9ea7e0-assets-691ac89e6ff91501c75a8027fa6b24b7-preview-sgmConversionBaseFormat.jpg'),
('prova', 15, 'Peugeot', '208', 1, 'Il suo powertrain elettrico permette di muoversi senza eccessiva “ansia da ricarica” e grazie alla buona messa a punto del telaio, permette di togliersi non poche soddisfazioni quando si esce dalla città per affrontare qualche strada tutta curve.', 0, 'Corso Calatafimi, 22', 'https://citynews-cataniatoday.stgy.ovh/~media/original-hi/7017311256308/dfcce77a31b8ff5c02701f85cf761606-2.jpg'),
('prv', 15, 'Honda', 'CB125R', 1, 'La CB125R regala prestazioni grintose racchiuse in una silhouette elegante, offrendo un\'esperienza di guida entusiasmante per tutti i motociclisti.Un quadro strumenti LCD di ultima generazione e l\'illuminazione full LED sono dotazioni premium della nuova CB125R, ma quello che attirerà davvero la tua attenzione sono la potenza extra del nuovo motore DOHC da 125cc.', 0, 'Corso Calatafimi, 22', 'https://www.honda.it/content/dam/central/motorcycles/colour-picker/street/cb125r/cb125r_2021/nh-436m_mat_gunpowder_black_metallic/21YM_CB125R_Mat_Gunpowder_Black_Metallic_RHS_ORIGINAL.png/_jcr_content/renditions/c4.png'),
('prv1', 15, 'Honda', 'CB125R', 1, 'La CB125R regala prestazioni grintose racchiuse in una silhouette elegante, offrendo un\'esperienza di guida entusiasmante per tutti i motociclisti.Un quadro strumenti LCD di ultima generazione e l\'illuminazione full LED sono dotazioni premium della nuova CB125R, ma quello che attirerà davvero la tua attenzione sono la potenza extra del nuovo motore DOHC da 125cc.', 0, 'Via Oreto, 43', 'https://www.honda.it/content/dam/central/motorcycles/colour-picker/street/cb125r/cb125r_2021/nh-436m_mat_gunpowder_black_metallic/21YM_CB125R_Mat_Gunpowder_Black_Metallic_RHS_ORIGINAL.png/_jcr_content/renditions/c4.png'),
('SSTCM', 13, 'Super Soco', 'TC Max', 1, 'Una moto elettrica estremamente divertente e agile, con classici elementi da café racer. Il suo DNA è però 100% elettrico, con un motore che eroga 5.000W di potenza di picco e 180 Nm di coppia (sempre di picco), con un tasso di conversione dell\'energia pari al 93%.', 0, 'Via Oreto, 43', 'https://www.motociclismo.it/files/galleries/1/7/3/17366/B_691ca3056bdfe931f327e07a303d07cc.jpg'),
('SSTCM2', 13, 'Super Soco', 'TC Max', 1, 'Una moto elettrica estremamente divertente e agile, con classici elementi da café racer. Il suo DNA è però 100% elettrico, con un motore che eroga 5.000W di potenza di picco e 180 Nm di coppia (sempre di picco), con un tasso di conversione dell\'energia pari al 93%.', 0, 'Via Oreto, 43', 'https://www.motociclismo.it/files/galleries/1/7/3/17366/B_691ca3056bdfe931f327e07a303d07cc.jpg'),
('suv_1', 23, 'Tesla', 'Model 3', 1, 'La sicurezza è l\'elemento più importante del design complessivo di Model 3. La struttura metallica è una combinazione di alluminio e acciaio per garantire la massima resistenza in ogni area del veicolo. In un crash-test del tetto, Model 3 ha resistito a impatti quattro volte superiori alla sua massa, anche in caso di tetto integralmente in vetro; in altri termini, ha resistito al peso di due elefanti africani adulti.', 0, 'Viale della Libertà, 28', 'https://auto.hwupgrade.it/immagini/model3_2021_720.jpg'),
('zfxs', 8, 'Zero', 'FXS', 1, 'Se cercate una moto elettrica da strada che sia estremamente agile nel traffico e divertente da guidare, probabilmente la Zero FXS ha poche rivali. Ha un\'autonomia nel ciclo urbano di ben 161 km, il suo peso complessivo inoltre non va oltre i 133 kg, mentre la velocità massima è pari a 132 km/h.', 0, 'Corso dei Mille,10', 'https://www.electrocycles.it/wp-content/uploads/2017/07/01-zero-fxs-electric-motorcycle-black1-1.jpg');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_client`);

--
-- Indici per le tabelle `corse`
--
ALTER TABLE `corse`
  ADD PRIMARY KEY (`id_ride`);

--
-- Indici per le tabelle `impiegati`
--
ALTER TABLE `impiegati`
  ADD PRIMARY KEY (`id_impiegato`);

--
-- Indici per le tabelle `pagamenti`
--
ALTER TABLE `pagamenti`
  ADD PRIMARY KEY (`id_client`,`code_prenotation`),
  ADD KEY `code_prenotation` (`code_prenotation`);

--
-- Indici per le tabelle `prenotazioni`
--
ALTER TABLE `prenotazioni`
  ADD PRIMARY KEY (`code_prenotation`),
  ADD KEY `foreignkey` (`ref_vehicle`);

--
-- Indici per le tabelle `prenotazioni_tmp`
--
ALTER TABLE `prenotazioni_tmp`
  ADD PRIMARY KEY (`code_prenotation`),
  ADD KEY `foreignkey` (`ref_vehicle`);

--
-- Indici per le tabelle `stalli`
--
ALTER TABLE `stalli`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ref_vehicle` (`ref_vehicle`);

--
-- Indici per le tabelle `veicoli`
--
ALTER TABLE `veicoli`
  ADD PRIMARY KEY (`id_vehicle`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_client` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT per la tabella `corse`
--
ALTER TABLE `corse`
  MODIFY `id_ride` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT per la tabella `impiegati`
--
ALTER TABLE `impiegati`
  MODIFY `id_impiegato` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT per la tabella `prenotazioni`
--
ALTER TABLE `prenotazioni`
  MODIFY `code_prenotation` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT per la tabella `prenotazioni_tmp`
--
ALTER TABLE `prenotazioni_tmp`
  MODIFY `code_prenotation` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT per la tabella `stalli`
--
ALTER TABLE `stalli`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `pagamenti`
--
ALTER TABLE `pagamenti`
  ADD CONSTRAINT `pagamenti_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `cliente` (`id_client`),
  ADD CONSTRAINT `pagamenti_ibfk_2` FOREIGN KEY (`code_prenotation`) REFERENCES `prenotazioni` (`code_prenotation`);

--
-- Limiti per la tabella `prenotazioni`
--
ALTER TABLE `prenotazioni`
  ADD CONSTRAINT `foreignkey` FOREIGN KEY (`ref_vehicle`) REFERENCES `veicoli` (`id_vehicle`);

--
-- Limiti per la tabella `stalli`
--
ALTER TABLE `stalli`
  ADD CONSTRAINT `stalli_ibfk_1` FOREIGN KEY (`ref_vehicle`) REFERENCES `veicoli` (`id_vehicle`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
