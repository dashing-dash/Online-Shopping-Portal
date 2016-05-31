
CREATE TABLE IF NOT EXISTS `administrators` (
  `admin_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`admin_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB;

--
-- Dumping data for table `administrators`
--

INSERT INTO `administrators` (`admin_id`, `email`, `password`) VALUES
(1,'admin@gmail.com','admin'),
(2, 'lokeshtodwal005@gmail.com', 'lokeshtodwal');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int(255) unsigned NOT NULL AUTO_INCREMENT,
  `category_name` varchar(30) NOT NULL,
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `category_name` (`category_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(1, 'Mobiles'),
(2, 'Sports'),
(3, 'Lighting'),
(4, 'Laptop'),
(5, 'Fragnance');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE IF NOT EXISTS `expenses` (
  `expenses_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `purchase_date` datetime NOT NULL,
  PRIMARY KEY (`expenses_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`expenses_id`, `product_id`, `product_name`, `price`, `purchase_date`) VALUES
(1, 1, 'Assassins Creed', 0, '2012-12-11 14:58:00'),
(2, 18, 'Sherlock Holmes', 0, '2012-12-11 14:58:36'),
(3, 18, 'Sherlock Holmes', 0, '2012-12-11 14:59:35'),
(4, 38, 'Samsung XYDO', 5000, '2012-12-12 20:27:03'),
(5, 38, 'Samsung XYDO', 5000, '2012-12-12 20:28:44'),
(6, 18, 'Complete Reference J2EE', 4500, '2012-12-15 01:17:14'),
(7, 19, 'Complete Reference Java', 4500, '2012-12-15 01:18:15'),
(8, 20, 'Java Primer E. Balgurusamy', 23400, '2012-12-15 01:20:40'),
(9, 21, 'Programming in ANSI C', 2700, '2012-12-15 01:21:23'),
(10, 22, 'Data Communications And Networking Forouzan', 18000, '2012-12-15 01:24:12'),
(11, 23, 'Unix Sumitha Das', 6000, '2012-12-17 01:26:05'),
(12, 24, 'Software Engineering A Practioners Approach', 135000, '2012-12-17 01:28:31'),
(13, 25, 'Microcontroller 8081 And Embedded Systems', 9000, '2012-12-17 01:29:24'),
(14, 26, 'Safe 2012', 3300, '2012-12-17 01:32:45'),
(15, 27, 'The Expandibles II', 3000, '2012-12-18 01:38:09'),
(16, 28, 'HP Mini 8GB Pen Drive', 12600, '2012-12-18 10:55:20'),
(17, 29, 'Sandisk 8GB Pendrive', 7200, '2012-12-18 10:57:12'),
(18, 30, 'Transend 4GB Pendrive', 4000, '2012-12-18 10:59:10'),
(19, 31, 'Dell External Storage 500GB', 100000, '2012-12-18 11:01:33'),
(20, 32, 'Sennheiser Gaming Headphones', 60000, '2012-12-18 11:03:37'),
(21, 33, 'Philips Jogs Headsets ', 14000, '2012-12-18 11:06:09'),
(22, 34, 'Philips Jester Headset', 15000, '2012-12-18 11:07:15'),
(23, 35, 'Angry Birds Oil Pastels', 1200, '2012-12-18 11:11:13'),
(24, 36, 'Cars Oil Pastels', 2000, '2012-12-18 11:12:16'),
(25, 37, 'Sakura Oil Pastels', 2200, '2012-12-18 11:13:42'),
(26, 38, 'Parker 52SkS', 1000, '2012-12-18 11:16:37'),
(27, 39, 'Assassins Creed I (2007)', 4000, '2012-12-18 13:15:19'),
(28, 24, 'Software Engineering A Practioners Approach', 15000, '2012-12-26 14:55:21'),
(29, 9, 'Max Payne 3', 0, '2012-12-26 14:59:42'),
(30, 39, 'Assassins Creed I (2007)', -3400, '2012-12-30 10:38:22'),
(31, 40, 'Philips Jester Headset Sets', 4000, '2013-01-02 16:20:22'),
(32, 3, 'Assassins Creed III', 1800, '2013-01-06 16:52:48');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE IF NOT EXISTS `images` (
  `image-id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image-name` varchar(255) NOT NULL,
  `product-name` varchar(255) NOT NULL,
  PRIMARY KEY (`image-id`),
  UNIQUE KEY `image-name` (`image-name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=143 ;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`image-id`, `image-name`, `product-name`) VALUES
(1, 'uploads/samsung-galaxy-s6-edge-sm-g925izdeins-sm-g925izdeinu-400x400-imae5rwwgqumbs7u.jpeg', 'Samsung Galaxy S6 Edge'),
(2, 'uploads/apple-iphone-6s-na-400x400-imaeby6rmzxdpvbj.jpeg', 'Apple iPhone 6S'),
(3, 'uploads/asus-zenfone-selfie-zd551kl-zd551kl-1i202c4-400x400-imae9tfnwg27ebff.jpeg', 'Asus Zenfone Selfie'),
(4, 'uploads/mi-mzb4239in-400x400-imae3z7uqh9gpypz.jpeg', 'Mi 4'),
(5, 'uploads/3u-g4-strung-yonex-badminton-racquet-muscle-power-29-light-400x400-imae3r8bx67qhkyh.jpeg', 'Yonex Muscle Power 29 Light G4 Strung Badminton Racquet'),
(6, 'uploads/slow-77-6-yonex-nylon-mavis-350-green-cap-400x400-imaefj3rftunxvt4.jpeg', 'Yonex MAVIS 350 - Green Cap Nylon Shuttle - Yellow'),
(7, 'uploads/sg-cricket-ball-club-400x400-imadh9fpxsb8uyzg.jpeg', 'SG Club Cricket Ball'),
(8, 'uploads/sg-sunny-legend-short-handle-400x400-imadczrayzngmef7.jpeg', 'SG Sunny Legend English Willow Cricket Bat'),
(9, 'uploads/xiaomi-redmi-2-prime-mobile-phone-large-1.jpg', 'Redmi 2 Prime'),
(10,'uploads/micromax-canvas-xpress-2-e313-400x400-imae9ztr8zkg3m4z.jpeg','Micromax Canvas Xpress 2'),
(11, 'uploads/Micromax-Canvas-Nitro-4G-E455-SDL544433908-1-e5e7f.jpg', 'Micromax Canvas Nitro 2'),
(12, 'uploads/microjuice.jpg', 'Micromax Canvas Juice 2'),
(13, 'uploads/61lT1BvigCL._SX425_.jpg', 'Micromax Bolt S301 Dual Sim - Black'),
(14,'uploads/syaska1._syska-led-glass-bulb-5-watt-6000k.jpg','Syska Led Lights'),
(15,'uploads/dellinspiron.jpg','Dell Inspiron 15'),
(16,'uploads/21BA7FjKPzL.jpg','Axe Apollo Body Spray'),
(17,'uploads/Xiaomi-Mi-Pad-SDL820821584-1-9c8ee.jpg','Mi Pad'),
(18,'uploads/ipad-air-witb-gray-cel-201410_GEO_US.jpg','Apple iPad Air 2');


-- --------------------------------------------------------

--
-- Table structure for table `product-company`
--

CREATE TABLE IF NOT EXISTS `product-company` (
  `company-id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `company-name` varchar(40) NOT NULL,
  PRIMARY KEY (`company-id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `product-company`
--

INSERT INTO `product-company` (`company-id`, `company-name`) VALUES
(1, 'Samsung'),
(2, 'Mi'),
(3, 'Apple'),
(4, 'Asus'),
(5, 'Dell'),
(6,'Yonex'),
(7,'SG Club'),
(8,'Micromax'),
(9,'Syska'),
(10,'Axe');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product-name` varchar(60) NOT NULL,
  `sub-category-name` varchar(40) NOT NULL,
  `category-name` varchar(40) NOT NULL,
  `company-name` varchar(40) NOT NULL,
  `price` double(10,2) unsigned NOT NULL,
  `summary` text,
  `tags` varchar(255) NOT NULL,
  `product_qty` int(11) unsigned NOT NULL,
  `lastUpdated` datetime NOT NULL,
  `hits` int(10) unsigned NOT NULL,
  PRIMARY KEY (`product_id`),
  UNIQUE KEY `product-name` (`product-name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product-name`, `sub-category-name`, `category-name`, `company-name`, `price`, `summary`, `tags`, `product_qty`, `lastUpdated`, `hits`) VALUES
(1, 'Samsung Galaxy S6 Edge', 'Samsung', 'Mobiles', 'Samsung', 40900.00, '<div>\r\n  
            <h3 class="sectionTitle">
                    Key Features of Samsung Galaxy S6 Edge
            </h3>
            <ul class="keyFeaturesList">
                        <li>16 MP Primary Camera</li>
                        <li>50 Mbps HSUPA</li>
                        <li>4G (LTE) - (Cat 6) 300 Mbps HSDPA</li>
                        <li>5.1 inch Super AMOLED Touchscreen</li>
                        <li>2.1 GHz + 1.5 GHz Octa Core Processor</li>
                        <li>Wi-Fi Enabled</li>
                        <li>Android v5 (Lollipop) OS</li>
                        <li>5 MP Secondary Camera</li>
            </ul>
        </div>','Samsung Galaxy S6 Edge', 10, '2016-04-07 23:16:58', 33),
(2, 'Apple iPhone 6S', 'Apple', 'Mobiles', 'Apple', 45999.00, '<div>\r\n    
            <h3 class="sectionTitle">
                    Key Features of Apple iPhone 6S
            </h3>
            <ul class="keyFeaturesList">
                        <li>4.7 inch Touchscreen</li>
                        <li>Bluetooth Support</li>
                        <li>iOS 9</li>
                        <li>5 MP Secondary Camera</li>
                        <li>Wi-Fi Enabled</li>
                        <li>12 MP Primary Camera</li>
                        <li>3D Touch &amp; Live Photos</li>
            </ul>
        </div>', 'Apple iPhone 6S', 9, '2016-04-7 23:19:49', 21),
(3, 'Asus Zenfone Selfie', 'Asus', 'Mobiles', 'Asus', 16990.00, '<div>\r\n 
            <h3 class="sectionTitle">
                    Key Features of Asus Zenfone Selfie
            </h3>
            <ul class="keyFeaturesList">
                        <li>Android v5 (Lollipop) OS</li>
                        <li>13 MP Primary Camera</li>
                        <li>13 MP Secondary Camera</li>
                        <li>Dual Sim (LTE + LTE)</li>
                        <li>5.5 inch Capacitive Touchscreen</li>
                        <li>1.7 GHz Qualcomm Snapdragon 615 MSM8939 Octa Core Processor</li>
                        <li>Expandable Storage Capacity of 128 GB</li>
            </ul>
        
\r\n</div>', 'Asus Zenfone Selfie', 25, '2016-04-07 16:52:48', 41),
(4, 'Mi 4', 'Mi', 'Mobiles', 'Mi', 14450.00, '<div>\r\n 
            <h3 class="sectionTitle">
                    Key Features of Mi 4
            </h3>
            <ul class="keyFeaturesList">
                        <li>13 MP Primary Camera</li>
                        <li>Android v4.4 (KitKat) OS</li>
                        <li>2.5 GHz Qualcomm Snapdragon 801 MSM8274AC Quad Core Processor</li>
                        <li>5 inch Touchscreen</li>
                        <li>8 MP Secondary Camera</li>
            </ul>
        \r\n</div>', 'Mi 4', 23, '2016-04-08 23:23:51', 28),
(5, 'Yonex Muscle Power 29 Light G4 Strung Badminton Racquet', 'Badminton', 'Sports', 'Yonex', 2450.00, '<div>\r\n 
            <h3 class="sectionTitle">
                    Key Features of Yonex Muscle Power 29 Light G4 Strung Badminton Racquet
            </h3>
            <ul class="keyFeaturesList">
                        <li>With Shock Less Grommet System</li>
                        <li>Body is Made up of High Modulus Graphite with Titanium Mesh</li>
                        <li>Shaft is of High Modulus Graphite</li>
                        <li>Isometric Head Shape</li>
                        <li>Provides Even Balance</li>
            </ul>
      
        \r\n</div>', 'Badminton Racquet', 53, '2016-04-09 13:23:51', 28),
(6, 'Yonex MAVIS 350 - Green Cap Nylon Shuttle - Yellow', 'Badminton', 'Sports', 'Yonex', 800.00, '<div>\r\n 
              <h3 class="sectionTitle">
                    Key Features of Yonex MAVIS 350 - Green Cap Nylon Shuttle  - Yellow
            </h3>
            <ul class="keyFeaturesList">
                        <li>Material: Nylon</li>
                        <li>Proper speed: Slow</li>
                        <li>Design: Precision designed for accurate flight performance</li>
                        <li>Range of Temperature: 22 to 33 degrees</li>
                        <li>Durable yellow body with green cap</li>
                        <li>The combination of close-to-feather shuttlecock flight performance and four to five times more durability than an ordinary nylon shuttlecock makes the YONEX MAVIS series the most cost-effective choice for practice sessions</li>
                        <li>Recovery Time When smashed, a MAVIS shuttlecock recovers in only 0.02 seconds. This performance is just 0.005 seconds slower than a YONEX Feather shuttlecock and 0.008 seconds faster than the recovery of an ordinary shuttlecock</li>
            </ul>
      
        \r\n</div>', 'Badminton Shuttle', 23, '2016-04-09 19:53:51', 15),
(7, 'SG Club Cricket Ball', 'Cricket', 'Sports', 'SG Club', 3888.00, '<div>\r\n 
             
            <h3 class="sectionTitle">
                    Key Features of SG Club Cricket Ball
            </h3>
            <ul class="keyFeaturesList">
                        <li>Made of Alum Tanned Leather Outer Material</li>
                        <li>Water Resistant</li>
                        <li>Designed for Intermediate Level of Play</li>
                        <li>Cork Core Material</li>
            </ul>
        
      
        \r\n</div>', 'Cricket Ball', 13, '2016-04-09 06:16:51', 55),

 (8, 'SG Sunny Legend English Willow Cricket Bat', 'Cricket', 'Sports', 'SG Club', 20947.00, '<div>\r\n 
             
           
            <h3 class="sectionTitle">
                    Key Features of SG Sunny Legend English Willow Cricket  Bat
            </h3>
            <ul class="keyFeaturesList">
                        <li>Chevtec Grip</li>
                        <li>With Toe Protector</li>
                        <li>Saravak Cane Handle</li>
                        <li>Strong and Durable</li>
                        <li>Custom Made</li>
            </ul>
        
        
      
        \r\n</div>', 'Cricket Bat', 05, '2016-04-09 08:06:51', 45),

(9, 'Redmi 2 Prime', 'Mi', 'Mobiles', 'Mi', 6999.00, '<div>\r\n 
            <h3 class="sectionTitle">
                    Key Features of Redmi 2 Prime
            </h3>
            <ul class="keyFeaturesList">
                        <li>4.7 inch HD IPS Screen</li>
			<li>4G LTE, Dual SIM</li>
			<li>Camera: 8MP|2MP</li>
			<li>64-bit, Snapdragon 410</li>
            </ul>
        \r\n</div>', 'Redmi 2 Prime', 33, '2016-04-14 11:11:23', 43),


(10, 'Micromax Canvas Xpress 2', 'Micromax', 'Mobiles', 'Micromax', 6199.00, '<div>\r\n 
            <h3 class="sectionTitle">
                    Key Features of Micromax Canvas Xpress 2
            </h3>
            <ul class="keyFeaturesList">
                        <li>Android v5.0.1 OS</li>
			<li>13 MP Primary Camera/li>
			<li>2 MP Secondary Camera</li>
			<li>Dual Sim (GSM + WCDMA)</li>
            </ul>
        \r\n</div>', 'Micromax Canvas Xpress 2', 10, '2016-04-08 22:22:11', 30),
(11, 'Micromax Canvas Nitro 2', 'Micromax', 'Mobiles', 'Micromax', 7178.00, '<div>\r\n 
            <h3 class="sectionTitle">
                    Key Features of Micromax Canvas Nitro 2
            </h3>
            <ul class="keyFeaturesList">
                        <li>Android v4.4.2 OS</li>
			<li>13 MP Primary Camera</li>
			<li>5MP Secondary Camera</li>
			<li>Dual Sim (GSM + WCDMA)</li>
            </ul>
        \r\n</div>', 'Micromax Canvas Nitro 2', 50, '2016-04-08 21:21:18', 40),


(12, 'Micromax Canvas Juice 2', 'Micromax', 'Mobiles', 'Micromax', 6690.00, '<div>\r\n 
            <h3 class="sectionTitle">
                    Key Features of Micromax Canvas Juice 2
            </h3>
            <ul class="keyFeaturesList">
                        <li>Android v5 OS</li>
			<li>8 MP Primary Camera/li>
			<li>2 MP Secondary Camera</li>
			<li>Dual Sim (GSM + WCDMA)</li>
            </ul>
        \r\n</div>', 'Micromax Canvas Juice 2', 20, '2016-04-08 20:20:11', 15),

(13, 'Micromax Bolt S301 Dual Sim - Black', 'Micromax', 'Mobiles', 'Micromax', 2625.00, '<div>\r\n 
            <h3 class="sectionTitle">
                    Key Features of Micromax Bolt S301 Dual Sim - Black
            </h3>
            <ul class="keyFeaturesList">
                        <li>Operating System Version: KitKat</li>
			<li>Primary Camera: 1.3 megapixel/li>
			<li>Sim Type: Dual Sim</li>
			<li>Secondary Camera: 0.3 megapixel</li>
            </ul>
        \r\n</div>', 'Micromax Bolt S301 Dual Sim - Black', 18, '2016-04-08 23:23:23', 17),
(14, 'Syska Led Lights', 'Syska', 'Lighting', 'Syska', 748.00, '<div>\r\n  
            <h3 class="sectionTitle">
                    Key Features of Syska Led Lights
            </h3>
            <ul class="keyFeaturesList">
                        <li>Pack of two</li>
                        <li>LED</li>
                        <li>Polycarbonate</li>
            </ul>
        </div>','Syska Led Lights', 50, '2016-04-08 23:23:20', 10),

(15, 'Dell Inspiron 15', 'Dell', 'Laptop', 'Dell', 19798.00, '<div>\r\n  
            <h3 class="sectionTitle">
                    Key Features of Dell Inspiron 15
            </h3>
            <ul class="keyFeaturesList">
                        <li>APU Quad Core A6</li>
                        <li>4 GB DDR3 RAM</li>
                        <li>500 GB HDD</li>
            </ul>
        </div>','Dell Inspiron 15', 15, '2016-04-08 20:23:20', 30),

(16, 'Axe Apollo Body Spray', 'Axe', 'Fragnance', 'Axe', 199.00, '<div>\r\n  
            <h3 class="sectionTitle">
                    Key Features of Axe Apollo Body Spray
            </h3>
            <ul class="keyFeaturesList">
                        <li>Fragrance Classification: Body Spray</li>
                        <li>Ideal Usage: Daily Use</li>
                        
            </ul>
        </div>','Axe Apollo Body Spray', 30, '2016-04-08 20:28:20', 49),


(17, 'Mi Pad', 'Mi', 'Mobiles', 'Mi', 10999.00, '<div>\r\n 
            <h3 class="sectionTitle">
                    Key Features of Mi Pad
            </h3>
            <ul class="keyFeaturesList">
                        <li>7.9 inch 2048x1536 Screen</li>
			<li>Expandable upto 128 GB</li>
			<li>2.2 GHz NVIDIA Tegra K1</li>
			<li>2 GB RAM</li>
            </ul>
        \r\n</div>', 'Mi Pad', 24, '2016-04-14 10:11:23', 39),

(18, 'Apple iPad Air 2', 'Apple', 'Mobiles', 'Apple', 41899.00, '<div>\r\n    
            <h3 class="sectionTitle">
                    Key Features of Apple iPad Air 2
            </h3>
            <ul class="keyFeaturesList">
                        <li>iOS 8</li>
                        <li>8 MP Primary Camera</li>
                        <li>1.2 MP Secondary Camera</li>
                        <li>9.7 inch Touchscreen</li>
            </ul>
        </div>', 'Apple iPad Air 2', 12, '2016-04-7 20:19:49', 47);

-- --------------------------------------------------------

--
-- Table structure for table `sub-category`
--

CREATE TABLE IF NOT EXISTS `sub-category` (
  `subcategory_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sub-category_name` varchar(30) NOT NULL,
  `category_name` varchar(30) NOT NULL,
  PRIMARY KEY (`subcategory_id`),
  UNIQUE KEY `sub-category_name` (`sub-category_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `sub-category`
--
INSERT INTO `sub-category` (`subcategory_id`, `sub-category_name`, `category_name`) VALUES
(1, 'Samsung', 'Mobiles'),
(2, 'Apple', 'Mobiles'),
(3, 'Asus', 'Mobiles'),
(4, 'Mi', 'Mobiles'),
(5,'Badminton','Sports'),
(6,'Cricket','Sports'),
(7,'Boxing','Sports'),
(8,'Swimming','Sports'),
(9,'Micromax','Mobiles'),
(10,'Dell','laptop'),
(11,'Syska','Lighting'),
(12,'Axe','Fragnance');
-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `pass` varchar(40) NOT NULL,
  `registeredOn` datetime NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `email`, `pass`, `registeredOn`) VALUES
(1, 'lokeshtodwal005@gmail.com', 'lokeshtodwal', '2016-04-05 12:21:06');


-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE IF NOT EXISTS `user_details` (
  `userDetail_Id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `mobile_no` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `gender` enum('male','female') NOT NULL,
  PRIMARY KEY (`userDetail_Id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`userDetail_Id`, `user_id`, `username`, `mobile_no`, `address`, `gender`) VALUES
(3, 1, 'Lokesh Todwal', '9462999051', 'LNMIIT JAIPUR', 'male');
