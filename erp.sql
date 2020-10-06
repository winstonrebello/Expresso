-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 04, 2020 at 01:05 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `erp`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `cat` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `errors`
--

CREATE TABLE `errors` (
  `id` int(11) NOT NULL,
  `error_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `errors`
--

INSERT INTO `errors` (`id`, `error_name`) VALUES
(1, 'error'),
(2, 'error'),
(3, 'Error updating analytical data on Home%20Page.php'),
(4, 'Error updating analytical data on discription.php?id=4&cat=2');

-- --------------------------------------------------------

--
-- Table structure for table `head_earphone`
--

CREATE TABLE `head_earphone` (
  `id` int(11) NOT NULL,
  `Product_name` varchar(37) DEFAULT NULL,
  `by_info` varchar(10) DEFAULT NULL,
  `Product_img` varchar(75) DEFAULT NULL,
  `Product_price` int(4) DEFAULT NULL,
  `rating` decimal(2,1) DEFAULT NULL,
  `total_review` varchar(22) DEFAULT NULL,
  `ans_ask` varchar(24) DEFAULT NULL,
  `prod_des` varchar(212) DEFAULT NULL,
  `feature` varchar(403) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `head_earphone`
--

INSERT INTO `head_earphone` (`id`, `Product_name`, `by_info`, `Product_img`, `Product_price`, `rating`, `total_review`, `ans_ask`, `prod_des`, `feature`) VALUES
(1, 'BYMUSE Run Sport Bluetooth Earphones', 'BYMUSE', 'https://images-na.ssl-images-amazon.com/images/I/51mGasgwNsL._SL1000_.jpg', 1700, '3.7', '1500 customer reviews', '320+ questions answered', ' Bluetooth Earphones Bass TWS Wireless Hand Free TB5.0 with Microphone in Ear Headset', 'Bluetooth Version: V5.0 7, Driver unit: 6mm, Voice Assistant, Earphone battery type: rechargeable Li-polymer battery 3.7V/50mAh x 2 : Siri and Google'),
(2, 'ODIO Bluetooth Neckband Earphone ON01', 'ODIO', 'https://images-na.ssl-images-amazon.com/images/I/71sIIXpj6cL._SL1500_.jpg', 1600, '4.0', '1305 customer reviews', '20+ questions answered', 'Sports Wireless Headset with Super Extra Bass, Premium Chipset,Bluetooth Version 5.0 and Up to 12H Playback Active', '15 mins charge, 45 mins play: The ODIO ON07 are equipped with a 150 mAH battery that\'ll surely allow you to spend your time with these earphones a quarter of your day'),
(3, 'boAt BassHeads ', 'boAt ', 'https://images-na.ssl-images-amazon.com/images/I/719elVA3FvL._SL1500_.jpg', 390, '3.5', '1290 customer reviews', '1230+ questions answered', 'BassHeads 100 in-Ear Wired Earphones with Super Extra Bass, in-line Mic, Hawk Inspired Design and Perfect Length Cable (Black)', 'Features a HD microphone to make crystal clear calls - making life easier on the go, play/pause music or answer/end calls with one-click, track forward with two-clicks or back with 3 clicks make these earphones extremely user-friendly'),
(4, 'Sketchfab Extra bass Headphones', 'Sketchfab', 'https://images-na.ssl-images-amazon.com/images/I/61r-6tYW8tL._SL1100_.jpg', 450, '3.9', '500 customer reviews', '30+ questions answered', 'Extra bass Headphones Over The Ear Headset with Deep bass (Red)', '30 mm closed, dynamic driver unit for powerful EXTRA BASS sound Portable, swivel folding design for listening on the go Cushioned ear pads for long-wearing comfort; Cord length : 1.2 m'),
(5, 'boAt BassHeads 225', 'boAt', 'https://images-na.ssl-images-amazon.com/images/I/61AxA2YB8kL._SL1500_.jpg', 450, '3.2', '340+ customer reviews', '120+ questions answered', '225 in-Ear Wired Earphones with Super Extra Bass, Metallic Finish, Tangle-Free Cable and Gold Plated Angled Jack (Black)', 'The noise-cancelling microphone enables trouble free receiving of calls or undeterred sessions of musical extravaganza Made to fit you and your lifestyle, providing a smooth grip for an extra secure and comfortable fit for your ears'),
(6, 'JBL C100SI ', 'JBL', 'https://images-na.ssl-images-amazon.com/images/I/61ptzNC8r8L._SL1500_.jpg', 700, '4.4', '100+ customer reviews', '50+ questions answered', 'In-Ear Deep Bass Headphones with Mic (Black)', 'One-Button Universal Remote with Mic Quick Launch Access to Google Assistant / Siri Noise Cancelling Microphone Sleek, Glossy & Ergonomic design'),
(7, 'pTron HBE6 Headphone', 'pTron', 'https://images-na.ssl-images-amazon.com/images/I/61r3AbXTjrL._SL1100_.jpg', 250, '3.2', '1500 customer reviews', '320+ questions answered', '(High Bass Earphones) Metal in-Ear Wired Headset with Mic for All Smartphones (Red & Black)\n', '6 months manufacturer warranty, for any queries please contact_us on: [040-67138888]'),
(8, 'boAt Rockerz 255 ', 'boAt', 'https://images-na.ssl-images-amazon.com/images/I/61ku39qVEzL._SL1500_.jpg', 1450, '3.2', '1305 customer reviews', '20+ questions answered', 'Sports Wireless Headset with Super Extra Bass, IPX5 Water & Sweat Resistance, Qualcomm Chipset and Up to 6H Playback (Active Black)', 'Powered By Qualcomm CSR8635 Chipset : High Level functionality is provided to the boAt Rockerz 255 by the Advanced Qualcomm CSR 8635 Chipset providing the features of the latest Bluetooth 4.1 Version'),
(9, 'Cosmic Byte GS410 ', 'Cosmic', 'https://images-na.ssl-images-amazon.com/images/I/41dqZOR-GwL.jpg', 1000, '3.1', '1290 customer reviews', '1230+ questions answered', 'Headphones with Mic and for PS4, Xbox One, Laptop, PC, iPhone and Android Phones (Black/Blue)', 'Delivers clear sound and deep bass for real game, little smart in-line Remote Control for sound and mic Flexible microphone for exact positioning and mic with great sensitivity at picking up sounds, your partner can hear your words clearly'),
(10, 'JBL C50HI', 'JBL', 'https://images-na.ssl-images-amazon.com/images/I/617bCX7Y-aL._SL1500_.jpg', 500, '4.0', '500 customer reviews', '30+ questions answered', 'Headphones with Mic (Blue)', 'BL Signature Sound High Clean Bass One-Button Universal Remote with Mic Quick Launch Access to Google Assistant / Siri'),
(11, 'OPPO ENCO M31', 'OPPO', 'https://images-na.ssl-images-amazon.com/images/I/71McWxbxenL._SL1500_.jpg', 2000, '2.5', '340+ customer reviews', '120+ questions answered', 'Wireless in-Ear Bluetooth Earphones with Mic (Green)', '10-minute charge gives 180 minutes of music playback. A single charge provides 12 hours of music playback. AI-powered noise reduction during calls which blocks all the outside noise. Lightweight (22 g), skin friendly and comfortable liquid silicon neckband.'),
(12, 'Sketchfab Extra bass Headphones ', 'Sketchfab ', 'https://images-na.ssl-images-amazon.com/images/I/51Vn4BGk6gL._SL1100_.jpg', 500, '3.9', '100+ customer reviews', '50+ questions answered', 'Headphones Over The Ear Headset with Deep bass (White)', 'Headphones made for Electronic Dance Music(EDM) 30 mm closed, dynamic driver unit for powerful EXTRA BASS sound'),
(13, 'EKSA E900', 'EKSA ', 'https://images-na.ssl-images-amazon.com/images/I/71mmXKj-96L._SL1500_.jpg', 2000, '5.0', '1290 customer reviews', '120+ questions answered', 'Gaming Headset-Over Ear Headphones with Noise Canceling Mic, Detachable Headset Compatible with PS4, Xbox One, Nintendo Switch, PC', 'High-Quality 50mm Speakers: To bring you an immersive gaming experience in PUBG, Overwatch, Battlefield 1, Call of Duty, Destiny 2, Red Dead Redemption II and other games, E900 gaming headset has a 50 mm over-ear speakers produce clear treble and shocking bass. Also, E900 gaming headset can accurately identify the location of various sounds, whether it is a weak footstep or an enemy gunshot.'),
(14, 'Sony MDR-ZX110A', 'Sony', 'https://images-na.ssl-images-amazon.com/images/I/41BoLKMYjnL._SL1128_.jpg', 800, '4.2', '500 customer reviews', '1230+ questions answered', 'Stereo Headphones (White), without mic', '30mm dynamic driver unit for clear sound High energy neodymium magnets deliver powerful sound Slim, folding design for easy portability'),
(15, 'SKETCHFAB Extra Bass 2.0 ', 'SKETCHFAB ', 'https://images-na.ssl-images-amazon.com/images/I/71bf98%2BeIbL._SL1500_.jpg', 600, '3.5', '1305 customer reviews', '50+ questions answered', 'On-Ear Headphones with Tangle Free Cable, 3.5mm Jack, Headset with Mic for Phone Calls\nSKETCHFAB Extra Bass 2.0 On-Ear Headphones with Tangle Free Cable, 3.5mm Jack, Headset with Mic for Phone Calls (Metal Black)', 'Aluminium fascia for punchy bass\nHeadphones made for Electronic Dance Music(EDM)\n30 mm closed, dynamic driver unit for powerful EXTRA BASS sound\nCushioned ear pads for long-wearing comfort; Cord length : 1.2 m'),
(16, 'Infinity (JBL) Glide 120 ', 'JBL', 'https://images-na.ssl-images-amazon.com/images/I/619OijH9HnL._SL1500_.jpg', 1200, '3.9', '1500 customer reviews', '120+ questions answered', 'Metal in-Ear Wireless Flex Neckband with Bluetooth 5.0 and IPX5 Sweatproof (Black and Red)', 'Premium Metal Earbud\nFlexsoft Neckband Seamless Connectivity with Bluetooth V5.0'),
(17, 'EKSA E3000 Wired Gaming Headset ', 'ESKA', 'https://images-na.ssl-images-amazon.com/images/I/71C3pth8egL._SL1200_.jpg', 2200, '3.7', '1305 customer reviews', '320+ questions answered', 'Gaming Headset with Stereo Surround Sound, Gaming Chat Headphones with Noise Cancelling Mic, LED Light, Over-Ear Headphones with for Mobile', 'Sound for games: EKSA game headset has a 50mm neodymium driver. Professional tuners fine tune the cavity, three-dimensional sound effect, high and low frequency smooth strong, real restore all kinds of sounds in the game. The upgraded game headset gives you a higher sense of hearing, so you can hear every detail, whether it\'s the sound of footsteps, friction across the grass or gunshots of the enemy.'),
(18, 'boAt BassHeads 100 ', 'boAt', 'https://images-na.ssl-images-amazon.com/images/I/61l%2B14s5QVL._SL1500_.jpg', 400, '4.0', '1290 customer reviews', '20+ questions answered', 'Wired Earphones with Super Extra Bass, in-line Mic, Hawk Inspired Design and Perfect Length Cable (Furious Red)', '1 year warranty from the date of purchase, you can claim your warranty at support.boat-lifestyle.com. For product related queries please reach out to us at +912249461882 or info@imaginemarketingindia.com.'),
(19, 'Boult Audio BassBuds X1 ', 'boAt', 'https://images-na.ssl-images-amazon.com/images/I/51cMtuIw27L._SL1100_.jpg', 400, '3.5', '500 customer reviews', '1230+ questions answered', 'in-Ear Wired Earphones with Mic and 10mm Powerful Driver for Extra Bass and HD Sound', 'Ear fins for Sport Fit: Ear loop hold your buds in ear stably (colour of the ear loops may vary), perfectly fit for running, climbing, hiking, cycling etc'),
(20, 'Mivi Collar Wireless Bluetooth 5.0', 'MIVI', 'https://images-na.ssl-images-amazon.com/images/I/61gmUIuS01L._SL1500_.jpg', 1400, '3.2', '340+ customer reviews', '30+ questions answered', 'Neckband Earphones with Mic. Bluetooth Headset Wireless with Stereo Sound, Booming Bass, Long Battery Life, Voice', 'Immersive Sound: With powerful bass and a treble with balanced highs and lows, immerse yourself in the true-to-life HD sound that intensifies your music experience with these neck band bluetooth earphones'),
(21, 'JBL Tune 110 ', 'JBL', 'https://images-na.ssl-images-amazon.com/images/I/71G7IeoiZhL._SL1500_.jpg', 700, '3.7', '100+ customer reviews', '120+ questions answered', 'JBL Tune 110 in-Ear Headphones with Mic (Blue)', 'The tangle-free flat cable is lightweight and features user-friendly controls for easy functioning and ensures better longevity'),
(22, 'JBL C200SI', 'JBL', 'https://images-na.ssl-images-amazon.com/images/I/61BEBOFwNFL._SL1500_.jpg', 890, '4.0', '1290 customer reviews', '50+ questions answered', 'Super Deep Bass in-Ear Premium Headphones with Mic (Gun Metal)', 'JBL Signature Sound True Powerful Bass One-Button Universal Remote with Mic Quick Launch Access to Google Assistant / Siri Noise Cancelling Microphone'),
(23, 'JBL C150Si', 'JBL', 'https://images-na.ssl-images-amazon.com/images/I/21RC7wka-hL.jpg', 670, '3.5', '1500 customer reviews', '1230+ questions answered', 'C150Si in the ear Signature Sound Stereo wired Headset(BLACK)', 'This product has been professionally inspected and tested to be fully functional by the Sellers. Product may be packed in a non-branded box. Accessories may not be original but have been tested to be compatible and fully functional. '),
(24, 'JBL T205BT', 'JBL', 'https://images-na.ssl-images-amazon.com/images/I/61OUdUiPRyL._SL1500_.jpg', 170, '3.9', '1305 customer reviews', '320+ questions answered', 'Bass Wireless Metal Earbud Headphones with Mic (Black)', 'JBL Pure Bass sound- Experience superior JBL sound with powerful bass that truly packs a punch 6-hour battery life - Enjoy your music and take calls for 6 hours'),
(25, 'JBL T460BT', 'JBL', 'https://images-na.ssl-images-amazon.com/images/I/71ynIMjwgwL._SL1500_.jpg', 3000, '3.7', '1290 customer reviews', '20+ questions answered', 'Extra Bass Wireless On-Ear Headphones with 11 Hours Playtime & Mic (Black)', 'Superior listening experience with JBL Pure Bass sound Wireless Bluetooth Streaming 11 hours of playtime under optimum audio settings'),
(26, 'JBL C100SI', 'JBL', 'https://images-na.ssl-images-amazon.com/images/I/61nzma5BdZL._SL1500_.jpg', 700, '4.1', '500 customer reviews', '1230+ questions answered', 'Headphones with Mic (White)', 'Extra Deep Bass ; Cable length: 1.2M ; Frequency range: 20-20kHz ; Impedance: 16?3.2 ohms ; Driver sensitivity: 100?3dBSPL, 1mW ; Maximum SPL: 5mW One-Button Universal Remote with Mic'),
(27, 'JBL C105TWS', 'JBL', 'https://images-na.ssl-images-amazon.com/images/I/71XmaVatm2L._SL1500_.jpg', 4000, '3.5', '340+ customer reviews', '30+ questions answered', ' True Wireless in-Ear Headphones with 17 Hours Playtime (5 Hrs on Earbuds, 12 Hrs in Case), Quick Charging & Bluetooth 5.0 (Black)', '17 Hours of Combined Playback Time (5 Hours on Earbuds & 12 Hours on Charging Case) Hands-free Stereo Calling with Crystal clear audio Auto Sync function - Pair only the Right earbud '),
(28, 'boAt Bassheads 242 ', 'boAt', 'https://images-na.ssl-images-amazon.com/images/I/61uuW6we1jL._SL1500_.jpg', 550, '3.9', '100+ customer reviews', '120+ questions answered', 'Wired Sports Earphones with HD Sound, 10 mm Dynamic Drivers, IPX 4 Sweat and Water Resistance, Superior Coated Cable & in-Line Mic', '1 year warranty from the date of purchase, you can claim your warranty at support.boat-lifestyle.com. For product related queries please reach out to us at +912249461882 or info@imaginemarketingindia.com.'),
(29, 'boAt BassHeads 162', 'boAt', 'https://images-na.ssl-images-amazon.com/images/I/61nerorzssL._SL1500_.jpg', 500, '3.7', '1290 customer reviews', '50+ questions answered', 'HD Sound, in-line mic, Dual Tone Secure Braided Cable & 3.5mm Angled Jack Wired Earphones (Blue)', 'Premium audio with 1mm drivers - break away from old habits through hd sound via 1mm drivers, crystal clear sound to your ears helps you execute what you have visualized perfectly,enhance your senses with the BassHeads 162'),
(30, 'boAt Rockerz 255 ', 'boAt', 'https://images-na.ssl-images-amazon.com/images/I/618aOE6K9xL._SL1500_.jpg', 1600, '4.9', '340+ customer reviews', '1230+ questions answered', 'Wireless Headset with ASAP Charge Technology, Bluetooth V5.0, Qualcomm Chipset, Super Extra Bass, IPX5 Sweat and Water Resistance ', 'boAt Rockerz 255 while being lightweight in design pumps out your favourite tunes with powerful HD sound and deep boosted bass'),
(31, 'Sony MDR-EX155AP ', 'sony', 'https://images-na.ssl-images-amazon.com/images/I/61eqJoa4MBL._SL1296_.jpg', 100, '2.5', '1200+ customer reviews', '20+ questions answered', 'Wired in-Ear Headphones with Tangle Free Cable, 3.5mm Jack, Headset with Mic for Phone Calls and 1 Year Warranty - (Black)', 'In-line mic for hands-free calling\n9 mm neodymium drivers for powerful, balanced sound, Connectivity: Wired\nLightweight for ultimate music mobility\nComfortable, secure-fitting silicone earbuds for long listening hours\nMatch your style with vivid colours'),
(32, 'Sony WI-SP510', 'Sony', 'https://images-na.ssl-images-amazon.com/images/I/615vQUBS4BL._SL1500_.jpg', 5000, '2.9', '1500 customer reviews', '320+ questions answered', 'Sports Extra Bass in-Ear Headphones with 15 hrs Battery Life, Quick Charge, Magnetic Earbuds, Bluetooth Ver 5.0, Headset with Mic for Phone Calls - Blue', 'Sports Headphones : Wireless Sports Extra Bass neckband headphones for casual and daily usage\nIPX5 Ratings : Splash-proof, sweat-proof and washable with an IPX5 rating\nLong Battery Life : Up to 15 Hours of battery life for long listening hours with 10 minutes quick charge for 1 hour play back'),
(33, 'Sony MDR-XB450AP', 'Sony', 'https://images-na.ssl-images-amazon.com/images/I/61t0HecIZbL._SL1250_.jpg', 2500, '3.7', '1305 customer reviews', '20+ questions answered', 'Extra Bass On-Ear Headphones with Tangle Free Cable, 3.5mm Jack, Headset with Mic for Phone Calls and 1 Year Warranty - (Black)', 'Beat Response Control for tight bass and swivel design makes travel easy'),
(34, 'Sony MDR-XB550AP', 'Sony', 'https://images-na.ssl-images-amazon.com/images/I/61F5P4sZD2L._SL1325_.jpg', 3200, '4.0', '1290 customer reviews', '1230+ questions answered', 'Wired Extra Bass On-Ear Headphones with Tangle Free Cable, 3.5mm Jack, Headset with Mic for Phone Calls and 1 Year Warranty - (Blue)', 'Headphones made for electronic dance Music ( EDM); Toll free no. 1800 103 7799\nIn-line mic for hands free calling\n30mm dynamic driver unit for powerful extra bass sound'),
(35, 'Sony MDR-XB550AP', 'Sony', 'https://images-na.ssl-images-amazon.com/images/I/61Z80AmjeBL._SL1316_.jpg', 3300, '4.5', '500 customer reviews', '30+ questions answered', 'Extra Bass On-Ear Headphones with Tangle Free Cable, 3.5mm Jack, Headset with Mic for Phone Calls and 1 Year Warranty - (Black)', 'Headphones made for electronic dance Music ( EDM); Toll free no. 1800 103 7799 In-line mic for hands free calling 30mm dynamic driver unit for powerful extra bass sound'),
(36, 'PTron Bassbuds Pro', 'pTron', 'https://images-na.ssl-images-amazon.com/images/I/51e6-HNrAeL._SL1100_.jpg', 1400, '3.9', '340+ customer reviews', '120+ questions answered', 'in-Ear True Wireless Bluetooth Headphones (TWS) with Mic - (Black)', 'Ultra-mini Size Ergonomic Design; Lightweight; 4 Hours of Talk-time; 3 Hours Playback Time (Earbuds) & Extended Playtime up to 12 Hours using Charging Case; LCD Display Compact Charging Case'),
(37, 'pTron Bassbuds Lite V2 ', 'pTron', 'https://images-na.ssl-images-amazon.com/images/I/51KM0EyQKNL._SL1100_.jpg', 1200, '4.7', '100+ customer reviews', '50+ questions answered', 'V2 in-Ear True Wireless Bluetooth Headphones (TWS) with Mic - (Black)', 'Bluetooth 5.0; 6 Hours Playback Time (Earbuds) & Extended Playtime up to 20 Hours using Charging Case; 5 Hours of Talk-time; 1.5 Hours Charging Time; 100 Hours of Standby-time'),
(38, 'pTron HBE5', 'pTron', 'https://images-na.ssl-images-amazon.com/images/I/51CMlS4J-3L._SL1100_.jpg', 300, '4.0', '500 customer reviews', '20+ questions answered', '(High Bass Earphones) in-Ear Stereo Wired Headphones with Mic - (White and Blue)', '6 months manufacturer warranty, customer care number: 040-67138888 Erogonomic design; passive noise cancellation; 10mm dynamic drivers; Lightweight'),
(39, 'pTron Bassbuds Urban in-Ear True', 'pTron', 'https://images-na.ssl-images-amazon.com/images/I/51QuFrgAzfL._SL1100_.jpg', 1700, '3.5', '1500 customer reviews', '320+ questions answered', 'True Wireless Stereo Bluetooth Headphones (TWS) with Mic - (Brown)', 'Premium, Lightweight & Ergonomic Earbuds; 4 Hours Talk-time; 5 Hours Playback Time (Earbuds) & Extra Playtime of 10 Hours using Charging Case; Binaural Call Function\nBluetooth 5.0; 10m Seamless Connectivity; Stereo/Mono Use Earbuds; 50*2 mAh Battery; 1.5 Hours Charging Time; 400mAh Magnetic Charging Case; 500 Hours Standby Time; Micro USB Charging (cable provided)'),
(40, 'PTron Sportster', 'pTron', 'https://images-na.ssl-images-amazon.com/images/I/51DAblgfI1L._SL1000_.jpg', 500, '2.9', '1305 customer reviews', '20+ questions answered', ' Wireless Bluetooth Headset (Red, Black, in Ear)', 'This Certified Refurbished product is tested to work and look like new with minimal to no signs of wear & tear; the product comes with relevant accessories and is backed by a minimum six month supplier backed warranty; box may be generic');

-- --------------------------------------------------------

--
-- Table structure for table `laptopdataset`
--

CREATE TABLE `laptopdataset` (
  `id` int(11) NOT NULL,
  `Product_name` varchar(41) DEFAULT NULL,
  `by_info` varchar(9) DEFAULT NULL,
  `Product_img` varchar(132) DEFAULT NULL,
  `Product_price` int(6) DEFAULT NULL,
  `rating` decimal(2,1) DEFAULT NULL,
  `total_review` varchar(23) DEFAULT NULL,
  `ans_ask` varchar(25) DEFAULT NULL,
  `prod_des` varchar(504) DEFAULT NULL,
  `feature` varchar(1087) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `laptopdataset`
--

INSERT INTO `laptopdataset` (`id`, `Product_name`, `by_info`, `Product_img`, `Product_price`, `rating`, `total_review`, `ans_ask`, `prod_des`, `feature`) VALUES
(1, 'Acer Aspire 5 A514-52G 14-inch Laptop', 'Acer', 'https://images-na.ssl-images-amazon.com/images/I/51neuGuk1ML.jpg', 57399, '4.2', '300 customer reviews', '200+ questions answered ', '10th Gen Intel Core i5-10210U processor , 4GB RAM, 512GB SSD , Window 10 Home 64Bit, Integrated Graphics, Silver Colour', '1.60 GHzGHz Intel Core i5-10210U 10th Gen processor, 4GB DDR4 RAM, 512GB SSD, 14-inch screen, NVIDIA GeForce MX350 Graphics, Window 10 Home 64Bit operating system,11 hours battery life, 1.6kg laptop,RAM : 8 GB of DDR4 memory, upgradable up to 12 GB of DDR4 system memory using a single soDIMM module | OS : Windows 10 Home 64-bit,Battery life up to 11 hours | Thickness : 17.9 mm | Weight : 1.6Kg, Processor : 10th Gen Intel Core i5-10210U processor with max turbo speed of 4.20 GHz | Storage : SSD: 512 GB, PCIe Gen3 8 Gb/s up to 2 lanes, NVMe and supports, upto 2 TB HDD,2.5-inch 5400 RPM, Display : 14.0\" display with IPS (In-Plane Switching) technology, Full HD 1920 x 1080, high-brightness Acer ComfyView LED-backlit TFT LCD | Graphics : NVIDIA GeForce MX350'),
(2, 'ASUS ZenBook UX430UA-GV573T Intel Core i5', 'Asus', 'https://images-na.ssl-images-amazon.com/images/I/810QsxZTTEL._SX679_.jpg', 56450, '4.0', '142 customer reviews', '100++ questions answered ', '8th Gen 14-inch FHD Thin and Light Laptop (8GB RAM, 256GB SSD, Windows 10, Integrated Graphics, 1.30 kg, Gold Edition', 'Processor: 8th Gen Intel Core i5-8250U processor, base speed 1.6GHz, 4 Cores, with Turbo boost up to 3.4GHz and 6MB cache. Memory & Storage: 8GB 2133MHz LPDDR3 on board RAM with| Storage: 256GB SATA3M.2 SSD, Graphics: Intel Integrated UHD Graphics 620. Operating System: Pre-loaded Windows 10 Home with lifetime validity. Design & battery: 7.18mm Thin Side Bezels | Metal Chasis| 15.9mm Thin| Laptop weight 1.30 Kg |50WHr 3-cell Li-polymer battery with | upto 9 Hours* Battery backup, Keyboard and Touchpad: Full-size backlit keys, with 1.4mm key travel, Precision Touchpad (PTP) technology supports up to four-finger smart gestures, I/O Ports: 1x USB 2.0, 1x USB 3.1 Type A (Gen1), 1x USB 3.1 Type C (Gen 1) support Display, 1x Combo Audio Jack, 1x micro HDMI, 1 x SD card reader. Display: 14? LED-backlit FHD (1920 x 1080). 16:9 slim-bezel NanoEdge Anti-Glare Display, 80% screen-to-body ratio, 100% sRGB color gamut, 178? wide-view technology. Other: HD web camera| Wi-Fi 5 (802.11ac) 2*2 | Bluetooth 4.1 (Dual band) | Audio Certified by Harman/Kardon.'),
(3, 'ASUS VivoBook 15 Intel Core', 'Asus', 'https://images-na.ssl-images-amazon.com/images/I/81bRmH5QmqL._SX679_.jpg', 52990, '3.5', '5000 customer reviews', '1456 questions answered ', '8th Gen 15.6-inch FHD, Compact and Light Laptop, 8GB RAM/256GB NVMe SSD, Windows 10, MS Office 2019, Integrated Graphics, FP Reader, Transparent Silver,1.9 kg', 'Processor: 8th Gen Intel Core i5-8265U Processor, 1.6 GHz (6MB Cache, up to 3.9 GHz, 4 Cores, 8 Threads). Memory & Storage: 8GB (2x 4GB) DDR4 2400MHz Dual-Channel RAM, upgradeable up to 12GB using 1x SO, DIMM Slot with | Storage: 256GB M.2 NVMe PCIe 3.0 SSD + empty 1x 2.5-inch SATA slot for storage expansion. Graphics: Integrated Intel UHD Graphics 620 Display: 39.62cm(15.6) (16:9) LED-backlit FHD (1920x1080) 60Hz Anti-Glare Panel with 45% NTSC. Software Included: Pre-installed MS Office Home and Student 2019 | Operating System: Pre-loaded Windows 10 Home with lifetime validity. Design & battery: NanoEdge Bezels | 22.9mm Thin body | Laptop weight 1.90 kg | Thin and Light Laptop | 32WHrs, Lithium-ion, 2-Cell battery. Keyboard: Full-size chiclet keyboard with Num-key | 1.4mm key travel distance I/O ports: 1x 3.5mm Combo Audio Jack, 1x HDMI 1.4, 2x USB 2.0 Type-A, 1x USB 3.2 Gen 1 Type-A, 1x USB 3.2 Gen 1 Type-C, 1x Micro SD card reader. Other: Fingerprint reader | VGA Web Camera (Fixed type) | Wi-Fi 5 (802.11ac) 2*2 | Bluetooth 4.2 | Built-in speaker | Built-in microphone.'),
(4, 'Microsoft Surface Pro 7 VDV-00015', 'Microsoft', 'https://rukminim1.flixcart.com/image/416/416/k6b2snk0/computer/x/p/m/microsoft-na-original-imafzsfzndyyemuy.jpeg?q=70', 90990, '4.2', '500+ customer reviews', '190+ questions answered ', '2.3 inch Touchscreen 2-in-1 Laptop, 10th Gen Intel Core i5, 8GB, 128GB SSD, Windows 10 Home, Intel Iris Plus Graphics ,Platinum', 'Processor: 10th Generation Intel Core i5-1035G4 Processor, Quad-Core, 1.10 Ghz. Operating System: Pre-loaded Windows 10 Home with lifetime validity. Display: 12.3 inch 2736 x 1824 Pixelsense display | Touchscreen enabled. Memory & Storage : 8GB LPDDR4x RAM with Intel Iris Plus Graphics | Storage: 128GB SSD. Design & Battery: Touchscreen 2-in-1 laptop | Thin and light design | Laptop weight: 0.77 kg | Average battery life = 10.5 hours. Preinstalled software: Windows 10 Home with lifetime validity, Microsoft Office 365 30-day trial | In the box: Surface Pro 7, Power Supply, Quick Start Guide, Safety and warranty documents. Ports & CD drive: 2 USB 3.0, 1 audio-out port, 1 MicroSD card reader | Without CD drive. In the box details : Surface Pro 7, Power Supply, Quick Start Guide, Safety and warranty documents (Mouse, Stylus Pen,Typecover are not Included ? to be bought separately).'),
(5, 'Acer Aspire 7 Core i5 9th Gen', 'Acer', 'https://rukminim1.flixcart.com/image/416/416/kamtsi80/computer/m/8/y/acer-na-gaming-laptop-original-imafs5prytwgrcyf.jpeg?q=70', 58990, '4.2', '4923 customer reviews', '111+ questions answered ', 'Windows 10, 2.4 Ghz, 8 GB DDR4 RAM, 4 GB Graphics, 15.6 inches (39.62 cm), 1920 x 1080 pixels, 2.15 Kg, 23 mm thick, 512 GB SSD, Li-Ion3 Cell,  Operating System Type : 64-bit, Display Details, Display Size : 15.6 Inches (39.62 cm), Display Resolution: 1920 x 1080 Pixels, Pixel Density : 141 ppi, Display Type : LED. Display Features : Full HD Acer ComfyView LED-backlit TFT LCD Display with IPS (In-Plane Switching) Technology.', 'Storage : 512 GB SSD.<br>Processor: Intel Core i5-9300H (9th Gen) Processor.<br>Display: 15.6\" (39.62 cm) display, 1920 x 1080 px.<br>Ram: 8 GB DDR4 RAM.<br>Secondary Camrearfacing: No. Microphone Type: Digital Microphone.<br>Webcam: Yes. Speakers	Dual Speakers.<br>Video Recording: 720p HD.<br>Clockspeed: 2.4 Ghz. Graphic Processor: NVIDIA GeForce GTX 1650. <br>Graphics Memory: 4GB. Dimensions: 363 x 254 x 23  mm.<br>OS Type: 64-bit , Weight: 2.15 Kg, Windows 10 Home BasicModel	A715-75G (NH.Q87SI.001).<br>Sales Package: Laptop, Battery, AC Adapter, User Guide. <br>Warranty: 1 Year, Lockport: Yes.'),
(6, 'Dell G3 Core i5 10th Gen', 'Dell', 'https://rukminim1.flixcart.com/image/416/416/kcc9q4w0/computer/w/h/k/dell-original-imafthm5dfhccawe.jpeg?q=70', 73990, '4.4', '5000+ customers reviews', '3100 questions answered', 'The Dell G3 gaming laptop is a powerful machine that features the 10th generation Intel Core i5 processor and an Nvidia GeForce GTX 1650 4 GB GDDR6 graphics card that enhances your gaming experience. The laptop features the Game Shift Technology that helps you to boost your machine?s performance at the simple press of the F7 key. The laptop comes with stereo speakers and produces an immersive sound that helps you enjoy your games. The laptop is elegantly crafted and comes with a 38.1 cm FHD display.', 'NVIDIA Geforce GTX 1650 for Desktop Level Performance, 15.6 inch Full HD LED Backlit Anti-glare IPS Display, Light Laptop without Optical Disk Drive, Pre-installed Genuine Windows 10 OS.'),
(7, 'Dell Vostro Core i3 10th Gen', 'Dell', 'https://rukminim1.flixcart.com/image/416/416/kctf0cw0/computer/s/q/k/dell-original-imaftuvzyhyfmvzy.jpeg?q=70', 35990, '3.8', '986 customer reviews', '223+ questions answered ', 'Bring home the Dell Vostro and enjoy the smooth multitasking and the computing power of its 10th Gen Intel Core processor. Store all of your files in its 1 TB HDD that provides ample space for all your favourite games, music and movies, among other things. The Trusted Platform Model 2.0 featured in this laptop ensures that all your data remains secure even if the hard drive were to be stolen and installed in another computer.', 'Processor Name : Core i3, Processor Generation : 10th Gen, SSD : No. 4 GB RAM, RAM and Type 1TB & DDR4. Processor Variant : 1005G, Clock Speed : 1.2 GHz with Turbo Boost Upto 3.4 GHz. Memory Slots : 2. Expandable Memory : Upto 16 GB | RAM Frequency : 2666 MHz, Cache : 4 MB, RPM : 5400. Graphic Processor : Intel Integrated UHD : Number of Cores : 2 & 64 bit OS, Windows 10 Home.'),
(8, 'Lenovo Legion 7 Core i7 10th Gen', 'Lenovo', 'https://rukminim1.flixcart.com/image/416/416/kdyus280/computer/t/w/3/lenovo-na-gaming-laptop-original-imafuqwpncg3bzhx.jpeg?q=70', 349890, '4.5', '1000+ customer reviews', '345+ questions answered ', '15.6 inch Full HD LED Backlit Anti-glare WVA Display (16:9 Aspect Ratio, 500 nits Brightness, 144 Hz Refresh Rate, 100% Adobe RGB Gamut, HDR400, Dolby Vision, G-Sync Support).', 'Graphic Memory : GDDR6, Dedicated Graphic Memory Capacity : 8 GB, Processor Brand : Intel | Processor : Core i7 | Processor Generation : 10th Gen, SSD : 1 TB , RAM : 16 GB & RAM Type : DDR4.Processor Variant : 10875H, Chipset : Intel HM470, Clock Speed : 2.3 GHz with Turbo Boost Upto 5.1 GHz, Memory Slots : 2 Slots | Expandable Memory : Upto 32 GB, RAM Frequency : 3200 MHz. Graphic Processor : NVIDIA Geforce RTX 2080 Super Max-Q, 8 Cores ,Operating System, OS Architecture : 64 bit OS, Windows 10 Home. Mic In : Yes, RJ45 : Yes, SB Port : 1 x USB 3.1 ((1st Gen) (Always On)), 2 x USB 3.1 (2nd Gen), 1 x USB 3.1 Type C ((1st Gen) (with the Function of Display 1.4)), 1 x USB 3.1 Type C (2nd Gen) / Thunderbolt 3 (with the Function of DP 1.4), HDMI Port : 1 x HDMI Port (v2.0)'),
(9, 'HP 14 10th Gen Intel Core i5', 'HP', 'https://rukminim1.flixcart.com/image/416/416/kb89ea80/computer/n/m/5/hp-na-thin-and-light-laptop-original-imafsmmghwzzu3mq.jpeg?q=70', 63990, '4.7', '89 customer reviews', '89 questions answered ', 'The HP 14s is a slim, stylish, and portable laptop that comes with a built-in 4G LTE module to let you enjoy internet connectivity wherever you take it. This laptop is powered by a 10th Gen Intel Core processor for smooth computing, a 3-cell Lithium-ion Prismatic Battery for long hours of work/entertainment, and a Full HD, Micro-edge Display for crystal-clear visuals.', 'Built-in 4G LTE (SIM card required; not included) allows you to stay connected, always - with or without Wi-Fi. Processor: 10th Gen Intel Core i5-1035G1 Processor (1.1 GHz base frequency, up to 3.7 GHz with Intel. Turbo Boost Technology, 6 MB cache, 4 cores). Operating System: Pre-loaded Windows 10 Home with lifetime validity. Display: 15.6-inch Full HD (1920 x 1080) Brightview Micro-Edge WLED Display, 250 nits. Memory & Storage: 8GB (1x8GB) DDR4 RAM, upgradable to 16GB | Hybrid Storage: 256GB M.2 SSD + 1TB 5400 RPM HDD. Design & Battery: Thin & Light Design, Weight: 1.5 kg | Up to 9 Hours of battery backup, 3-cell, 70 Wh Li-ion battery, HP Fast Charge (50% in 45 mins). Preinstalled Software: Microsoft Office Home & Student 2019 | In the box: Laptop with included battery and charger. Ports: 1 USB 3.1 Type-C, 2 USB 3.0 Type-A, 1 HDMI | Without CD-drive. Other features: 4G LTE, M.2 Slot, Narrow Bezel Design, HD Webcam with built-in Digital Microphone, Dual Channel Wifi (2x2), Bluetooth 5.0.'),
(10, 'Lenovo Ideapad Slim 3i 10th Gen', 'Lenovo', 'https://rukminim1.flixcart.com/image/416/416/kd4uj680/computer/w/u/2/lenovo-original-imafu3htrvgdthrs.jpeg?q=70', 45990, '3.0', '3000 customer reviews', '2001 questions answered ', 'Stylish & Portable Thin and Light Laptop, 14 inch Full HD LED Backlit Anti-glare TN Display (16:9 Aspect Ratio, 220 nits Brightness). Light Laptop without Optical Disk Drive', 'Processor: 10th Gen Intel Core i5-1035G1 processor, 1.0 Ghz base speed, 3.6 Ghz max speed, 4 Cores, 6Mb Smart Cache Operating System: Pre-loaded Windows 10 Home withlifetime validity Display: 15.6-inch screen with (1920x1080) full hd display | Anti glare technologyMemory and Storage: 8 GB RAM | Storage 1 TB HDD Design and battery: 1.85Kg thin and light laptop | Battery life : Upto 5 Hours This genuine Lenovo Laptop comes with 1 year onsite domestic warranty from Lenovo covering manufacturing defects and not covering physical damage. For more details, see Warranty section. Pre-Installed Software: Microsoft Office Home and Student 2019 | Inside the box: Laptop, Charger, User Manual Ports and Drive: 2 x USB 3.1 (Gen 1), USB 2.0, HDMI 1.4b, SD card reader.'),
(11, 'HP Pavilion Gaming Ryzen 5 Quad Core', 'HP', 'https://rukminim1.flixcart.com/image/416/416/kcm9t3k0/computer/q/x/r/hp-na-gaming-laptop-original-imaftpesbvfxgw9t.jpeg?q=70', 54990, '4.2', '986 customer reviews', '223+ questions answered ', 'If you?re looking for a sleek yet powerful laptop that is perfect for, both, work and play, then you must buy the HP Pavilion Gaming 15 Laptop. Whether it\'s playing games or multitasking between applications, this laptop offers a smooth and lag-free performance as it features an AMD Ryzen 5-3550H processor and 8 GB of DDR4 RAM. Enjoy an immersive viewing experience, thanks to the 39.62-cm (15.6) Full HD display and dual speakers as well as B&O Audio.', 'Processor: AMD ryzen 5-3550H Quad-core processor (2.1 GHz base clock speed, up to 3.7 GHz max boost clock speed, 6 MB cache, 4 cores). Graphics & Keyboard: NVIDIA GeForce GTX 1050 (3 GB GDDR5 dedicated. Graphics | Full size ultra-violet backlit Keyboard with numeric keypad. Operating System: Pre-loaded Windows 10 Home with lifetime validity. Display: 15.6-inch Full HD (1920 x 1080) anti-glare IPS display | 60Hz. refresh rate | 250 Nits Brightness. Memory and storage: 8GB DDR4 RAM | Storage: 1 TB 7200 rpm SATA HDD + 256 GB PCIe NVMe M.2 SSD. Design and battery: Laptop weight: 1.98 Kg | Micro-edge bezel Gaming. Laptop | 3-cell, 52.5 Wh Li-ion Fast Charge Battery, gets 0 to 50% within 45 minutes. Preinstalled Software: Windows 10 Home | In the box: Laptop with included battery and charger. Ports and CD Drive: 1 USB 3.1 Type A, 1 USB 2.0 Type A, 1 USB 3.1 Type-C, HDMI, Ethernet, 1 Headphone & Microphone Combo| No Optical Drive. Cooling: Heat pipe based design, dual fans thermal system, full size rear vent thermal vents.'),
(12, 'ASUS ZenBook 14', 'Asus', 'https://images-na.ssl-images-amazon.com/images/I/71lT-zWEYkL._SL1500_.jpg', 99990, '3.0', '290 customer reviews', '130+ questions answered ', '10th Gen Intel Core i7-1065G7 Processor, 1.3 GHz (8MB Cache, up to 3.9 GHz, 4 Cores, 8 Threads) Memory & Storage: 16GB| Storage: 512GB  Graphics: Integrated Intel Iris Plus ', 'Display: 14-inch LED-backlit Full HD (1920 x 1080), 16:9, anti-glare Panel, 300nits brightness, 100% sRGB, 4-sided NanoEdge design with up to 90% screen-to-body ratio, IPS-level wide-view technologySoftware Included: Pre-installed MS Office Home and Student 2019 | Operating System: Pre-loaded Windows 10 Home with lifetime validity\nDesign & battery: Up to 2.5mm-thin bezel | Metallic Chassis |Thin and Light Laptop | Laptop weight: 1.17 kg | 67WHrs, 4-cell, lithium-polymer battery | Up to 22 hours battery life ;Note: Battery life depends on conditions of usage\nKeyboard: Edge-to-edge design, full-size backlit, with 1.4mm key travel | Touchpad : Glass-covered, Precision TouchpadwithNumberPad2.0,i.e.,integratedLEDilluminatednumeric keypad'),
(13, 'Dell Inspiron 3595', 'Dell', 'https://images-na.ssl-images-amazon.com/images/I/610funGG-eL._SL1000_.jpg', 28900, '2.0', '500 customer reviews', '239+ questions answered ', 'AMD A9-9425 processor, Clocks between 3.1 to 3.7 Ghz 4GB DDR4 RAM 1TB 5400 rpm hard drive', 'AMD A9-9425 processor, Clocks between 3.1 to 3.7 Ghz 4GB DDR4 RAM 1TB 5400 rpm hard drive 15.6-inch HD screen Windows 10 Home + MS Office Home & Student Radeon R5 Integrated Graphics Graphics 1 Year hardware Warranty'),
(14, 'ASUS VivoBook 14 ', 'Asus', 'https://images-na.ssl-images-amazon.com/images/I/81WdA58yuaL._SL1500_.jpg', 24700, '3.9', '540 customer reviews', '103+ questions answered ', 'Intel Quad Core Pentium Silver N5030 14-inch FHD Compact and Light Laptop (4GB RAM/1TB HDD/Windows 10/Integrated Graphics/Transparent Silver/1.60 kg), X409MA-EK219T', 'Intel Pentium Silver N5030 Processor, 1.10 GHz (4MB Cache, up to 3.1 GHz, 4 Cores, 4 Threads) Memory & Storage: 4GB DDR4 2400MHz RAM | Storage: 1TB SATA 5400RPM 2.5-inch HDD + empty 1x M.2 Slot for SSD storage expansion.  Graphics: Integrated Intel UHD Graphics 605 Display: 14.0-inch (16:9) LED-backlit FHD (1920x1080) 60Hz Anti-Glare Panel with 45% NTSC Operating System: Pre-loaded Windows 10 Home with lifetime validity  Design & battery: NanoEdge Bezels | 23.1mm Thin body | Laptop weight 1.60 kg | Thin and Light Laptop | 32WHrs, Lithium-ion, 2-Cell battery Keyboard: Full-size chiclet keyboard | 1.4mm key travel distance'),
(15, 'Lenovo Ideapad Slim', 'Lenevo', 'https://images-na.ssl-images-amazon.com/images/I/61Dw5Z8LzJL._SL1000_.jpg', 50990, '4.1', '1000 customer reviews', '238+ questions answered ', ' 3i Intel Core i5 10th Gen 15.6 FHD Thin and Light Laptop (8GB/1TB+256GB SSD/Windows/Office/Platinum Grey/1.85Kg), 81WE004YIN', ' 10th Gen Intel Core i5-1035G1 processor, 1.0 Ghz base speed, 3.6 Ghz max speed, 4 Cores, 6Mb Smart CacheOperating System: Pre-loaded Windows 10 Home with lifetime validityDisplay: 15.6-inch screen with (1920x1080) full hd display | Anti glare technologyMemory and Storage: 8 GB RAM | Storage 1 TB HDD + 256 GB SSD  Design and battery: 1.85Kg thin and light laptop | Battery life : Upto 5 HoursThis genuine Lenovo Laptop comes with 1 year onsite domestic warranty from Lenovo covering manufacturing defects andnotcoveringphysicaldamage.Formoredetails,seeWarranty sectionPre-Installed Software: Windows 10 Home, Office Home and Student 2019 | Inside the box: Laptop, Charger, User Manual'),
(16, 'Dell Inspiron 3493 ', 'Dell', 'https://images-na.ssl-images-amazon.com/images/I/5151M4yQlML._SL1000_.jpg', 34900, '5.0', '1200 customer reviews', '3456+ questions answered ', '14-inch HD Laptop (10th Gen i3-1005G1/4GB/1TB HDD/Win 10 + MS Office/Intel HD Graphics/Silver) D560193WIN9SE', '1.2 GHz Intel i3-1005g1 10th Gen processor 4GB DDR4 RAM 1TB 5400rpm hard drive 14-Inch screen, Intel HD Graphics NA GB Graphics Windows 10 operating system 7 hours battery life, 1.7kg laptop 10th Gen i3-1005g1'),
(17, 'Dell XPS 9570', 'Dell', 'https://images-na.ssl-images-amazon.com/images/I/81WRVvZuDvL._SL1500_.jpg', 255900, '5.0', '234 customer reviews', '234+ questions answered ', '15.6-inch UHD Laptop (8th Gen i9-8950HK/32GB/1TB SSD/Win 10 + MS Office/Integrated Graphics), Silver', '2.90 GHzGHz Intel i9-8950HK 8th Gen processor 32GB DDR4 RAM 1TB SSD 15.6-inch screen, NVIDIA 4GB 4GB Graphics  Windows 10 operating system 6 hours battery life, 2kg laptop  Processor detail'),
(18, 'HP Pavilion', 'HP', 'https://images-na.ssl-images-amazon.com/images/I/616YjhTcLXL._SL1080_.jpg', 98400, '3.0', '700 customer reviews', '765+ questions answered ', 'core i7 10th Gen 14 inch FHD Touchscreen Laptop with Alexa Built-in (16GB/1TB SSD/Windows 10/MS Office 2019/Finger Print Reader/Natural Silver/1.61kg), 14-dw0071tu', '1.3GHz Intel i7-1065G7 10th Gen processor 16GB DDR4 RAM 1TB SSD 14-inch screen, Intel Iris Plus Graphics  Windows 10 Home operating system 1.61kg laptop'),
(19, 'Lenovo Legion ', 'Lenevo', 'https://images-na.ssl-images-amazon.com/images/I/61p3lA4N3uL._SL1000_.jpg', 95990, '4.0', '750 customer reviews', '230+ questions answered ', ' 5i 10th Gen Intel Core i7 15.6 inch FHD Gaming Laptop (16GB/1TB HDD + 256 GB SSD/Windows/NVIDIA GTX 1650 Ti/Black/2.3Kg), 82AU00B9IN', 'Processor: 10th Generation Intel Core i7 10750H; Base speed: 2.6Ghz, Max Speed: 5.0Ghz, 6Cores, 12Threads, 12MB Smart Cache Operating System: Pre-loaded Windows 10 Home with lifetime validity Display: 15.6-inch screen with (1920X1080) full HD display | 250 nits | 120 Hz Refresh Rate Memory and Storage: 16 GB RAM | Storage 1 TB HDD + 256 GB SSD | NVIDIA GTX 1650 Ti 4GB Graphics Design and Battery: 2.5Kg Gaming laptop | Upto 8 Hours battery with polymer 80WH'),
(20, 'ASUS ROG Zephyrus G14', 'Asus', 'https://images-na.ssl-images-amazon.com/images/I/91TqO3o7yOL._SL1500_.jpg', 102000, '5.0', '1000 customer reviews', '100+ questions answered ', ' FHD, Ryzen 5 4600HS, GTX 1650Ti 4GB GDDR6 Graphics, Gaming Laptop (8GB/512GB SSD/MS Office 2019/Windows 10/Moonlight White/Anime Matrix/1.7 Kg), GA401II-BM131TS', 'Processor: AMD Ryzen 5 4600HS Processor, 3.0 GHz (8MB Cache, up to 4.0 GHz, 6 Cores, 12 Threads) Memory: 8GB DDR4 3200MHz onboard RAM, Upgradeable up to 24GB using 1x SO-DIMM Slot with | Storage: 512GB M.2 NVMe PCIe 3.0 SSD Graphics: Dedicated NVIDIA GeForce GTX 1650Ti GDDR6 4GB VRAM Display: 14-inch (16:9) Full HD (1920 x 1080), 300 nits Brightness, Anti-Glare IPS-level panel, 60Hz Refresh Rate, 100% sRGB, Pantone Validated, 85% screen-to-body ratio Software Included: Pre-installed MS Office Home and Student 2019 | Operating System: Pre-loaded Windows 10 Home (64bit) with lifetime validity'),
(21, 'HP Pavilion Gaming', 'HP', 'https://images-na.ssl-images-amazon.com/images/I/71VlaIUD10L._SL1500_.jpg', 76900, '4.5', '200 customer reviews', '700+ questions answered ', '15.6-inch FHD Gaming Laptop (Ryzen 5-4600H/8GB/1TB HDD + 256GB SSD/Windows 10/144Hz/NVIDIA GTX 1650ti 4GB/Shadow Black), 15-ec1050AX', '3.0GHz AMD ryzen5-4600h 4th Gen processor 8GB DDR4 RAM 1TB 7200rpm hard drive + 256GB SSD 15.6-Inch screen, nvidia GeForce GTX 1650 Ti 4GB Graphics Windows 10 Home operating system 8 hours battery life, 1.98kg laptop'),
(22, 'Dell XPS 9370', 'Dell', 'https://images-na.ssl-images-amazon.com/images/I/61T2HPeGebL._SL1280_.jpg', 156900, '5.0', '100 customer reviews', '800+ questions answered ', '13.3-inch Laptop (8th Gen i7-8550U/16GB/512GB SSD/Windows 10/Integrated Graphics), Gold', ' 1.80 GHzGHz Intel i7-8550U 8th Gen processor 16GB DDR4 RAM 512GB SSD 13.3-inch screen, Intel Graphics Windows 10 operating system 6 hours battery life, 1.21kg laptop'),
(23, 'Mi Notebook 14 ', 'Mi', 'https://images-na.ssl-images-amazon.com/images/I/71mYRzElTAL._SL1500_.jpg', 44000, '3.0', '800 customer reviews', '900+ questions answered ', 'Intel Core i5-10210U 10th Gen Thin and Light Laptop(8GB/256GB SSD/Windows 10/Intel UHD Graphics/Silver/1.5Kg), XMA1901-FC+Webcam', '10th Gen Intel Core i5-10210U processor, 1.6 GHz base speed, 4.2 GHz max speed, 4 Cores, 8 threads Operating System in the laptop: Windows 10 Home operating system | Pre-installed software : Office 365 ? one month Trial subscription Laptop Display: 14-Inch (1920X 1080 )Full HD Anti-Glare Screen, Intel UHD Graphics'),
(24, 'HP 15s dy2007TU', 'HP', 'https://images-na.ssl-images-amazon.com/images/I/81Ne5qKmE8L._SL1500_.jpg', 52400, '2.0', '209 customer reviews', '1000+ questions answered ', '15.6-inch Laptop (10th Gen i5-1035G1/8GB/1TB HDD/Windows 10 Home/Integrated Graphics), Sparkling Black', '1.0GHz Intel i5-1035G1 10th Gen processor 8GB DDR4 RAM 1TB 5400rpm hard drive 15.6-inch screen, Integrated Graphics Windows 10 Home operating system'),
(25, 'HP Notebook PC 245', 'HP', 'https://images-na.ssl-images-amazon.com/images/I/71OGnMuoikL._SL1500_.jpg', 48000, '1.0', '798 customer reviews', '123+ questions answered ', 'G7 14-inch Laptop (R5-2500U/8GB/1TB HDD/Windows 10 Pro/AMD Radeon Vega Graphics), Dark Ash Silver', '2GHz AMD R5-2500U processor 8GB DDR4 RAM 1TB 5400rpm hard drive 14-inch screen, AMD Radeon Vega Graphics Windows 10 Pro operating system'),
(26, 'Lenovo ThinkPad E14 ', 'Lenevo', 'https://images-na.ssl-images-amazon.com/images/I/81YoOf4rrnL._SL1500_.jpg', 60000, '4.3', '1000 customer reviews', '799+ questions answered ', 'Intel Core i5 10th Gen 14-inch Full HD Thin and Light Laptop (8GB RAM/ 1TB HDD + 128GB SSD/ Windows 10 Home/ Microsoft Office Home', '10th Gen Intel Core i5-10210U processor, 1.6 Ghz base speed, 4.2 Ghz max speed, 4 Cores, 6Mb Smart Cache Operating System: Pre-loaded Windows 10 Home with lifetime validity Display: 14-inch screen with (1920X1080) full HD display | Anti Glare technology | 720p HD Camera | Connectivity: Wi-Fi 2x2 802.11ax + Bluetooth 5.0 Memory: 8GB RAM | Storage: 1 TB HDD + 128GB SSD'),
(27, 'Lenovo 82C7A006IH ', 'Lenevo', 'https://images-na.ssl-images-amazon.com/images/I/51RSK3t7tsL._SL1000_.jpg', 31000, '4.2', '1239 customer reviews', '899+ questions answered ', 'ADA Laptop (AMD Athlon Silver 3050U/4GB Ram/ 1TB HDD/ 15.6 inch HD AG/ Windows-10/Integrated AMD Radeon Graphics/ Iron Grey)', 'AMD Athlon Silver 3050U processor, 2.3 Ghz base speed, 3.3 Ghz max speed, 2 cores, 4Mb smart CacheProduct'),
(28, 'Dell XPS 9570 ', 'Dell', 'https://images-na.ssl-images-amazon.com/images/I/81WRVvZuDvL._SL1500_.jpg', 250000, '4.6', '890 customer reviews', '988+ questions answered ', 'Laptop (8th Gen i9-8950HK/32GB/1TB SSD/Win 10 + MS Office/Integrated Graphics), Silver', '2.90 GHzGHz Intel i9-8950HK 8th Gen processor 32GB DDR4 RAM 1TB SSD 15.6-inch screen, NVIDIA 4GB 4GB Graphics Windows 10 operating system 6 hours battery life, 2kg laptop'),
(29, 'Acer Travelmate ', 'Acer', 'https://images-na.ssl-images-amazon.com/images/I/71tE39W1f4L._SL1440_.jpg', 52000, '4.8', '398 customer reviews', '900+ questions answered ', 'Intel i5-10th Gen 14-inch Display 1366x768 Thin and Light Laptop (8GB Ram/1TB HDD/Window 10 Pro/Integrated Graphics/Black/1.68 Kgs), TMP214-52', 'Processor: 10th generation Intel Core i5-10210u(6MB Cache, upto 4.2Ghz) Display: 14 inch HD(1366x768) with Antiglare Technology , Intel UHD Graphics Memory: 8GB DDR4 and upto 64GB RAM expandability with 2 DIMM slots Storage: 1 TB 5400 rpm HDD Warranty: 1 Year Warranty');

-- --------------------------------------------------------

--
-- Table structure for table `mobiledataset`
--

CREATE TABLE `mobiledataset` (
  `id` int(11) NOT NULL,
  `Product_name` varchar(60) DEFAULT NULL,
  `by_info` varchar(9) DEFAULT NULL,
  `Product_img` varchar(124) DEFAULT NULL,
  `Product_price` varchar(5) DEFAULT NULL,
  `rating` decimal(2,1) DEFAULT NULL,
  `total_review` varchar(23) DEFAULT NULL,
  `ans_ask` varchar(24) DEFAULT NULL,
  `prod_des` varchar(1006) DEFAULT NULL,
  `feature` varchar(1023) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mobiledataset`
--

INSERT INTO `mobiledataset` (`id`, `Product_name`, `by_info`, `Product_img`, `Product_price`, `rating`, `total_review`, `ans_ask`, `prod_des`, `feature`) VALUES
(1, 'Samsung Galaxy M10 (Ocean Blue, 3+32GB)', 'Samsung', 'https://images-na.ssl-images-amazon.com/images/I/613Os2k0a2L._SL1500_.jpg', '7990', '4.0', '7,353 customer reviews', '1000+ answered questions', 'The Samsung Galaxy M10 is especially created for the millennials who live on the edge and do not compromise on anything. With a beautiful infinity V-cut display, a wide angle camera and a powerful processor, the Galaxy M10 is a powerful smartphone.', '13MP+5MP ultra-wide angle dual camera | 5MP f2.0 front camera. The internet usage time is 15 hours for 3G as well as 19 hours for LTE.The video playback time is 17 hours and audio playback time is 84 hours15.8cm (6.22\") HD+ Infinity V Display with 90% screen ratio3GB RAM and 32GB internal memory expandable up to 512GB in a dedicated slotFast face unlock | 3400 mAh lithium-ion batteryDual SIM (nano+nano) with dual standby and dual VoLTE1.6GHz Exynos 7870 octa-core processor | Android Oreo v8.1 OS1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase'),
(2, 'Redmi 6 Pro (Black, 4GB RAM, 64GB Storage)', 'Mi', 'https://images-na.ssl-images-amazon.com/images/I/81xl7IHBw-L._SL1500_.jpg', '13495', '4.1', '32,250 customer reviews', '1000+ answered questions', 'Qualcomm Snapdragon 625, 2.0 GHz processor with 14nm architecture. 4000mAh battery capacity. 14.83 cm (5.84\") FHD+ (1080x2280) Display,. 4GB + 64GB Flash Memory. Stock Android Oreo 8.1. 12 MP + 5 MP dual rear camera with portrait mode PDAF, HDR, LED flash. 5 MP front camera with portrait mode. Proximity sensor, E compass, Gyroscope, Accelerometer, IR Blaster.', '12MP+5MP dual rear camera | 5MP front facing camera14.833 centimeters (5.84-inch) capacitive touchscreen with 2280 x 1080 pixels resolution, 432 ppi pixel densityMemory, Storage & SIM: 4GB RAM | 64GB storage expandable up to 256GB with dedicated slot | Dual nano SIM with dual standby (4G+4G)Android v8.1 Oreo operating system with 2GHz Qualcomm Snapdragon 625 octa core processor, Adreno 506 GPU4000 lithium-polymer battery, AI makes background blurring more accurate, so portraits are more natural1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchaseBox also includes: Adapter, USB cable, Warranty card, User guide, SIM insertion tool and Back cover'),
(3, 'Coolpad Cool 3 Plus (Ocean Blue, 2GB RAM, 16GB Storage)', 'Coolpad', 'https://images-na.ssl-images-amazon.com/images/I/61zf7aNEdEL._SL1441_.jpg', '5999', '3.1', '76 customer reviews', '69 answered questions', 'Coolpad Cool 3 Plus-Designed for all, 5.71\'\' HD dewdrop display, 2GB RAM, 16GB ROM with expandable upto 128GB, Fingerprint sensor, Faceunlock, Gradient ID, Helio A22 Quad Core Processor, Android Pie,OTG Support.', '13MP primary camera with bokeh mode, timelapse, portrait mode, face cute, 6 level beauty mode | 8MP front facing camera14.5 centimeters (5.71-inch) HD+ dewdrop screen display with 1520 x 720 pixels resolutionMemory, Storage & SIM: 2GB RAM | 16GB internal memory expandable up to 128GB | Dual SIM (nano+nano) dual-standby (4G+4G)Android Pie v9.0 operating system with 2.0GHz Helio A22 quad core processor3000mAH lithium-polymer battery1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchaseBox also includes: Travel Charger, USB Cable, Warranty Card, Quick Start Guide, Eject tool, Protective Case and Protective Screen Film'),
(4, 'Redmi 6 Pro (Black, 3GB RAM, 32GB Storage)', 'Mi', 'https://images-na.ssl-images-amazon.com/images/I/81xl7IHBw-L._SL1500_.jpg', '11350', '4.1', '32,250 customer reviews', '1000+ answered questions', 'Qualcomm Snapdragon 625, 2.0 GHz processor with 14nm architecture. 4000mAh battery capacity. 14.83 cm (5.84\") FHD+ (1080x2280) Display,. 3GB + 32GB Flash Memory. Stock Android Oreo 8.1. 12 MP + 5 MP dual rear camera with portrait mode PDAF, HDR, LED flash. 5 MP front camera with portrait mode. Proximity sensor, E compass, Gyroscope, Accelerometer, IR Blaster.', '12MP+5MP dual rear camera | 5MP front facing camera14.833 centimeters (5.84-inch) capacitive touchscreen with 2280 x 1080 pixels resolution, 432 ppi pixel densityMemory, Storage & SIM: 3GB RAM | 32GB storage expandable up to 256GB with dedicated slot | Dual nano SIM with dual standby (4G+4G)Android v8.1 Oreo operating system with 2GHz Qualcomm Snapdragon 625 octa core processor, Adreno 506 GPU4000 lithium-polymer battery1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchaseBox also includes: Adapter, USB cable, Warranty card, User guide, SIM insertion tool and Back cover'),
(5, 'POCO M2 Pro (64 GB ROM , 6 GB RAM)', 'POCO', 'https://rukminim1.flixcart.com/image/416/416/kcauaa80/mobile/2/p/u/poco-m2-pro-mzb9621in-original-imaftg9fkdpgbgxq.jpeg?q=70', '14999', '4.5', '5,474 customer reviews', '1000+ answered questions', 'Thanks to its Qualcomm Snapdragon 720G processor, Qualcomm Adreno 618 GPU, and up to 6 GB of RAM, this smartphone is armed to its teeth to offer you breezy-smooth smartphone performance.The POCO M2 Pro boasts a 5000-mAh battery, which, when combined with its 33 W fast charging, sees to it that you can use the phone for hours on end without having to charge it frequently.Its 48-megapixel quad-camera system, which includes a 119-degree, 8-megapixel ultra-wide camera and a 5-megapixel macro camera, among others, and Pro-Colour Mode help you capture portraits, landscapes, architecture, and various other things, delivering them in the form of beautiful photographs.This smartphone from POCO features a 16-megapixel in-screen selfie camera with Night Mode, which sees to it that your selfies are amazing irrespective of whether you take them during the day or night.This handset packs a 16.9-centimetre (6.67) FHD+ full screen display with an aspect ratio of 20:9 that paves the way for stunning visuals.', '6 GB RAM,64GB ROM,Expandable Upto 512 GB,16.94 cm (6.67 inch) Full HD+ Display,48MP + 8MP + 5MP + 2MP , 16MP Front Camera , 5000 mAh Lithium-ion Polymer Battery\nQuacomm Snapdragon 720G Processor'),
(6, 'Xifo I-Smart IS 58i  (4G 2GB RAM  + 16GB ROM)', 'Xifo', 'https://images-na.ssl-images-amazon.com/images/I/710ULXiEIyL._SL1500_.jpg', '3490', '5.0', '1 customer review', '100+', 'I-Smart IS-58i 4G The phone comes with a 5.7 Inch touch-screen display with a resolution of 1280 pixels by 720 pixels. The I-Smart IS-58i 4G is powered by 1.3GHz Dual Core MediaTek 6572 processor and it comes with 2GB of RAM. The phone packs 16GB of internal storage that can be expanded up to 32GB via a microSD card. As far as the cameras are concerned, the I-Smart IS-58i 4G packs a 5-megapixel primary camera on the rear and a 2-megapixel front shooter for selfies. The I-Smart IS-58i 4G runs Android 7.0 Naught and is powered by a 2800mAh non removable battery. It measures 155.00 x 77.00 x 8.10 (height x width x thickness) and weigh 162.00 grams. The I-Smart IS-58i 4G is a dual SIM (GSM and GSM) . Connectivity options include Wi-Fi, Bluetooth, FM and 4G. Sensors on the phone include Proximity sensor, Accelerometer and Ambient light sensor.', '5.7-inch Full HD IPS Display, 1280x720 Pixels1.3 Quad Core Mediatek processor With Android Lollipop 5.1 It will not Support VoLTE Network( Jio No Support)2 GB RAM, 16 GB internal storage expandable with hybrid microSD card slotIt Comes With Single rear camera of 5 Mpix, Other camera is Decorative not the real Camera only to give Smartphone a rich and elegant Look. It also has a Single Front Camera of 2 Mpix.2800 mAh Li-ion Removable Battery Without finger Print Scanner'),
(7, 'Coolpad Cool 3 Plus (Ocean Blue, 3GB RAM, 32GB Storage)', 'Coolpad', 'https://images-na.ssl-images-amazon.com/images/I/61zf7aNEdEL._SL1441_.jpg', '6499', '3.1', '76 customer reviews', '69 answered questions', 'Cool 3 Plus with its Dewdrop 19:9 HD+ full screen display with 3GB RAM/32GB ROM Expandable Upto 128GB and Improved MediaTek Helio Processor. The Cool 3 Plus iconic rear 3-D design with premium glossy finish add to that the new colors of ocean blue and cherry black is sure to make others turn head. The device has the dual security of AI faceunlock and fingerprint unlock. Cool 3 Plus sports a 13MP AI rear shooter and a 8MP sensor at the front with 6 beauty labels.', '13MP primary camera with bokeh mode, timelapse, portrait mode, face cute, 6 level beauty mode | 8MP front facing camera14.5 centimeters (5.71-inch) HD+ dewdrop screen display with 1520 x 720 pixels resolutionMemory, Storage & SIM: 3GB RAM | 32GB internal memory expandable up to 128GB | Dual SIM (nano+nano) dual-standby (4G+4G)Android Pie v9.0 operating system with 2.0GHz Helio A22 quad core processor3000mAH lithium-polymer battery1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchaseBox also includes: Travel Charger, USB Cable, Warranty Card, Quick Start Guide, Eject tool, Protective Case and Protective Screen Film'),
(8, 'Honor 9N (Blue, 4GB RAM, 64GB Storage)', 'Honor', 'https://rukminim1.flixcart.com/image/416/416/jpvihzk0/mobile/x/b/g/honor-9n-lld-al20-original-imafcysuxztcr4gz.jpeg?q=70', '15999', '3.9', '534 customer reviews', '593 answered questions', 'Honor 9N smartphone whose aesthetically pleasing design, with mirror-like effects, redefines the definition of \'beautiful\'. What makes this phone an exciting one to have is the fact that it has at least one impressive feature to suit every need. If you are someone who catches up on your favourite shows via your phone, then you can elevate your viewing experience by switching to the immersive Notch Display. For the photographers out there, this phone\'s 16 MP Front Camera and the 13 + 2 MP Dual Rear Camera will let you capture what you see in an enviable manner. Oh, there is something in store for the gamers out there as well. The Game Suite feature ensures a hassle-free gaming experience.', '13MP+2MP dual camera and 16MP front facing camera14.83 centimeters (5.84-inch) multi-touch capacitive touchscreen with 2280 x 1080 pixels resolution 16M color supportMemory, Storage & SIM: 4GB RAM | 64GB storage expandable up to 256GB| Dual SIM with dual standby (4G+4G)Android v8 Oreo operating system with 2.36GHz + 1.7GHz Kirin 659 octa core processor3000mAH lithium-polymer battery, SCREEN TYPE: TFT-LCD1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchaseBox also includes: Charger, USB Cable, Quick Start Guide, Warranty Card, Eject Tool, Protective Case'),
(9, 'Samsung Galaxy A10 (Gold, 2GB RAM, 32GB Storage)', 'Samsung', 'https://images-na.ssl-images-amazon.com/images/I/81nhEX1cn4L._SL1500_.jpg', '10998', '4.0', '196 customer reviews', '344 answered questions', 'The Samsung Galaxy A10 comes with a get a vivid viewing experience with the next-gen infinity-V display. Capture stunning shots and stand out with 13MP rear and 5MP front camera. Run multiple apps without missing a beat on this powerful multi-tasker.', '13MP rear camera | 5MP front camera15.8 centimeters (6.2-inch) with 720 x 1520 pixels resolutionMemory, Storage and SIM: 2GB RAM | 32GB internal memory expandable up to 512GB | Dual SIM (nano+nano) dual-standby (4G+4G)Android Pie v9.0 operating system with 1.6GHz Exynos 7884 octa core processor3400mAH lithium-ion battery1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchaseBox also Includes: Travel Adapter, USB Cable, User Manual'),
(10, 'Mi A2 (Red, 4GB RAM, 64GB Storage)', 'Mi', 'https://images-na.ssl-images-amazon.com/images/I/91RPpvrgmsL._SL1500_.jpg', '13990', '3.8', '17,711 customer reviews', '1000+ answered questions', 'Qualcomm Snapdragon 660, 2.2 GHz processor. 3010mAh battery capacity. 15.91 cm (5.99\") FHD+ Display. Stock Android Oreo 8.1. 12 MP + 20 MP dual rear camera with portrait mode PDAF, HDR, dual flash. 20 MP front camera with portrait mode, flash light. Proximity sensor, E compass, Gyroscope, Accelerometer, IR Blaster.', '12MP+20MP dual rear camera and 20MP front facing camera15.21 centimeters (5.99-inch) with 2160 x 1080 pixels resolution, 403 ppi pixel densityMemory, Storage & SIM: 4GB RAM | 64GB storage | Dual nano SIM with dual standby (4G+4G)Android v8.1 Oreo operating system with 2.2GHz Qualcomm Snapdragon 660 octa core processor, Adreno 512 GPU3010mAH lithium-ion battery1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchaseBox also includes: Adapter, USB cable, warranty card, User guide, SIM insertion tool and Back cover'),
(11, 'Redmi 7 (Lunar Red, 2GB RAM, 32GB Storage)', 'Redmi', 'https://images-na.ssl-images-amazon.com/images/I/61P-%2BdWuq%2BL._SL1500_.jpg', '9999', '4.1', '2,728 customer reviews', '1000+ answered questions', 'Qualcomm Snapdragon 632, 1.8 GHz processor 4000mAh battery capacity 15.90 cm (6.26-inch) HD+ Dot Notch Display, 2GB+32GB Flash Memory Stock Android Pie 9.0, 12 MP + 2 MP dual rear camera with portrait mode PDAF, HDR, 8 MP front camera with portrait mode, Proximity sensor, E compass, Accelerometer, IR Blaster.', '12MP+2MP dual rear camera | 8MP front facing camera15.9004 centimeters (6.26-inch) with 1520 x 720 pixels resolution, 269 ppi pixel densityMemory, Storage and SIM: 2GB RAM | 32GB internal memory expandable up to 512GB | Dual SIM (nano+nano) dual-standby (4G+4G)Android Pie v9.0 operating system with 1.8GHz Qualcomm Snapdragon 632 octa core processor, Adreno 5064000mAH lithium-ion battery1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchaseBox also includes: Adapter, USB cable, warranty card, user guide, SIM insertion tool, back cover'),
(12, 'Samsung Galaxy M40 (Midnight Blue, 6GB RAM, 128GB Storage)', 'Samsung', 'https://images-na.ssl-images-amazon.com/images/I/61yMQIMMODL._SL1000_.jpg', '16882', '4.0', '3,105 customer reviews', '1000+ answered questions', 'With the Samsung Galaxy M40, Samsung introduces the Infinity O display for the first time in this price segment- an immersive 6.3\" FHD+ display that extends from edge to edge. It is powered by the Snapdragon 675 processor along with 6GB of RAM and comes with Android Pie out of the box', '32MP + 8MP + 5MP triple rear camera | 16MP front facing camera16.00 centimeters (6.3-inch) FHD+ capacitive touchscreen with 2340 x 1080 pixels resolution 16M color supportMemory, Storage & SIM: 6GB RAM | 128GB storage expandable up to 512GB with Hybrid slot | Dual nano SIM with dual standby (4G+4G)Android v9 Pie operating system with 2GHz, 1.7GHz Qualcomm Snapdragon SD 675 octa core processor3500mAH lithium-ion battery, CPU: Upto 2 GHz Octa-core, 11nm1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchaseBox also includes: Travel Adapter, USB Cable, Type C Earphones, Ejection Pin and User Manual'),
(13, 'Samsung Galaxy M10 (Ocean Blue, 2+16GB)', 'Samsung', 'https://images-na.ssl-images-amazon.com/images/I/613Os2k0a2L._SL1500_.jpg', '8190', '4.0', '7,353 customer reviews', '1000+ answered questions', 'The Samsung Galaxy M10 is especially created for the millennials who live on the edge and do not compromise on anything. With a beautiful infinity V-cut display, a wide angle camera and a powerful processor, the Galaxy M10 is a powerful smartphone.', '13MP+5MP ultra-wide angle dual camera | 5MP f2.0 front camera15.8cm (6.22\") HD+ Infinity V Display with 90% screen ratio2GB RAM and 16GB internal memory expandable up to 512GB in a dedicated slotFast face unlock | 3400 mAh lithium-ion batteryDual SIM (nano+nano) with dual standby and dual VoLTE1.6GHz Exynos 7870 octa-core processor | Android Oreo v8.1 OS1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase'),
(14, 'Xifo I-Smart IS-58i (4G 2GB RAM , 16GB ROM 4G)', 'Xifo', 'https://images-na.ssl-images-amazon.com/images/I/71c1zvla8UL._SL1500_.jpg', '3490', '3.5', '5,600 customer reviews', '', 'I-Smart IS-58i 4G The phone comes with a 5.7 Inch touch-screen display with a resolution of 1280 pixels by 720 pixels. The I-Smart IS-58i 4G is powered by 1.3GHz Dual Core MediaTek 6572 processor and it comes with 2GB of RAM. The phone packs 16GB of internal storage that can be expanded up to 32GB via a microSD card. As far as the cameras are concerned, the I-Smart IS-58i 4G packs a 5-megapixel primary camera on the rear and a 2-megapixel front shooter for selfies. The I-Smart IS-58i 4G runs Android 7.0 Naught and is powered by a 2800mAh non removable battery. It measures 155.00 x 77.00 x 8.10 (height x width x thickness) and weigh 162.00 grams. The I-Smart IS-58i 4G is a dual SIM (GSM and GSM) . Connectivity options include Wi-Fi, Bluetooth, FM and 4G. Sensors on the phone include Proximity sensor, Accelerometer and Ambient light sensor.', '5.7-inch Full HD IPS Display, 1280x720 Pixels1.3 Quad Core Mediatek processor With Android Lollipop 5.1 It will not Support VoLTE Network( Jio No Support)2 GB RAM, 16 GB internal storage expandable with hybrid microSD card slotIt Comes With Single rear camera of 5 Mpix, Other camera is Decorative not the real Camera only to give Smartphone a rich and elegant Look. It also has a Single Front Camera of 2 Mpix.2800 mAh Li-ion Removable Battery Without finger Print Scanner'),
(15, 'Xifo I Smart IS-59I  (4G 2GB RAM , 16GB ROM 4G)', 'Xifo', 'https://images-na.ssl-images-amazon.com/images/I/61%2Bw9n87aIL._SL1500_.jpg', '3290', '1.4', '8 customer reviews', '4 answered questions', 'I-Smart IS-59I 4G The phone comes with a 5.7 Inch touch-screen display with a resolution of 1280 pixels by 720 pixels. The I-Smart IS-59I 4G is powered by 1.3GHz Dual Core MediaTek 6572 processor and it comes with 2GB of RAM. The phone packs 16GB of internal storage that can be expanded up to 32GB via a microSD card. As far as the cameras are concerned, the I-Smart IS-59I 4G packs a 5-megapixel primary camera on the rear and a 2-megapixel front shooter for selfies. The I-Smart IS-59I 4G runs Android 7.0 Naught and is powered by a 2800mAh non removable battery. It measures 155.00 x 77.00 x 8.10 (height x width x thickness) and weigh 162.00 grams. The I-Smart IS-59I 4G is a dual SIM (GSM and GSM) . Connectivity options include Wi-Fi, Bluetooth, FM and 4G. Sensors on the phone include Proximity sensor, Accelerometer and Ambient light sensor.', '5.7-inch Full HD IPS Display, 1280x720 Pixels1.3 Quad Core Mediatek processor With Android Lollipop 5.1 It will not Support VoLTE Network( Jio No Support)2 GB RAM, 16 GB internal storage expandable with hybrid microSD card slotIt Comes With Single rear camera of 5 Mpix, Other camera is Decorative not the real Camera only to give Smartphone a rich and elegant Look. It also has a Single Front Camera of 2 Mpix.2800 mAh Li-ion Removable Battery Without finger Print Scanner'),
(16, 'Samsung Galaxy M40 (Cocktail Orange, 6GB RAM, 128GB Storage)', 'Samsung', 'https://images-na.ssl-images-amazon.com/images/I/61fBSSlueBL._SL1000_.jpg', '8190', '4.0', '3,105 customer reviews', '1000+ answered questions', 'With the Samsung Galaxy M40 , Samsung introduces the \"Infinity O\" - Hole in Display with immersive 6.3\" FHD+ display that extends from edge to edge. It is powered by the Snapdragon SD675 process along with 6GB of Ram and come with Android Pie out of the box.', '32MP+8MP+5MP triple rear camera | 16MP front facing camera16 centimeters (6.3-inch) FHD+ capacitive touchscreen with 2340 x 1080 pixels resolution 16M color supportMemory, Storage & SIM: 6GB RAM | 128GB storage expandable up to 512GB | Dual SIM with dual standby (4G+4G)Android v9.0 Pie operating system with 2GHz, 1.7GHz Qualcomm Snapdragon SD 675 octa core processor3500mAH lithium-ion battery1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase'),
(17, 'Samsung Galaxy M20 (Ocean Blue, 4+64GB)', 'Samsung', 'https://images-na.ssl-images-amazon.com/images/I/61nzw1i2taL._SL1500_.jpg', '12250', '3.9', '31,795 customer reviews', '1000+ answered questions', 'The Samsung Galaxy M20 is especially created for the millennials who live on the edge and do not compromise on anything. With a beautiful infinity V-cut display, a wide angle camera, a huge battery with faster charging and a powerful processor along with the trust that comes with brand Samsung, the Galaxy M20 is a powerful smartphone. Toll Free No:1 800 40 7267864', '13MP+5MP ultra-wide dual camera | 8MP f2.0 front camera16cm (6.3\") Full HD+ Infinity V Display with 2340x1080 crystal clear resolution (409 PPI)5000 mAh battery with 3x fast charge | 15W Type-C fast charger in the box4GB RAM and 64GB internal memory expandable up to 512GB in a dedicated slotFast face unlock and fingerprint sensor | Dual SIM (nano+nano) with dual standby and dual VoLTEWidevine L1 certification for HD streaming | Dolby ATMOS 360 surround sound1.8GHz Exynos 7904 octa-core processor | Android Oreo v8.1 OS1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase.For any product related queries contact : 1800 5 7267864Just fire up the front camera for lit selfies on your social feed with the In-Display Flash and F2.0 aperture.'),
(18, 'Samsung Galaxy M30 (Gradation Blue, 4+64 GB)', 'Samsung', 'https://images-na.ssl-images-amazon.com/images/I/816RTtou9zL._SL1500_.jpg', '16480', '4.2', '17,385 customer reviews', '1000+ answered questions', 'The Samsung Galaxy M30 is especially created for the millennials who live on the edge and do not compromise on anything. With a beautiful infinity U cut display, a triple camera setup, a powerful processor and big battery, the Galaxy M30 is a 3X powerful smartphone.', '13+5+5MP Triple rear camera with f1.9 aperture, 2.2 wide angle, 2.2 flash | 16MP front camera with f2.0 aperture16.21 centimeters (6.4-inch) FHD+ multi-touch capacitive touchscreen with 2340 x 1080 pixels resolution and 16M color supportMemory, Storage and SIM: 4GB RAM | 64GB internal memory expandable up to 512GB | Dual SIM (nano+nano) dual-standby (4G+4G)Android Oreo v8.1 operating system with 1.8GHz Exynos 7904 octa core processor5000mAH lithium-ion battery with 3x fast charge | 15W Type-C fast charger in the box1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchaseBox also includes: Handset, Travel Adapter, USB Cable, Ejection Pin and User Manual'),
(19, 'Redmi 6 (Gold, 3GB RAM, 64GB Storage)', 'Mi', 'https://rukminim1.flixcart.com/image/416/416/jlo1tow0/mobile/g/v/x/mi-redmi-6-na-original-imaf8qtkgh6qhs3p.jpeg?q=70', '8499', '4.0', '1,107 customer reviews', '559 answered questions', 'Take strikingly clear photos with the 12MP + 5MP AI dual camera. 1.25μm large pixels on the primary lens capture the beauty of any scene, while the AI-powered portrait mode with Beautify blurs the background to create portraits that stand out. The octa-core processor takes operational efficiency to the next level which results in brilliant performance.', '12MP+5MP dual rear camera with LED selfie flash | 5MP front facing camera13.84 centimeters (5.45-inch) multi-touch capacitive touchscreen with 1440 x 720 pixels resolutionMemory, Storage & SIM: 3GB RAM | 64GB internal memory expandable up to 256GB | Dual SIM (nano+nano) dual-standby (4G+4G)Android Oreo v8.1 operating system with 2GHz Mediatek P22 octa core processor3000mAH lithium-polymer battery1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchaseBox also Includes: Power Adapter, USB cable, SIM Eject Tool, Warranty Card and User Guide'),
(20, 'Redmi Y2 (Black, 3GB RAM, 32GB Storage)', 'Redmi', 'https://images-na.ssl-images-amazon.com/images/I/719shd%2BaqrL._SL1500_.jpg', '8440', '4.3', '26,749 customer reviews', '1000+ answered questions', 'Memory, storage and SIM: 3GB RAM, 32GB storage expandable up to 256GB with dedicated slot. Dual nano SIM with dual standby (4G+4G). Operating System and Processor: Android v8.0 Oreo operating system with 2.0GHz Qualcomm Snapdragon 625 octa core processor.', 'Camera: 12+5 MP Dual rear camera | 16 MP front cameraDisplay: 15.21 centimeters (5.99-inch) HD+ full screen capacitive touchscreen display with 1440x720 pixels, 269 ppi pixel density and 18:9 aspect ratioMemory, Storage & SIM: 3GB RAM | 32GB storage expandable up to 256GB with dedicated slot | Dual nano SIM with dual standby (4G+4G)Operating System and Processor: Android v8.0 Oreo operating system with 2.0GHz Qualcomm Snapdragon 625 octa core processorBattery: 3080 mAH lithium Polymer batteryWarranty: 1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchaseIncluded in box: Power adaptor, USB Cable, Clear soft case'),
(21, 'Xifo Life Plus S (4G Volte 3 GB RAM , 32 GB ROM)', 'Xifo', 'https://images-na.ssl-images-amazon.com/images/I/71e2fLDaWCL._SL1500_.jpg', '3949', '3.2', '2000 customer reviews', '500+ answered questions ', 'Stay connected with the STK Life Plus S Smartphone This ultra-smart device has everything you need to make day to day life a breeze. Using the seamless Android 7.0 Nougat operating system, access all of your important apps, photos and files with the touch of a button, with viewing improved, thanks to a 5.5in HD screen and 2.5D glass and incredible 32GB expandable internal memory, so you never need to worry about space. Enjoy 4G on the go for enriched connectivity, GPS and AGPS for a greater navigation experience and get snap-happy with the 8MP rear camera, with integrated autofocus and flash for quality photos to remember every special moment. 5MP Front camera for fun selfies. 4G Enabled for faster, seamless connectivity / Bluetooth V4.0 / WiFi enabled Android 7.0 Nougat OS. Unlocked to any network, you can also make the most of this smartphones dual SIM technology, perfect for taking on holiday or for home to balance personal and business life.', '4G VoLTE Support mobile phone5.5-inch HD Display,1920x1080 Pixels8 MP Rear camera with LED flash and 5 MP camera with flash. 3 GB RAM, 32 GB internal storage and expandable with hybrid microSD card slot upto 32 GB Android 7.0 Nougat operating system 2800 mAh removable battery'),
(22, 'Samsung Galaxy M20 (Ocean Blue, 3+32GB)', 'Samsung', 'https://images-na.ssl-images-amazon.com/images/I/61nzw1i2taL._SL1500_.jpg', '11447', '3.9', '31,793 customer reviews', '1000+ answered questions', 'The Samsung Galaxy M20 is especially created for the millennials who live on the edge and do not compromise on anything. With a beautiful infinity V-cut display, a wide angle camera, a huge battery with faster charging and a powerful processor along with the trust that comes with brand Samsung, the Galaxy M20 is a powerful smartphone. Toll Free No:1 800 40 7267864', '13MP+5MP ultra-wide dual camera | 8MP f2.0 front camera16cm (6.3\") Full HD+ Infinity V Display with 2340x1080 crystal clear resolution (409 PPI)5000 mAh battery with 3x fast charge | 15W Type-C fast charger in the box3GB RAM and 32GB internal memory expandable up to 512GB in a dedicated slotFast face unlock and fingerprint sensor | Dual SIM (nano+nano) with dual standby and dual VoLTEWidevine L1 certification for HD streaming | Dolby ATMOS 360 surround sound1.8GHz Exynos 7904 octa-core processor | Android Oreo v8.1 OS1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase.For any product related queries contact : 1800 5 7267864'),
(23, 'Samsung On7 Pro (Gold, 2GB RAM, 16GB Storage)', 'Samsung', 'https://images-na.ssl-images-amazon.com/images/I/81mKtZOvUmL._SL1500_.jpg', '6200', '3.8', '16,787 customer reviews', '1000+ answered questions', 'With LTE Cat 4 support, you can download HD movies, enjoy web browsing and music streaming, all at lightening-quick speeds. Experience seamless network connectivity via speedy Wi-Fi connection. Bluetooth-enabled to allow you to pair it with a headset, tablet or other device.', 'Camera: 13 MP Rear camera with Auto mode, Beauty face, Continuous shot, Interval shot, Panorama mode | 5 MP front camera with Palm gesture selfie and 120 Degree selfie modeDisplay: 13.86 centimeters (5.5-inch) HD TFT capacitive touchscreen display with 720x1280 pixelsMemory, Storage & SIM: 2GB RAM | 16GB storage expandable up to 128GB | Dual micro SIM with dual standby (4G+4G)Operating System and Processor: Android v6.0 Marshmallow operating system with 1.2GHz Qualcomm Snapdragon quad core processorBattery: 3000 mAH lithium ion battery. Internet Usage Time(3G)-Up to 10 hrs. Internet Usage Time(LTE)-Up to 12 hrs. Internet Usage Time(Wi-Fi)-Up to 14 hrs. Video Playback Time-Up to 12hrs. Audio Playback Time-Up to 78 hrsWarranty: 1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchaseIncluded in box: Travel adaptor, USB Cable (Earphones to be purchased separately)For product related assistance contact_us on: [ 1800407267864 ]'),
(24, 'Honor 9 Lite (Grey, 4GB RAM, 64GB Storage)', 'Honor', 'https://images-na.ssl-images-amazon.com/images/I/81BveOlcc%2BL._SL1500_.jpg', '16999', '3.8', '93 customer reviews', '139 answered questions', 'Take phone-photography to the next level with the Honor 9 Lite. Equipped with a dual camera system on, both, front and rear and a Full View FHD+ display, this smartphone not only lets you capture life\'s best moments but it also lets you see them in a picture-perfect clarity.', '13MP+2MP dual camera and 13MP +2MP front facing camera14.35 centimeters (5.65-inch) multi-touch capacitive touchscreen with 2160 x 1080 pixels resolution 16M color supportMemory, Storage & SIM: 4GB RAM | 64GB storage expandable up to 256GB| Dual SIM with dual standby (4G+4G)Android v8 Oreo operating system with 2.36GHz + 1.7GHz Kirin 659 octa core processor3000mAH lithium-polymer battery1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchaseBox also includes: Charger, USB Cable, Quick Start Guide, Warranty Card, Eject Tool, Protective Case'),
(25, 'Redmi 6 (Blue, 3GB RAM, 64GB Storage)', 'Mi', 'https://seller.shoponn.in/Item/Redmi 6 Blue 64 GB 3 GB RAM A.jpg', '8499', '4.0', '1,107 customer reviews', '559 answered questions', 'Take strikingly clear photos with the 12MP + 5MP AI dual camera. 1.25μm large pixels on the primary lens capture the beauty of any scene, while the AI-powered portrait mode with Beautify blurs the background to create portraits that stand out. The octa-core processor takes operational efficiency to the next level which results in brilliant performance.', '12MP+5MP dual rear camera with LED selfie flash | 5MP front facing camera13.84 centimeters (5.45-inch) multi-touch capacitive touchscreen with 1440 x 720 pixels resolutionMemory, Storage & SIM: 3GB RAM | 64GB internal memory expandable up to 256GB | Dual SIM (nano+nano) dual-standby (4G+4G)Android Oreo v8.1 operating system with 2GHz Mediatek P22 octa core processor3000mAH lithium-polymer battery1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchaseBox also Includes: Power Adapter, USB cable, SIM Eject Tool, Warranty Card and User Guide'),
(26, 'Surya Tashan TS455 ( 2 GB RAM , 16 GB ROM)', 'Surya', 'https://images-na.ssl-images-amazon.com/images/I/71OkPtAQ1SL._SL1500_.jpg', '2970', '2.7', '500 customer reviews', '50+ answered questions', 'Tashan 5 inch Mobile 4G (VoLte Not Supported) phone comes with a 5.0 inch touchscreen display with a resolution of 710 pixels by 1344 pixels at a PPI of 401 pixels per inch. The Tashan Model 4G is powered by 1.0 GHz Dual core Mediatek processor and it comes with 2 GB of RAM. The phone packs 16 GB of internal storage that cannot be expanded upto 31 GB. As far as the cameras are concerned, the Tashan Model 4G packs a 5 Megapixel primary camera on the rear 5 MP Front Camera. The Tashan Model 4G runs Android Naugot 7.0 and is powered by a 2200 mAh removable battery. It measures 144mmx71mmx8.5mm and weight 150.00 grams. The Tashan Model 4G is a dual SIM (GSM and GSM) smartphone that accepts Micro-SIM and Micro-SIM. Connectivity options include Wi-Fi, GPS, Bluetooth, NFC, USB OTG, FM, 3G and 4G. Sensors on the phone include Compass Magnetometer, Proximity sensor, Accelerometer, Ambient light sensor and Gyroscope', '5.0 inch Full HD IPS Display, 2.5D curved glass, 1920x1080 Pixels2 GB RAM, 16 GB internal storage expandable with hybrid microSD card slot1.0 Dual Core MediaTek processor Android Naugot 7.0It Comes With Single rear camera of 5 Mpix, Other camera is Decorative not the real Camera only to give Smartphone a rich and elegant Look. It also has a Single Front Camera of 5 Mpix.Battery Capacity 2200 mAh removable Battery without fingerprint scanner'),
(27, 'Realme U1 (Ambitious Black, 3GB RAM, 32GB Storage)', 'realme', 'https://images-na.ssl-images-amazon.com/images/I/61K56dRy-2L._SL1500_.jpg', '9999', '4.4', '16,729 customer reviews', '1000+ answered questions', 'U1, Realme best selfie camera ever with Sony IMX576 sensor. AI 25MP, India\'s selfie pro. World 1st smartphone with Helio P70, packing a 6.3-inch FHD+ Dewdrop screen in fiery gold, ambitious black, brave blue. Backed by thorough localized testing to enhance Indian natural beauty features for stunning selfies, including skin tone, eye shape, and more.', '13MP+2MP dual rear camera | 25MP front camera16.002 centimeters (6.3-inch) FHD+ multi-touch capacitive touchscreen with 2340 x 1080 pixels resolution, 409 ppi pixel densityMemory, Storage and SIM: 3GB | 32GB internal memory expandable up to 256GB | Dual SIM (nano+nano) dual-standby (4G+4G)Android v8.1 Oreo based on Funtouch OS 5.2 operating system with 2.1GHz MediaTek Helio P70 octa core processor3500mAH lithium-ion battery1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase'),
(28, 'Samsung Galaxy M20 (Charcoal Black, 4+64GB)', 'Samsung', 'https://images-na.ssl-images-amazon.com/images/I/71rFOsegqqL._SL1500_.jpg', '11447', '3.9', '31,795 customer reviews', '1000+ answered questions', 'The Samsung Galaxy M20 is especially created for the millennials who live on the edge and do not compromise on anything. With a beautiful infinity V-cut display, a wide angle camera, a huge battery with faster charging and a powerful processor along with the trust that comes with brand Samsung, the Galaxy M20 is a powerful smartphone. Toll Free No:1 800 40 7267864', '13MP+5MP ultra-wide dual camera | 8MP f2.0 front camera16cm (6.3\") Full HD+ Infinity V Display with 2340x1080 crystal clear resolution (409 PPI)5000 mAh battery with 3x fast charge | 15W Type-C fast charger in the box4GB RAM and 64GB internal memory expandable up to 512GB in a dedicated slotFast face unlock and fingerprint sensor | Dual SIM (nano+nano) with dual standby and dual VoLTEWidevine L1 certification for HD streaming | Dolby ATMOS 360 surround sound1.8GHz Exynos 7904 octa-core processor | Android Oreo v8.1 OS1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase,For any product related queries contact : 1800 5 7267864'),
(29, 'Panasonic P85 NXT (Blue, 2GB RAM, 16GB Storage)', 'Panasonic', 'https://images-na.ssl-images-amazon.com/images/I/71TrDwir68L._SL1500_.jpg', '4990', '3.1', '144 customer reviews', '127 answered questions', 'Panasonic P85 NXT is a 2GB RAM, powered by a Snapdragon processor and runs on a 4000 Mah battery. It comes with Face unlock and finger print sensor.', '8MP primary camera | 5MP front facing camera12.7 centimeters (5-inch) with 1280 x 720 pixels resolutionMemory, Storage & SIM: 2GB RAM | 16GB storage expandable up to 128GB | Dual SIM with dual standby (4G+4G)Android v7 Nougat operating system with 1.3GHz Snapdragon 210 quad core processor4000mAH lithium-ion battery1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase'),
(30, 'Redmi 6A (Blue, 2GB RAM, 32GB Storage)', 'Redmi', 'https://images-na.ssl-images-amazon.com/images/I/71IhX7fJbzL._SL1500_.jpg', '6999', '4.1', '1,994 customer reviews', '189 answered questions', 'Mediatek helio A22, 2.0 GHz quad core processor, 3000mAh battery capacity, 13.84 cm (5.45\") HD plus display, 2GB plus 32GB flash memory, android Oreo 8.1 with MIUI 9.6, 13 MP rear camera with PDAF, HDR, flash, 5 MP front camera with portrait mode, proximity sensor, E compass, accelerometer.', 'Camera: 13 MP Rear camera | 5 MP front cameraDisplay: 13.84 centimetres (5.45-inch) HD+ display with 1440x720 pixels, 295 pixel density and 18:9 aspect ratioMemory, Storage & SIM: 2GB RAM | 32GB storage expandable up to 256GB with dedicated slot | Dual nano SIM with dual-standby (4G+4G)Operating System and Processor: Android v8.1 operating system with Mediatek Helio A22, 2.0Ghz Quad core processor with 12nm technologyBattery: 3000 mAH lithium Polymer batteryWarranty: 1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchaseIncluded in box: Adapter, USB Cable');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` text NOT NULL,
  `address` varchar(255) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `city` varchar(50) NOT NULL,
  `invoice_no` bigint(255) NOT NULL,
  `order_time` varchar(255) NOT NULL,
  `pid` int(11) NOT NULL,
  `cat` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `date_val` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `uid`, `name`, `email`, `mobile`, `address`, `pincode`, `city`, `invoice_no`, `order_time`, `pid`, `cat`, `total`, `date_val`) VALUES
(111, 8, 'Sujeet Pal', 'a', '9326121847', 'a', 'a', 'a', 48022344, '29/09/20 02:27:31', 4, 3, 4, '2020-09-29'),
(112, 8, 'Sujeet Pal', 'a', '9326121847', 'a', 'a', 'a', 40351103, '29/09/20 09:10:53', 2, 1, 3, '2020-09-29'),
(113, 8, 'Sujeet Pal', 'f', '9326121847', 'f', 'f', 'f', 60960566, '29/09/20 09:26:29', 4, 2, 1, '2020-09-29'),
(114, 8, 'Sujeet Pal', 'af', '9326121847', 'af', 'af', 'af', 96337302, '29/09/20 09:27:59', 4, 1, 1, '2020-09-29'),
(115, 8, 'Sujeet Pal', 'af', '9326121847', 'af', 'af', 'af', 96337302, '29/09/20 09:27:59', 5, 1, 1, '2020-09-29'),
(116, 8, 'Sujeet Pal', 'af', '9326121847', 'af', 'af', 'af', 96337302, '29/09/20 09:27:59', 1, 1, 1, '2020-09-29'),
(117, 8, 'Sujeet Pal', 'q', '9326121847', 'q', 'q', 'q', 81995239, '29/09/20 09:39:37', 1, 3, 1, '2020-09-29'),
(118, 8, 'Sujeet Pal', 'a', '9326121847', 'a', 'a', 'a', 34088672, '29/09/20 09:41:06', 3, 3, 1, '2020-09-29'),
(119, 8, 'Sujeet Pal', 'ggg', '9326121847', 'ggg', '451', 'ggrg', 13324511, '30/09/20 07:28:46', 3, 1, 1, '2020-09-30'),
(120, 8, 'Sujeet Pal', 'a', '9326121847', 'a', 'a', 'a', 50451453, '04/10/20', 3, 1, 3, '2020-10-04');

-- --------------------------------------------------------

--
-- Table structure for table `page_analytics`
--

CREATE TABLE `page_analytics` (
  `id` int(11) NOT NULL,
  `session` text NOT NULL,
  `user` text NOT NULL,
  `user_type` int(11) NOT NULL,
  `url` text NOT NULL,
  `title` text NOT NULL,
  `pid` int(11) NOT NULL,
  `cat` int(11) NOT NULL,
  `date_val` date NOT NULL,
  `page_name` text NOT NULL,
  `country` text NOT NULL,
  `city` text NOT NULL,
  `browser` text NOT NULL,
  `device` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `page_analytics`
--

INSERT INTO `page_analytics` (`id`, `session`, `user`, `user_type`, `url`, `title`, `pid`, `cat`, `date_val`, `page_name`, `country`, `city`, `browser`, `device`) VALUES
(25, 'lQA95BPTmA3952', '::1', 0, 'Home%20Page.php', 'Home', 10, 0, '2020-10-02', 'Home', '', '', 'Firefox', 'Mobile'),
(26, 'lQA95BPTmA3952', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-02', 'list', '', '', 'Firefox', 'Mobile'),
(27, 'lQA95BPTmA3952', '::1', 0, 'discription.php?id=1&cat=2', 'Samsung Galaxy M10 (Ocean Blue, 3+32GB)', 1, 2, '2020-10-02', 'discription', '', '', 'Firefox', 'Mobile'),
(28, 'lQA95BPTmA3952', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-02', 'list', '', '', 'Firefox', 'Mobile'),
(29, 'lQA95BPTmA3952', '::1', 0, 'Home%20Page.php', 'Home', 10, 0, '2020-10-02', 'Home', '', '', 'Firefox', 'Mobile'),
(30, 'lQA95BPTmA3952', '::1', 0, 'discription.php?id=1&cat=2', 'Samsung Galaxy M10 (Ocean Blue, 3+32GB)', 1, 2, '2020-10-02', 'discription', '', '', 'Firefox', 'Mobile'),
(31, 'lQA95BPTmA3952', '::1', 0, 'discription.php?id=2&cat=2', 'Redmi 6 Pro (Black, 4GB RAM, 64GB Storage)', 2, 2, '2020-10-02', 'discription', '', '', 'Firefox', 'Mobile'),
(32, 'lQA95BPTmA3952', '::1', 0, 'discription.php?id=1&cat=2', 'Samsung Galaxy M10 (Ocean Blue, 3+32GB)', 1, 2, '2020-10-02', 'discription', '', '', 'Microsoft Edge', 'Mobile'),
(33, 'lQA95BPTmA3952', '::1', 0, 'discription.php?id=3&cat=2', 'Coolpad Cool 3 Plus (Ocean Blue, 2GB RAM, 16GB Storage)', 3, 2, '2020-10-02', 'discription', '', '', 'Microsoft Edge', 'Tablet'),
(34, 'lQA95BPTmA3952', '::1', 0, 'discription.php?id=4&cat=2', 'Redmi 6 Pro (Black, 3GB RAM, 32GB Storage)', 4, 2, '2020-10-02', 'discription', '', '', 'Microsoft Edge', 'Tablet'),
(35, 'lQA95BPTmA3952', '::1', 0, 'discription.php?id=4&cat=3', 'Microsoft Surface Pro 7 VDV-00015', 4, 3, '2020-10-02', 'discription', '', '', 'Microsoft Edge', 'Tablet'),
(36, 'lQA95BPTmA3952', '::1', 0, 'discription.php?id=4&cat=3', 'Microsoft Surface Pro 7 VDV-00015', 4, 3, '2020-10-02', 'discription', '', '', 'Microsoft Edge', 'Mobile'),
(37, 'lQA95BPTmA3952', '::1', 0, 'discription.php?id=4&cat=3', 'Microsoft Surface Pro 7 VDV-00015', 4, 3, '2020-10-02', 'discription', '', '', 'Microsoft Edge', 'Mobile'),
(38, 'lQA95BPTmA3952', '::1', 0, 'discription.php?id=4&cat=3', 'Microsoft Surface Pro 7 VDV-00015', 4, 3, '2020-10-02', 'discription', '', '', 'Microsoft Edge', 'Desktop'),
(39, 'lQA95BPTmA3952', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-02', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(40, 'lQA95BPTmA3952', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-02', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(41, 'OF9Ff@oSTy8893', '::1', 0, 'Home%20Page.php', 'Home', 10, 0, '2020-10-03', 'Home', '', '', 'Microsoft Edge', 'Desktop'),
(42, 'OF9Ff@oSTy8893', '::1', 0, 'Home%20Page.php', 'Home', 10, 0, '2020-10-03', 'Home', '', '', 'Microsoft Edge', 'Desktop'),
(45, 'QvUGtyl3Uy6838', '::1', 0, 'Home%20Page.php', 'Home', 10, 0, '2020-10-03', 'Home', '', '', 'Microsoft Edge', 'Desktop'),
(46, 'QvUGtyl3Uy6838', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(47, 'cg6R5R0dXn7348', '::1', 0, 'Home%20Page.php', 'Home', 10, 0, '2020-10-03', 'Home', '', '', 'Microsoft Edge', 'Desktop'),
(48, 'DTjSe9P@Mh6319', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(49, 'DTjSe9P@Mh6319', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(50, 'aevjm2CI2j6876', '::1', 0, 'Home%20Page.php', 'Home', 10, 0, '2020-10-03', 'Home', '', '', 'Microsoft Edge', 'Desktop'),
(51, 'A2hIsRQDUN7599', '::1', 0, 'Home%20Page.php', 'Home', 10, 0, '2020-10-03', 'Home', '', '', 'Microsoft Edge', 'Desktop'),
(52, 'nzKis8ib1Q3914', '::1', 0, 'Home%20Page.php', 'Home', 10, 0, '2020-10-03', 'Home', '', '', 'Firefox', 'Desktop'),
(53, 'nzKis8ib1Q3914', '::1', 0, 'Home%20Page.php', 'Home', 10, 0, '2020-10-03', 'Home', '', '', 'Firefox', 'Desktop'),
(54, 'A2hIsRQDUN7599', '::1', 0, 'Home%20Page.php', 'Home', 10, 0, '2020-10-03', 'Home', '', '', 'Microsoft Edge', 'Desktop'),
(55, 'vRMF@DXmKO7387', '::1', 0, 'Home%20Page.php', 'Home', 10, 0, '2020-10-03', 'Home', '', '', 'Microsoft Edge', 'Desktop'),
(56, 'vRMF@DXmKO7387', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(57, 'vRMF@DXmKO7387', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(58, 'jxlTo2p3rJ3524', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(59, 'jxlTo2p3rJ3524', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(60, 'jxlTo2p3rJ3524', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(61, 'jxlTo2p3rJ3524', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(62, 'jxlTo2p3rJ3524', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(63, 'jxlTo2p3rJ3524', '::1', 0, 'Home%20Page.php', 'Home', 10, 0, '2020-10-03', 'Home', '', '', 'Microsoft Edge', 'Desktop'),
(64, 'jxlTo2p3rJ3524', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(65, 'jxlTo2p3rJ3524', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(66, 'XC4MgvfGq23102', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Firefox', 'Desktop'),
(67, 'XC4MgvfGq23102', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Firefox', 'Desktop'),
(68, 'jxlTo2p3rJ3524', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(69, 'kVYcvvgbo$1933', '::1', 0, 'Home%20Page.php', 'Home', 10, 0, '2020-10-03', 'Home', '', '', 'Microsoft Edge', 'Desktop'),
(70, 'kVYcvvgbo$1933', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(71, 'tk3CsUE@2X6391', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(72, 'tk3CsUE@2X6391', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(73, 'tk3CsUE@2X6391', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(74, 'tk3CsUE@2X6391', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(75, '@ejXk37PLn3968', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(76, 'N5U5GEHNLj3579', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(77, 'ccw2np6l3!2850', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(78, 'PqsB9hhzcc2299', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(79, 'BHqHGwqbtk3819', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(80, 'HNC3t2wQoS6218', '::1', 0, 'discription.php?id=1&cat=2', 'Samsung Galaxy M10 (Ocean Blue, 3+32GB)', 1, 2, '2020-10-03', 'discription', '', '', 'Microsoft Edge', 'Desktop'),
(81, 'w94wfT6S$m7475', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(82, 'LHh9tzKsGq7873', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(83, 'oERL4j1il17721', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(84, 'PwWKG9Y5my7229', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(85, 'oAIefQko543389', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(86, 'wP8J1JRka!6192', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(87, 'IqXU4vmqOD3916', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(88, '371Mh76vfE9138', '::1', 0, 'discription.php?id=1&cat=2', 'Samsung Galaxy M10 (Ocean Blue, 3+32GB)', 1, 2, '2020-10-03', 'discription', '', '', 'Microsoft Edge', 'Desktop'),
(89, 'COYudJacoS6878', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(90, '!9LnpCWF7h8663', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(91, 'yx9cHBu7@z7659', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(92, '68H!Kgh03d4773', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(93, 'Ypr@@U6FDg6145', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(94, 'a6F45mMEX17806', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(95, 'XldWqhQlfe7126', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(96, 'ibcxNwWz4O7705', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(97, 'ufjnKJHHGi1459', '::1', 0, 'Home%20Page.php', 'Home', 10, 0, '2020-10-03', 'Home', '', '', 'Firefox', 'Desktop'),
(98, 'ufjnKJHHGi1459', '::1', 0, 'Home%20Page.php', 'Home', 10, 0, '2020-10-03', 'Home', '', '', 'Firefox', 'Desktop'),
(99, 'ufjnKJHHGi1459', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Firefox', 'Desktop'),
(100, 'A$UjjAB3!i2324', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(101, 'ufjnKJHHGi1459', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Firefox', 'Desktop'),
(102, 'GKFp9Trij$8560', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Firefox', 'Desktop'),
(103, 'GKFp9Trij$8560', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Firefox', 'Desktop'),
(104, 'GKFp9Trij$8560', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Firefox', 'Desktop'),
(105, 'GKFp9Trij$8560', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Firefox', 'Desktop'),
(106, 'kRrxZJbJxH2480', '::1', 0, 'Home%20Page.php', 'Home', 10, 0, '2020-10-03', 'Home', '', '', 'Microsoft Edge', 'Desktop'),
(107, 'kRrxZJbJxH2480', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(108, 'LDzCRz!P!$2152', '::1', 0, 'Home%20Page.php', 'Home', 10, 0, '2020-10-03', 'Home', '', '', 'Firefox', 'Desktop'),
(109, 'LDzCRz!P!$2152', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Firefox', 'Desktop'),
(110, 'kRrxZJbJxH2480', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(111, 'kRrxZJbJxH2480', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(112, 'kRrxZJbJxH2480', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(113, 'kRrxZJbJxH2480', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(114, 'TQB1dxTRNi5027', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(115, 'TQB1dxTRNi5027', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(116, 'LDzCRz!P!$2152', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Firefox', 'Desktop'),
(117, 'TQB1dxTRNi5027', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(118, 'TQB1dxTRNi5027', '::1', 0, 'discription.php?id=9&cat=2', 'Samsung Galaxy A10 (Gold, 2GB RAM, 32GB Storage)', 9, 2, '2020-10-03', 'discription', '', '', 'Microsoft Edge', 'Desktop'),
(119, 'TQB1dxTRNi5027', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(120, 'FnousszcRC5746', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(121, 'atsKdOZ7w54499', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(122, 'atsKdOZ7w54499', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(123, 'LDzCRz!P!$2152', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Firefox', 'Desktop'),
(124, 'LDzCRz!P!$2152', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Firefox', 'Desktop'),
(125, 'yiewS945zu7345', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(126, 'yiewS945zu7345', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(127, 'yiewS945zu7345', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(128, 'cJ6KYxkyUO9850', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(129, 'cJ6KYxkyUO9850', '::1', 0, 'discription.php?id=1&cat=2', 'Samsung Galaxy M10 (Ocean Blue, 3+32GB)', 1, 2, '2020-10-03', 'discription', '', '', 'Microsoft Edge', 'Desktop'),
(130, 'cJ6KYxkyUO9850', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(131, 'cJ6KYxkyUO9850', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(132, 'cJ6KYxkyUO9850', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(133, 'cJ6KYxkyUO9850', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(134, 'cJ6KYxkyUO9850', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(135, 'cJ6KYxkyUO9850', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(136, 'cJ6KYxkyUO9850', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(137, 'cJ6KYxkyUO9850', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(138, 'cJ6KYxkyUO9850', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(139, 'cJ6KYxkyUO9850', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(140, 'cJ6KYxkyUO9850', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(141, 'a3pE@94$HG3781', '::1', 0, 'Home%20Page.php', 'Home', 10, 0, '2020-10-03', 'Home', '', '', 'Firefox', 'Desktop'),
(142, 'a3pE@94$HG3781', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Firefox', 'Desktop'),
(143, 'a3pE@94$HG3781', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Firefox', 'Desktop'),
(144, 'a3pE@94$HG3781', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Firefox', 'Desktop'),
(145, 'a3pE@94$HG3781', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Firefox', 'Desktop'),
(146, 'a3pE@94$HG3781', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Firefox', 'Desktop'),
(147, 'a3pE@94$HG3781', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Firefox', 'Desktop'),
(148, 'a3pE@94$HG3781', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Firefox', 'Desktop'),
(149, 'a3pE@94$HG3781', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Firefox', 'Desktop'),
(150, 'a3pE@94$HG3781', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Firefox', 'Desktop'),
(151, 'a3pE@94$HG3781', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Firefox', 'Desktop'),
(152, 'a3pE@94$HG3781', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Firefox', 'Desktop'),
(153, 'a3pE@94$HG3781', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Firefox', 'Desktop'),
(154, 'a3pE@94$HG3781', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Firefox', 'Desktop'),
(155, 'a3pE@94$HG3781', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Firefox', 'Desktop'),
(156, 'a3pE@94$HG3781', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Firefox', 'Desktop'),
(157, 'cJ6KYxkyUO9850', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(158, 'cJ6KYxkyUO9850', '::1', 0, 'discription.php?id=1&cat=2', 'Samsung Galaxy M10 (Ocean Blue, 3+32GB)', 1, 2, '2020-10-03', 'discription', '', '', 'Microsoft Edge', 'Desktop'),
(159, 'cJ6KYxkyUO9850', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(160, 'cJ6KYxkyUO9850', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(161, 'cJ6KYxkyUO9850', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(162, 'cJ6KYxkyUO9850', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(163, 'cJ6KYxkyUO9850', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(164, 'cJ6KYxkyUO9850', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(165, 'cJ6KYxkyUO9850', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(166, 'cJ6KYxkyUO9850', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(167, 'cJ6KYxkyUO9850', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(168, 'cJ6KYxkyUO9850', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(169, 'cJ6KYxkyUO9850', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(170, 'cJ6KYxkyUO9850', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(171, 'cJ6KYxkyUO9850', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(172, 'cJ6KYxkyUO9850', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(173, 'CzE6Mlwc@13503', '::1', 0, 'Home%20Page.php', 'Home', 10, 0, '2020-10-03', 'Home', '', '', 'Microsoft Edge', 'Desktop'),
(174, 'CzE6Mlwc@13503', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(175, 'CzE6Mlwc@13503', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(176, 'CzE6Mlwc@13503', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(177, 'CzE6Mlwc@13503', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(178, 'CzE6Mlwc@13503', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(179, 'CzE6Mlwc@13503', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(180, 'CzE6Mlwc@13503', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(181, 'CzE6Mlwc@13503', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(182, 'HW4mCkXQlo5419', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(183, 'T6M48EhjlS4224', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(184, 'okDE157@tH7644', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(185, 'okDE157@tH7644', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(186, 'okDE157@tH7644', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(187, 'RHOZ5Yb!KR2612', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(188, 'okDE157@tH7644', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(189, 'RHOZ5Yb!KR2612', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(190, 'RHOZ5Yb!KR2612', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(191, 'RHOZ5Yb!KR2612', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(192, 'RHOZ5Yb!KR2612', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(193, 'RHOZ5Yb!KR2612', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(194, 'RHOZ5Yb!KR2612', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(195, 'RHOZ5Yb!KR2612', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(196, 'RHOZ5Yb!KR2612', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(197, 'RHOZ5Yb!KR2612', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(198, 'gioi3WFGAX6393', '::1', 0, 'Home%20Page.php', 'Home', 10, 0, '2020-10-03', 'Home', '', '', 'Firefox', 'Desktop'),
(199, 'gioi3WFGAX6393', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Firefox', 'Desktop'),
(200, 'gioi3WFGAX6393', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-03', 'list', '', '', 'Firefox', 'Desktop'),
(201, 'gioi3WFGAX6393', '::1', 0, 'listitems.php?cat=1', 'Headphones', 0, 1, '2020-10-03', 'list', '', '', 'Firefox', 'Desktop'),
(202, 'gioi3WFGAX6393', '::1', 0, 'listitems.php?cat=1', 'Headphones', 0, 1, '2020-10-03', 'list', '', '', 'Firefox', 'Desktop'),
(203, 'RHOZ5Yb!KR2612', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(204, 'RHOZ5Yb!KR2612', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(205, 'RHOZ5Yb!KR2612', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(206, 'RHOZ5Yb!KR2612', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(207, 'RHOZ5Yb!KR2612', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(208, 'RHOZ5Yb!KR2612', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(209, 'RHOZ5Yb!KR2612', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(210, 'RHOZ5Yb!KR2612', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(211, 'RHOZ5Yb!KR2612', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(212, 'L8l!@mkpRl5650', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(213, 'L8l!@mkpRl5650', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(214, 'L8l!@mkpRl5650', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(215, 'L8l!@mkpRl5650', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(216, 'L8l!@mkpRl5650', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(217, 'L8l!@mkpRl5650', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(218, 'L8l!@mkpRl5650', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(219, 'L8l!@mkpRl5650', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(220, 'L8l!@mkpRl5650', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(221, '59QkhyntVn8503', '::1', 0, 'Home%20Page.php', 'Home', 10, 0, '2020-10-03', 'Home', '', '', 'Firefox', 'Desktop'),
(222, '59QkhyntVn8503', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Firefox', 'Desktop'),
(223, '59QkhyntVn8503', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Firefox', 'Desktop'),
(224, '59QkhyntVn8503', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Firefox', 'Desktop'),
(225, '59QkhyntVn8503', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Firefox', 'Desktop'),
(226, 'L8l!@mkpRl5650', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(227, '59QkhyntVn8503', '::1', 0, 'discription.php?id=1&cat=2', 'Samsung Galaxy M10 (Ocean Blue, 3+32GB)', 1, 2, '2020-10-03', 'discription', '', '', 'Firefox', 'Desktop'),
(228, '59QkhyntVn8503', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Firefox', 'Desktop'),
(229, '59QkhyntVn8503', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Firefox', 'Desktop'),
(230, '59QkhyntVn8503', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Firefox', 'Desktop'),
(231, '59QkhyntVn8503', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Firefox', 'Desktop'),
(232, 'QJ4AQzy3he8980', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(233, 'QJ4AQzy3he8980', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(234, 'QJ4AQzy3he8980', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(235, 'QJ4AQzy3he8980', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(236, 'QJ4AQzy3he8980', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(237, 'QJ4AQzy3he8980', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(238, 'QJ4AQzy3he8980', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(239, 'QJ4AQzy3he8980', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(240, 'QJ4AQzy3he8980', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(241, 'QJ4AQzy3he8980', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(242, 'QJ4AQzy3he8980', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(243, 'QJ4AQzy3he8980', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(244, 'QJ4AQzy3he8980', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(245, 'QJ4AQzy3he8980', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(246, 'QJ4AQzy3he8980', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(247, 'QJ4AQzy3he8980', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(248, 'QJ4AQzy3he8980', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(249, 'QJ4AQzy3he8980', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(250, 'QJ4AQzy3he8980', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(251, 'QJ4AQzy3he8980', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(252, 'QJ4AQzy3he8980', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(253, 'QJ4AQzy3he8980', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(254, 'QJ4AQzy3he8980', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(255, 'QJ4AQzy3he8980', '::1', 0, 'Home%20Page.php', 'Home', 10, 0, '2020-10-03', 'Home', '', '', 'Microsoft Edge', 'Desktop'),
(256, 'QJ4AQzy3he8980', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(257, 'QJ4AQzy3he8980', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(258, 'QJ4AQzy3he8980', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(259, 'QJ4AQzy3he8980', '::1', 0, 'discription.php?id=1&cat=2', 'Samsung Galaxy M10 (Ocean Blue, 3+32GB)', 1, 2, '2020-10-03', 'discription', '', '', 'Microsoft Edge', 'Desktop'),
(260, 'QJ4AQzy3he8980', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-03', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(261, 'XmaGfdLjnM6347', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(262, 'XmaGfdLjnM6347', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(263, 'XmaGfdLjnM6347', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(264, 'XmaGfdLjnM6347', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(265, 'XmaGfdLjnM6347', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(266, 'XmaGfdLjnM6347', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(267, 'XmaGfdLjnM6347', '::1', 0, 'discription.php?id=1&cat=2', 'Samsung Galaxy M10 (Ocean Blue, 3+32GB)', 1, 2, '2020-10-04', 'discription', '', '', 'Microsoft Edge', 'Desktop'),
(268, 'XmaGfdLjnM6347', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(269, 'XmaGfdLjnM6347', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(270, 'XmaGfdLjnM6347', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(271, 'c1D1sIggsE6539', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(272, 'c1D1sIggsE6539', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(273, 'c1D1sIggsE6539', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(274, 'c1D1sIggsE6539', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(275, 'c1D1sIggsE6539', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(276, 'c1D1sIggsE6539', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(277, 'c1D1sIggsE6539', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(278, 'c1D1sIggsE6539', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(279, 'c1D1sIggsE6539', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(280, 'c1D1sIggsE6539', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(281, 'c1D1sIggsE6539', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(282, 'c1D1sIggsE6539', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(283, 'c1D1sIggsE6539', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(284, 'c1D1sIggsE6539', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(285, 'c1D1sIggsE6539', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(286, 'c1D1sIggsE6539', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(287, 'c1D1sIggsE6539', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(288, 'c1D1sIggsE6539', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(289, 'c1D1sIggsE6539', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(290, 'c1D1sIggsE6539', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(291, 'c1D1sIggsE6539', '::1', 0, 'discription.php?id=2&cat=2', 'Redmi 6 Pro (Black, 4GB RAM, 64GB Storage)', 2, 2, '2020-10-04', 'discription', '', '', 'Microsoft Edge', 'Desktop'),
(292, 'c1D1sIggsE6539', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(293, 'c1D1sIggsE6539', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(294, 'c1D1sIggsE6539', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(295, 'c1D1sIggsE6539', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(296, 'c1D1sIggsE6539', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(297, 'c1D1sIggsE6539', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(298, 'c1D1sIggsE6539', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(299, 'V3l2nXOCeV6147', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(300, 'V3l2nXOCeV6147', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(301, 'V3l2nXOCeV6147', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(302, 'V3l2nXOCeV6147', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(303, 'V3l2nXOCeV6147', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(304, 'vCHJ@9EUY83036', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(305, 'vCHJ@9EUY83036', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(306, 'vCHJ@9EUY83036', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(307, 'vCHJ@9EUY83036', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(308, 'vCHJ@9EUY83036', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(309, 'vCHJ@9EUY83036', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(310, 'G1uIoJyol@5385', '::1', 0, 'Home%20Page.php', 'Home', 10, 0, '2020-10-04', 'Home', '', '', 'Firefox', 'Desktop'),
(311, 'G1uIoJyol@5385', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Firefox', 'Desktop'),
(312, 'vCHJ@9EUY83036', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(313, 'vCHJ@9EUY83036', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(314, 'Ey0j$Ks02w5334', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(315, 'Ey0j$Ks02w5334', '::1', 0, 'Home%20Page.php', 'Home', 10, 0, '2020-10-04', 'Home', '', '', 'Microsoft Edge', 'Desktop'),
(316, 'Ey0j$Ks02w5334', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(317, 'Ey0j$Ks02w5334', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(318, 'Ey0j$Ks02w5334', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(319, 'Ey0j$Ks02w5334', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(320, 'Ey0j$Ks02w5334', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(321, 'Ey0j$Ks02w5334', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(322, 'Ey0j$Ks02w5334', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(323, 'Ey0j$Ks02w5334', '::1', 0, 'listitems.php?cat=1', 'Headphones', 0, 1, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(324, 'Ey0j$Ks02w5334', '::1', 0, 'Home%20Page.php', 'Home', 10, 0, '2020-10-04', 'Home', '', '', 'Microsoft Edge', 'Desktop'),
(325, 'Ey0j$Ks02w5334', '::1', 0, 'listitems.php?cat=1', 'Headphones', 0, 1, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(326, 'G1uIoJyol@5385', '::1', 0, 'Home%20Page.php', 'Home', 10, 0, '2020-10-04', 'Home', '', '', 'Firefox', 'Desktop'),
(327, 'G1uIoJyol@5385', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Firefox', 'Desktop'),
(328, 'yUuk9IFeLh5042', '::1', 0, 'Home%20Page.php', 'Home', 10, 0, '2020-10-04', 'Home', '', '', 'Firefox', 'Desktop'),
(329, 'yUuk9IFeLh5042', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Firefox', 'Desktop'),
(330, 'yUuk9IFeLh5042', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Firefox', 'Desktop'),
(331, 'yUuk9IFeLh5042', '::1', 0, 'listitems.php?cat=1', 'Headphones', 0, 1, '2020-10-04', 'list', '', '', 'Firefox', 'Desktop'),
(332, 'yUuk9IFeLh5042', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Firefox', 'Desktop'),
(333, 'yUuk9IFeLh5042', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Firefox', 'Desktop'),
(334, 'yUuk9IFeLh5042', '::1', 0, 'listitems.php?cat=1', 'Headphones', 0, 1, '2020-10-04', 'list', '', '', 'Firefox', 'Desktop'),
(335, 'yUuk9IFeLh5042', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Firefox', 'Desktop'),
(336, 'yUuk9IFeLh5042', '::1', 0, 'listitems.php?cat=1', 'Headphones', 0, 1, '2020-10-04', 'list', '', '', 'Firefox', 'Desktop'),
(337, 'yUuk9IFeLh5042', '::1', 0, 'listitems.php?cat=1', 'Headphones', 0, 1, '2020-10-04', 'list', '', '', 'Firefox', 'Desktop'),
(338, 'yUuk9IFeLh5042', '::1', 0, 'listitems.php?cat=1', 'Headphones', 0, 1, '2020-10-04', 'list', '', '', 'Firefox', 'Desktop'),
(339, 'yUuk9IFeLh5042', '::1', 0, 'listitems.php?cat=1', 'Headphones', 0, 1, '2020-10-04', 'list', '', '', 'Firefox', 'Desktop'),
(340, 'yUuk9IFeLh5042', '::1', 0, 'listitems.php?cat=1', 'Headphones', 0, 1, '2020-10-04', 'list', '', '', 'Firefox', 'Desktop'),
(341, 'yUuk9IFeLh5042', '::1', 0, 'listitems.php?cat=1', 'Headphones', 0, 1, '2020-10-04', 'list', '', '', 'Firefox', 'Desktop'),
(342, 'yUuk9IFeLh5042', '::1', 0, 'listitems.php?cat=1', 'Headphones', 0, 1, '2020-10-04', 'list', '', '', 'Firefox', 'Desktop'),
(343, 'vjB5Da6SMJ9085', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(344, 'vjB5Da6SMJ9085', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(345, 'vjB5Da6SMJ9085', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(346, 'vjB5Da6SMJ9085', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(347, 'vjB5Da6SMJ9085', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(348, 'vjB5Da6SMJ9085', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(349, 'vjB5Da6SMJ9085', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(350, 'vjB5Da6SMJ9085', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(351, 'vjB5Da6SMJ9085', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(352, 'vjB5Da6SMJ9085', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(353, 'vjB5Da6SMJ9085', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(354, 'vjB5Da6SMJ9085', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(355, 'vjB5Da6SMJ9085', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(356, 'vjB5Da6SMJ9085', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(357, 'vjB5Da6SMJ9085', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(358, 'lgS97jVlvO8976', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(359, 'lgS97jVlvO8976', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(360, 'lgS97jVlvO8976', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(361, 'lgS97jVlvO8976', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(362, 'lgS97jVlvO8976', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(363, 'lgS97jVlvO8976', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(364, 'lgS97jVlvO8976', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(365, 'lgS97jVlvO8976', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(366, 'lgS97jVlvO8976', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(367, 'lgS97jVlvO8976', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(368, 'lgS97jVlvO8976', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(369, 'lgS97jVlvO8976', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(370, 'lgS97jVlvO8976', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(371, 'SP2Max3rYq3101', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(372, 'SP2Max3rYq3101', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(373, 'SP2Max3rYq3101', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(374, 'SP2Max3rYq3101', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(375, 'SP2Max3rYq3101', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(376, 'SP2Max3rYq3101', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(377, 'SP2Max3rYq3101', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(378, 'SP2Max3rYq3101', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(379, 'SP2Max3rYq3101', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(380, 'SP2Max3rYq3101', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(381, 'SP2Max3rYq3101', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(382, 'SP2Max3rYq3101', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(383, 'SP2Max3rYq3101', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(384, 'SP2Max3rYq3101', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(385, 'SP2Max3rYq3101', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(386, 'SP2Max3rYq3101', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(387, 'SP2Max3rYq3101', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(388, 'SP2Max3rYq3101', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(389, 'SP2Max3rYq3101', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(390, 'SP2Max3rYq3101', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(391, 'SP2Max3rYq3101', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(392, 'SP2Max3rYq3101', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(393, 'SP2Max3rYq3101', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(394, 'SP2Max3rYq3101', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop');
INSERT INTO `page_analytics` (`id`, `session`, `user`, `user_type`, `url`, `title`, `pid`, `cat`, `date_val`, `page_name`, `country`, `city`, `browser`, `device`) VALUES
(395, 'SP2Max3rYq3101', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(396, 'SP2Max3rYq3101', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(397, 'SP2Max3rYq3101', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(398, 'SP2Max3rYq3101', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(399, 'SP2Max3rYq3101', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(400, 'SP2Max3rYq3101', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(401, 'SP2Max3rYq3101', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(402, 'SP2Max3rYq3101', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(403, 'sPFjwG6PcZ4462', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(404, 'sPFjwG6PcZ4462', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(405, 'sPFjwG6PcZ4462', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(406, 'sPFjwG6PcZ4462', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(407, 'sPFjwG6PcZ4462', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(408, 'okDE157@tH7644', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(409, 'okDE157@tH7644', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(410, 'okDE157@tH7644', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(411, 't8cF3$j$4Y5591', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(412, 't8cF3$j$4Y5591', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(413, 't8cF3$j$4Y5591', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(414, 't8cF3$j$4Y5591', '::1', 0, 'discription.php?id=4&cat=3', 'Microsoft Surface Pro 7 VDV-00015', 4, 3, '2020-10-04', 'discription', '', '', 'Microsoft Edge', 'Desktop'),
(415, 't8cF3$j$4Y5591', '::1', 0, 'discription.php?id=4&cat=3', 'Microsoft Surface Pro 7 VDV-00015', 4, 3, '2020-10-04', 'discription', '', '', 'Microsoft Edge', 'Desktop'),
(416, 'zKitq6gs$a3756', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(417, 'zKitq6gs$a3756', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(418, 'zKitq6gs$a3756', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(419, 'zKitq6gs$a3756', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(420, 'vuW0MbtCAp5872', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(421, 'vuW0MbtCAp5872', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(422, 'vuW0MbtCAp5872', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(423, 'vuW0MbtCAp5872', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(424, 'vuW0MbtCAp5872', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(425, '2nt1@6!EmO1737', '::1', 0, 'Home%20Page.php', 'Home', 10, 0, '2020-10-04', 'Home', '', '', 'Microsoft Edge', 'Desktop'),
(426, '2nt1@6!EmO1737', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(427, '2nt1@6!EmO1737', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(428, '2nt1@6!EmO1737', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(429, '2nt1@6!EmO1737', '::1', 0, 'discription.php?id=3&cat=3', 'ASUS VivoBook 15 Intel Core', 3, 3, '2020-10-04', 'discription', '', '', 'Microsoft Edge', 'Desktop'),
(430, '2nt1@6!EmO1737', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(431, '!DTLgwzf$37797', '::1', 0, 'Home%20Page.php', 'Home', 10, 0, '2020-10-04', 'Home', '', '', 'Firefox', 'Desktop'),
(432, '!DTLgwzf$37797', '::1', 0, 'listitems.php?cat=2', 'Smartphones', 0, 2, '2020-10-04', 'list', '', '', 'Firefox', 'Desktop'),
(433, '!DTLgwzf$37797', '::1', 0, 'listitems.php?cat=1', 'Headphones', 0, 1, '2020-10-04', 'list', '', '', 'Firefox', 'Desktop'),
(434, '!DTLgwzf$37797', '::1', 0, 'listitems.php?cat=1', 'Headphones', 0, 1, '2020-10-04', 'list', '', '', 'Firefox', 'Desktop'),
(435, '!DTLgwzf$37797', '::1', 0, 'listitems.php?cat=1', 'Headphones', 0, 1, '2020-10-04', 'list', '', '', 'Firefox', 'Desktop'),
(436, '2nt1@6!EmO1737', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(437, '2nt1@6!EmO1737', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(438, '2nt1@6!EmO1737', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(439, '2nt1@6!EmO1737', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(440, '2nt1@6!EmO1737', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(441, '2nt1@6!EmO1737', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(442, 'apmbdnrLe35527', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(443, 'apmbdnrLe35527', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(444, 'apmbdnrLe35527', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(445, 'apmbdnrLe35527', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(446, 'apmbdnrLe35527', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(447, 'apmbdnrLe35527', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(448, 'apmbdnrLe35527', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(449, 'apmbdnrLe35527', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(450, 'apmbdnrLe35527', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(451, 'apmbdnrLe35527', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(452, 'apmbdnrLe35527', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(453, 'apmbdnrLe35527', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(454, 'apmbdnrLe35527', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(455, 'apmbdnrLe35527', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(456, 'apmbdnrLe35527', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(457, 'apmbdnrLe35527', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(458, 'apmbdnrLe35527', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(459, 'apmbdnrLe35527', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(460, 'apmbdnrLe35527', '::1', 0, 'list_items.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(461, 'apmbdnrLe35527', '::1', 0, 'list_items.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(462, 'apmbdnrLe35527', '::1', 0, 'listitems.php?cat=3', 'Laptops', 0, 3, '2020-10-04', 'list', '', '', 'Microsoft Edge', 'Desktop'),
(463, 'apmbdnrLe35527', '8', 1, 'Home%20Page.php', 'Home', 10, 0, '2020-10-04', 'Home', '', '', 'Microsoft Edge', 'Desktop'),
(464, 'apmbdnrLe35527', '8', 1, 'itemcart.php', ' Cart', 3, 1, '2020-10-04', 'Cart', '', '', 'Microsoft Edge', 'Desktop'),
(465, 'apmbdnrLe35527', '8', 1, 'itemcart.php', ' Cart', 3, 1, '2020-10-04', 'Cart', '', '', 'Microsoft Edge', 'Desktop');

-- --------------------------------------------------------

--
-- Table structure for table `product_impression`
--

CREATE TABLE `product_impression` (
  `id` int(11) NOT NULL,
  `session` text NOT NULL,
  `pid` int(11) NOT NULL,
  `cat` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `recommend`
--

CREATE TABLE `recommend` (
  `id` int(11) NOT NULL,
  `ip` text NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `recommend`
--

INSERT INTO `recommend` (`id`, `ip`, `name`) VALUES
(4, '::1', 'Asus'),
(5, '::1', 'BYMUSE'),
(6, '::1', 'Samsung'),
(7, '::1', 'boAt '),
(8, '::1', 'Mi'),
(9, '::1', 'ODIO'),
(10, '::1', 'Microsoft'),
(11, '::1', 'Coolpad');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `a` text NOT NULL,
  `b` text NOT NULL,
  `c` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `timing`
--

CREATE TABLE `timing` (
  `id` int(11) NOT NULL,
  `session` text NOT NULL,
  `url` text NOT NULL,
  `duration` text NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `timing`
--

INSERT INTO `timing` (`id`, `session`, `url`, `duration`, `date`) VALUES
(17, 'lQA95BPTmA3952', 'Home%20Page.php', '57.544', '2020/10/02'),
(18, 'lQA95BPTmA3952', 'Home%20Page.php', '12.93', '2020/10/02'),
(19, 'lQA95BPTmA3952', 'listitems.php?cat=2', '194.239', '2020/10/02'),
(20, 'lQA95BPTmA3952', 'discription.php?id=1&cat=2', '721.905', '2020/10/02'),
(21, 'lQA95BPTmA3952', 'listitems.php?cat=2', '1.159', '2020/10/02'),
(22, 'lQA95BPTmA3952', 'discription.php?id=1&cat=2', '1.431', '2020/10/02'),
(23, 'lQA95BPTmA3952', 'discription.php?id=2&cat=2', '2.235', '2020/10/02'),
(24, 'lQA95BPTmA3952', 'discription.php?id=1&cat=2', '1.448', '2020/10/02'),
(25, 'lQA95BPTmA3952', 'discription.php?id=3&cat=2', '1.889', '2020/10/02'),
(26, 'lQA95BPTmA3952', 'discription.php?id=4&cat=2', '1.272', '2020/10/02'),
(27, 'lQA95BPTmA3952', 'discription.php?id=4&cat=3', '1.8', '2020/10/02'),
(28, 'lQA95BPTmA3952', 'discription.php?id=4&cat=3', '1.472', '2020/10/02'),
(29, 'lQA95BPTmA3952', 'discription.php?id=4&cat=3', '0.821', '2020/10/02'),
(30, 'lQA95BPTmA3952', 'discription.php?id=4&cat=3', '2.284', '2020/10/02'),
(31, 'lQA95BPTmA3952', 'Home%20Page.php', '3529.426', '2020/10/02'),
(32, 'lQA95BPTmA3952', 'listitems.php?cat=2', '57.849', '2020/10/02'),
(33, 'lQA95BPTmA3952', 'listitems.php?cat=2', '152.572', '2020/10/02'),
(34, 'OF9Ff@oSTy8893', 'Home%20Page.php', '13.985', '2020/10/03'),
(35, 'OF9Ff@oSTy8893', 'Home%20Page.php', '4.846', '2020/10/03'),
(36, 'QvUGtyl3Uy6838', 'Home%20Page.php', '11.909', '2020/10/03'),
(37, 'DTjSe9P@Mh6319', 'listitems.php?cat=2', '45.84', '2020/10/03'),
(38, 'QvUGtyl3Uy6838', 'listitems.php?cat=2', '3000.56', '2020/10/03'),
(39, 'aevjm2CI2j6876', 'Home%20Page.php', '256.157', '2020/10/03'),
(40, 'A2hIsRQDUN7599', 'Home%20Page.php', '1041.768', '2020/10/03'),
(41, 'A2hIsRQDUN7599', 'Home%20Page.php', '2210.147', '2020/10/03'),
(42, 'nzKis8ib1Q3914', 'Home%20Page.php', '2253.928', '2020/10/03'),
(43, 'vRMF@DXmKO7387', 'Home%20Page.php', '2.015', '2020/10/03'),
(44, 'vRMF@DXmKO7387', 'listitems.php?cat=2', '94.298', '2020/10/03'),
(45, 'vRMF@DXmKO7387', 'listitems.php?cat=2', '7.657', '2020/10/03'),
(46, 'jxlTo2p3rJ3524', 'listitems.php?cat=2', '66.913', '2020/10/03'),
(47, 'jxlTo2p3rJ3524', 'listitems.php?cat=2', '54.41', '2020/10/03'),
(48, 'jxlTo2p3rJ3524', 'listitems.php?cat=2', '46.251', '2020/10/03'),
(49, 'jxlTo2p3rJ3524', 'listitems.php?cat=2', '41.357', '2020/10/03'),
(50, 'jxlTo2p3rJ3524', 'listitems.php?cat=2', '4.893', '2020/10/03'),
(51, 'jxlTo2p3rJ3524', 'Home%20Page.php', '4.097', '2020/10/03'),
(52, 'jxlTo2p3rJ3524', 'listitems.php?cat=2', '26.477', '2020/10/03'),
(53, 'jxlTo2p3rJ3524', 'listitems.php?cat=2', '157.805', '2020/10/03'),
(54, 'jxlTo2p3rJ3524', 'listitems.php?cat=2', '21.19', '2020/10/03'),
(55, 'XC4MgvfGq23102', 'listitems.php?cat=2', '72.13', '2020/10/03'),
(56, 'kVYcvvgbo$1933', 'Home%20Page.php', '2.622', '2020/10/03'),
(57, 'kVYcvvgbo$1933', 'listitems.php?cat=2', '69.108', '2020/10/03'),
(58, 'tk3CsUE@2X6391', 'listitems.php?cat=2', '43.022', '2020/10/03'),
(59, 'tk3CsUE@2X6391', 'listitems.php?cat=2', '50.8', '2020/10/03'),
(60, 'tk3CsUE@2X6391', 'listitems.php?cat=2', '97.728', '2020/10/03'),
(61, 'tk3CsUE@2X6391', 'listitems.php?cat=2', '12.354', '2020/10/03'),
(62, '@ejXk37PLn3968', 'listitems.php?cat=2', '688.805', '2020/10/03'),
(63, 'N5U5GEHNLj3579', 'listitems.php?cat=2', '49.906', '2020/10/03'),
(64, 'ccw2np6l3!2850', 'listitems.php?cat=2', '19.602', '2020/10/03'),
(65, 'PqsB9hhzcc2299', 'listitems.php?cat=2', '17.264', '2020/10/03'),
(66, 'HNC3t2wQoS6218', 'discription.php?id=1&cat=2', '1.317', '2020/10/03'),
(67, 'BHqHGwqbtk3819', 'listitems.php?cat=2', '47.062', '2020/10/03'),
(68, 'w94wfT6S$m7475', 'listitems.php?cat=2', '8.214', '2020/10/03'),
(69, 'LHh9tzKsGq7873', 'listitems.php?cat=2', '13.342', '2020/10/03'),
(70, 'oERL4j1il17721', 'listitems.php?cat=2', '10.675', '2020/10/03'),
(71, 'PwWKG9Y5my7229', 'listitems.php?cat=2', '53.436', '2020/10/03'),
(72, 'oAIefQko543389', 'listitems.php?cat=2', '5.555', '2020/10/03'),
(73, 'wP8J1JRka!6192', 'listitems.php?cat=2', '15.429', '2020/10/03'),
(74, 'IqXU4vmqOD3916', 'listitems.php?cat=2', '26.421', '2020/10/03'),
(75, '371Mh76vfE9138', 'discription.php?id=1&cat=2', '1.381', '2020/10/03'),
(76, 'COYudJacoS6878', 'listitems.php?cat=2', '17.547', '2020/10/03'),
(77, '!9LnpCWF7h8663', 'listitems.php?cat=2', '84.011', '2020/10/03'),
(78, 'yx9cHBu7@z7659', 'listitems.php?cat=2', '242.109', '2020/10/03'),
(79, '68H!Kgh03d4773', 'listitems.php?cat=2', '2.145', '2020/10/03'),
(80, 'Ypr@@U6FDg6145', 'listitems.php?cat=2', '7.662', '2020/10/03'),
(81, 'a6F45mMEX17806', 'listitems.php?cat=2', '2.107', '2020/10/03'),
(82, 'XldWqhQlfe7126', 'listitems.php?cat=2', '66.804', '2020/10/03'),
(83, 'ibcxNwWz4O7705', 'listitems.php?cat=2', '278.141', '2020/10/03'),
(84, 'GKFp9Trij$8560', 'listitems.php?cat=2', '2.095', '2020/10/03'),
(85, 'A$UjjAB3!i2324', 'listitems.php?cat=2', '258.985', '2020/10/03'),
(86, 'kRrxZJbJxH2480', 'Home%20Page.php', '2.669', '2020/10/03'),
(87, 'kRrxZJbJxH2480', 'listitems.php?cat=2', '262.239', '2020/10/03'),
(88, 'kRrxZJbJxH2480', 'listitems.php?cat=2', '11.938', '2020/10/03'),
(89, 'kRrxZJbJxH2480', 'listitems.php?cat=2', '3.427', '2020/10/03'),
(90, 'kRrxZJbJxH2480', 'listitems.php?cat=2', '84.248', '2020/10/03'),
(91, 'kRrxZJbJxH2480', 'listitems.php?cat=2', '110.463', '2020/10/03'),
(92, 'TQB1dxTRNi5027', 'listitems.php?cat=2', '84.593', '2020/10/03'),
(93, 'TQB1dxTRNi5027', 'listitems.php?cat=2', '180.556', '2020/10/03'),
(94, 'TQB1dxTRNi5027', 'listitems.php?cat=2', '3.947', '2020/10/03'),
(95, 'TQB1dxTRNi5027', 'discription.php?id=9&cat=2', '1.359', '2020/10/03'),
(96, 'TQB1dxTRNi5027', 'listitems.php?cat=2', '101.441', '2020/10/03'),
(97, 'FnousszcRC5746', 'listitems.php?cat=2', '25.507', '2020/10/03'),
(98, 'atsKdOZ7w54499', 'listitems.php?cat=2', '121.341', '2020/10/03'),
(99, 'LDzCRz!P!$2152', 'listitems.php?cat=2', '2.096', '2020/10/03'),
(100, 'atsKdOZ7w54499', 'listitems.php?cat=2', '80.805', '2020/10/03'),
(101, 'yiewS945zu7345', 'listitems.php?cat=2', '53.699', '2020/10/03'),
(102, 'yiewS945zu7345', 'listitems.php?cat=2', '60.158', '2020/10/03'),
(103, 'yiewS945zu7345', 'listitems.php?cat=2', '12.643', '2020/10/03'),
(104, 'cJ6KYxkyUO9850', 'listitems.php?cat=2', '26.797', '2020/10/03'),
(105, 'cJ6KYxkyUO9850', 'discription.php?id=1&cat=2', '1.588', '2020/10/03'),
(106, 'cJ6KYxkyUO9850', 'listitems.php?cat=2', '36.009', '2020/10/03'),
(107, 'cJ6KYxkyUO9850', 'listitems.php?cat=2', '8.546', '2020/10/03'),
(108, 'cJ6KYxkyUO9850', 'listitems.php?cat=2', '8.108', '2020/10/03'),
(109, 'cJ6KYxkyUO9850', 'listitems.php?cat=2', '8.722', '2020/10/03'),
(110, 'cJ6KYxkyUO9850', 'listitems.php?cat=2', '6.285', '2020/10/03'),
(111, 'cJ6KYxkyUO9850', 'listitems.php?cat=2', '2.786', '2020/10/03'),
(112, 'cJ6KYxkyUO9850', 'listitems.php?cat=2', '2.181', '2020/10/03'),
(113, 'cJ6KYxkyUO9850', 'listitems.php?cat=2', '0.789', '2020/10/03'),
(114, 'cJ6KYxkyUO9850', 'listitems.php?cat=2', '0.5', '2020/10/03'),
(115, 'cJ6KYxkyUO9850', 'listitems.php?cat=2', '0.262', '2020/10/03'),
(116, 'cJ6KYxkyUO9850', 'listitems.php?cat=2', '386.744', '2020/10/03'),
(117, 'cJ6KYxkyUO9850', 'listitems.php?cat=2', '9.649', '2020/10/03'),
(118, 'cJ6KYxkyUO9850', 'discription.php?id=1&cat=2', '2.808', '2020/10/03'),
(119, 'cJ6KYxkyUO9850', 'listitems.php?cat=2', '2.205', '2020/10/03'),
(120, 'cJ6KYxkyUO9850', 'listitems.php?cat=2', '0.808', '2020/10/03'),
(121, 'cJ6KYxkyUO9850', 'listitems.php?cat=2', '0.5', '2020/10/03'),
(122, 'cJ6KYxkyUO9850', 'listitems.php?cat=2', '8.861', '2020/10/03'),
(123, 'cJ6KYxkyUO9850', 'listitems.php?cat=2', '605.495', '2020/10/03'),
(124, 'cJ6KYxkyUO9850', 'listitems.php?cat=2', '3.087', '2020/10/03'),
(125, 'cJ6KYxkyUO9850', 'listitems.php?cat=2', '3.979', '2020/10/03'),
(126, 'cJ6KYxkyUO9850', 'listitems.php?cat=2', '4.655', '2020/10/03'),
(127, 'cJ6KYxkyUO9850', 'listitems.php?cat=2', '0.651', '2020/10/03'),
(128, 'cJ6KYxkyUO9850', 'listitems.php?cat=2', '17.285', '2020/10/03'),
(129, 'cJ6KYxkyUO9850', 'listitems.php?cat=2', '2.664', '2020/10/03'),
(130, 'cJ6KYxkyUO9850', 'listitems.php?cat=2', '487.999', '2020/10/03'),
(131, 'cJ6KYxkyUO9850', 'listitems.php?cat=2', '1.917', '2020/10/03'),
(132, 'cJ6KYxkyUO9850', 'listitems.php?cat=2', '2.497', '2020/10/03'),
(133, 'CzE6Mlwc@13503', 'Home%20Page.php', '1.914', '2020/10/03'),
(134, 'CzE6Mlwc@13503', 'listitems.php?cat=2', '7.201', '2020/10/03'),
(135, 'CzE6Mlwc@13503', 'listitems.php?cat=2', '4.712', '2020/10/03'),
(136, 'CzE6Mlwc@13503', 'listitems.php?cat=2', '0.763', '2020/10/03'),
(137, 'CzE6Mlwc@13503', 'listitems.php?cat=2', '0.606', '2020/10/03'),
(138, 'CzE6Mlwc@13503', 'listitems.php?cat=2', '0.396', '2020/10/03'),
(139, 'CzE6Mlwc@13503', 'listitems.php?cat=2', '0.311', '2020/10/03'),
(140, 'CzE6Mlwc@13503', 'listitems.php?cat=2', '0.221', '2020/10/03'),
(141, 'CzE6Mlwc@13503', 'listitems.php?cat=2', '9.874', '2020/10/03'),
(142, 'HW4mCkXQlo5419', 'listitems.php?cat=2', '28.894', '2020/10/03'),
(143, 'T6M48EhjlS4224', 'listitems.php?cat=2', '10.615', '2020/10/03'),
(144, 'okDE157@tH7644', 'listitems.php?cat=2', '50.325', '2020/10/03'),
(145, 'a3pE@94$HG3781', 'listitems.php?cat=2', '1360.876', '2020/10/03'),
(146, 'okDE157@tH7644', 'listitems.php?cat=2', '35.157', '2020/10/03'),
(147, 'okDE157@tH7644', 'listitems.php?cat=2', '161.819', '2020/10/03'),
(148, 'RHOZ5Yb!KR2612', 'listitems.php?cat=2', '220.601', '2020/10/03'),
(149, 'RHOZ5Yb!KR2612', 'listitems.php?cat=2', '2.697', '2020/10/03'),
(150, 'RHOZ5Yb!KR2612', 'listitems.php?cat=2', '0.823', '2020/10/03'),
(151, 'RHOZ5Yb!KR2612', 'listitems.php?cat=2', '0.496', '2020/10/03'),
(152, 'RHOZ5Yb!KR2612', 'listitems.php?cat=2', '0.429', '2020/10/03'),
(153, 'RHOZ5Yb!KR2612', 'listitems.php?cat=2', '0.398', '2020/10/03'),
(154, 'RHOZ5Yb!KR2612', 'listitems.php?cat=2', '0.374', '2020/10/03'),
(155, 'RHOZ5Yb!KR2612', 'listitems.php?cat=2', '0.17', '2020/10/03'),
(156, 'RHOZ5Yb!KR2612', 'listitems.php?cat=2', '0.9', '2020/10/03'),
(157, 'RHOZ5Yb!KR2612', 'listitems.php?cat=2', '297.664', '2020/10/03'),
(158, 'RHOZ5Yb!KR2612', 'listitems.php?cat=2', '1.189', '2020/10/03'),
(159, 'RHOZ5Yb!KR2612', 'listitems.php?cat=2', '0.513', '2020/10/03'),
(160, 'RHOZ5Yb!KR2612', 'listitems.php?cat=2', '0.425', '2020/10/03'),
(161, 'RHOZ5Yb!KR2612', 'listitems.php?cat=2', '0.405', '2020/10/03'),
(162, 'RHOZ5Yb!KR2612', 'listitems.php?cat=2', '0.502', '2020/10/03'),
(163, 'RHOZ5Yb!KR2612', 'listitems.php?cat=2', '6.411', '2020/10/03'),
(164, 'RHOZ5Yb!KR2612', 'listitems.php?cat=2', '24.513', '2020/10/03'),
(165, 'L8l!@mkpRl5650', 'listitems.php?cat=2', '7.74', '2020/10/03'),
(166, 'L8l!@mkpRl5650', 'listitems.php?cat=2', '0.829', '2020/10/03'),
(167, 'L8l!@mkpRl5650', 'listitems.php?cat=2', '0.558', '2020/10/03'),
(168, 'L8l!@mkpRl5650', 'listitems.php?cat=2', '0.553', '2020/10/03'),
(169, 'L8l!@mkpRl5650', 'listitems.php?cat=2', '0.599', '2020/10/03'),
(170, 'L8l!@mkpRl5650', 'listitems.php?cat=2', '31.594', '2020/10/03'),
(171, 'L8l!@mkpRl5650', 'listitems.php?cat=2', '3.311', '2020/10/03'),
(172, 'L8l!@mkpRl5650', 'listitems.php?cat=2', '0.723', '2020/10/03'),
(173, 'L8l!@mkpRl5650', 'listitems.php?cat=2', '525.363', '2020/10/03'),
(174, 'L8l!@mkpRl5650', 'listitems.php?cat=2', '1.02', '2020/10/03'),
(175, '59QkhyntVn8503', 'listitems.php?cat=2', '5.345', '2020/10/03'),
(176, 'QJ4AQzy3he8980', 'listitems.php?cat=2', '10.345', '2020/10/03'),
(177, 'QJ4AQzy3he8980', 'listitems.php?cat=2', '72.893', '2020/10/03'),
(178, 'QJ4AQzy3he8980', 'listitems.php?cat=2', '16.073', '2020/10/03'),
(179, 'QJ4AQzy3he8980', 'listitems.php?cat=2', '35.147', '2020/10/03'),
(180, 'QJ4AQzy3he8980', 'listitems.php?cat=2', '26.846', '2020/10/03'),
(181, 'QJ4AQzy3he8980', 'listitems.php?cat=2', '31.396', '2020/10/03'),
(182, 'QJ4AQzy3he8980', 'listitems.php?cat=2', '52.233', '2020/10/03'),
(183, 'QJ4AQzy3he8980', 'listitems.php?cat=2', '36.765', '2020/10/03'),
(184, 'QJ4AQzy3he8980', 'listitems.php?cat=2', '23.423', '2020/10/03'),
(185, 'QJ4AQzy3he8980', 'listitems.php?cat=2', '31.201', '2020/10/03'),
(186, 'QJ4AQzy3he8980', 'listitems.php?cat=2', '61.714', '2020/10/03'),
(187, 'QJ4AQzy3he8980', 'listitems.php?cat=2', '34.787', '2020/10/03'),
(188, 'QJ4AQzy3he8980', 'listitems.php?cat=2', '37.052', '2020/10/03'),
(189, 'QJ4AQzy3he8980', 'listitems.php?cat=2', '228.729', '2020/10/03'),
(190, 'QJ4AQzy3he8980', 'listitems.php?cat=2', '81.322', '2020/10/03'),
(191, 'QJ4AQzy3he8980', 'listitems.php?cat=2', '14.358', '2020/10/03'),
(192, 'QJ4AQzy3he8980', 'listitems.php?cat=2', '14.982', '2020/10/03'),
(193, 'QJ4AQzy3he8980', 'listitems.php?cat=2', '17.313', '2020/10/03'),
(194, 'QJ4AQzy3he8980', 'listitems.php?cat=2', '83.377', '2020/10/03'),
(195, 'QJ4AQzy3he8980', 'listitems.php?cat=2', '63.537', '2020/10/03'),
(196, 'QJ4AQzy3he8980', 'listitems.php?cat=2', '188.646', '2020/10/03'),
(197, 'QJ4AQzy3he8980', 'listitems.php?cat=2', '148.074', '2020/10/03'),
(198, 'QJ4AQzy3he8980', 'Home%20Page.php', '581.335', '2020/10/03'),
(199, 'QJ4AQzy3he8980', 'listitems.php?cat=2', '69.025', '2020/10/03'),
(200, 'QJ4AQzy3he8980', 'listitems.php?cat=2', '352.824', '2020/10/03'),
(201, 'QJ4AQzy3he8980', 'listitems.php?cat=2', '5.604', '2020/10/03'),
(202, 'QJ4AQzy3he8980', 'discription.php?id=1&cat=2', '1.651', '2020/10/03'),
(203, 'QJ4AQzy3he8980', 'listitems.php?cat=2', '2393.666', '2020/10/03'),
(204, 'QJ4AQzy3he8980', 'listitems.php?cat=2', '119.473', '2020/10/03'),
(205, 'XmaGfdLjnM6347', 'listitems.php?cat=2', '75.694', '2020/10/04'),
(206, 'XmaGfdLjnM6347', 'listitems.php?cat=2', '59.592', '2020/10/04'),
(207, 'XmaGfdLjnM6347', 'listitems.php?cat=2', '37.998', '2020/10/04'),
(208, 'XmaGfdLjnM6347', 'listitems.php?cat=2', '96.616', '2020/10/04'),
(209, 'XmaGfdLjnM6347', 'listitems.php?cat=2', '12.3', '2020/10/04'),
(210, 'XmaGfdLjnM6347', 'listitems.php?cat=2', '10.434', '2020/10/04'),
(211, 'XmaGfdLjnM6347', 'discription.php?id=1&cat=2', '0.645', '2020/10/04'),
(212, 'XmaGfdLjnM6347', 'listitems.php?cat=2', '17.89', '2020/10/04'),
(213, 'XmaGfdLjnM6347', 'listitems.php?cat=2', '3.699', '2020/10/04'),
(214, 'XmaGfdLjnM6347', 'listitems.php?cat=2', '310.222', '2020/10/04'),
(215, 'c1D1sIggsE6539', 'listitems.php?cat=2', '23.184', '2020/10/04'),
(216, 'c1D1sIggsE6539', 'listitems.php?cat=2', '27.198', '2020/10/04'),
(217, 'c1D1sIggsE6539', 'listitems.php?cat=2', '13.049', '2020/10/04'),
(218, 'c1D1sIggsE6539', 'listitems.php?cat=2', '86.575', '2020/10/04'),
(219, 'c1D1sIggsE6539', 'listitems.php?cat=2', '13.887', '2020/10/04'),
(220, 'c1D1sIggsE6539', 'listitems.php?cat=2', '74.249', '2020/10/04'),
(221, 'c1D1sIggsE6539', 'listitems.php?cat=2', '61.1', '2020/10/04'),
(222, 'c1D1sIggsE6539', 'listitems.php?cat=2', '0.754', '2020/10/04'),
(223, 'c1D1sIggsE6539', 'listitems.php?cat=2', '0.451', '2020/10/04'),
(224, 'c1D1sIggsE6539', 'listitems.php?cat=2', '0.383', '2020/10/04'),
(225, 'c1D1sIggsE6539', 'listitems.php?cat=2', '0.317', '2020/10/04'),
(226, 'c1D1sIggsE6539', 'listitems.php?cat=2', '0.274', '2020/10/04'),
(227, 'c1D1sIggsE6539', 'listitems.php?cat=2', '0.187', '2020/10/04'),
(228, 'c1D1sIggsE6539', 'listitems.php?cat=2', '0.261', '2020/10/04'),
(229, 'c1D1sIggsE6539', 'listitems.php?cat=2', '0.116', '2020/10/04'),
(230, 'c1D1sIggsE6539', 'listitems.php?cat=2', '0.129', '2020/10/04'),
(231, 'c1D1sIggsE6539', 'listitems.php?cat=2', '0.134', '2020/10/04'),
(232, 'c1D1sIggsE6539', 'listitems.php?cat=2', '0.26', '2020/10/04'),
(233, 'c1D1sIggsE6539', 'listitems.php?cat=2', '100.843', '2020/10/04'),
(234, 'c1D1sIggsE6539', 'discription.php?id=2&cat=2', '2.047', '2020/10/04'),
(235, 'c1D1sIggsE6539', 'listitems.php?cat=2', '138.092', '2020/10/04'),
(236, 'c1D1sIggsE6539', 'listitems.php?cat=2', '18.994', '2020/10/04'),
(237, 'c1D1sIggsE6539', 'listitems.php?cat=2', '23.975', '2020/10/04'),
(238, 'c1D1sIggsE6539', 'listitems.php?cat=2', '16.613', '2020/10/04'),
(239, 'c1D1sIggsE6539', 'listitems.php?cat=2', '29.561', '2020/10/04'),
(240, 'c1D1sIggsE6539', 'listitems.php?cat=2', '58.099', '2020/10/04'),
(241, 'V3l2nXOCeV6147', 'listitems.php?cat=2', '86.065', '2020/10/04'),
(242, 'V3l2nXOCeV6147', 'listitems.php?cat=2', '67.543', '2020/10/04'),
(243, 'V3l2nXOCeV6147', 'listitems.php?cat=2', '11.623', '2020/10/04'),
(244, 'V3l2nXOCeV6147', 'listitems.php?cat=2', '16.287', '2020/10/04'),
(245, 'V3l2nXOCeV6147', 'listitems.php?cat=2', '26.982', '2020/10/04'),
(246, 'vCHJ@9EUY83036', 'listitems.php?cat=2', '16.988', '2020/10/04'),
(247, 'vCHJ@9EUY83036', 'listitems.php?cat=2', '34.421', '2020/10/04'),
(248, 'vCHJ@9EUY83036', 'listitems.php?cat=2', '129.954', '2020/10/04'),
(249, 'vCHJ@9EUY83036', 'listitems.php?cat=2', '13.138', '2020/10/04'),
(250, 'vCHJ@9EUY83036', 'listitems.php?cat=2', '153.364', '2020/10/04'),
(251, 'vCHJ@9EUY83036', 'listitems.php?cat=2', '243.161', '2020/10/04'),
(252, 'vCHJ@9EUY83036', 'listitems.php?cat=2', '2.653', '2020/10/04'),
(253, 'vCHJ@9EUY83036', 'listitems.php?cat=2', '16.887', '2020/10/04'),
(254, 'Ey0j$Ks02w5334', 'listitems.php?cat=2', '613.514', '2020/10/04'),
(255, 'Ey0j$Ks02w5334', 'Home%20Page.php', '1.628', '2020/10/04'),
(256, 'Ey0j$Ks02w5334', 'listitems.php?cat=2', '40.733', '2020/10/04'),
(257, 'Ey0j$Ks02w5334', 'listitems.php?cat=2', '4.436', '2020/10/04'),
(258, 'Ey0j$Ks02w5334', 'listitems.php?cat=2', '6.753', '2020/10/04'),
(259, 'Ey0j$Ks02w5334', 'listitems.php?cat=2', '35.994', '2020/10/04'),
(260, 'Ey0j$Ks02w5334', 'listitems.php?cat=2', '158.541', '2020/10/04'),
(261, 'Ey0j$Ks02w5334', 'listitems.php?cat=2', '18.259', '2020/10/04'),
(262, 'Ey0j$Ks02w5334', 'listitems.php?cat=2', '86.703', '2020/10/04'),
(263, 'Ey0j$Ks02w5334', 'listitems.php?cat=1', '16.032', '2020/10/04'),
(264, 'Ey0j$Ks02w5334', 'Home%20Page.php', '1.261', '2020/10/04'),
(265, 'G1uIoJyol@5385', 'listitems.php?cat=3', '5.484', '2020/10/04'),
(266, 'Ey0j$Ks02w5334', 'listitems.php?cat=1', '84.478', '2020/10/04'),
(267, 'G1uIoJyol@5385', 'listitems.php?cat=2', '1379.394', '2020/10/04'),
(268, 'yUuk9IFeLh5042', 'listitems.php?cat=1', '24.328', '2020/10/04'),
(269, 'vjB5Da6SMJ9085', 'listitems.php?cat=2', '1.88', '2020/10/04'),
(270, 'vjB5Da6SMJ9085', 'listitems.php?cat=3', '21.163', '2020/10/04'),
(271, 'vjB5Da6SMJ9085', 'listitems.php?cat=3', '79.346', '2020/10/04'),
(272, 'vjB5Da6SMJ9085', 'listitems.php?cat=3', '19.247', '2020/10/04'),
(273, 'vjB5Da6SMJ9085', 'listitems.php?cat=3', '68.259', '2020/10/04'),
(274, 'vjB5Da6SMJ9085', 'listitems.php?cat=3', '84.893', '2020/10/04'),
(275, 'vjB5Da6SMJ9085', 'listitems.php?cat=3', '770.38', '2020/10/04'),
(276, 'vjB5Da6SMJ9085', 'listitems.php?cat=3', '33.902', '2020/10/04'),
(277, 'vjB5Da6SMJ9085', 'listitems.php?cat=3', '124.127', '2020/10/04'),
(278, 'vjB5Da6SMJ9085', 'listitems.php?cat=3', '47.84', '2020/10/04'),
(279, 'vjB5Da6SMJ9085', 'listitems.php?cat=3', '95.972', '2020/10/04'),
(280, 'vjB5Da6SMJ9085', 'listitems.php?cat=3', '46.524', '2020/10/04'),
(281, 'vjB5Da6SMJ9085', 'listitems.php?cat=3', '68.339', '2020/10/04'),
(282, 'vjB5Da6SMJ9085', 'listitems.php?cat=3', '2.607', '2020/10/04'),
(283, 'lgS97jVlvO8976', 'listitems.php?cat=2', '10.217', '2020/10/04'),
(284, 'lgS97jVlvO8976', 'listitems.php?cat=2', '52.251', '2020/10/04'),
(285, 'lgS97jVlvO8976', 'listitems.php?cat=2', '60.206', '2020/10/04'),
(286, 'lgS97jVlvO8976', 'listitems.php?cat=2', '94.694', '2020/10/04'),
(287, 'lgS97jVlvO8976', 'listitems.php?cat=2', '41.44', '2020/10/04'),
(288, 'lgS97jVlvO8976', 'listitems.php?cat=2', '35.243', '2020/10/04'),
(289, 'lgS97jVlvO8976', 'listitems.php?cat=2', '13.69', '2020/10/04'),
(290, 'lgS97jVlvO8976', 'listitems.php?cat=2', '15.033', '2020/10/04'),
(291, 'lgS97jVlvO8976', 'listitems.php?cat=2', '76.524', '2020/10/04'),
(292, 'lgS97jVlvO8976', 'listitems.php?cat=2', '42.364', '2020/10/04'),
(293, 'lgS97jVlvO8976', 'listitems.php?cat=2', '47.213', '2020/10/04'),
(294, 'lgS97jVlvO8976', 'listitems.php?cat=2', '97.919', '2020/10/04'),
(295, 'lgS97jVlvO8976', 'listitems.php?cat=2', '4.753', '2020/10/04'),
(296, 'SP2Max3rYq3101', 'listitems.php?cat=2', '2.18', '2020/10/04'),
(297, 'SP2Max3rYq3101', 'listitems.php?cat=3', '12.012', '2020/10/04'),
(298, 'SP2Max3rYq3101', 'listitems.php?cat=3', '0.772', '2020/10/04'),
(299, 'SP2Max3rYq3101', 'listitems.php?cat=3', '0.605', '2020/10/04'),
(300, 'SP2Max3rYq3101', 'listitems.php?cat=3', '0.627', '2020/10/04'),
(301, 'SP2Max3rYq3101', 'listitems.php?cat=3', '0.597', '2020/10/04'),
(302, 'SP2Max3rYq3101', 'listitems.php?cat=3', '6.575', '2020/10/04'),
(303, 'SP2Max3rYq3101', 'listitems.php?cat=3', '6.472', '2020/10/04'),
(304, 'SP2Max3rYq3101', 'listitems.php?cat=3', '0.34', '2020/10/04'),
(305, 'SP2Max3rYq3101', 'listitems.php?cat=3', '161.366', '2020/10/04'),
(306, 'SP2Max3rYq3101', 'listitems.php?cat=3', '1.781', '2020/10/04'),
(307, 'SP2Max3rYq3101', 'listitems.php?cat=3', '0.486', '2020/10/04'),
(308, 'SP2Max3rYq3101', 'listitems.php?cat=3', '0.174', '2020/10/04'),
(309, 'SP2Max3rYq3101', 'listitems.php?cat=3', '0.14', '2020/10/04'),
(310, 'SP2Max3rYq3101', 'listitems.php?cat=3', '0.14', '2020/10/04'),
(311, 'SP2Max3rYq3101', 'listitems.php?cat=3', '2.889', '2020/10/04'),
(312, 'SP2Max3rYq3101', 'listitems.php?cat=3', '0.187', '2020/10/04'),
(313, 'SP2Max3rYq3101', 'listitems.php?cat=3', '1.911', '2020/10/04'),
(314, 'SP2Max3rYq3101', 'listitems.php?cat=3', '0.179', '2020/10/04'),
(315, 'SP2Max3rYq3101', 'listitems.php?cat=3', '115.524', '2020/10/04'),
(316, 'SP2Max3rYq3101', 'listitems.php?cat=3', '246.222', '2020/10/04'),
(317, 'SP2Max3rYq3101', 'listitems.php?cat=3', '63.331', '2020/10/04'),
(318, 'SP2Max3rYq3101', 'listitems.php?cat=3', '133.016', '2020/10/04'),
(319, 'SP2Max3rYq3101', 'listitems.php?cat=3', '158.94', '2020/10/04'),
(320, 'SP2Max3rYq3101', 'listitems.php?cat=3', '46.215', '2020/10/04'),
(321, 'SP2Max3rYq3101', 'listitems.php?cat=3', '36.123', '2020/10/04'),
(322, 'SP2Max3rYq3101', 'listitems.php?cat=3', '36.413', '2020/10/04'),
(323, 'SP2Max3rYq3101', 'listitems.php?cat=3', '129.004', '2020/10/04'),
(324, 'SP2Max3rYq3101', 'listitems.php?cat=3', '60.655', '2020/10/04'),
(325, 'SP2Max3rYq3101', 'listitems.php?cat=3', '15.542', '2020/10/04'),
(326, 'sPFjwG6PcZ4462', 'listitems.php?cat=3', '3.922', '2020/10/04'),
(327, 'sPFjwG6PcZ4462', 'listitems.php?cat=3', '3.048', '2020/10/04'),
(328, 'sPFjwG6PcZ4462', 'listitems.php?cat=3', '77.288', '2020/10/04'),
(329, 'sPFjwG6PcZ4462', 'listitems.php?cat=3', '46.226', '2020/10/04'),
(330, 'sPFjwG6PcZ4462', 'listitems.php?cat=3', '7.8', '2020/10/04'),
(331, 'okDE157@tH7644', 'listitems.php?cat=2', '2.214', '2020/10/04'),
(332, 'okDE157@tH7644', 'listitems.php?cat=3', '229.537', '2020/10/04'),
(333, 't8cF3$j$4Y5591', 'listitems.php?cat=3', '25.185', '2020/10/04'),
(334, 't8cF3$j$4Y5591', 'listitems.php?cat=3', '169.821', '2020/10/04'),
(335, 'okDE157@tH7644', 'listitems.php?cat=3', '359.825', '2020/10/04'),
(336, 't8cF3$j$4Y5591', 'listitems.php?cat=3', '161.8', '2020/10/04'),
(337, 't8cF3$j$4Y5591', 'discription.php?id=4&cat=3', '110.681', '2020/10/04'),
(338, 't8cF3$j$4Y5591', 'discription.php?id=4&cat=3', '31.271', '2020/10/04'),
(339, 'zKitq6gs$a3756', 'listitems.php?cat=2', '2.801', '2020/10/04'),
(340, 'zKitq6gs$a3756', 'listitems.php?cat=3', '94.737', '2020/10/04'),
(341, 'zKitq6gs$a3756', 'listitems.php?cat=3', '118.187', '2020/10/04'),
(342, 'zKitq6gs$a3756', 'listitems.php?cat=3', '76.071', '2020/10/04'),
(343, 'vuW0MbtCAp5872', 'listitems.php?cat=2', '693.04', '2020/10/04'),
(344, 'vuW0MbtCAp5872', 'listitems.php?cat=2', '135.487', '2020/10/04'),
(345, 'vuW0MbtCAp5872', 'listitems.php?cat=2', '55.105', '2020/10/04'),
(346, 'vuW0MbtCAp5872', 'listitems.php?cat=2', '54.246', '2020/10/04'),
(347, 'vuW0MbtCAp5872', 'listitems.php?cat=2', '124.48', '2020/10/04'),
(348, '2nt1@6!EmO1737', 'Home%20Page.php', '1.938', '2020/10/04'),
(349, '2nt1@6!EmO1737', 'listitems.php?cat=3', '28.104', '2020/10/04'),
(350, '2nt1@6!EmO1737', 'listitems.php?cat=3', '113.503', '2020/10/04'),
(351, '2nt1@6!EmO1737', 'discription.php?id=3&cat=3', '0.94', '2020/10/04'),
(352, '2nt1@6!EmO1737', 'listitems.php?cat=3', '149.466', '2020/10/04'),
(353, '2nt1@6!EmO1737', 'listitems.php?cat=3', '405.703', '2020/10/04'),
(354, '2nt1@6!EmO1737', 'listitems.php?cat=3', '1.88', '2020/10/04'),
(355, '2nt1@6!EmO1737', 'listitems.php?cat=3', '17.577', '2020/10/04'),
(356, '2nt1@6!EmO1737', 'listitems.php?cat=3', '57.574', '2020/10/04'),
(357, '2nt1@6!EmO1737', 'listitems.php?cat=3', '163.118', '2020/10/04'),
(358, '2nt1@6!EmO1737', 'listitems.php?cat=3', '26.348', '2020/10/04'),
(359, '2nt1@6!EmO1737', 'listitems.php?cat=3', '8.059', '2020/10/04'),
(360, 'apmbdnrLe35527', 'listitems.php?cat=3', '27.996', '2020/10/04'),
(361, 'apmbdnrLe35527', 'listitems.php?cat=3', '26.107', '2020/10/04'),
(362, 'apmbdnrLe35527', 'listitems.php?cat=3', '134.731', '2020/10/04'),
(363, 'apmbdnrLe35527', 'listitems.php?cat=3', '114.888', '2020/10/04'),
(364, 'apmbdnrLe35527', 'listitems.php?cat=3', '20.891', '2020/10/04'),
(365, 'apmbdnrLe35527', 'listitems.php?cat=3', '18.599', '2020/10/04'),
(366, 'apmbdnrLe35527', 'listitems.php?cat=3', '71.869', '2020/10/04'),
(367, 'apmbdnrLe35527', 'listitems.php?cat=3', '5.674', '2020/10/04'),
(368, 'apmbdnrLe35527', 'listitems.php?cat=3', '8.606', '2020/10/04'),
(369, 'apmbdnrLe35527', 'listitems.php?cat=3', '35.831', '2020/10/04'),
(370, 'apmbdnrLe35527', 'listitems.php?cat=3', '119.086', '2020/10/04'),
(371, 'apmbdnrLe35527', 'listitems.php?cat=3', '100.612', '2020/10/04'),
(372, 'apmbdnrLe35527', 'listitems.php?cat=3', '20.747', '2020/10/04'),
(373, 'apmbdnrLe35527', 'listitems.php?cat=3', '50.645', '2020/10/04'),
(374, 'apmbdnrLe35527', 'listitems.php?cat=3', '15.466', '2020/10/04'),
(375, 'apmbdnrLe35527', 'listitems.php?cat=3', '92.669', '2020/10/04'),
(376, 'apmbdnrLe35527', 'listitems.php?cat=3', '103.251', '2020/10/04'),
(377, 'apmbdnrLe35527', 'listitems.php?cat=3', '142.293', '2020/10/04'),
(378, 'apmbdnrLe35527', 'list_items.php?cat=3', '525.652', '2020/10/04'),
(379, 'apmbdnrLe35527', 'list_items.php?cat=3', '42.457', '2020/10/04'),
(380, 'apmbdnrLe35527', 'Home%20Page.php', '2.106', '2020/10/04'),
(381, 'apmbdnrLe35527', 'itemcart.php', '13.172', '2020/10/04'),
(382, 'apmbdnrLe35527', 'itemcart.php', '1.006', '2020/10/04'),
(383, 'apmbdnrLe35527', 'listitems.php?cat=3', '899.636', '2020/10/04'),
(384, '!DTLgwzf$37797', 'listitems.php?cat=1', '3142.039', '2020/10/04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `mobile` text NOT NULL,
  `name` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `mobile`, `name`, `password`) VALUES
(8, '9326121847', 'Sujeet Pal', '3a05a23e5fd8ef6a8bfac9052b7b6fb0');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `cat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `uid`, `product_id`, `cat`) VALUES
(14, 8, 1, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `errors`
--
ALTER TABLE `errors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `head_earphone`
--
ALTER TABLE `head_earphone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laptopdataset`
--
ALTER TABLE `laptopdataset`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mobiledataset`
--
ALTER TABLE `mobiledataset`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_analytics`
--
ALTER TABLE `page_analytics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_impression`
--
ALTER TABLE `product_impression`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recommend`
--
ALTER TABLE `recommend`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timing`
--
ALTER TABLE `timing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `errors`
--
ALTER TABLE `errors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `head_earphone`
--
ALTER TABLE `head_earphone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `laptopdataset`
--
ALTER TABLE `laptopdataset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `mobiledataset`
--
ALTER TABLE `mobiledataset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `page_analytics`
--
ALTER TABLE `page_analytics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=466;

--
-- AUTO_INCREMENT for table `product_impression`
--
ALTER TABLE `product_impression`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recommend`
--
ALTER TABLE `recommend`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `timing`
--
ALTER TABLE `timing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=385;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
