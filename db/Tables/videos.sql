-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2020 at 10:20 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `queenprime`
--

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `title` varchar(70) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `filePath` varchar(250) NOT NULL,
  `isMovie` tinyint(1) NOT NULL,
  `uploadDate` datetime NOT NULL DEFAULT current_timestamp(),
  `releaseDate` date NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `duration` varchar(10) NOT NULL,
  `season` int(11) DEFAULT 0,
  `episode` int(11) DEFAULT 0,
  `entityId` int(11) NOT NULL,
  `movietype` varchar(255) NOT NULL,
  `releaseyear` year(4) NOT NULL,
  `agelimit` varchar(255) NOT NULL,
  `cast` varchar(255) NOT NULL,
  `generas` varchar(255) NOT NULL,
  `languages` varchar(255) NOT NULL,
  `isactive` int(100) NOT NULL DEFAULT 1,
  `posterId` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `title`, `description`, `filePath`, `isMovie`, `uploadDate`, `releaseDate`, `views`, `duration`, `season`, `episode`, `entityId`, `movietype`, `releaseyear`, `agelimit`, `cast`, `generas`, `languages`, `isactive`, `posterId`) VALUES
(17, 'Light in the Mage', 'Interdum nulla at quis phasellus ornare habitasse dictumst vehicula aliquet senectus. Dolor vestibulum luctus feugiat tincidunt facilisis nunc quisque', '/HLS_Samples/asuran/index.m3u8', 0, '2019-10-12 22:07:53', '2006-02-10', 0, '47:13', 1, 1, 1, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, 1),
(18, 'Some Sliver', 'Adipiscing id est porttitor vivamus nostra magna porta potenti accumsan eros. Sit nullam dictumst libero sociosqu accumsan sem. Interdum egestas apten', '/HLS_Samples/avengers/index.m3u8', 0, '2019-10-12 22:07:53', '2002-12-09', 0, '41:46', 1, 2, 2, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, 2),
(19, 'The Dreamer\'s Flame', 'Fusce et eu, at auctor hendrerit pharetra aptent himenaeos nisl. Placerat at ultrices habitasse rhoncus eros dignissim senectus. A vivamus fermentum p', '/HLS_Samples/jagame/index.m3u8', 0, '2019-10-12 22:07:53', '2014-10-17', 0, '22:31', 1, 3, 3, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, 3),
(20, 'Sliver in the Weeping', 'Dolor maecenas mauris massa et augue litora. Maecenas commodo donec potenti sodales sem. Malesuada tincidunt a integer nullam euismod pretium vulputat', '/HLS_Samples/need4speed/index.m3u8', 0, '2019-10-12 22:07:53', '2014-05-14', 0, '31:24', 1, 4, 4, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, 4),
(21, 'The Female of the Twins', 'Interdum etiam finibus facilisis pulvinar venenatis pharetra class ad litora duis diam ullamcorper senectus cras. Non eleifend tempor nisi primis phar', '/HLS_Samples/shortfilm/index.m3u8', 0, '2019-10-12 22:07:53', '2001-05-11', 0, '30:13', 1, 5, 5, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, 5),
(22, 'Seventh Fire', 'Lacus tellus felis curae ornare euismod pretium inceptos sodales congue eros risus. Amet non nulla volutpat metus molestie urna tempus vivamus rhoncus', '/HLS_Samples/vathi/index.m3u8', 0, '2019-10-12 22:07:53', '2002-07-19', 0, '28:47', 1, 6, 6, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(23, 'Sliver in the Weeping', 'Suspendisse eget curabitur sodales. Malesuada lobortis dui fermentum dignissim nisl, non sed a gravida. Dictum phasellus quam libero.', '/HLS_Samples/asuran/index.m3u8', 0, '2019-10-12 22:07:53', '2007-06-03', 0, '39:26', 1, 7, 7, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(24, 'Voyager in the Lord', 'Id justo vitae nunc pulvinar quisque scelerisque ultrices proin commodo ad donec tristique cras. Sit vestibulum maximus sem ullamcorper, lacinia ligul', '/HLS_Samples/avengers/index.m3u8', 0, '2019-10-12 22:07:53', '2014-03-04', 0, '47:19', 1, 8, 8, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(25, 'Some Sliver', 'Malesuada mauris hac taciti. Dictum egestas molestie et pharetra maximus taciti litora porta blandit sem ullamcorper. Interdum nulla velit metus nibh ', '/HLS_Samples/jagame/index.m3u8', 0, '2019-10-12 22:07:53', '2018-04-08', 0, '40:55', 1, 9, 9, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(26, 'Sliver in the Weeping', 'Elit justo vestibulum feugiat lacinia suspendisse semper quis ultrices primis commodo libero sodales suscipit. Adipiscing erat velit mauris efficitur ', '/HLS_Samples/need4speed/index.m3u8', 0, '2019-10-12 22:07:53', '2000-05-29', 0, '37:33', 1, 10, 10, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(27, 'Voyager in the Lord', 'Amet sed at metus mollis phasellus cursus massa faucibus gravida vel maximus torquent turpis. Eleifend quisque pretium, felis pharetra class dignissim', '/HLS_Samples/shortfilm/index.m3u8', 0, '2019-10-12 22:07:53', '2014-01-13', 0, '32:10', 1, 11, 11, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(28, 'Burning Something', 'Ligula tellus nisi convallis suscipit fames aenean, lorem non nibh nisi orci curae sollicitudin taciti ad turpis nam imperdiet. Egestas a tortor conva', '/HLS_Samples/vathi/index.m3u8', 0, '2019-10-12 22:07:53', '2010-10-28', 0, '35:57', 1, 12, 12, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(29, 'The Tale\'s Door', 'Lorem viverra vitae venenatis posuere ornare sagittis enim laoreet vehicula nam imperdiet habitant, sit mattis tellus posuere pretium ad odio accumsan', '/HLS_Samples/asuran/index.m3u8', 0, '2019-10-12 22:07:53', '2014-06-11', 0, '34:56', 2, 1, 13, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(30, 'Burning Something', 'Pulvinar dui lectus per sem. Elit id volutpat tincidunt est tellus massa faucibus primis eget habitasse taciti odio morbi, id ligula mollis cubilia li', '/HLS_Samples/avengers/index.m3u8', 0, '2019-10-12 22:07:53', '2018-02-26', 0, '32:42', 2, 2, 14, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(31, 'The Shadowy Death', 'Lorem nibh integer commodo inceptos himenaeos. Amet interdum sed justo lobortis eleifend nisi molestie massa primis dictumst pellentesque torquent inc', '/HLS_Samples/jagame/index.m3u8', 0, '2019-10-12 22:07:53', '2007-06-25', 0, '40:33', 2, 3, 15, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(32, 'Seventh Fire', 'Metus tincidunt tellus primis augue consequat sagittis congue. Sit erat metus auctor massa posuere porta rhoncus blandit laoreet. Praesent a integer n', '/HLS_Samples/need4speed/index.m3u8', 0, '2019-10-12 22:07:53', '2010-07-06', 0, '43:53', 2, 4, 16, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(33, 'Name of Elves', 'Egestas leo ligula est donec ullamcorper netus. Nibh nec tortor fusce et eu libero per accumsan habitant. Lobortis luctus quis risus senectus iaculis,', '/HLS_Samples/shortfilm/index.m3u8', 0, '2019-10-12 22:07:53', '2007-04-18', 0, '25:39', 2, 5, 17, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(34, 'Name of Elves', 'Mattis vivamus libero conubia neque, dolor non feugiat nibh tincidunt aliquam pretium turpis rhoncus. In cursus nullam arcu dictumst diam. Egestas lac', '/HLS_Samples/vathi/index.m3u8', 0, '2019-10-12 22:07:53', '2008-08-26', 0, '45:27', 2, 6, 18, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(35, 'Light in the Mage', 'Viverra maecenas quisque ut fringilla condimentum elementum. Egestas ac ut fusce augue nullam dictumst lectus maximus torquent per fames. Dolor erat m', '/HLS_Samples/asuran/index.m3u8', 0, '2019-10-12 22:07:53', '2013-09-11', 0, '31:59', 2, 7, 19, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(36, 'Obsession in the Spark', 'Sapien porttitor sociosqu diam aliquet. Elit egestas auctor faucibus dictumst rhoncus. Lorem in ligula scelerisque venenatis porttitor aptent porta po', '/HLS_Samples/avengers/index.m3u8', 0, '2019-10-12 22:07:53', '2008-07-24', 0, '47:28', 2, 8, 20, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(37, 'Flames of Dreams', 'Elit sed metus urna sociosqu himenaeos. Leo semper tempor, dictum etiam leo cursus libero maximus nostra. Viverra mattis venenatis convallis varius cu', '/HLS_Samples/jagame/index.m3u8', 0, '2019-10-12 22:07:53', '2013-04-04', 0, '24:59', 2, 9, 21, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(38, 'Name of Elves', 'Malesuada etiam ut et curae commodo inceptos neque. Consectetur at volutpat tortor est et dapibus arcu dui turpis porta elementum morbi. Etiam vitae f', '/HLS_Samples/need4speed/index.m3u8', 0, '2019-10-12 22:07:53', '2003-04-29', 0, '29:38', 2, 10, 22, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(39, 'Grey Sparks', 'Nulla lacus sed nec ornare arcu dictumst vel cras. Semper fringilla platea gravida imperdiet. Dictum at lacinia pretium arcu vehicula. Mi maecenas jus', '/HLS_Samples/shortfilm/index.m3u8', 0, '2019-10-12 22:07:53', '2018-12-13', 0, '25:44', 2, 11, 23, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(40, 'Shard of Dragon', 'Lacus mattis est tellus aliquam primis sollicitudin urna sagittis pellentesque class taciti himenaeos congue habitant. Egestas facilisis habitasse, ip', '/HLS_Samples/vathi/index.m3u8', 0, '2019-10-12 22:07:53', '2012-10-19', 0, '23:58', 2, 12, 24, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(41, 'The Licking Flowers', 'Tincidunt ac quis felis conubia vehicula, velit felis orci ornare porttitor consequat tempus vivamus libero inceptos congue fames iaculis. Lacus viver', '/HLS_Samples/asuran/index.m3u8', 0, '2019-10-12 22:07:53', '2004-08-19', 0, '45:35', 3, 1, 25, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(42, 'Voyager in the Lord', 'Sit nunc pulvinar quisque aliquam varius et commodo pellentesque aptent duis imperdiet aliquet, non at maecenas tempor fringilla taciti. Sed mauris fe', '/HLS_Samples/avengers/index.m3u8', 0, '2019-10-12 22:07:53', '2007-09-27', 0, '22:53', 3, 2, 26, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(43, 'The Women of the Roses', 'Velit libero ad turpis. Sit amet integer euismod inceptos. Ipsum dictum non egestas curae urna arcu vel pellentesque turpis enim potenti elementum tri', '/HLS_Samples/jagame/index.m3u8', 0, '2019-10-12 22:07:53', '2011-03-10', 0, '34:31', 3, 3, 27, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(44, 'Silver Twilight', 'Nibh tincidunt eleifend aliquam eget taciti morbi. Amet interdum finibus vestibulum metus integer facilisis venenatis purus ex pretium aptent curabitu', '/HLS_Samples/need4speed/index.m3u8', 0, '2019-10-12 22:07:53', '2004-01-09', 0, '36:30', 3, 4, 28, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(45, 'The Dwindling Voyage', 'Sit amet facilisis ac eleifend mollis fusce pretium vulputate consequat sodales ullamcorper. Consectetur id tincidunt est scelerisque vulputate lectus', '/HLS_Samples/shortfilm/index.m3u8', 0, '2019-10-12 22:07:53', '2007-10-31', 0, '25:26', 3, 5, 29, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(46, 'The Licking Flowers', 'Maecenas leo eleifend ut scelerisque ultrices maximus odio nam iaculis aenean. Erat eu efficitur. Elit sapien nunc phasellus faucibus augue sollicitud', '/HLS_Samples/vathi/index.m3u8', 0, '2019-10-12 22:07:53', '2010-05-10', 0, '33:10', 3, 6, 30, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(47, 'Obsession in the Spark', 'Sed nunc ultrices euismod condimentum neque netus, id nibh dapibus euismod condimentum consequat platea dictumst imperdiet. Dolor nulla malesuada nunc', '/HLS_Samples/asuran/index.m3u8', 0, '2019-10-12 22:07:53', '2013-05-03', 0, '48:28', 3, 7, 31, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(48, 'The Force of the Silence', 'Pulvinar ex aenean. At maecenas ligula mollis est porttitor gravida libero vel taciti blandit aliquet cras, praesent suspendisse curae platea taciti s', '/HLS_Samples/avengers/index.m3u8', 0, '2019-10-12 22:07:53', '2009-12-20', 0, '25:26', 3, 8, 32, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(49, 'Flames of Dreams', 'Metus lacinia semper auctor scelerisque massa euismod arcu condimentum aptent taciti sociosqu sodales neque, integer suspendisse quisque ex posuere pl', '/HLS_Samples/jagame/index.m3u8', 0, '2019-10-12 22:07:53', '2018-07-31', 0, '34:41', 3, 9, 33, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(50, 'Silver Twilight', 'Nulla mauris luctus cursus vivamus. Interdum at suspendisse mollis hendrerit quam libero sodales dignissim. Leo nibh a aliquam ornare class eros nam s', '/HLS_Samples/need4speed/index.m3u8', 0, '2019-10-12 22:07:53', '2014-11-15', 0, '21:30', 3, 10, 34, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(51, 'Silver Twilight', 'Lacus sed mattis integer lacinia tempor ex curae dapibus habitasse nostra donec neque nam, adipiscing at volutpat justo aliquam convallis faucibus tac', '/HLS_Samples/shortfilm/index.m3u8', 0, '2019-10-12 22:07:53', '2006-01-03', 0, '31:56', 3, 11, 35, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(52, 'Shard of Dragon', 'Mi sed tincidunt condimentum tempus libero ad enim vehicula. Lacus erat pulvinar est aliquam eget quam maximus enim sodales ullamcorper habitant. A su', '/HLS_Samples/vathi/index.m3u8', 0, '2019-10-12 22:07:53', '2001-08-12', 0, '23:13', 3, 12, 36, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(53, 'The Licking Flowers', 'Eleifend semper felis ornare vulputate quam hac odio. Vitae integer ac nec vel, praesent in sagittis torquent curabitur imperdiet sem. Mauris pulvinar', '/HLS_Samples/asuran/index.m3u8', 0, '2019-10-12 22:07:53', '2009-11-01', 0, '22:24', 4, 1, 37, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(54, 'Light in the Mage', 'Interdum non malesuada viverra a suspendisse nec semper eget libero maximus ad per. Amet adipiscing egestas vitae feugiat aliquam felis primis vel cla', '/HLS_Samples/avengers/index.m3u8', 0, '2019-10-12 22:07:53', '2013-04-08', 0, '29:25', 4, 2, 38, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(55, 'Birch of Trainer', 'Tempus aptent habitant tristique. In lacus etiam luctus pulvinar mollis venenatis quis massa nullam sollicitudin hac taciti enim. Amet elit malesuada ', '/HLS_Samples/jagame/index.m3u8', 0, '2019-10-12 22:07:53', '2013-11-18', 0, '37:43', 4, 3, 39, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(56, 'Grey Sparks', 'Luctus est ex conubia congue laoreet, dictum semper tortor ultrices molestie pharetra himenaeos nam aliquet. Ipsum amet malesuada lacinia scelerisque ', '/HLS_Samples/need4speed/index.m3u8', 0, '2019-10-12 22:07:53', '2018-05-19', 0, '35:41', 4, 4, 40, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(57, 'The Shadowy Death', 'Interdum lacus placerat erat volutpat lobortis varius cubilia lectus vel conubia bibendum netus, sit feugiat tellus platea pellentesque donec curabitu', '/HLS_Samples/shortfilm/index.m3u8', 0, '2019-10-12 22:07:53', '2017-05-08', 0, '44:22', 4, 5, 41, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(58, 'Some Sliver', 'Mauris est cursus tempus gravida efficitur, adipiscing integer suspendisse nec libero eros ullamcorper. Ipsum consectetur mi phasellus sollicitudin co', '/HLS_Samples/vathi/index.m3u8', 0, '2019-10-12 22:07:53', '2015-04-13', 0, '50:50', 4, 6, 42, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(59, 'Shard of Dragon', 'Elit non maecenas mattis nibh convallis fringilla curae vivamus pellentesque torquent odio congue imperdiet ullamcorper, finibus fringilla tempus hime', '/HLS_Samples/asuran/index.m3u8', 0, '2019-10-12 22:07:53', '2013-12-27', 0, '42:27', 4, 7, 43, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(60, 'Grey Sparks', 'Non egestas nulla malesuada velit vestibulum ex arcu nostra fermentum imperdiet. Sit ac nullam dictumst congue. Egestas finibus lacinia eleifend nec v', '/HLS_Samples/avengers/index.m3u8', 0, '2019-10-12 22:07:53', '2008-01-05', 0, '33:35', 4, 8, 44, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(61, 'The Tale\'s Door', 'Lacinia tellus purus augue elementum sem, ipsum sit dictum nulla in ut quis ultrices fusce tempus efficitur elementum. Est massa platea litora rhoncus', '/HLS_Samples/jagame/index.m3u8', 0, '2019-10-12 22:07:53', '2007-01-19', 0, '30:46', 4, 9, 45, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(62, 'Some Sliver', 'Interdum varius curae. Mi metus facilisis quis fringilla orci libero taciti accumsan congue elementum cras, non viverra volutpat quisque gravida iacul', '/HLS_Samples/need4speed/index.m3u8', 0, '2019-10-12 22:07:53', '2004-03-18', 0, '38:24', 4, 10, 46, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(63, 'The Female of the Twins', 'Egestas in sed id leo venenatis convallis ex condimentum eu taciti fermentum magna rhoncus morbi, adipiscing viverra ultrices phasellus fusce felis pr', '/HLS_Samples/shortfilm/index.m3u8', 0, '2019-10-12 22:07:53', '2002-08-06', 0, '25:17', 4, 11, 47, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(64, 'Birch of Trainer', 'Volutpat vestibulum suspendisse primis et libero neque aliquet morbi, adipiscing praesent at luctus taciti torquent fermentum blandit diam. Consectetu', '/HLS_Samples/vathi/index.m3u8', 0, '2019-10-12 22:07:53', '2018-02-01', 0, '37:39', 4, 12, 48, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(65, 'The Force of the Silence', 'Viverra volutpat nec et ultricies lectus per. Consectetur id maecenas nec molestie convallis ultricies euismod eu vivamus ad aenean. Sed velit finibus', '/HLS_Samples/asuran/index.m3u8', 0, '2019-10-12 22:07:53', '2011-03-04', 0, '44:53', 5, 1, 49, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entityId` (`entityId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `videos`
--
ALTER TABLE `videos`
  ADD CONSTRAINT `videos_ibfk_1` FOREIGN KEY (`entityId`) REFERENCES `entities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
