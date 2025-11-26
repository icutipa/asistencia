-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 26, 2025 at 06:20 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `asistencia`
--

-- --------------------------------------------------------

--
-- Table structure for table `asistencia`
--

CREATE TABLE `asistencia` (
  `id_asistencia` int NOT NULL,
  `fecha` datetime NOT NULL,
  `observaciones` varchar(255) DEFAULT NULL,
  `id_estudiante` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `estudiante`
--

CREATE TABLE `estudiante` (
  `id_estudiante` int NOT NULL,
  `nombres` varchar(128) NOT NULL,
  `apellidos` varchar(128) NOT NULL,
  `dni` varchar(8) NOT NULL,
  `email` varchar(64) DEFAULT NULL,
  `genero` varchar(1) NOT NULL,
  `id_programa` int NOT NULL,
  `id_semestre` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `estudiante`
--

INSERT INTO `estudiante` (`id_estudiante`, `nombres`, `apellidos`, `dni`, `email`, `genero`, `id_programa`, `id_semestre`) VALUES
(1, 'Juan', 'Perez Lopez', '70507001', 'juan.perez000@gmail.com', 'M', 1, 1),
(2, 'Maria', 'Torres Nina', '70507002', 'maria.torres001@gmail.com', 'F', 1, 1),
(3, 'Carlos', 'Mamani Quispe', '70507003', 'carlos.mamani002@gmail.com', 'M', 1, 1),
(4, 'Ana', 'Flores Ccallo', '70507004', 'ana.flores003@gmail.com', 'F', 1, 1),
(5, 'Jorge', 'Apaza Huanca', '70507005', 'jorge.apaza004@gmail.com', 'M', 1, 1),
(6, 'Fiorella', 'Ramos Coila', '70507006', 'fiorella.ramos005@gmail.com', 'F', 1, 1),
(7, 'Edwin', 'Choque Cutipa', '70507007', 'edwin.choque006@gmail.com', 'M', 1, 1),
(8, 'Lucero', 'Loza Salas', '70507008', 'lucero.loza007@gmail.com', 'F', 1, 1),
(9, 'Martin', 'Vallejos Lima', '70507009', 'martin.vallejos008@gmail.com', 'M', 1, 1),
(10, 'Brenda', 'Quispe Condori', '70507010', 'brenda.quispe009@gmail.com', 'F', 1, 1),
(11, 'Hernan', 'Cruz Mamani', '70507011', 'hernan.cruz010@gmail.com', 'M', 1, 1),
(12, 'Julissa', 'Fernandez Ramos', '70507012', 'julissa.fernandez011@gmail.com', 'F', 1, 1),
(13, 'Ricardo', 'Huaman Ticona', '70507013', 'ricardo.huaman012@gmail.com', 'M', 1, 1),
(14, 'Noelia', 'Callo Apaza', '70507014', 'noelia.callo013@gmail.com', 'F', 1, 1),
(15, 'Oscar', 'Mendoza Aguilar', '70507015', 'oscar.mendoza014@gmail.com', 'M', 1, 1),
(16, 'Diana', 'Soto Vargas', '70507016', 'diana.soto015@gmail.com', 'F', 1, 1),
(17, 'Antonio', 'Peralta Mamani', '70507017', 'antonio.peralta016@gmail.com', 'M', 1, 1),
(18, 'Yessica', 'Cueva Rojas', '70507018', 'yessica.cueva017@gmail.com', 'F', 1, 1),
(19, 'Felipe', 'Luna Aguilar', '70507019', 'felipe.luna018@gmail.com', 'M', 1, 1),
(20, 'Rosario', 'Puma Quispe', '70507020', 'rosario.puma019@gmail.com', 'F', 1, 1),
(21, 'Luis', 'Gomez Lazo', '70507021', 'luis.gomez020@gmail.com', 'M', 2, 1),
(22, 'Melanie', 'Vargas Choque', '70507022', 'melanie.vargas021@gmail.com', 'F', 2, 1),
(23, 'Hector', 'Condori Puma', '70507023', 'hector.condori022@gmail.com', 'M', 2, 1),
(24, 'Araceli', 'Flores Mamani', '70507024', 'araceli.flores023@gmail.com', 'F', 2, 1),
(25, 'Sergio', 'Paredes Luque', '70507025', 'sergio.paredes024@gmail.com', 'M', 2, 1),
(26, 'Gaby', 'Llanos Tito', '70507026', 'gaby.llanos025@gmail.com', 'F', 2, 1),
(27, 'Wilmer', 'Apaza Flores', '70507027', 'wilmer.apaza026@gmail.com', 'M', 2, 1),
(28, 'Estefany', 'Cutipa Ramos', '70507028', 'estefany.cutipa027@gmail.com', 'F', 2, 1),
(29, 'Raul', 'Rojas Nina', '70507029', 'raul.rojas028@gmail.com', 'M', 2, 1),
(30, 'Carla', 'Luque Mamani', '70507030', 'carla.luque029@gmail.com', 'F', 2, 1),
(31, 'Miguel', 'Sanchez Lima', '70507031', 'miguel.sanchez030@gmail.com', 'M', 2, 1),
(32, 'Daniela', 'Mamani Cruz', '70507032', 'daniela.mamani031@gmail.com', 'F', 2, 1),
(33, 'Julio', 'Fernandez Quispe', '70507033', 'julio.fernandez032@gmail.com', 'M', 2, 1),
(34, 'Lorena', 'Ticona Apaza', '70507034', 'lorena.ticona033@gmail.com', 'F', 2, 1),
(35, 'Victor', 'Lopez Ramos', '70507035', 'victor.lopez034@gmail.com', 'M', 2, 1),
(36, 'Paola', 'Quispe Nina', '70507036', 'paola.quispe035@gmail.com', 'F', 2, 1),
(37, 'Adrian', 'Mendoza Choque', '70507037', 'adrian.mendoza036@gmail.com', 'M', 2, 1),
(38, 'Alicia', 'Carita Puma', '70507038', 'alicia.carita037@gmail.com', 'F', 2, 1),
(39, 'Kevin', 'Ramos Huanca', '70507039', 'kevin.ramos038@gmail.com', 'M', 2, 1),
(40, 'Lucia', 'Salas Apaza', '70507040', 'lucia.salas039@gmail.com', 'F', 2, 1),
(41, 'Javier', 'Mamani Flores', '70507041', 'javier.mamani040@gmail.com', 'M', 3, 1),
(42, 'Karla', 'Quispe Puma', '70507042', 'karla.quispe041@gmail.com', 'F', 3, 1),
(43, 'Diego', 'Luna Ramos', '70507043', 'diego.luna042@gmail.com', 'M', 3, 1),
(44, 'Fiorella', 'Coila Nina', '70507044', 'fiorella.coila043@gmail.com', 'F', 3, 1),
(45, 'Roberto', 'Ticona Huanca', '70507045', 'roberto.ticona044@gmail.com', 'M', 3, 1),
(46, 'Jhoselyn', 'Apaza Mamani', '70507046', 'jhoselyn.apaza045@gmail.com', 'F', 3, 1),
(47, 'Samuel', 'Rojas Condori', '70507047', 'samuel.rojas046@gmail.com', 'M', 3, 1),
(48, 'Vanessa', 'Cutipa Lopez', '70507048', 'vanessa.cutipa047@gmail.com', 'F', 3, 1),
(49, 'Henry', 'Puma Quispe', '70507049', 'henry.puma048@gmail.com', 'M', 3, 1),
(50, 'Milagros', 'Huanca Ramos', '70507050', 'milagros.huanca049@gmail.com', 'F', 3, 1),
(51, 'Sebastian', 'Flores Choque', '70507051', 'sebastian.flores050@gmail.com', 'M', 3, 1),
(52, 'Natalia', 'Llanos Apaza', '70507052', 'natalia.llanos051@gmail.com', 'F', 3, 1),
(53, 'Cristian', 'Gomez Salas', '70507053', 'cristian.gomez052@gmail.com', 'M', 3, 1),
(54, 'Tatiana', 'Vargas Mamani', '70507054', 'tatiana.vargas053@gmail.com', 'F', 3, 1),
(55, 'Aldo', 'Cruz Nina', '70507055', 'aldo.cruz054@gmail.com', 'M', 3, 1),
(56, 'Roxana', 'Mollo Ramos', '70507056', 'roxana.mollo055@gmail.com', 'F', 3, 1),
(57, 'David', 'Ccallo Coila', '70507057', 'david.ccallo056@gmail.com', 'M', 3, 1),
(58, 'Angela', 'Tito Huanca', '70507058', 'angela.tito057@gmail.com', 'F', 3, 1),
(59, 'Mario', 'Paredes Mamani', '70507059', 'mario.paredes058@gmail.com', 'M', 3, 1),
(60, 'Sandra', 'Loza Ticona', '70507060', 'sandra.loza059@gmail.com', 'F', 3, 1),
(61, 'Renato', 'López Díaz', '70507061', 'renato.lopez060@gmail.com', 'M', 4, 1),
(62, 'Angela', 'Torres Salazar', '70507062', 'angela.torres061@gmail.com', 'F', 4, 1),
(63, 'Beto', 'García Ramos', '70507063', 'beto.garcia062@gmail.com', 'M', 4, 1),
(64, 'Pamela', 'Quispe Mamani', '70507064', 'pamela.quispe063@gmail.com', 'F', 4, 1),
(65, 'Marco', 'Ramos Nina', '70507065', 'marco.ramos064@gmail.com', 'M', 4, 1),
(66, 'Cecilia', 'Farfán Apaza', '70507066', 'cecilia.farfan065@gmail.com', 'F', 4, 1),
(67, 'Kevin', 'Peralta Ortega', '70507067', 'kevin.peralta066@gmail.com', 'M', 4, 1),
(68, 'Brenda', 'Mamani Choque', '70507068', 'brenda.mamani067@gmail.com', 'F', 4, 1),
(69, 'Jorge', 'Dávila Luque', '70507069', 'jorge.davila068@gmail.com', 'M', 4, 1),
(70, 'Sofía', 'Vargas Coila', '70507070', 'sofia.vargas069@gmail.com', 'F', 4, 1),
(71, 'Héctor', 'Ccallo Ramos', '70507071', 'hector.ccallo070@gmail.com', 'M', 4, 1),
(72, 'Yuliana', 'Cutipa Huanca', '70507072', 'yuliana.cutipa071@gmail.com', 'F', 4, 1),
(73, 'Francisco', 'Salas Huayta', '70507073', 'francisco.salas072@gmail.com', 'M', 4, 1),
(74, 'Lizbeth', 'Quispe Quispe', '70507074', 'lizbeth.quispe073@gmail.com', 'F', 4, 1),
(75, 'Oscar', 'Cruz Mendoza', '70507075', 'oscar.cruz074@gmail.com', 'M', 4, 1),
(76, 'Milagros', 'Acuña Valdez', '70507076', 'milagros.acuna075@gmail.com', 'F', 4, 1),
(77, 'Victor', 'Nina Condori', '70507077', 'victor.nina076@gmail.com', 'M', 4, 1),
(78, 'Fabiola', 'Condori Apaza', '70507078', 'fabiola.condori077@gmail.com', 'F', 4, 1),
(79, 'Luis', 'Mollo Huanca', '70507079', 'luis.mollo078@gmail.com', 'M', 4, 1),
(80, 'Daniela', 'Loza Choque', '70507080', 'daniela.loza079@gmail.com', 'F', 4, 1),
(81, 'Cristopher', 'Chambi Yujra', '70507081', 'cristopher.chambi080@gmail.com', 'M', 1, 2),
(82, 'Tatiana', 'Mamani Alanoca', '70507082', 'tatiana.mamani081@gmail.com', 'F', 1, 2),
(83, 'Renzo', 'Vilca Ramos', '70507083', 'renzo.vilca082@gmail.com', 'M', 1, 2),
(84, 'Mariana', 'Poma Hancco', '70507084', 'mariana.poma083@gmail.com', 'F', 1, 2),
(85, 'Iván', 'Callo Copa', '70507085', 'ivan.callo084@gmail.com', 'M', 1, 2),
(86, 'Carla', 'Llanque Laura', '70507086', 'carla.llanque085@gmail.com', 'F', 1, 2),
(87, 'Alexis', 'Apaza Choque', '70507087', 'alexis.apaza086@gmail.com', 'M', 1, 2),
(88, 'Jhoana', 'Quispe Pari', '70507088', 'jhoana.quispe087@gmail.com', 'F', 1, 2),
(89, 'Edson', 'Copa Mamani', '70507089', 'edson.copa088@gmail.com', 'M', 1, 2),
(90, 'Zulema', 'Suca Quispe', '70507090', 'zulema.suca089@gmail.com', 'F', 1, 2),
(91, 'Joel', 'Cutipa Ramos', '70507091', 'joel.cutipa090@gmail.com', 'M', 1, 2),
(92, 'Ariana', 'Valdez Ticona', '70507092', 'ariana.valdez091@gmail.com', 'F', 1, 2),
(93, 'Luis', 'Apaza Catacora', '70507093', 'luis.apaza092@gmail.com', 'M', 1, 2),
(94, 'Sheyla', 'Tito Paredes', '70507094', 'sheyla.tito093@gmail.com', 'F', 1, 2),
(95, 'Roy', 'Mamerto Quispe', '70507095', 'roy.mamerto094@gmail.com', 'M', 1, 2),
(96, 'Carolina', 'Singona Huanca', '70507096', 'carolina.singona095@gmail.com', 'F', 1, 2),
(97, 'Diego', 'Chino Pari', '70507097', 'diego.chino096@gmail.com', 'M', 1, 2),
(98, 'Miriam', 'Puma Yana', '70507098', 'miriam.puma097@gmail.com', 'F', 1, 2),
(99, 'Victor', 'Yupanqui Condori', '70507099', 'victor.yupanqui098@gmail.com', 'M', 1, 2),
(100, 'Claudia', 'Cari Poma', '70507100', 'claudia.cari099@gmail.com', 'F', 1, 2),
(101, 'Adrián', 'Quispe Lima', '70507101', 'adrian.quispe100@gmail.com', 'M', 2, 2),
(102, 'Lucero', 'Ticona Pari', '70507102', 'lucero.ticona101@gmail.com', 'F', 2, 2),
(103, 'Franco', 'Suca Apaza', '70507103', 'franco.suca102@gmail.com', 'M', 2, 2),
(104, 'Pilar', 'Ramos Catacora', '70507104', 'pilar.ramos103@gmail.com', 'F', 2, 2),
(105, 'Esteban', 'Callo Alanoca', '70507105', 'esteban.callo104@gmail.com', 'M', 2, 2),
(106, 'Milagros', 'Huanca Callo', '70507106', 'milagros.huanca105@gmail.com', 'F', 2, 2),
(107, 'Gian', 'Pacco Pari', '70507107', 'gian.pacco106@gmail.com', 'M', 2, 2),
(108, 'Nicole', 'Alanoca Soto', '70507108', 'nicole.alanoca107@gmail.com', 'F', 2, 2),
(109, 'Darwin', 'Copa Cari', '70507109', 'darwin.copa108@gmail.com', 'M', 2, 2),
(110, 'Fiama', 'Vilca Huanca', '70507110', 'fiama.vilca109@gmail.com', 'F', 2, 2),
(111, 'Sebastián', 'Mamani Ramos', '70507111', 'sebastian.mamani110@gmail.com', 'M', 2, 2),
(112, 'Luz', 'Ocola Condori', '70507112', 'luz.ocola111@gmail.com', 'F', 2, 2),
(113, 'Gino', 'Laura Mamani', '70507113', 'gino.laura112@gmail.com', 'M', 2, 2),
(114, 'Graciela', 'Vilca Poma', '70507114', 'graciela.vilca113@gmail.com', 'F', 2, 2),
(115, 'Elmer', 'Paco Ticona', '70507115', 'elmer.paco114@gmail.com', 'M', 2, 2),
(116, 'Roxana', 'Puma Apaza', '70507116', 'roxana.puma115@gmail.com', 'F', 2, 2),
(117, 'Martín', 'Yupanqui Quispe', '70507117', 'martin.yupanqui116@gmail.com', 'M', 2, 2),
(118, 'Deysi', 'Huanca Sucasaca', '70507118', 'deysi.huanca117@gmail.com', 'F', 2, 2),
(119, 'Miguel', 'Condori Pari', '70507119', 'miguel.condori118@gmail.com', 'M', 2, 2),
(120, 'Yuliana', 'Coila Ramos', '70507120', 'yuliana.coila119@gmail.com', 'F', 2, 2),
(121, 'Erick', 'Quispe Copa', '70507121', 'erick.quispe120@gmail.com', 'M', 3, 2),
(122, 'Joselyn', 'Mamani Ccallo', '70507122', 'joselyn.mamani121@gmail.com', 'F', 3, 2),
(123, 'Carlos', 'Ramos Quispe', '70507123', 'carlos.ramos122@gmail.com', 'M', 3, 2),
(124, 'Flor', 'Cusi Poma', '70507124', 'flor.cusi123@gmail.com', 'F', 3, 2),
(125, 'Diego', 'Sucapuca Ticona', '70507125', 'diego.sucapuca124@gmail.com', 'M', 3, 2),
(126, 'Daniela', 'Paye Apaza', '70507126', 'daniela.paye125@gmail.com', 'F', 3, 2),
(127, 'Andrés', 'Aguilar Nina', '70507127', 'andres.aguilar126@gmail.com', 'M', 3, 2),
(128, 'Romina', 'Choque Vargas', '70507128', 'romina.choque127@gmail.com', 'F', 3, 2),
(129, 'Iván', 'Huayhua Flores', '70507129', 'ivan.huayhua128@gmail.com', 'M', 3, 2),
(130, 'Brenda', 'Luque Calla', '70507130', 'brenda.luque129@gmail.com', 'F', 3, 2),
(131, 'Santiago', 'Zela Gomez', '70507131', 'santiago.zela130@gmail.com', 'M', 3, 2),
(132, 'Nataly', 'Cuno Chambi', '70507132', 'nataly.cuno131@gmail.com', 'F', 3, 2),
(133, 'Marcos', 'Poma Ccallo', '70507133', 'marcos.poma132@gmail.com', 'M', 3, 2),
(134, 'Fiorella', 'Quisbert Laura', '70507134', 'fiorella.quisbert133@gmail.com', 'F', 3, 2),
(135, 'Jhonatan', 'Salas Cruz', '70507135', 'jhonatan.salas134@gmail.com', 'M', 3, 2),
(136, 'Andrea', 'Ramos Tito', '70507136', 'andrea.ramos135@gmail.com', 'F', 3, 2),
(137, 'Héctor', 'Puma Aquise', '70507137', 'hector.puma136@gmail.com', 'M', 3, 2),
(138, 'Melany', 'Condori Yujra', '70507138', 'melany.condori137@gmail.com', 'F', 3, 2),
(139, 'Julio', 'Ticona Choque', '70507139', 'julio.ticona138@gmail.com', 'M', 3, 2),
(140, 'Antonella', 'Arias Coila', '70507140', 'antonella.arias139@gmail.com', 'F', 3, 2),
(141, 'Luis', 'Gamarra Mamani', '70507141', 'luis.gamarra140@gmail.com', 'M', 4, 2),
(142, 'Denisse', 'Tarqui Turpo', '70507142', 'denisse.tarqui141@gmail.com', 'F', 4, 2),
(143, 'Mateo', 'Coila Solis', '70507143', 'mateo.coila142@gmail.com', 'M', 4, 2),
(144, 'Araceli', 'Pinto Lima', '70507144', 'araceli.pinto143@gmail.com', 'F', 4, 2),
(145, 'Jhon', 'Huanca Mendoza', '70507145', 'jhon.huanca144@gmail.com', 'M', 4, 2),
(146, 'Graciela', 'Apaza Jilapa', '70507146', 'graciela.apaza145@gmail.com', 'F', 4, 2),
(147, 'Esteban', 'Vilca Chambi', '70507147', 'esteban.vilca146@gmail.com', 'M', 4, 2),
(148, 'Mariana', 'Quispe Choque', '70507148', 'mariana.quispe147@gmail.com', 'F', 4, 2),
(149, 'Renzo', 'Ramos Cutipa', '70507149', 'renzo.ramos148@gmail.com', 'M', 4, 2),
(150, 'Fiorella', 'Nina Vargas', '70507150', 'fiorella.nina149@gmail.com', 'F', 4, 2),
(151, 'Alonso', 'Laura Supa', '70507151', 'alonso.laura150@gmail.com', 'M', 4, 2),
(152, 'Roxana', 'Yucra Copa', '70507152', 'roxana.yucra151@gmail.com', 'F', 4, 2),
(153, 'Sebastián', 'Aguilar Turpo', '70507153', 'sebastian.aguilar152@gmail.com', 'M', 4, 2),
(154, 'Janeth', 'Chambilla Luque', '70507154', 'janeth.chambilla153@gmail.com', 'F', 4, 2),
(155, 'Miguel', 'Santos Paredes', '70507155', 'miguel.santos154@gmail.com', 'M', 4, 2),
(156, 'Valeria', 'Ramos Soto', '70507156', 'valeria.ramos155@gmail.com', 'F', 4, 2),
(157, 'César', 'Paredes Galarza', '70507157', 'cesar.paredes156@gmail.com', 'M', 4, 2),
(158, 'Lucía', 'Huarachi Quispe', '70507158', 'lucia.huarachi157@gmail.com', 'F', 4, 2),
(159, 'Adrián', 'Quispe Turpo', '70507159', 'adrian.quispe158@gmail.com', 'M', 4, 2),
(160, 'Valentina', 'Choque Mamani', '70507160', 'valentina.choque159@gmail.com', 'F', 4, 2),
(161, 'Jorge', 'López Ramos', '70507161', 'jorge.lopez160@gmail.com', 'M', 1, 3),
(162, 'Camila', 'Apaza Mamani', '70507162', 'camila.apaza161@gmail.com', 'F', 1, 3),
(163, 'Sebastián', 'Ticona Apaza', '70507163', 'sebastian.ticona162@gmail.com', 'M', 1, 3),
(164, 'Yessenia', 'Quispe Puma', '70507164', 'yessenia.quispe163@gmail.com', 'F', 1, 3),
(165, 'Rodrigo', 'Huanca Ramos', '70507165', 'rodrigo.huanca164@gmail.com', 'M', 1, 3),
(166, 'Valeria', 'Copa Ccallo', '70507166', 'valeria.copa165@gmail.com', 'F', 1, 3),
(167, 'Carlos', 'Choque Nina', '70507167', 'carlos.choque166@gmail.com', 'M', 1, 3),
(168, 'Pilar', 'Cruz Tito', '70507168', 'pilar.cruz167@gmail.com', 'F', 1, 3),
(169, 'Diego', 'Catacora Quispe', '70507169', 'diego.catacora168@gmail.com', 'M', 1, 3),
(170, 'Mauren', 'Torres Apaza', '70507170', 'mauren.torres169@gmail.com', 'F', 1, 3),
(171, 'Richard', 'Flores Mamani', '70507171', 'richard.flores170@gmail.com', 'M', 1, 3),
(172, 'Fiorella', 'Nina Ccallo', '70507172', 'fiorella.nina171@gmail.com', 'F', 1, 3),
(173, 'Jhon', 'Ramos Huanca', '70507173', 'jhon.ramos172@gmail.com', 'M', 1, 3),
(174, 'María', 'Callo Pari', '70507174', 'maria.callo173@gmail.com', 'F', 1, 3),
(175, 'Hugo', 'Yujra Ticona', '70507175', 'hugo.yujra174@gmail.com', 'M', 1, 3),
(176, 'Alondra', 'Valdez López', '70507176', 'alondra.valdez175@gmail.com', 'F', 1, 3),
(177, 'Edgar', 'Cruz Mamani', '70507177', 'edgar.cruz176@gmail.com', 'M', 1, 3),
(178, 'Karla', 'Cutipa Huanca', '70507178', 'karla.cutipa177@gmail.com', 'F', 1, 3),
(179, 'Renzo', 'Nina Flores', '70507179', 'renzo.nina178@gmail.com', 'M', 1, 3),
(180, 'Gisella', 'Quispe Ramos', '70507180', 'gisella.quispe179@gmail.com', 'F', 1, 3),
(181, 'Oscar', 'Mamani Coila', '70507181', 'oscar.mamani180@gmail.com', 'M', 2, 3),
(182, 'Cynthia', 'Huayhua Ramos', '70507182', 'cynthia.huayhua181@gmail.com', 'F', 2, 3),
(183, 'Julián', 'Choque Pinto', '70507183', 'julian.choque182@gmail.com', 'M', 2, 3),
(184, 'Micaela', 'Catacora Mamani', '70507184', 'micaela.catacora183@gmail.com', 'F', 2, 3),
(185, 'Luis', 'Ramos Choque', '70507185', 'luis.ramos184@gmail.com', 'M', 2, 3),
(186, 'Tatiana', 'Condori Nina', '70507186', 'tatiana.condori185@gmail.com', 'F', 2, 3),
(187, 'Edson', 'Laura Ramos', '70507187', 'edson.laura186@gmail.com', 'M', 2, 3),
(188, 'Lucía', 'Mamani Alanoca', '70507188', 'lucia.mamani187@gmail.com', 'F', 2, 3),
(189, 'Alonso', 'Tito Condori', '70507189', 'alonso.tito188@gmail.com', 'M', 2, 3),
(190, 'Flor', 'Cutipa Flores', '70507190', 'flor.cutipa189@gmail.com', 'F', 2, 3),
(191, 'Renato', 'Ccallo Quispe', '70507191', 'renato.ccallo190@gmail.com', 'M', 2, 3),
(192, 'Andrea', 'Cusi Ramos', '70507192', 'andrea.cusi191@gmail.com', 'F', 2, 3),
(193, 'Marcelo', 'Huanca Ticona', '70507193', 'marcelo.huanca192@gmail.com', 'M', 2, 3),
(194, 'Eva', 'Llanque Apaza', '70507194', 'eva.llanque193@gmail.com', 'F', 2, 3),
(195, 'Cristian', 'Copa Pari', '70507195', 'cristian.copa194@gmail.com', 'M', 2, 3),
(196, 'Larissa', 'Choque Ccallo', '70507196', 'larissa.choque195@gmail.com', 'F', 2, 3),
(197, 'Diego', 'Apaza Ramos', '70507197', 'diego.apaza196@gmail.com', 'M', 2, 3),
(198, 'Denisse', 'Vilca Tito', '70507198', 'denisse.vilca197@gmail.com', 'F', 2, 3),
(199, 'Martín', 'Huanca Apaza', '70507199', 'martin.huanca198@gmail.com', 'M', 2, 3),
(200, 'Nicole', 'Ticona Pari', '70507200', 'nicole.ticona199@gmail.com', 'F', 2, 3),
(201, 'Víctor', 'López Catacora', '70507201', 'victor.lopez200@gmail.com', 'M', 3, 3),
(202, 'María', 'Ramos Nina', '70507202', 'maria.ramos201@gmail.com', 'F', 3, 3),
(203, 'José', 'Choque Mamani', '70507203', 'jose.choque202@gmail.com', 'M', 3, 3),
(204, 'Fiama', 'Paco Huanca', '70507204', 'fiama.paco203@gmail.com', 'F', 3, 3),
(205, 'Kevin', 'Yujra Coila', '70507205', 'kevin.yujra204@gmail.com', 'M', 3, 3),
(206, 'Evelyn', 'Quispe Condori', '70507206', 'evelyn.quispe205@gmail.com', 'F', 3, 3),
(207, 'Alex', 'Cruz Callo', '70507207', 'alex.cruz206@gmail.com', 'M', 3, 3),
(208, 'Zulema', 'Nina Cusipuma', '70507208', 'zulema.nina207@gmail.com', 'F', 3, 3),
(209, 'Humberto', 'Mamani Pinto', '70507209', 'humberto.mamani208@gmail.com', 'M', 3, 3),
(210, 'Dayana', 'Ccallo Ramos', '70507210', 'dayana.ccallo209@gmail.com', 'F', 3, 3),
(211, 'Joel', 'Cutipa Valdez', '70507211', 'joel.cutipa210@gmail.com', 'M', 3, 3),
(212, 'Andrea', 'Paredes Farfán', '70507212', 'andrea.paredes211@gmail.com', 'F', 3, 3),
(213, 'Ricardo', 'Cruz Catacora', '70507213', 'ricardo.cruz212@gmail.com', 'M', 3, 3),
(214, 'Florencia', 'Choque Tito', '70507214', 'florencia.choque213@gmail.com', 'F', 3, 3),
(215, 'Nicolás', 'Tito Mamani', '70507215', 'nicolas.tito214@gmail.com', 'M', 3, 3),
(216, 'Maricielo', 'Torres Copari', '70507216', 'maricielo.torres215@gmail.com', 'F', 3, 3),
(217, 'Hernán', 'Ramos Puma', '70507217', 'hernan.ramos216@gmail.com', 'M', 3, 3),
(218, 'Carolina', 'Nina Choque', '70507218', 'carolina.nina217@gmail.com', 'F', 3, 3),
(219, 'Gerson', 'Poma Catacora', '70507219', 'gerson.poma218@gmail.com', 'M', 3, 3),
(220, 'Lidia', 'Huanca Pari', '70507220', 'lidia.huanca219@gmail.com', 'F', 3, 3),
(221, 'Mario', 'Flores Nina', '70507221', 'mario.flores220@gmail.com', 'M', 4, 3),
(222, 'Luana', 'Quispe Ramos', '70507222', 'luana.quispe221@gmail.com', 'F', 4, 3),
(223, 'Gerson', 'Callo Poma', '70507223', 'gerson.callo222@gmail.com', 'M', 4, 3),
(224, 'Pamela', 'Ticona Ccallo', '70507224', 'pamela.ticona223@gmail.com', 'F', 4, 3),
(225, 'Rafael', 'Paco Mamani', '70507225', 'rafael.paco224@gmail.com', 'M', 4, 3),
(226, 'Ariana', 'Quispe Catacora', '70507226', 'ariana.quispe225@gmail.com', 'F', 4, 3),
(227, 'Alonso', 'Cutipa Flores', '70507227', 'alonso.cutipa226@gmail.com', 'M', 4, 3),
(228, 'Lisbeth', 'Coila Nina', '70507228', 'lisbeth.coila227@gmail.com', 'F', 4, 3),
(229, 'Darwin', 'Suca Ramos', '70507229', 'darwin.suca228@gmail.com', 'M', 4, 3),
(230, 'Milagros', 'Ramos Choque', '70507230', 'milagros.ramos229@gmail.com', 'F', 4, 3),
(231, 'Arturo', 'Mamani Cruz', '70507231', 'arturo.mamani230@gmail.com', 'M', 4, 3),
(232, 'Nadia', 'Nina Callo', '70507232', 'nadia.nina231@gmail.com', 'F', 4, 3),
(233, 'Gustavo', 'Apaza Ticona', '70507233', 'gustavo.apaza232@gmail.com', 'M', 4, 3),
(234, 'Bianca', 'Flores Callo', '70507234', 'bianca.flores233@gmail.com', 'F', 4, 3),
(235, 'Cristian', 'Ramos Mamani', '70507235', 'cristian.ramos234@gmail.com', 'M', 4, 3),
(236, 'Araceli', 'Pinto Cruz', '70507236', 'araceli.pinto235@gmail.com', 'F', 4, 3),
(237, 'Miguel', 'Quispe Huanca', '70507237', 'miguel.quispe236@gmail.com', 'M', 4, 3),
(238, 'Diana', 'Yupanqui Ramos', '70507238', 'diana.yupanqui237@gmail.com', 'F', 4, 3),
(239, 'Héctor', 'Catacora Suca', '70507239', 'hector.catacora238@gmail.com', 'M', 4, 3),
(240, 'Fiorella', 'Quispe López', '70507240', 'fiorella.quispe239@gmail.com', 'F', 4, 3),
(241, 'Javier', 'Quispe Mamani', '70507241', 'javier.quispe240@gmail.com', 'M', 1, 4),
(242, 'Mariela', 'Cruz Ramos', '70507242', 'mariela.cruz241@gmail.com', 'F', 1, 4),
(243, 'Fernando', 'Callo Huanca', '70507243', 'fernando.callo242@gmail.com', 'M', 1, 4),
(244, 'Lucero', 'Mamani Nina', '70507244', 'lucero.mamani243@gmail.com', 'F', 1, 4),
(245, 'Andrés', 'Apaza Ramos', '70507245', 'andres.apaza244@gmail.com', 'M', 1, 4),
(246, 'Roxana', 'Copa Ccallo', '70507246', 'roxana.copa245@gmail.com', 'F', 1, 4),
(247, 'Ramiro', 'Tito Choque', '70507247', 'ramiro.tito246@gmail.com', 'M', 1, 4),
(248, 'Jessica', 'Catacora Luque', '70507248', 'jessica.catacora247@gmail.com', 'F', 1, 4),
(249, 'Gustavo', 'Huanca Ramos', '70507249', 'gustavo.huanca248@gmail.com', 'M', 1, 4),
(250, 'Ruth', 'Chambi Catacora', '70507250', 'ruth.chambi249@gmail.com', 'F', 1, 4),
(251, 'Wilson', 'Cutipa Mamani', '70507251', 'wilson.cutipa250@gmail.com', 'M', 1, 4),
(252, 'Tatiana', 'Poma Huayta', '70507252', 'tatiana.poma251@gmail.com', 'F', 1, 4),
(253, 'Cristian', 'Ccallo Cruz', '70507253', 'cristian.ccallo252@gmail.com', 'M', 1, 4),
(254, 'Lorena', 'Ramos Quispe', '70507254', 'lorena.ramos253@gmail.com', 'F', 1, 4),
(255, 'Marco', 'Laura Apaza', '70507255', 'marco.laura254@gmail.com', 'M', 1, 4),
(256, 'Brenda', 'Condori Flores', '70507256', 'brenda.condori255@gmail.com', 'F', 1, 4),
(257, 'Esteban', 'Paco Nina', '70507257', 'esteban.paco256@gmail.com', 'M', 1, 4),
(258, 'Miriam', 'Coila Tito', '70507258', 'miriam.coila257@gmail.com', 'F', 1, 4),
(259, 'Samuel', 'Cruz Mamani', '70507259', 'samuel.cruz258@gmail.com', 'M', 1, 4),
(260, 'Alessandra', 'Vilca Huanca', '70507260', 'alessandra.vilca259@gmail.com', 'F', 1, 4),
(261, 'Miguel', 'Ticona Ramos', '70507261', 'miguel.ticona260@gmail.com', 'M', 2, 4),
(262, 'Soledad', 'Ccallo Mamani', '70507262', 'soledad.ccallo261@gmail.com', 'F', 2, 4),
(263, 'Jhonatan', 'Cusi Catacora', '70507263', 'jhonatan.cusi262@gmail.com', 'M', 2, 4),
(264, 'Gabriela', 'Choque Apaza', '70507264', 'gabriela.choque263@gmail.com', 'F', 2, 4),
(265, 'Raúl', 'Nina Huanca', '70507265', 'raul.nina264@gmail.com', 'M', 2, 4),
(266, 'Daniela', 'Apaza Ramos', '70507266', 'daniela.apaza265@gmail.com', 'F', 2, 4),
(267, 'Aldo', 'Huanca Tito', '70507267', 'aldo.huanca266@gmail.com', 'M', 2, 4),
(268, 'Patricia', 'Ramos Catacora', '70507268', 'patricia.ramos267@gmail.com', 'F', 2, 4),
(269, 'Cristóbal', 'Coila Apaza', '70507269', 'cristobal.coila268@gmail.com', 'M', 2, 4),
(270, 'Yuliana', 'Laura Choque', '70507270', 'yuliana.laura269@gmail.com', 'F', 2, 4),
(271, 'Tomás', 'Callo Poma', '70507271', 'tomas.callo270@gmail.com', 'M', 2, 4),
(272, 'Valentina', 'Vilca Mamani', '70507272', 'valentina.vilca271@gmail.com', 'F', 2, 4),
(273, 'David', 'Choque Ramos', '70507273', 'david.choque272@gmail.com', 'M', 2, 4),
(274, 'Milagros', 'Catacora Ccallo', '70507274', 'milagros.catacora273@gmail.com', 'F', 2, 4),
(275, 'Anthony', 'Ramos Poma', '70507275', 'anthony.ramos274@gmail.com', 'M', 2, 4),
(276, 'Priscila', 'Huanca Flores', '70507276', 'priscila.huanca275@gmail.com', 'F', 2, 4),
(277, 'Edwin', 'Ticona Huanca', '70507277', 'edwin.ticona276@gmail.com', 'M', 2, 4),
(278, 'Karina', 'Suca Ramos', '70507278', 'karina.suca277@gmail.com', 'F', 2, 4),
(279, 'Gerardo', 'Catacora Choque', '70507279', 'gerardo.catacora278@gmail.com', 'M', 2, 4),
(280, 'Luisa', 'Cruz Ramos', '70507280', 'luisa.cruz279@gmail.com', 'F', 2, 4),
(281, 'Renato', 'Choque Coila', '70507281', 'renato.choque280@gmail.com', 'M', 3, 4),
(282, 'Fátima', 'Paco Apaza', '70507282', 'fatima.paco281@gmail.com', 'F', 3, 4),
(283, 'Alexis', 'Tito Nina', '70507283', 'alexis.tito282@gmail.com', 'M', 3, 4),
(284, 'Carla', 'Catacora Ramos', '70507284', 'carla.catacora283@gmail.com', 'F', 3, 4),
(285, 'Oscar', 'Cusi Mamani', '70507285', 'oscar.cusi284@gmail.com', 'M', 3, 4),
(286, 'Ariana', 'Condori Huanca', '70507286', 'ariana.condori285@gmail.com', 'F', 3, 4),
(287, 'Hernán', 'Laura Catacora', '70507287', 'hernan.laura286@gmail.com', 'M', 3, 4),
(288, 'Diana', 'Cruz Pari', '70507288', 'diana.cruz287@gmail.com', 'F', 3, 4),
(289, 'José', 'Poma Choque', '70507289', 'jose.poma288@gmail.com', 'M', 3, 4),
(290, 'María', 'Quispe Faro', '70507290', 'maria.quispe289@gmail.com', 'F', 3, 4),
(291, 'Rubén', 'Ccallo Ramos', '70507291', 'ruben.ccallo290@gmail.com', 'M', 3, 4),
(292, 'Leidy', 'Huayta Choque', '70507292', 'leidy.huayta291@gmail.com', 'F', 3, 4),
(293, 'Kevin', 'Condori Callo', '70507293', 'kevin.condori292@gmail.com', 'M', 3, 4),
(294, 'Vanessa', 'Ticona Cusi', '70507294', 'vanessa.ticona293@gmail.com', 'F', 3, 4),
(295, 'Diego', 'Coila Huanca', '70507295', 'diego.coila294@gmail.com', 'M', 3, 4),
(296, 'Flor', 'Copa Ramos', '70507296', 'flor.copa295@gmail.com', 'F', 3, 4),
(297, 'Matías', 'Vilca Mamani', '70507297', 'matias.vilca296@gmail.com', 'M', 3, 4),
(298, 'Angélica', 'Apaza Nina', '70507298', 'angelica.apaza297@gmail.com', 'F', 3, 4),
(299, 'Piero', 'Ramos Tito', '70507299', 'piero.ramos298@gmail.com', 'M', 3, 4),
(300, 'Eliana', 'Choque Mamani', '70507300', 'eliana.choque299@gmail.com', 'F', 3, 4),
(301, 'Jhon', 'Mamani Ramos', '70507301', 'jhon.mamani300@gmail.com', 'M', 4, 4),
(302, 'Alondra', 'Quispe Huanca', '70507302', 'alondra.quispe301@gmail.com', 'F', 4, 4),
(303, 'Cristian', 'Cruz Catacora', '70507303', 'cristian.cruz302@gmail.com', 'M', 4, 4),
(304, 'Fiorella', 'Tito Nina', '70507304', 'fiorella.tito303@gmail.com', 'F', 4, 4),
(305, 'Bruno', 'Coila Ramos', '70507305', 'bruno.coila304@gmail.com', 'M', 4, 4),
(306, 'Ariadna', 'Cutipa Huanca', '70507306', 'ariadna.cutipa305@gmail.com', 'F', 4, 4),
(307, 'Rodrigo', 'Cusi Mamani', '70507307', 'rodrigo.cusi306@gmail.com', 'M', 4, 4),
(308, 'Kimberly', 'Poma Apaza', '70507308', 'kimberly.poma307@gmail.com', 'F', 4, 4),
(309, 'Mauricio', 'Huanca Choque', '70507309', 'mauricio.huanca308@gmail.com', 'M', 4, 4),
(310, 'Nadia', 'Ramos Catacora', '70507310', 'nadia.ramos309@gmail.com', 'F', 4, 4),
(311, 'Elmer', 'Choque Apaza', '70507311', 'elmer.choque310@gmail.com', 'M', 4, 4),
(312, 'Milagros', 'Quispe Ramos', '70507312', 'milagros.quispe311@gmail.com', 'F', 4, 4),
(313, 'Héctor', 'Laura Nina', '70507313', 'hector.laura312@gmail.com', 'M', 4, 4),
(314, 'Scarlet', 'Ticona Callo', '70507314', 'scarlet.ticona313@gmail.com', 'F', 4, 4),
(315, 'Claudio', 'Condori Ramos', '70507315', 'claudio.condori314@gmail.com', 'M', 4, 4),
(316, 'Dayana', 'Apaza Choque', '70507316', 'dayana.apaza315@gmail.com', 'F', 4, 4),
(317, 'Renzo', 'Catacora Valdez', '70507317', 'renzo.catacora316@gmail.com', 'M', 4, 4),
(318, 'Maricielo', 'Cruz Mamani', '70507318', 'maricielo.cruz317@gmail.com', 'F', 4, 4),
(319, 'Gerson', 'Paco Condori', '70507319', 'gerson.paco318@gmail.com', 'M', 4, 4),
(320, 'Luz', 'Coila Ramos', '70507320', 'luz.coila319@gmail.com', 'F', 4, 4),
(321, 'Renato', 'Mamani Chuquimia', '70507321', 'renato.mamani120@gmail.com', 'M', 1, 2),
(322, 'Carla', 'Quispe Coila', '70507322', 'carla.quispe121@gmail.com', 'F', 1, 2),
(323, 'Jorge', 'Huanca Ticona', '70507323', 'jorge.huanca122@gmail.com', 'M', 1, 2),
(324, 'Milagros', 'Coila Catacora', '70507324', 'milagros.coila123@gmail.com', 'F', 1, 2),
(325, 'Luis', 'Apaza Calcina', '70507325', 'luis.apaza124@gmail.com', 'M', 1, 2),
(326, 'Andrea', 'Condori Yucra', '70507326', 'andrea.condori125@gmail.com', 'F', 1, 2),
(327, 'Kevin', 'Catacora Flores', '70507327', 'kevin.catacora126@gmail.com', 'M', 1, 2),
(328, 'Yessica', 'Sanca Pari', '70507328', 'yessica.sanca127@gmail.com', 'F', 1, 2),
(329, 'Diego', 'Turpo Lipa', '70507329', 'diego.turpo128@gmail.com', 'M', 1, 2),
(330, 'Lucía', 'Lipa Mendoza', '70507330', 'lucia.lipa129@gmail.com', 'F', 1, 2),
(331, 'Héctor', 'Ramos Puma', '70507331', 'hector.ramos130@gmail.com', 'M', 1, 2),
(332, 'Fiorella', 'Puma Vilca', '70507332', 'fiorella.puma131@gmail.com', 'F', 1, 2),
(333, 'Bruno', 'Choque Mamani', '70507333', 'bruno.choque132@gmail.com', 'M', 1, 2),
(334, 'Diana', 'Cruz Nina', '70507334', 'diana.cruz133@gmail.com', 'F', 1, 2),
(335, 'Victor', 'Loza Huanca', '70507335', 'victor.loza134@gmail.com', 'M', 1, 2),
(336, 'Pamela', 'Huayta Ramos', '70507336', 'pamela.huayta135@gmail.com', 'F', 1, 2),
(337, 'Samuel', 'Nina Huanca', '70507337', 'samuel.nina136@gmail.com', 'M', 1, 2),
(338, 'Giuliana', 'Apaza Sucapuca', '70507338', 'giuliana.apaza137@gmail.com', 'F', 1, 2),
(339, 'Marco', 'Cutipa Coila', '70507339', 'marco.cutipa138@gmail.com', 'M', 1, 2),
(340, 'Valeria', 'Vargas Chura', '70507340', 'valeria.vargas139@gmail.com', 'F', 1, 2),
(341, 'Renato', 'Flores Mamani', '70507341', 'renato.flores140@gmail.com', 'M', 1, 3),
(342, 'Lucero', 'Quispe Ramos', '70507342', 'lucero.quispe141@gmail.com', 'F', 1, 3),
(343, 'Carlos', 'Ccallo Turpo', '70507343', 'carlos.ccallo142@gmail.com', 'M', 1, 3),
(344, 'María', 'Catacora Nina', '70507344', 'maria.catacora143@gmail.com', 'F', 1, 3),
(345, 'Luis', 'Choque Condori', '70507345', 'luis.choque144@gmail.com', 'M', 1, 3),
(346, 'Daniela', 'Vargas Lipa', '70507346', 'daniela.vargas145@gmail.com', 'F', 1, 3),
(347, 'Kevin', 'Apaza Vilca', '70507347', 'kevin.apaza146@gmail.com', 'M', 1, 3),
(348, 'Angie', 'Lipa Coila', '70507348', 'angie.lipa147@gmail.com', 'F', 1, 3),
(349, 'Miguel', 'Cutipa Ramos', '70507349', 'miguel.cutipa148@gmail.com', 'M', 1, 3),
(350, 'Fiorella', 'Ramos Huanca', '70507350', 'fiorella.ramos149@gmail.com', 'F', 1, 3),
(351, 'Héctor', 'Nina Ticona', '70507351', 'hector.nina150@gmail.com', 'M', 1, 3),
(352, 'Yuliana', 'Choque Mamani', '70507352', 'yuliana.choque151@gmail.com', 'F', 1, 3),
(353, 'Bruno', 'Condori Quispe', '70507353', 'bruno.condori152@gmail.com', 'M', 1, 3),
(354, 'Gabriela', 'Vargas Puma', '70507354', 'gabriela.vargas153@gmail.com', 'F', 1, 3),
(355, 'Oscar', 'Loza Cutipa', '70507355', 'oscar.loza154@gmail.com', 'M', 1, 3),
(356, 'Milagros', 'Sanca Ramos', '70507356', 'milagros.sanca155@gmail.com', 'F', 1, 3),
(357, 'Wilmer', 'Apaza Coila', '70507357', 'wilmer.apaza156@gmail.com', 'M', 1, 3),
(358, 'Diana', 'Turpo Catacora', '70507358', 'diana.turpo157@gmail.com', 'F', 1, 3),
(359, 'Marco', 'Puma Huayta', '70507359', 'marco.puma158@gmail.com', 'M', 1, 3),
(360, 'Cecilia', 'Chura Quispe', '70507360', 'cecilia.chura159@gmail.com', 'F', 1, 3),
(361, 'Renato', 'Mamani Coila', '70507361', 'renato.mamani160@gmail.com', 'M', 1, 4),
(362, 'Carolina', 'Quispe Yucra', '70507362', 'carolina.quispe161@gmail.com', 'F', 1, 4),
(363, 'Jorge', 'Condori Mamani', '70507363', 'jorge.condori162@gmail.com', 'M', 1, 4),
(364, 'Milagros', 'Turpo Catacora', '70507364', 'milagros.turpo163@gmail.com', 'F', 1, 4),
(365, 'Luis', 'Vargas Ramos', '70507365', 'luis.vargas164@gmail.com', 'M', 1, 4),
(366, 'Fiorella', 'Nina Huanca', '70507366', 'fiorella.nina165@gmail.com', 'F', 1, 4),
(367, 'Kevin', 'Ccallo Ticona', '70507367', 'kevin.ccallo166@gmail.com', 'M', 1, 4),
(368, 'Brenda', 'Catacora Choque', '70507368', 'brenda.catacora167@gmail.com', 'F', 1, 4),
(369, 'Diego', 'Chura Puma', '70507369', 'diego.chura168@gmail.com', 'M', 1, 4),
(370, 'Lucía', 'Huaranca Lipa', '70507370', 'lucia.huaranca169@gmail.com', 'F', 1, 4),
(371, 'Héctor', 'Puma Vilca', '70507371', 'hector.puma170@gmail.com', 'M', 1, 4),
(372, 'Gabriela', 'Choque Condori', '70507372', 'gabriela.choque171@gmail.com', 'F', 1, 4),
(373, 'Bruno', 'Apaza Coila', '70507373', 'bruno.apaza172@gmail.com', 'M', 1, 4),
(374, 'Valeria', 'Ramos Mamani', '70507374', 'valeria.ramos173@gmail.com', 'F', 1, 4),
(375, 'Oscar', 'Condori Catacora', '70507375', 'oscar.condori174@gmail.com', 'M', 1, 4),
(376, 'Diana', 'Loza Callisaya', '70507376', 'diana.loza175@gmail.com', 'F', 1, 4),
(377, 'Wilmer', 'Turpo Quispe', '70507377', 'wilmer.turpo176@gmail.com', 'M', 1, 4),
(378, 'Jessica', 'Apaza Huanca', '70507378', 'jessica.apaza177@gmail.com', 'F', 1, 4),
(379, 'Marco', 'Mamani Chura', '70507379', 'marco.mamani178@gmail.com', 'M', 1, 4),
(380, 'Cecilia', 'Cruz Nina', '70507380', 'cecilia.cruz179@gmail.com', 'F', 1, 4),
(381, 'Renato', 'Quispe Mamani', '70507381', 'renato.quispe180@gmail.com', 'M', 1, 5),
(382, 'Carla', 'Flores Ramos', '70507382', 'carla.flores181@gmail.com', 'F', 1, 5),
(383, 'Miguel', 'Catacora Ticona', '70507383', 'miguel.catacora182@gmail.com', 'M', 1, 5),
(384, 'Fiorella', 'Condori Quispe', '70507384', 'fiorella.condori183@gmail.com', 'F', 1, 5),
(385, 'Luis', 'Choque Huanca', '70507385', 'luis.choque184@gmail.com', 'M', 1, 5),
(386, 'Diana', 'Nina Coila', '70507386', 'diana.nina185@gmail.com', 'F', 1, 5),
(387, 'Kevin', 'Ccallo Mamani', '70507387', 'kevin.ccallo186@gmail.com', 'M', 1, 5),
(388, 'Gabriela', 'Mamani Sanca', '70507388', 'gabriela.mamani187@gmail.com', 'F', 1, 5),
(389, 'Bruno', 'Ramos Callisaya', '70507389', 'bruno.ramos188@gmail.com', 'M', 1, 5),
(390, 'Valeria', 'Vargas Apaza', '70507390', 'valeria.vargas189@gmail.com', 'F', 1, 5),
(391, 'Héctor', 'Turpo Puma', '70507391', 'hector.turpo190@gmail.com', 'M', 1, 5),
(392, 'Jessica', 'Vilca Ramos', '70507392', 'jessica.vilca191@gmail.com', 'F', 1, 5),
(393, 'Oscar', 'Apaza Chura', '70507393', 'oscar.apaza192@gmail.com', 'M', 1, 5),
(394, 'Milagros', 'Coila Huayta', '70507394', 'milagros.coila193@gmail.com', 'F', 1, 5),
(395, 'Wilmer', 'Cutipa Mamani', '70507395', 'wilmer.cutipa194@gmail.com', 'M', 1, 5),
(396, 'Pamela', 'Choque Nina', '70507396', 'pamela.choque195@gmail.com', 'F', 1, 5),
(397, 'Marco', 'Catacora Turpo', '70507397', 'marco.catacora196@gmail.com', 'M', 1, 5),
(398, 'Cecilia', 'Callisaya Puma', '70507398', 'cecilia.callisaya197@gmail.com', 'F', 1, 5),
(399, 'Jorge', 'Huanca Coila', '70507399', 'jorge.huanca198@gmail.com', 'M', 1, 5),
(400, 'Lucía', 'Apaza Ramos', '70507400', 'lucia.apaza199@gmail.com', 'F', 1, 5),
(401, 'Renato', 'Ccallo Mamani', '70507401', 'renato.ccallo200@gmail.com', 'M', 1, 6),
(402, 'Carolina', 'Turpo Coila', '70507402', 'carolina.turpo201@gmail.com', 'F', 1, 6),
(403, 'Jorge', 'Apaza Ramos', '70507403', 'jorge.apaza202@gmail.com', 'M', 1, 6),
(404, 'Milagros', 'Choque Vilca', '70507404', 'milagros.choque203@gmail.com', 'F', 1, 6),
(405, 'Luis', 'Ramos Cutipa', '70507405', 'luis.ramos204@gmail.com', 'M', 1, 6),
(406, 'Fiorella', 'Condori Huanca', '70507406', 'fiorella.condori205@gmail.com', 'F', 1, 6),
(407, 'Kevin', 'Mamani Puma', '70507407', 'kevin.mamani206@gmail.com', 'M', 1, 6),
(408, 'Brenda', 'Catacora Nina', '70507408', 'brenda.catacora207@gmail.com', 'F', 1, 6),
(409, 'Diego', 'Coila Ticona', '70507409', 'diego.coila208@gmail.com', 'M', 1, 6),
(410, 'Lucía', 'Vargas Choque', '70507410', 'lucia.vargas209@gmail.com', 'F', 1, 6),
(411, 'Héctor', 'Cutipa Ccallo', '70507411', 'hector.cutipa210@gmail.com', 'M', 1, 6),
(412, 'Gabriela', 'Nina Mamani', '70507412', 'gabriela.nina211@gmail.com', 'F', 1, 6),
(413, 'Bruno', 'Quispe Huayta', '70507413', 'bruno.quispe212@gmail.com', 'M', 1, 6),
(414, 'Valeria', 'Flores Apaza', '70507414', 'valeria.flores213@gmail.com', 'F', 1, 6),
(415, 'Oscar', 'Turpo Ramos', '70507415', 'oscar.turpo214@gmail.com', 'M', 1, 6),
(416, 'Diana', 'Callisaya Lipa', '70507416', 'diana.callisaya215@gmail.com', 'F', 1, 6),
(417, 'Wilmer', 'Mamani Catacora', '70507417', 'wilmer.mamani216@gmail.com', 'M', 1, 6),
(418, 'Jessica', 'Vilca Quispe', '70507418', 'jessica.vilca217@gmail.com', 'F', 1, 6),
(419, 'Marco', 'Chura Condori', '70507419', 'marco.chura218@gmail.com', 'M', 1, 6),
(420, 'Cecilia', 'Apaza Coila', '70507420', 'cecilia.apaza219@gmail.com', 'F', 1, 6),
(421, 'Renato', 'Mamani Coila', '70507421', 'renato.mamani220@gmail.com', 'M', 2, 1),
(422, 'Carla', 'Quispe Huanca', '70507422', 'carla.quispe221@gmail.com', 'F', 2, 1),
(423, 'Jorge', 'Turpo Cutipa', '70507423', 'jorge.turpo222@gmail.com', 'M', 2, 1),
(424, 'Milagros', 'Catacora Ramos', '70507424', 'milagros.catacora223@gmail.com', 'F', 2, 1),
(425, 'Luis', 'Apaza Nina', '70507425', 'luis.apaza224@gmail.com', 'M', 2, 1),
(426, 'Fiorella', 'Condori Choque', '70507426', 'fiorella.condori225@gmail.com', 'F', 2, 1),
(427, 'Kevin', 'Ccallo Catacora', '70507427', 'kevin.ccallo226@gmail.com', 'M', 2, 1),
(428, 'Brenda', 'Coila Mamani', '70507428', 'brenda.coila227@gmail.com', 'F', 2, 1),
(429, 'Diego', 'Ramos Huayta', '70507429', 'diego.ramos228@gmail.com', 'M', 2, 1),
(430, 'Lucía', 'Vilca Puma', '70507430', 'lucia.vilca229@gmail.com', 'F', 2, 1),
(431, 'Héctor', 'Choque Lipa', '70507431', 'hector.choque230@gmail.com', 'M', 2, 1),
(432, 'Gabriela', 'Sanca Turpo', '70507432', 'gabriela.sanca231@gmail.com', 'F', 2, 1),
(433, 'Bruno', 'Condori Valdez', '70507433', 'bruno.condori232@gmail.com', 'M', 2, 1),
(434, 'Valeria', 'Chura Condori', '70507434', 'valeria.chura233@gmail.com', 'F', 2, 1),
(435, 'Oscar', 'Apaza Puma', '70507435', 'oscar.apaza234@gmail.com', 'M', 2, 1),
(436, 'Diana', 'Loza Huanca', '70507436', 'diana.loza235@gmail.com', 'F', 2, 1),
(437, 'Wilmer', 'Cutipa Choque', '70507437', 'wilmer.cutipa236@gmail.com', 'M', 2, 1),
(438, 'Jessica', 'Catacora Nina', '70507438', 'jessica.catacora237@gmail.com', 'F', 2, 1),
(439, 'Marco', 'Flores Coila', '70507439', 'marco.flores238@gmail.com', 'M', 2, 1),
(440, 'Cecilia', 'Mamani Ramos', '70507440', 'cecilia.mamani239@gmail.com', 'F', 2, 1),
(441, 'Renato', 'Cutipa Catacora', '70507441', 'renato.cutipa240@gmail.com', 'M', 2, 2),
(442, 'Carolina', 'Choque Ramos', '70507442', 'carolina.choque241@gmail.com', 'F', 2, 2),
(443, 'Miguel', 'Apaza Huanca', '70507443', 'miguel.apaza242@gmail.com', 'M', 2, 2),
(444, 'Fiorella', 'Mamani Nina', '70507444', 'fiorella.mamani243@gmail.com', 'F', 2, 2),
(445, 'Luis', 'Nina Catacora', '70507445', 'luis.nina244@gmail.com', 'M', 2, 2),
(446, 'Diana', 'Ccallo Coila', '70507446', 'diana.ccallo245@gmail.com', 'F', 2, 2),
(447, 'Kevin', 'Ramos Ticona', '70507447', 'kevin.ramos246@gmail.com', 'M', 2, 2),
(448, 'Gabriela', 'Vilca Choque', '70507448', 'gabriela.vilca247@gmail.com', 'F', 2, 2),
(449, 'Bruno', 'Quispe Cutipa', '70507449', 'bruno.quispe248@gmail.com', 'M', 2, 2),
(450, 'Valeria', 'Catacora Puma', '70507450', 'valeria.catacora249@gmail.com', 'F', 2, 2),
(451, 'Oscar', 'Lipa Huayta', '70507451', 'oscar.lipa250@gmail.com', 'M', 2, 2),
(452, 'Jessica', 'Coila Quispe', '70507452', 'jessica.coila251@gmail.com', 'F', 2, 2),
(453, 'Wilmer', 'Condori Ramos', '70507453', 'wilmer.condori252@gmail.com', 'M', 2, 2),
(454, 'Pamela', 'Apaza Cutipa', '70507454', 'pamela.apaza253@gmail.com', 'F', 2, 2),
(455, 'Marco', 'Turpo Mamani', '70507455', 'marco.turpo254@gmail.com', 'M', 2, 2),
(456, 'Cecilia', 'Quispe Huanca', '70507456', 'cecilia.quispe255@gmail.com', 'F', 2, 2),
(457, 'Jorge', 'Mamani Coila', '70507457', 'jorge.mamani256@gmail.com', 'M', 2, 2),
(458, 'Lucía', 'Condori Nina', '70507458', 'lucia.condori257@gmail.com', 'F', 2, 2),
(459, 'Héctor', 'Flores Ticona', '70507459', 'hector.flores258@gmail.com', 'M', 2, 2),
(460, 'Milagros', 'Ramos Callisaya', '70507460', 'milagros.ramos259@gmail.com', 'F', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `programa`
--

CREATE TABLE `programa` (
  `id_programa` int NOT NULL,
  `nombre_programa` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `programa`
--

INSERT INTO `programa` (`id_programa`, `nombre_programa`) VALUES
(1, 'ARQUITECTURA DE PLATAFORMAS Y SERVICIOS DE TI'),
(2, 'ADMINISTRACIÓN DE NEGOCIOS INTERNACIONALES'),
(3, 'ENFERMERÍA TÉCNICA'),
(4, 'MECATRÓNICA AUTOMOTRIZ');

-- --------------------------------------------------------

--
-- Table structure for table `semestre`
--

CREATE TABLE `semestre` (
  `id_semestre` int NOT NULL,
  `nombre_semestre` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `semestre`
--

INSERT INTO `semestre` (`id_semestre`, `nombre_semestre`) VALUES
(1, 'PRIMERO'),
(2, 'SEGUNDO'),
(3, 'TERCERO'),
(4, 'CUARTO'),
(5, 'QUINTO'),
(6, 'SEXTO');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `asistencia`
--
ALTER TABLE `asistencia`
  ADD PRIMARY KEY (`id_asistencia`),
  ADD KEY `fk_asistencia_estudiante1_idx` (`id_estudiante`);

--
-- Indexes for table `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`id_estudiante`),
  ADD KEY `fk_estudiante_programa_idx` (`id_programa`),
  ADD KEY `fk_estudiante_semestre1_idx` (`id_semestre`);

--
-- Indexes for table `programa`
--
ALTER TABLE `programa`
  ADD PRIMARY KEY (`id_programa`);

--
-- Indexes for table `semestre`
--
ALTER TABLE `semestre`
  ADD PRIMARY KEY (`id_semestre`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `asistencia`
--
ALTER TABLE `asistencia`
  MODIFY `id_asistencia` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `estudiante`
--
ALTER TABLE `estudiante`
  MODIFY `id_estudiante` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=461;

--
-- AUTO_INCREMENT for table `programa`
--
ALTER TABLE `programa`
  MODIFY `id_programa` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `semestre`
--
ALTER TABLE `semestre`
  MODIFY `id_semestre` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `asistencia`
--
ALTER TABLE `asistencia`
  ADD CONSTRAINT `fk_asistencia_estudiante1` FOREIGN KEY (`id_estudiante`) REFERENCES `estudiante` (`id_estudiante`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `estudiante`
--
ALTER TABLE `estudiante`
  ADD CONSTRAINT `fk_estudiante_programa` FOREIGN KEY (`id_programa`) REFERENCES `programa` (`id_programa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_estudiante_semestre1` FOREIGN KEY (`id_semestre`) REFERENCES `semestre` (`id_semestre`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
