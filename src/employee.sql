-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 04, 2022 at 12:20 AM
-- Server version: 8.0.21
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employees`
--

-- --------------------------------------------------------

--
-- Table structure for table `datatypes`
--

DROP TABLE IF EXISTS `datatypes`;
CREATE TABLE IF NOT EXISTS `datatypes` (
  `INT_` int NOT NULL DEFAULT '12',
  `TINY_INT` tinyint DEFAULT '1',
  `SMALL_INT` smallint DEFAULT '12',
  `MEDIUM_INT` mediumint DEFAULT '123',
  `BIG_INT` bigint DEFAULT '123456',
  `BIT_` bit(1) DEFAULT NULL,
  `BOOL_` tinyint(1) DEFAULT NULL,
  `BOOLEAN_` tinyint(1) DEFAULT NULL,
  `DECIMAL_` decimal(10,2) DEFAULT '14.55',
  `DEC_` decimal(10,2) UNSIGNED ZEROFILL DEFAULT NULL,
  `FIXED_` decimal(10,2) UNSIGNED DEFAULT NULL,
  `NUMERIC_` decimal(10,2) UNSIGNED ZEROFILL DEFAULT NULL,
  `FLOAT_` float DEFAULT '0.5',
  `DOUBLE_` double DEFAULT '0.3',
  `DOUBLE_PRECISION` double(14,5) DEFAULT NULL,
  `REAL_` double(11,3) DEFAULT NULL,
  `CHAR_` char(5) DEFAULT '12345',
  `NATIONAL_CHAR` char(5) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `N_CHAR` char(5) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `VAR_CHAR` varchar(50) DEFAULT 'abc',
  `NATIONAL_VARCHAR` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `N_VAR_CHAR` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `TEXT_` text,
  `TINY_TEXT` tinytext,
  `MEDIUM_TEXT` mediumtext,
  `LONG_TEXT` longtext,
  `DATE_` date DEFAULT NULL,
  `TIME_` time DEFAULT NULL,
  `DATE_TIME` datetime DEFAULT NULL,
  `TIME_STAMP` timestamp NULL DEFAULT NULL,
  `YEAR_4` year DEFAULT NULL,
  `BINARY_` binary(10) DEFAULT NULL,
  `VAR_BINARY` varbinary(20) DEFAULT '4564',
  `TINY_BLOB` tinyblob,
  `LONG_BLOB` longblob,
  `MEDIUM_BLOB` mediumblob,
  `ENUM_` enum('aa','bb','cc') DEFAULT 'cc',
  `SET_` set('a','b','c') DEFAULT 'b',
  `GEOMETRY_` geometry DEFAULT NULL,
  `POINT_` point DEFAULT NULL,
  `LINE_STRING` linestring DEFAULT NULL,
  `POLYGON_` polygon DEFAULT NULL,
  `GEOMETRY_COLLECTION` geomcollection DEFAULT NULL,
  `MULTI_POINT` multipoint DEFAULT NULL,
  `MULTI_LINE_STRING` multilinestring DEFAULT NULL,
  `MULTI_POLYGON` multipolygon DEFAULT NULL,
  PRIMARY KEY (`INT_`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `datatypes`
--

INSERT INTO `datatypes` (`INT_`, `TINY_INT`, `SMALL_INT`, `MEDIUM_INT`, `BIG_INT`, `BIT_`, `BOOL_`, `BOOLEAN_`, `DECIMAL_`, `DEC_`, `FIXED_`, `NUMERIC_`, `FLOAT_`, `DOUBLE_`, `DOUBLE_PRECISION`, `REAL_`, `CHAR_`, `NATIONAL_CHAR`, `N_CHAR`, `VAR_CHAR`, `NATIONAL_VARCHAR`, `N_VAR_CHAR`, `TEXT_`, `TINY_TEXT`, `MEDIUM_TEXT`, `LONG_TEXT`, `DATE_`, `TIME_`, `DATE_TIME`, `TIME_STAMP`, `YEAR_4`, `BINARY_`, `VAR_BINARY`, `TINY_BLOB`, `LONG_BLOB`, `MEDIUM_BLOB`, `ENUM_`, `SET_`, `GEOMETRY_`, `POINT_`, `LINE_STRING`, `POLYGON_`, `GEOMETRY_COLLECTION`, `MULTI_POINT`, `MULTI_LINE_STRING`, `MULTI_POLYGON`) VALUES
(1, 3, 33, 444, 34234234, NULL, NULL, NULL, '12.33', NULL, NULL, NULL, 22.33, 33.44, NULL, NULL, 'sdsdf', NULL, NULL, 'fssdf', NULL, NULL, NULL, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 0x34353634, NULL, NULL, NULL, 'cc', 'b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dept`
--

DROP TABLE IF EXISTS `dept`;
CREATE TABLE IF NOT EXISTS `dept` (
  `DEPTNO` int NOT NULL COMMENT 'Department''s identification number',
  `DNAME` varchar(20) NOT NULL COMMENT 'Name of the current department',
  `LOC` varchar(20) NOT NULL COMMENT 'Location of the current department',
  PRIMARY KEY (`DEPTNO`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='All company''s departments, with employees';

--
-- Dumping data for table `dept`
--

INSERT INTO `dept` (`DEPTNO`, `DNAME`, `LOC`) VALUES
(10, 'ACCOUNTING', 'NEW YORK'),
(20, 'RESEARCH', 'DALLAS'),
(30, 'SALES', 'CHICAGO'),
(40, 'OPERATIONS', 'BOSTON');

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20210909170555', '2022-11-03 07:41:54', 83),
('DoctrineMigrations\\Version20210909173321', '2022-11-03 07:41:54', 15),
('DoctrineMigrations\\Version20221014163142', '2022-10-14 16:32:31', 111),
('DoctrineMigrations\\Version20221014170428', '2022-10-14 17:04:52', 262),
('DoctrineMigrations\\Version20221015212448', '2022-10-15 21:25:15', 67),
('DoctrineMigrations\\Version20221016065134', '2022-10-16 06:51:52', 51);

-- --------------------------------------------------------

--
-- Table structure for table `emp`
--

DROP TABLE IF EXISTS `emp`;
CREATE TABLE IF NOT EXISTS `emp` (
  `EMPNO` int NOT NULL,
  `ENAME` varchar(20) NOT NULL,
  `JOB` varchar(20) NOT NULL,
  `MGR` int DEFAULT NULL,
  `HIREDATE` date NOT NULL,
  `SAL` int NOT NULL,
  `COMM` int DEFAULT NULL,
  `DEPTNO` int NOT NULL,
  PRIMARY KEY (`EMPNO`),
  KEY `fk_MGR` (`MGR`),
  KEY `fk_DEPTNO` (`DEPTNO`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `emp`
--

INSERT INTO `emp` (`EMPNO`, `ENAME`, `JOB`, `MGR`, `HIREDATE`, `SAL`, `COMM`, `DEPTNO`) VALUES
(7839, 'KING', 'PRESIDENT', NULL, '2017-11-17', 5000, NULL, 10),
(7698, 'BLAKE', 'MANAGER', 7839, '1981-05-01', 2850, NULL, 30),
(7654, 'MARTIN', 'SALESMAN', 7698, '1981-09-28', 1250, 1400, 30),
(7499, 'ALLEN', 'SALESMAN', 7698, '1981-02-20', 1600, 300, 30),
(7521, 'WARD', 'SALESMAN', 7698, '1981-02-22', 1250, 500, 30),
(7900, 'JAMES', 'CLERK', 7698, '1981-12-03', 950, NULL, 30),
(7844, 'TURNER', 'SALESMAN', 7698, '1981-09-08', 1500, 0, 30),
(7782, 'CLARK', 'MANAGER', 7839, '1981-06-09', 2450, NULL, 10),
(7934, 'MILLER', 'CLERK', 7782, '1982-01-23', 1300, NULL, 10),
(7566, 'JONES', 'MANAGER', 7839, '1981-04-02', 2975, NULL, 20),
(7788, 'SCOTT', 'ANALYST', 7566, '1982-12-09', 3000, NULL, 20),
(7876, 'ADAMS', 'CLERK', 7788, '1983-01-12', 1100, NULL, 20),
(7902, 'FORD', 'ANALYST', 7566, '1981-12-03', 3000, NULL, 20),
(7369, 'SMITH', 'CLERK', 7902, '1980-12-17', 800, NULL, 20),
(7370, 'AMEUR', 'ANALYST', 7371, '2022-10-26', 2000, NULL, 40),
(7371, 'MAHEUR', 'MANAGER', 7375, '2017-01-01', 5000, 1000, 30),
(7372, 'HABIB', 'MANAGER', 7375, '2022-10-27', 10000, NULL, 10),
(7373, 'zakou', 'integrateur', 7374, '2017-01-01', 2000, NULL, 10),
(7374, 'wided', 'DEVELOPER', 7371, '2022-01-01', 5000, NULL, 10),
(7375, 'ALAIN', 'MANAGER', 7839, '2017-01-01', 10000, 2000, 20),
(4070, 'YOUSSEF', 'MANAGER', 7839, '2017-01-01', 10000, NULL, 10);

-- --------------------------------------------------------

--
-- Stand-in structure for view `managers`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `managers`;
CREATE TABLE IF NOT EXISTS `managers` (
`Employee` varchar(20)
,`Manager` varchar(20)
);

-- --------------------------------------------------------

--
-- Table structure for table `messenger_messages`
--

DROP TABLE IF EXISTS `messenger_messages`;
CREATE TABLE IF NOT EXISTS `messenger_messages` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `body` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `headers` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `queue_name` varchar(190) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  KEY `IDX_75EA56E016BA31DB` (`delivered_at`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `messenger_messages`
--

INSERT INTO `messenger_messages` (`id`, `body`, `headers`, `queue_name`, `created_at`, `available_at`, `delivered_at`) VALUES
(1, 'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:51:\\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\\":2:{s:60:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\\";C:39:\\\"Symfony\\\\Bridge\\\\Twig\\\\Mime\\\\TemplatedEmail\\\":2288:{a:4:{i:0;s:41:\\\"registration/confirmation_email.html.twig\\\";i:1;N;i:2;a:3:{s:9:\\\"signedUrl\\\";s:172:\\\"http://127.0.0.1:8000/verify/email?expires=1665908590&id=1&signature=gX8NcMSpsfbCKsPBHw4XE9o%2BGdEA2GiKJ%2B2zutMoSqQ%3D&token=8E8ElAsZLpWEs53mJkghrQgeEK8lE5dJZS2EV13IQ2k%3D\\\";s:19:\\\"expiresAtMessageKey\\\";s:26:\\\"%count% hour|%count% hours\\\";s:20:\\\"expiresAtMessageData\\\";a:1:{s:7:\\\"%count%\\\";i:1;}}i:3;a:6:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;a:0:{}i:5;a:2:{i:0;O:37:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\\":2:{s:46:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\\";a:3:{s:4:\\\"from\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:16:\\\"contact@copab.tn\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:33:\\\"comptoir piècesauto ben boubaker\\\";}}s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:4:\\\"From\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";}}s:2:\\\"to\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:18:\\\"bbameur1@gmail.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:2:\\\"To\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";}}s:7:\\\"subject\\\";a:1:{i:0;O:48:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\\":5:{s:55:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\\";s:25:\\\"Please Confirm your Email\\\";s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:7:\\\"Subject\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";}}}s:49:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\\";i:76;}i:1;N;}}}}s:61:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\\";N;}}', '[]', 'default', '2022-10-16 07:23:10', '2022-10-16 07:23:10', NULL),
(2, 'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:51:\\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\\":2:{s:60:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\\";C:39:\\\"Symfony\\\\Bridge\\\\Twig\\\\Mime\\\\TemplatedEmail\\\":2297:{a:4:{i:0;s:41:\\\"registration/confirmation_email.html.twig\\\";i:1;N;i:2;a:3:{s:9:\\\"signedUrl\\\";s:172:\\\"http://127.0.0.1:8000/verify/email?expires=1665908792&id=2&signature=PjWoZXykxMLO4lvKkIHGX9fDWT5tGWp62iSnexe228U%3D&token=Yv7m%2FcWJMC3cgZb7jco06RJ%2FQRYCzdg0tXRr8lfYAek%3D\\\";s:19:\\\"expiresAtMessageKey\\\";s:26:\\\"%count% hour|%count% hours\\\";s:20:\\\"expiresAtMessageData\\\";a:1:{s:7:\\\"%count%\\\";i:1;}}i:3;a:6:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;a:0:{}i:5;a:2:{i:0;O:37:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\\":2:{s:46:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\\";a:3:{s:4:\\\"from\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:16:\\\"contact@copab.tn\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:33:\\\"comptoir piècesauto ben boubaker\\\";}}s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:4:\\\"From\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";}}s:2:\\\"to\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:27:\\\"benboubaker.ameur@gmail.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:2:\\\"To\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";}}s:7:\\\"subject\\\";a:1:{i:0;O:48:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\\":5:{s:55:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\\";s:25:\\\"Please Confirm your Email\\\";s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:7:\\\"Subject\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";}}}s:49:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\\";i:76;}i:1;N;}}}}s:61:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\\";N;}}', '[]', 'default', '2022-10-16 07:26:32', '2022-10-16 07:26:32', NULL),
(3, 'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:51:\\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\\":2:{s:60:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\\";C:39:\\\"Symfony\\\\Bridge\\\\Twig\\\\Mime\\\\TemplatedEmail\\\":2297:{a:4:{i:0;s:41:\\\"registration/confirmation_email.html.twig\\\";i:1;N;i:2;a:3:{s:9:\\\"signedUrl\\\";s:172:\\\"http://127.0.0.1:8000/verify/email?expires=1665908946&id=3&signature=NKTTkqGFLBBzEs6HOuP4n%2FzFVbm0rSN%2FVNBJfiGR6MA%3D&token=hKl6MGHcHspdcOAj3uEJy3D17qfODlJ9kjz3eN8LeSk%3D\\\";s:19:\\\"expiresAtMessageKey\\\";s:26:\\\"%count% hour|%count% hours\\\";s:20:\\\"expiresAtMessageData\\\";a:1:{s:7:\\\"%count%\\\";i:1;}}i:3;a:6:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;a:0:{}i:5;a:2:{i:0;O:37:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\\":2:{s:46:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\\";a:3:{s:4:\\\"from\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:16:\\\"contact@copab.tn\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:33:\\\"comptoir piècesauto ben boubaker\\\";}}s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:4:\\\"From\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";}}s:2:\\\"to\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:27:\\\"benboubaker.ameur@gmail.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:2:\\\"To\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";}}s:7:\\\"subject\\\";a:1:{i:0;O:48:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\\":5:{s:55:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\\";s:25:\\\"Please Confirm your Email\\\";s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:7:\\\"Subject\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";}}}s:49:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\\";i:76;}i:1;N;}}}}s:61:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\\";N;}}', '[]', 'default', '2022-10-16 07:29:06', '2022-10-16 07:29:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `proj`
--

DROP TABLE IF EXISTS `proj`;
CREATE TABLE IF NOT EXISTS `proj` (
  `PROJID` int NOT NULL,
  `EMPNO` int NOT NULL,
  `STARTDATE` date NOT NULL,
  `ENDDATE` date NOT NULL,
  PRIMARY KEY (`PROJID`),
  KEY `fk_PROJ` (`EMPNO`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `proj`
--

INSERT INTO `proj` (`PROJID`, `EMPNO`, `STARTDATE`, `ENDDATE`) VALUES
(1, 7782, '2005-06-16', '2005-06-18'),
(4, 7782, '2005-06-19', '2005-06-24'),
(7, 7782, '2005-06-22', '2005-06-25'),
(10, 7782, '2005-06-25', '2005-06-28'),
(13, 7782, '2005-06-28', '2005-07-02'),
(2, 7839, '2005-06-17', '2005-06-21'),
(8, 7839, '2005-06-23', '2005-06-25'),
(14, 7839, '2005-06-29', '2005-06-30'),
(11, 7839, '2005-06-26', '2005-06-27'),
(5, 7839, '2005-06-20', '2005-06-24'),
(3, 7934, '2005-06-18', '2005-06-22'),
(12, 7934, '2005-06-27', '2005-06-28'),
(15, 7934, '2005-06-30', '2005-07-03'),
(9, 7934, '2005-06-24', '2005-06-27'),
(6, 7934, '2005-06-21', '2005-06-23');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(180) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649F85E0677` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `roles`, `password`, `nom`) VALUES
(1, 'mimo', '[\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$MnpidHo1Q0E5LkJvelpaNA$CVa8+KZS0BvHB4euOkmWy7emHP4q3YWwfU5Bqw4HJ/E', 'faouzi'),
(2, 'ameur', '[]', '$argon2id$v=19$m=65536,t=4,p=1$clJzZTllSXk0UU1xd283Sg$nt7DpT4ESkMv1hewp+fyUndANMlWWehEr9ibgscwjiY', 'Ben boubaker'),
(3, 'oussema', '[]', '$argon2id$v=19$m=65536,t=4,p=1$T0dBV0E4MjNMT0NRT0NFLw$oPI3KbXchFQXUGcG8vgfY9WVSrvxA/IrBnqltP/Zt50', 'oussema');

-- --------------------------------------------------------

--
-- Structure for view `managers`
--
DROP TABLE IF EXISTS `managers`;

DROP VIEW IF EXISTS `managers`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `managers`  AS  select `m`.`ENAME` AS `Manager`,`e`.`ENAME` AS `Employee` from (`employeesqx`.`emp` `e` left join `employeesqx`.`emp` `m` on((`e`.`MGR` = `m`.`EMPNO`))) order by `m`.`ENAME`,`e`.`ENAME` ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
