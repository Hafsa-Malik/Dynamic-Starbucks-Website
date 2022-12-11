-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2022 at 07:46 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webassignment`
--

CREATE DATABASE IF NOT EXISTS `webassignment` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `webassignment`;

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `blogID` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `date_created` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`blogID`, `title`, `description`, `author`, `date_created`, `image`) VALUES
(1, '‘Today is Day 1’: Starbucks retail leaders at leadership event', 'The District Manager+ Leadership Experience, attended by 2,000, marks a pivotal moment in the Starbucks Reinvention plan.', 'Michael Ko', 'October 25, 2022', 'images/image_1.jpg'),
(2, 'A message from Howard Schultz: The next chapter of Reinvention', 'In a letter to Starbucks partners, CEO shared a set of principles and a new partnership for the company.', 'Howard Schultz', 'October 30, 2022', 'images/image_2.jpg'),
(3, 'Starbucks shares update on partner commitments', 'The sessions are ongoing as Starbucks continues to reimagine its future. Some of the commitments made in May completed today.', 'Michael ko', 'October 30, 2022', 'images/image_3.jpg'),
(4, 'Starbucks shares update on partner commitments', 'The sessions are ongoing as Starbucks continues to reimagine its future. Some of the commitments made in May completed today.', 'Dyer Wayne', 'November 05, 2022', 'images/gallery-1.jpg'),
(5, 'A message from Howard Schultz: The next chapter of Reinvention', 'In a letter to Starbucks partners, CEO shared a set of principles and a new partnership for the company.', 'Aaron Hank', 'November 17, 2022', 'images/gallery-2.jpg'),
(6, '‘Today is Day 1’: Starbucks retail leaders at leadership event', 'The District Manager+ Leadership Experience, attended by 2,000, marks a pivotal moment in the Starbucks Reinvention plan.', 'Anna Daucey', 'December 01, 2022', 'images/gallery-3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cartID` int(11) NOT NULL,
  `productID` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `categoryID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `productsCount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryID`, `name`, `productsCount`) VALUES
(1, 'Hot Coffees', 35),
(2, 'Hot Teas', 12),
(3, 'Hot Drinks', 12),
(4, 'Frappuccino Blended Beverages', 15),
(5, 'Cold Coffees', 21),
(6, 'Iced Teas', 15),
(7, 'Cold Drinks', 18),
(8, 'Hot Breakfast', 11),
(9, 'Bakery', 25),
(10, 'Lunch', 11),
(11, 'Snacks & Sweets', 17),
(12, 'Oatmeal & Yogurt', 3);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `commentID` int(11) NOT NULL,
  `blogID` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`commentID`, `blogID`, `comment`) VALUES
(1, 1, 'Love the blog!'),
(2, 1, 'Appreciate the efforts'),
(3, 1, 'Interesting'),
(4, 2, 'Love the blog!'),
(5, 2, 'Appreciate the efforts'),
(6, 2, 'Love the blog!'),
(7, 2, 'Love the blog!'),
(8, 2, 'Interesting'),
(9, 3, 'Love the blog!'),
(10, 3, 'Love the blog!'),
(11, 4, 'Appreciate the efforts'),
(12, 4, 'Love the blog!'),
(13, 4, 'Interesting'),
(14, 5, 'Love the blog!'),
(15, 5, 'Interesting'),
(16, 5, 'Love the blog!'),
(17, 5, 'Appreciate the efforts'),
(18, 6, 'Interesting'),
(19, 6, 'Love the blog!'),
(20, 6, 'Love the blog!');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedbackID` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `orderID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedbackID`, `message`, `orderID`) VALUES
(1, 'A Place to Be. I am currently travelling and it has been a place that I have been frequently visiting to sit down and take care of my studies.', '1'),
(2, 'I have been going to this store regularly for years. The last year has been almost daily. It is a very busy store but they move us through quickly. It seems like the employees all get along and do their jobs efficiently and curiously.', '2'),
(3, 'The first time after years I felt the “welcome to Starbucks” greeting at this place & I said in my heart “well Mr. first CEO returned with his principles”. Keep the warm tradition !!! ', '3'),
(4, 'I would like to give a huge shoutout to Starbucks Kroger. Their employees are super friendly, efficient and always remember my drink combo.', '4'),
(5, 'Had a wonderful Christmas at Starbucks. Mesmerizing taste and hospitality at its core. Delicious caramel frappe, turkey and cheese pretzel sandwich yet chasing my taste buds.', '5');

-- --------------------------------------------------------

--
-- Table structure for table `giftcard`
--

CREATE TABLE `giftcard` (
  `cardID` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `giftcard`
--

INSERT INTO `giftcard` (`cardID`, `image`, `category`, `amount`) VALUES
(1, 'images/gc1.png', 'Christmas', 500),
(2, 'images/gc2.png', 'Christmas', 500),
(3, 'images/gc3.png', 'Christmas', 500),
(4, 'images/gc4.png', 'Christmas', 500),
(5, 'images/gc5.png', 'Christmas', 500),
(6, 'images/gc6.png', 'Holiday', 500),
(7, 'images/gc7.png', 'Holiday', 500),
(8, 'images/gc8.png', 'Holiday', 500),
(9, 'images/gc9.png', 'Holiday', 500),
(10, 'images/gc10.png', 'Holiday', 500),
(11, 'images/gc11.png', 'Red Cup', 500),
(12, 'images/gc12.png', 'Red Cup', 500),
(13, 'images/gc13.png', 'Red Cup', 500),
(14, 'images/gc14.png', 'Red Cup', 500),
(15, 'images/gc15.png', 'Red Cup', 500),
(16, 'images/gc16.png', 'Birthday', 500),
(17, 'images/gc17.png', 'Birthday', 500),
(18, 'images/gc18.png', 'Birthday', 500),
(19, 'images/gc19.png', 'Birthday', 500),
(20, 'images/gc20.png', 'Birthday', 500),
(21, 'images/gc21.png', 'Thank You', 500),
(22, 'images/gc22.png', 'Thank You', 500),
(23, 'images/gc23.png', 'Thank You', 500),
(24, 'images/gc24.png', 'Thank You', 500),
(25, 'images/gc25.png', 'Celebration', 500),
(26, 'images/gc26.png', 'Celebration', 500),
(27, 'images/gc27.png', 'Celebration', 500),
(28, 'images/gc28.png', 'Appreciation', 500),
(29, 'images/gc29.png', 'Appreciation', 500),
(30, 'images/gc30.png', 'Appreciation', 500),
(31, 'images/gc31.png', 'Appreciation', 500),
(32, 'images/gc32.png', 'Hanukkah', 500),
(33, 'images/gc33.png', 'Hanukkah', 500),
(34, 'images/gc34.png', 'Hanukkah', 500),
(35, 'images/gc35.png', 'Kwanzaa', 500),
(36, 'images/gc36.png', 'Kwanzaa', 500),
(37, 'images/gc37.png', 'Kwanzaa', 500),
(38, 'images/gc38.png', 'Spirited', 500),
(39, 'images/gc39.png', 'Workplace', 500),
(40, 'images/gc40.png', 'Workplace', 500),
(41, 'images/gc41.png', 'Workplace', 500),
(42, 'images/gc42.png', 'Workplace', 500),
(43, 'images/gc43.png', 'Encouragement', 500),
(44, 'images/gc44.png', 'Encouragement', 500),
(45, 'images/gc45.png', 'Encouragement', 500),
(46, 'images/gc46.png', 'Encouragement', 500),
(47, 'images/gc47.png', 'Affection', 500),
(48, 'images/gc48.png', 'Affection', 500),
(49, 'images/gc49.png', 'Affection', 500),
(50, 'images/gc50.png', 'Affection', 500),
(51, 'images/gc51.png', 'Affection', 500),
(52, 'images/gc52.png', 'Anytime', 500),
(53, 'images/gc53.png', 'Anytime', 500),
(54, 'images/gc54.png', 'Anytime', 500),
(55, 'images/gc55.png', 'Anytime', 500),
(56, 'images/gc56.png', 'Anytime', 500);

-- --------------------------------------------------------

--
-- Table structure for table `orderdetail`
--

CREATE TABLE `orderdetail` (
  `orderID` int(11) NOT NULL,
  `productID` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderID`, `name`, `email`, `date`) VALUES
(1, 'Daddu Shahid', 'dadushahid@yahoo.com', 'Dec 1, 2022'),
(2, 'Lukar Kelly', 'lukas@yahoo.com', 'Dec 2, 2022'),
(3, 'Denise Kelly', 'dennis@yahoo.com', 'Dec 5, 2022'),
(4, 'Abhinav Kelly', 'abhinav@yahoo.com', 'Dec 5, 2022'),
(5, 'Susanne Kelly', 'susanne@yahoo.com', 'Dec 9, 2022'),
(6, 'hapsadumm watchforquotationmarks', 'hapsawatchforquotationmarks@dum.com', 'December 11, 2022');

-- --------------------------------------------------------

--
-- Table structure for table `photogallery`
--

CREATE TABLE `photogallery` (
  `photoID` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `photogallery`
--

INSERT INTO `photogallery` (`photoID`, `type`, `image`) VALUES
(1, 'carousel', 'images/bg_8.jpg'),
(2, 'carousel', 'images/bg_6.jpg'),
(3, 'carousel', 'images/bg_7.jpg'),
(4, 'carousel', 'images/bg_5.jpg'),
(5, 'aboutus', 'images/about_1.jpg'),
(6, 'counter', 'images/bg_10.jpg'),
(7, 'feedback', 'images/bg_1.jpg'),
(8, 'gallery', 'images/gallery-1.jpg'),
(9, 'gallery', 'images/gallery-2.jpg'),
(10, 'gallery', 'images/gallery-3.jpg'),
(11, 'gallery', 'images/gallery-4.jpg'),
(13, 'menu', 'images/menu1.png'),
(14, 'menu', 'images/menu2.png'),
(15, 'menu', 'images/menu3.jpg'),
(16, 'menu', 'images/menu4.png');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `categoryID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productID`, `name`, `image`, `description`, `price`, `categoryID`) VALUES
(1, 'Caffè Americano', 'images/prod1.png', 'Espresso shots topped with hot water create a light layer of crema culminating in this wonderfully rich cup with depth and nuance.', '2.25', 1),
(2, 'Veranda Blend', 'images/prod2.png', 'A lightly roasted coffee like the one made in Latin America\'s coffee farms. It took us several tries to get it right—mellow and flavorful with a nice softness.', '2.55', 1),
(3, 'Caffè Misto', 'images/prod3.png', 'A one-to-one combination of fresh-brewed coffee and steamed milk add up to one distinctly delicious coffee drink remarkably mixed.', '2.30', 1),
(4, 'Featured Starbucks Dark Roast Coffee', 'images/prod4.png', 'This full-bodied dark roast coffee with bold, robust flavors showcases our roasting and blending artistry—an essential blend of balanced and lingering flavors.', '2.55', 1),
(5, 'Featured Medium Roast - Pike Place Roast', 'images/prod5.png', 'In 2008 our master blenders and roasters created a smooth, well-rounded blend of Latin American coffees with subtly rich flavors of chocolate and toasted nuts.', '2.55', 1),
(6, 'Decaf Pike Place Roast', 'images/prod6.png', 'With a velvety soft texture and floral, peppery spice notes, this is our tribute to the birthplace of coffee.', '2.25', 1),
(7, 'Cappuccino', 'images/prod7.png', 'Dark, rich espresso lies in wait under a smoothed and stretched layer of thick milk foam. An alchemy of barista artistry and craft.', '2.75', 1),
(8, 'Espresso', 'images/prod8.png', 'Our smooth signature Espresso Roast with rich flavor and caramelly sweetness is at the very heart of everything we do.', '2.75', 1),
(9, 'Espresso Con Panna', 'images/prod9.png', 'Espresso meets a dollop of whipped cream to enhance the rich and caramelly flavors of a straight-up shot.', '2.80', 1),
(10, 'Flat White', 'images/prod10.png', 'Smooth ristretto shots of espresso get the perfect amount of steamed whole milk to create a not-too-strong, not-too-creamy, just-right flavor.', '2.50', 1),
(11, 'Honey Almondmilk Flat White', 'images/prod11.png', 'This flat white intentionally pairs almondmilk and Starbucks® Blonde Espresso Roast with a hint of honey, making a perfect amount of creamy, nutty sweetness.', '2.80', 1),
(12, 'Pumpkin Spice Latte', 'images/prod12.png', 'Our signature espresso and steamed milk with the celebrated flavor combination of pumpkin, cinnamon, nutmeg and clove. Enjoy it topped with whipped cream and real pumpkin-pie spices.', '2.25', 1),
(13, 'Caramel Brulée Latte', 'images/prod13.png', 'Our signature espresso, steamed milk and rich caramel brulée sauce finished with whipped cream and a supreme topping of even more caramel brulée bits.', '2.25', 1),
(14, 'Chestnut Praline Latte', 'images/prod14.png', 'First we begin with our signature espresso and velvety steamed milk, and then add flavors of caramelized chestnuts and spices—all topped with a holiday finale of whipped cream and specially spiced praline crumbs.', '2.25', 1),
(15, 'Sugar Cookie Almondmilk Latte', 'images/prod15.png', 'Sugar cookie-flavored syrup combined with Starbucks® Blonde espresso and steamed almondmilk, topped with red and green sprinkles.', '2.25', 1),
(16, 'Caffè Latte', 'images/prod16.png', 'Our dark, rich espresso balanced with steamed milk and a light layer of foam. A perfect milk-forward warm-up.', '2.25', 1),
(17, 'Cinnamon Dolce Latte', 'images/prod17.png', 'We add freshly steamed milk and cinnamon dolce-flavored syrup to our classic espresso, topped with sweetened whipped cream and a cinnamon dolce topping to bring you specialness in a treat.', '2.25', 1),
(18, 'Starbucks Reserve Latte', 'images/prod18.png', 'Small-lot Starbucks Reserve® espresso balanced with steamed milk and a light layer of foam forms a perfectly handcrafted latte.', '2.25', 1),
(19, 'Starbucks Reserve Hazelnut Bianco Latte', 'images/prod19.png', 'House-made hazelnut-praline-infused milk combined with our small-lot Starbucks Reserve® espresso—a true character of sweetly nut love.', '2.25', 1),
(20, 'Starbucks Blonde Vanilla Latte', 'images/prod20.png', 'Extra-smooth Starbucks® Blonde Espresso, velvety steamed milk and vanilla syrup come together to create a delightful new twist on a beloved espresso classic. An ideal cup for those who prefer a lighter-roasted coffee.', '2.25', 1),
(21, 'Apple Crisp Oatmilk Macchiato', 'images/prod21.png', 'Layered flavors of apple, cinnamon, oats and brown sugar combine in harmony with Starbucks® Blonde Espresso, creamy oatmilk and spiced apple drizzle to create a delicious apple crisp you can sip. A nostalgic autumn pick-me-up.', '2.55', 1),
(22, 'Caramel Macchiato', 'images/prod22.png', 'Freshly steamed milk with vanilla-flavored syrup marked with espresso and topped with a caramel drizzle for an oh-so-sweet finish.', '2.55', 1),
(23, 'Espresso Macchiato', 'images/prod23.png', 'Our rich espresso marked with dollop of steamed milk and foam. A European-style classic.', '2.50', 1),
(24, 'Peppermint Mocha', 'images/prod24.png', 'Our festive all-star Peppermint Mocha brightens the holidays: signature Espresso Roast combines with steamed milk, sweet mocha sauce and peppermint-flavored syrup, topped with whipped cream and dark-chocolate curls.', '3.45', 1),
(25, 'Peppermint White Chocolate Mocha', 'images/prod25.png', 'Rich espresso meets a trio of white chocolate sauce, peppermint-flavored syrup and steamed milk, topped with sweet whipped cream and dark-chocolate curls—an oh-so-delightfully merry treat.', '3.45', 1),
(26, 'Toasted White Chocolate Mocha', 'images/prod26.png', 'Our signature espresso paired with flavors of caramelized white chocolate combined with steamed milk and topped with whipped cream and festive holiday sugar sparkles and crispy white pearls—a sweet, oh-so-delightfully merry treat.', '3.45', 1),
(27, 'Caffè Mocha', 'images/prod27.png', 'Our rich, full-bodied espresso combined with bittersweet mocha sauce and steamed milk, then topped with sweetened whipped cream. The classic coffee drink that always sweetly satisfies.', '3.45', 1),
(28, 'Starbucks Reserve Dark Chocolate Mocha', 'images/prod28.png', 'Our small-lot Starbucks Reserve® espresso combined with cocoa, ground chocolate and topped with steamed milk delivers a brilliant combination of sweetness.', '3.45', 1),
(29, 'White Chocolate Mocha', 'images/prod29.png', 'Our signature espresso meets white chocolate sauce and steamed milk, and then is finished off with sweetened whipped cream to create this supreme white chocolate delight.', '3.45', 1),
(30, 'Starbucks Reserve Christmas 2022 Clover', 'images/prod30.png', 'Warm woodsy aromas with notes of tangerine, sweet herbals and mulling spice accents. We add perfectly aged Sumatran beans and full-bodied coffee from Aceh region of Indonesia.', '5.00', 1),
(31, 'Hawaii Kau Clover Starbucks Reserve', 'images/prod31.png', 'White Peach, Hazelnut & Citrus Zest located on the south side of the Big Island, Kau is home to black-sand beaches and a close-knit coffee community. Stepping out of the shadow of its neighbor, Kona, Kau has become a coveted micro-origin.', '5.00', 1),
(32, 'Sun-Dried Zambia Ngoli Estate Clover Starbucks Reserve', 'images/prod32.png', 'Sweet Date, Black Currant & Grapefruit Zest cultivated at the Ngoli Estate in the remote Mafinga Hills, this coffee was meticulously handpicked to ensure the highest quality.', '5.00', 1),
(33, 'Vietnam Da Lat Clover Starbucks Reserve', 'images/prod33.png', 'Bittersweet Chocolate & Dried Orange Peel Anchored by the city of Da Lat, Vietnam’s Lam Dong Province provides a dreamlike setting for coffee cultivation—mist-shrouded pine forests, cool temperatures and volcanic soil.', '5.00', 1),
(34, 'Clover® Starbucks Reserve Costa Rica Naranjo', 'images/prod34.png', 'Apricot & Almond The brilliant hues of the Costa Rican oxcart celebrate coffee’s vitality in the Naranjo region, where smallholder farmers in the Naranjo Cooperative worked together to produce this elevated lot rooted in community pride.', '5.00', 1),
(35, 'Clover Brewed Pike Place Roast', 'images/prod35.png', 'Well-rounded medium-roasted coffee with subtle notes of cocoa and toasted nuts balancing the smooth mouthfeel.', '5.00', 1),
(36, 'Chai Tea Latte', 'images/prod36.png', 'Black tea infused with cinnamon, clove and other warming spices is combined with steamed milk and topped with foam for the perfect balance of sweet and spicy. An iconic chai cup.', '2.20', 2),
(37, 'Chai Tea', 'images/prod37.png', 'Black tea infused with warm clove, cardamom, cinnamon and ginger notes. A bold, distinctive chai tea.', '2.15', 2),
(38, 'Earl Grey Tea', 'images/prod38.png', 'We take a strong black tea base and add the essence of bergamot, a citrus fruit with subtle lemon and floral lavender notes, to create this aromatically awesome tea flavor.', '2.15', 2),
(39, 'Teavana London Fog Tea Latte', 'images/prod39.png', 'Bright, citrusy spark of Italian bergamot blends with subtle hints of lavender, vanilla syrup, and steamed milk for this frothy reinvention of classic Earl Grey tea.', '2.20', 2),
(40, 'Royal English Breakfast Tea', 'images/prod40.png', 'Each sip of this beloved morning black tea unfolds to reveal the complexity of the high-grown full leaves. An elegant, time-honored classic that brings a royal nod to every cup.', '2.25', 2),
(41, 'Royal English Breakfast Tea Latte', 'images/prod41.png', 'A select blend of rich, full-leaf black teas from India and Sri Lanka sweetened with liquid cane sugar and topped with steamed milk and a velvety foam. Each and every sip—smooth and silky.', '2.25', 2),
(42, 'Emperor’s Clouds & Mist', 'images/prod42.png', 'This gently smoky, softly sweet green tea—cultivated at 3,500 feet and shrouded in ethereal clouds and mist—is tasty no matter what language you say it in.', '2.15', 2),
(43, 'Matcha Tea Latte', 'images/prod43.png', 'Smooth and creamy matcha sweetened just right and served with steamed milk. This favorite will transport your senses to pure green delight.', '2.25', 2),
(44, 'Honey Citrus Mint Tea', 'images/prod44.png', 'A customer creation so popular it’s now on the menu. Jade Citrus Mint® green tea, Peach Tranquility® herbal tea, hot water, steamed lemonade and a touch of honey mingle tastefully well together for a tea that comforts from the inside out.', '2.25', 2),
(45, 'Jade Citrus Mint® Brewed Tea', 'images/prod45.png', 'Green tea, lemon verbena, lemongrass and a hint of spearmint mingle for a bright, refreshing, citrusy green tea experience.', '2.25', 2),
(46, 'Mint Majesty', 'images/prod46.png', 'A blend of mint and a pinch of lemon verbena creates a refreshing flavor that\'s supercool for a caffeine-free herbal tea.', '2.25', 2),
(47, 'Peach Tranquility', 'images/prod47.png', 'A sweet fusion of peach, candied pineapple, chamomile blossoms, lemon verbena and rose hips come together in this caffeine-free herbal tea. Sip back and relax.', '2.25', 2),
(48, 'Peppermint Hot Chocolate', 'images/prod48.png', 'A big welcome back to our classic holiday hot chocolate—lovingly made with chocolaty mocha sauce, peppermint-flavored syrup and steamed milk and sweetly topped with whipped cream and dark-chocolate curls.', '2.55', 3),
(49, 'Peppermint White Hot Chocolate', 'images/prod49.png', 'A sweet twist on holiday hot chocolate—white chocolate mocha sauce, peppermint-flavored syrup and steamed milk, topped with whipped cream and dark-chocolate curls.', '2.55', 3),
(50, 'Toasted White Hot Chocolate', 'images/prod50.png', 'Hot chocolate taken to a new level—flavors of caramelized white chocolate combined with steamed milk and finished with whipped cream, festive holiday sugar sparkles and crispy white pearls.', '2.55', 3),
(51, 'Hot Chocolate', 'images/prod51.png', 'Steamed milk with vanilla- and chocolate-flavored syrups. Topped with sweetened whipped cream and chocolate-flavored drizzle. A timeless classic made to sweeten your spirits.', '2.50', 3),
(52, 'White Hot Chocolate', 'images/prod52.png', 'A traditional hot chocolate beverage made with white chocolate sauce and steamed milk, topped with whipped cream.', '2.50', 3),
(53, 'Caramel Apple Spice', 'images/prod53.png', 'Steamed apple juice complemented with cinnamon syrup, whipped cream and a caramel sauce drizzle.', '2.25', 3),
(54, 'Steamed Apple Juice', 'images/prod54.png', 'Freshly steamed 100% apple juice (not from concentrate). Feel the apple goodness in this classic fruit drink that will soothe and embolden your day.', '2.15', 3),
(55, 'Pumpkin Spice Crème', 'images/prod55.png', 'We combine steamed milk with flavors of pumpkin, cinnamon, nutmeg and clove, then top it all off with whipped cream to create this amazing, coffee-free fall favorite.', '3.05', 3),
(56, 'Caramel Brulée Crème', 'images/prod56.png', 'Steamed milk and rich caramel brulée sauce deliciously finished with whipped cream and a caramel brulée topping—an ode to holiday sweetness.', '3.10', 3),
(57, 'Chestnut Praline Crème', 'images/prod57.png', 'Steamed milk and flavors of caramelized chestnuts and spices—topped with whipped cream and spiced praline crumbs—come together for this festive moment.', '3.10', 3),
(58, 'Steamed Milk', 'images/prod58.png', 'Enjoy a warm cup of skim, 2%, soy, almond or coconutmilk steamed for your sipping pleasure.', '2.50', 3),
(59, 'Vanilla Crème', 'images/prod59.png', 'A smooth, frothy vanilla flavoured luxury. For those times when you’d rather not indulge in the rich flavour of our world-famous espresso - but still desire a hot, creamy vanilla beverage.', '2.85', 3),
(60, 'Pumpkin Spice Frappuccino® Blended Beverage', 'images/prod60.png', 'Pumpkin plus traditional fall spice flavors, blended with coffee, milk and ice and topped with whipped cream and pumpkin-pie spice. Think of it as the ultimate fall care package.', '3.65', 4),
(61, 'Apple Crisp Oatmilk Frappuccino® Blended Beverage', 'images/prod61.png', 'Flavors of apple, cinnamon and brown sugar blended with coffee, oatmilk and ice. Topped with a spiced apple drizzle and whipped cream.', '3.65', 4),
(62, 'Peppermint Mocha Frappuccino® Blended Beverage', 'images/prod62.png', 'A delectable blend of chocolaty-pepperminty perfection in every cool sip—Frappuccino® Roast coffee, mocha sauce, peppermint-flavored syrup, milk and ice, topped with whipped cream and dark-chocolate curls.', '3.75', 4),
(63, 'Peppermint White Chocolate Mocha Frappuccino® Blended Beverage', 'images/prod63.png', 'A delectable blend of white chocolaty-pepperminty perfection in every cool sip—Frappuccino® Roast coffee, white chocolate mocha sauce, peppermint-flavored syrup, milk and ice, topped with whipped cream and dark-chocolate curls.', '3.75', 4),
(64, 'Caramel Brulée Frappuccino® Blended Beverage', 'images/prod64.png', 'Caramel Brulée Frappuccino® Blended Beverage', '3.45', 4),
(65, 'Chestnut Praline Frappuccino® Blended Beverage', 'images/prod65.png', 'A blissful world of deliciousness: festive flavors of caramelized chestnuts and spices blended with Frappuccino® Roast coffee, milk and ice, and topped with whipped cream and spiced praline crumbs.', '3.55', 4),
(66, 'Mocha Cookie Crumble Frappuccino', 'images/prod66.png', 'Frappuccino® Roast coffee, mocha sauce and Frappuccino® chips blended with milk and ice, layered on top of whipped cream and chocolate cookie crumble and topped with vanilla whipped cream, mocha drizzle and even more chocolate cookie crumble.', '3.75', 4),
(67, 'Sugar Cookie Almondmilk Frappuccino® Blended Beverage', 'images/prod67.png', 'Sugar cookie-flavored syrup combined with Frappuccino® Roast coffee and almondmilk and blended with ice, topped with whipped cream and red and green sprinkles.', '3.75', 4),
(68, 'Toasted White Chocolate Mocha Frappuccino® Blended Beverage', 'images/prod68.png', 'A toasty holiday blend of wonder: Frappuccino® Roast coffee, milk, ice and flavors of caramelized white chocolate with a cheerful topping of whipped cream, festive holiday sugar sparkles and crispy white pearls.', '3.75', 4),
(69, 'Caramel Ribbon Crunch Frappuccino® Blended Beverage', 'images/prod69.png', 'Buttery caramel syrup blended with coffee, milk and ice, then topped with a layer of dark caramel sauce, whipped cream, caramel drizzle and a crunchy caramel-sugar topping—oh-so-beautifully delicious.', '3.70', 4),
(70, 'Espresso Frappuccino® Blended Beverage', 'images/prod70.png', 'Coffee is combined with a shot of espresso and milk, then blended with ice to give you a nice little jolt and lots of sipping joy.', '3.55', 4),
(71, 'Caffè Vanilla Frappuccino® Blended Beverage', 'images/prod71.png', 'We take Frappuccino® roast coffee and vanilla bean powder, combine them with milk and ice, topped with whipped cream. Tastes like happiness.', '3.55', 4),
(72, 'Caramel Frappuccino® Blended Beverage', 'images/prod72.png', 'Caramel syrup meets coffee, milk and ice for a rendezvous in the blender, while whipped cream and buttery caramel sauce layer the love on top. To change things up, try it affogato-style with a hot espresso shot poured right over the top.', '3.65', 4),
(73, 'Coffee Frappuccino® Blended Beverage', 'images/prod73.png', 'Coffee meets milk and ice in a blender for a rumble-and-tumble togetherness to create one of our most-beloved original Frappuccino® blended beverages.', '3.55', 4),
(74, 'Mocha Frappuccino® Blended Beverage', 'images/prod74.png', 'Mocha sauce, Frappuccino® Roast coffee, milk and ice all come together for a mocha flavor that\'ll leave you wanting more. To change things up, try it affogato-style with a hot espresso shot poured right over the top.', '3.75', 4),
(75, 'Pumpkin Cream Cold Brew', 'images/prod75.png', 'Starbucks® Cold Brew sweetened with vanilla syrup and topped with a pumpkin cream cold foam and a dusting of pumpkin spice topping.', '3.25', 5),
(76, 'Chocolate Cream Cold Brew', 'images/prod76.png', 'Starbucks® Cold Brew sweetened with vanilla syrup and topped with a silky, chocolaty cream cold foam.', '3.25', 5),
(77, 'Salted Caramel Cream Cold Brew', 'images/prod77.png', 'Here\'s a savory-meets-sweet refreshing beverage certain to delight: our signature, super-smooth cold brew, sweetened with a touch of caramel and topped with a salted, rich cold foam.', '3.20', 5),
(78, 'Irish Cream Cold Brew', 'images/prod78.png', 'Everything and more that you ever wanted in a sippable, dreamy holiday drink: Starbucks® Cold Brew swirled with Irish cream syrup, and topped with a cloud of vanilla sweet cream cold foam and a hint of cocoa.', '3.25', 5),
(79, 'Starbucks® Cold Brew Coffee', 'images/prod79.png', 'Handcrafted in small batches daily, slow-steeped in cool water for 20 hours, without touching heat—Starbucks® Cold Brew is made from our custom blend of beans grown to steep long and cold for a super-smooth flavor.', '3.10', 5),
(80, 'Vanilla Sweet Cream Cold Brew', 'images/prod80.png', 'Our slow-steeped custom blend of Starbucks® Cold Brew coffee accented with vanilla and topped with a delicate float of house-made vanilla sweet cream that cascades throughout the cup. It\'s over-the-top and super-smooth.', '3.15', 5),
(81, 'Starbucks® Cold Brew Coffee with Milk', 'images/prod81.png', 'Handcrafted in small batches daily, slow-steeped in cool water for 20 hours, without touching heat and finished with a splash of milk—Starbucks® Cold Brew is made from our custom blend of beans grown to steep long and cold for a super-smooth flavor.', '3.35', 5),
(82, 'Nitro Cold Brew', 'images/prod82.png', 'Espresso shots topped with hot water create a light layer of crema culminating in this wonderfully rich cup with depth and nuance.', '3.15', 5),
(83, 'Vanilla Sweet Cream Nitro Cold Brew', 'images/prod83.png', 'Served cold, straight from the tap, our Nitro Cold Brew is topped with a float of house-made vanilla sweet cream. The result: a cascade of velvety coffee more sippable than ever.', '3.25', 5),
(84, 'Iced Caffè Americano', 'images/prod84.png', 'Espresso shots topped with cold water produce a light layer of crema, then served over ice. The result: a wonderfully rich cup with depth and nuance. Pro Tip: For an additional boost, ask your barista to try this with an extra shot.', '3.30', 5),
(85, 'Iced Coffee', 'images/prod85.png', 'Freshly brewed Starbucks® Iced Coffee Blend served chilled and sweetened over ice. An absolutely, seriously, refreshingly lift to any day.', '3.10', 5),
(86, 'Iced Coffee with Milk', 'images/prod86.png', 'Freshly brewed Starbucks® Iced Coffee Blend with milk served chilled and sweetened over ice. An absolutely, seriously, refreshingly lift to any day.', '3.10', 5),
(87, 'Iced Espresso', 'images/prod87.png', 'Our smooth signature Espresso Roast over ice boasts rich, robust flavor and caramelly sweetness. A recipe of perfection at the heart of every handcrafted espresso we serve.', '3.10', 5),
(88, 'Iced Toasted Vanilla Oatmilk Shaken Espresso', 'images/prod88.png', 'Starbucks® Blonde espresso combined with notes of caramelized vanilla shaken together and topped with oatmilk for an energizing treat to boost your day.', '3.25', 5),
(89, 'Iced Brown Sugar Oatmilk Shaken Espresso', 'images/prod89.png', 'First we shake Starbucks® Blonde espresso, brown sugar and cinnamon together, and then top it off with oatmilk and ice for a cool lift to power you through your day.', '3.55', 5),
(90, 'Iced Chocolate Almondmilk Shaken Espresso', 'images/prod90.png', 'Starbucks® Blonde espresso meets cocoa and notes of malt, shaken together and topped with almondmilk and ice for an invigorating treat to power you through your day.', '3.65', 5),
(91, 'Iced Shaken Espresso', 'images/prod91.png', 'Made with the rich, full-bodied espresso you love—then shaken, chilled and mellowed with sweetness and a touch of milk to create a delightfully and deliciously convenient on-the-go drink.', '3.55', 5),
(92, 'Iced Flat White', 'images/prod92.png', 'Smooth ristretto shots of espresso get the perfect amount of whole milk and ice to create a not-too-strong, not-too-creamy, just-right flavor.', '3.30', 5),
(93, 'Iced Honey Almondmilk Flat White', 'images/prod93.png', 'This iced flat white—intentionally made with almondmilk and Starbucks Blonde® Espresso Roast poured over ice with a hint of honey—creates a perfect amount of cool, creamy, nutty sweetness.', '3.55', 5),
(94, 'Iced Pumpkin Spice Latte', 'images/prod94.png', 'Our signature espresso and milk—with the celebrated flavor combination of pumpkin, cinnamon, nutmeg and clove—served over ice. Enjoy it topped with whipped cream and real pumpkin-pie spices.', '3.25', 5),
(95, 'Iced Caramel Brulée Latte', 'images/prod95.png', 'Our signature espresso, milk, ice and rich caramel brulée sauce finished with whipped cream and a supreme topping of even more caramel brulée bits.', '3.25', 5),
(96, 'Teavana® Sparkling Unsweetened Peach Nectarine Green Tea', 'images/prod96.png', 'This special unsweetened combination of peach and nectarine flavors plus green tea adds a delicious sparkle of nourishment to your day.', '2.75', 6),
(97, 'Teavana® Mango Black Tea', 'images/prod97.png', 'We start with fine black tea then blend it with refreshing mango notes and hints of crisp lime, giving your day a refreshing lift.', '2.75', 6),
(98, 'Iced Black Tea', 'images/prod98.png', 'Premium black tea sweetened just right and shaken with ice to create an ideal iced tea—a rich and flavorful black tea journey awaits you.', '2.20', 6),
(99, 'Iced Black Tea Lemonade', 'images/prod99.png', 'Premium black tea sweetened just right, then shaken with refreshing lemonade and ice for this Arnold Palmer-inspired beverage. A distinguished, satisfying treat.', '2.25', 6),
(100, 'Iced Royal English Breakfast Tea Latte', 'images/prod100.png', 'A select blend of rich, full-leaf black teas from India and Sri Lanka sweetened with liquid cane sugar and combined with milk and ice.', '2.35', 6),
(101, 'Iced London Fog Tea Latte', 'images/prod101.png', 'Bright, citrusy spark of bergamot blends with subtle hints of lavender and mixes with vanilla syrup, milk and ice to create this delicious reinvention of a classic Earl Grey tea.', '2.25', 6),
(102, 'Iced Chai Tea Latte', 'images/prod102.png', 'Black tea infused with cinnamon, clove, and other warming spices are combined with milk and ice for the perfect balance of sweet and spicy.', '2.15', 6),
(103, 'Iced Peach Green Tea', 'images/prod103.png', 'Espresso shots topped with hot water create a light layer of crema culminating in this wonderfully rich cup with depth and nuance.', '2.50', 6),
(104, 'Iced Peach Green Tea Lemonade', 'images/prod104.png', 'Green tea is layered together with flavors of spearmint, lemon verbena, lemongrass and a splash of lemonade over ice for a patio-ready refreshment of surprise and delight.', '2.85', 6),
(105, 'Iced Matcha Tea Latte', 'images/prod105.png', 'Smooth and creamy matcha sweetened just right and served with milk over ice. Green has never tasted so good.', '2.95', 6),
(106, 'Iced Green Tea', 'images/prod106.png', 'Freshly brewed Starbucks® Iced Coffee Blend served chilled and sweetened over ice. An absolutely, seriously, refreshingly lift to any day.', '1.85', 6),
(107, 'Iced Green Tea Lemonade', 'images/prod107.png', 'Freshly brewed Starbucks® Iced Coffee Blend with milk served chilled and sweetened over ice. An absolutely, seriously, refreshingly lift to any day.', '2.25', 6),
(108, 'Iced Matcha Lemonade', 'images/prod108.png', 'Our finely ground Teavana® matcha green tea combined with crisp lemonade, then shaken with ice, creates a refreshingly sweet, delicious drink and a delightfully vibrant, green hue.', '2.95', 6),
(109, 'Iced Passion Tango® Tea', 'images/prod109.png', 'A blend of hibiscus, lemongrass and apple hand-shaken with ice: a refreshingly vibrant tea infused with the color of passion', '2.75', 6),
(110, 'Iced Passion Tango® Tea Lemonade', 'images/prod110.png', 'Our blend of hibiscus, lemongrass and apple hand-shaken with ice, lemonade and, of course, passion.', '2.85', 6),
(111, 'Mango Dragonfruit Lemonade Starbucks Refreshers® Beverage', 'images/prod111.png', 'This tropical-inspired pick-me-up—crafted with a clever combination of vibrant lemonade, sweet mango and refreshing dragonfruit flavors and hand-shaken with ice plus a scoop of real diced dragonfruit.', '1.95', 7),
(112, 'Strawberry Açaí Lemonade Starbucks Refreshers® Beverage', 'images/prod112.png', 'Sweet strawberry flavors, passion fruit and açaí notes balanced with the delightful zing of lemonade, served over ice with freeze-dried strawberry pieces. The ultimate pick-me-up your afternoon is calling for.', '1.95', 7),
(113, 'Pineapple Passionfruit Lemonade Starbucks Refreshers® Beverage', 'images/prod113.png', 'Tropical flavors of pineapple and passionfruit combine with diced pineapple and refreshing lemonade to create a taste of sunshine in a cup.', '2.10', 7),
(114, 'Strawberry Açaí Starbucks Refreshers® Beverage', 'images/prod114.png', 'Sweet strawberry flavors accented by passion fruit and açaí notes, shaken with ice and real strawberry pieces—a welcoming sweet spot of refreshment.', '2.00', 7),
(115, 'Lemonade', 'images/prod115.png', 'Awaken your taste buds with the zing of refreshing lemonade—this tangy, fresh sip puts a little zip in your step.', '1.75', 7),
(116, 'Blended Strawberry Lemonade', 'images/prod116.png', 'Awaken your taste buds with the zing of refreshing lemonade infused with a hint of delicious strawberry flavor and blended with ice. A light, fresh beverage that puts a little zip in your step.', '1.85', 7),
(117, 'Evolution Fresh® Mighty Watermelon', 'images/prod117.png', 'A naturally refreshing and hydrating juice with just a touch of lemon, our fruit is picked at its absolute peak of sweetness then cold-pressed using high pressure processing for maximum flavor and nutrients..', '1.55', 7),
(118, 'Starbucks BAYA™ Energy Mango Guava', 'images/prod118.png', 'Starbucks BAYA™ Energy Mango Guava crafted with mango juice and tropical guava flavor to lift you with some feel-good energy. It comes with 160 mg of caffeine naturally found in the fruit of the coffee plant.', '1.65', 7),
(119, 'SBC Milk', 'images/prod119.png', 'Espresso meets a dollop of whipped cream to enhance the rich and caramelly flavors of a straight-up shot.', '1.25', 7),
(120, 'Horizon® Organic Vanilla Milk Box', 'images/prod120.png', 'Grab a mini carton of organic milk to complement a treat from our pastry case or pack into a lunch bag. Enjoy a sip and a touch of tasty vanilla.', '1.55', 7),
(121, 'Horizon® Chocolate Organic Milk', 'images/prod121.png', 'Great for snacks, travel and more, this chocolate organic milk box is a convenient way to experience your milk on the go and everywhere.', '1.25', 7),
(122, 'Horizon® Organic Lowfat Milk Box', 'images/prod122.png', 'Great for snacks, travel and more, this organic lowfat milk box is a convenient way to experience your milk on the go and everywhere.', '1.25', 7),
(123, 'Galvanina Sparkling Water', 'images/prod123.png', 'The essential refresher. Our sparking, natural mineral water will quench your thirst with effervescent ease.', '1.00', 7),
(124, 'Spindrift® Grapefruit Sparkling Water', 'images/prod124.png', 'Pink, tangy, grapefruits squeezed into sparkling water—along with touches of orange and lemon—for an effervescent, delightfully refreshing beverage.', '1.15', 7),
(125, 'Spindrift® Raspberry Lime Sparkling Water', 'images/prod125.png', 'Raspberry and lime squeezed into sparkling water for an effervescent, delightfully refreshing beverage.', '1.15', 7),
(126, 'Galvanina Sparkling Water - Lime', 'images/prod126.png', 'Natural, thirst-quenching mineral water with a twist of refreshing lime.', '1.05', 7),
(127, 'Hawaii Volcanic Water', 'images/prod127.png', 'Hawaii\'s signature natural artesian water from the Big Island—rejuvenating and replenishening.', '0.75', 7),
(128, 'Ethos® Bottled Water', 'images/prod128.png', 'For every bottle of Ethos® water you buy, Starbucks will donate 5 cents to support humanitarian programs in coffee-growing communities, providing clean, safe water to those in need.', '0.75', 7),
(129, 'Bacon, Sausage & Egg Wrap', 'images/prod129.png', 'Double-smoked bacon, savory pork sausage and cage-free scrambled eggs combined with Cheddar cheese and potatoes--all wrapped in a flour tortilla.', '1.75', 8),
(130, 'Impossible Breakfast Sandwich', 'images/prod130.png', 'The savory Impossible™ Sausage Made from Plants combined with a cage-free fried egg and aged Cheddar cheese on an artisan sesame ciabatta bun. ', '1.90', 8),
(131, 'Bacon, Gouda & Egg Sandwich', 'images/prod131.png', 'Sizzling applewood-smoked bacon, Parmesan cage-free egg frittata and melted aged Gouda on an artisan roll.', '1.75', 8),
(132, 'Double-Smoked Bacon, Cheddar & Egg Sandwich', 'images/prod132.png', 'Bacon smoked for six hours over hickory wood chips, stacked with a cage-free fried egg, topped with a melted slice of sharp Cheddar cheese—all on our signature croissant bun.', '1.85', 8),
(133, 'Turkey Bacon, Cheddar & Egg White Sandwich', 'images/prod133.png', 'Sizzling turkey bacon and cage-free egg whites paired with creamy, melted, reduced-fat white Cheddar cheese on a wheat English muffin.', '1.90', 8),
(134, 'Sausage, Cheddar & Egg Sandwich', 'images/prod134.png', 'A savory sausage patty, fluffy cage-free eggs and aged Cheddar cheese on a perfectly toasted English muffin.', '1.85', 8),
(135, 'Spinach, Feta & Egg White Wrap', 'images/prod135.png', 'Cage-free egg whites are combined with spinach, feta cheese and sun-dried tomato cream cheese inside a whole-wheat wrap.', '1.75', 8),
(136, 'Avocado Spread', 'images/prod136.png', 'Avocadoes mixed with lime, sea salt, garlic and a touch of spice—specially packaged to maintain freshness without the use of heat, additives or preservatives.', '1.00', 8),
(137, 'Kale & Mushroom Egg Bites', 'images/prod137.png', 'Chopped kale and portabella mushrooms delicately folded into cage-free eggs with Monterey Jack cheese and cooked using the French \"sous vide\" technique to create a velvety texture that\'s full of flavor.', '1.75', 8),
(138, 'Bacon & Gruyère Egg Bites', 'images/prod138.png', 'Applewood-smoked bacon and aged Gruyère Monterey Jack cheeses folded into cage-free eggs and cooked using the French \"sous vide\" technique to create a velvety texture that\'s full of flavor.', '1.75', 8),
(139, 'Egg White & Roasted Red Pepper Egg Bites', 'images/prod139.png', 'Cage-free egg whites combined with Monterey Jack cheese, spinach and fire-roasted red peppers and cooked using the French \"sous vide\" technique to create a velvety texture that\'s full of flavor.', '1.75', 8),
(140, 'Plain Bagel', 'images/prod140.png', 'Classic soft, chewy and thick New York–style bagel. Available with cream cheese or butter.', '1.05', 9),
(141, 'Cinnamon Raisin Bagel', 'images/prod141.png', 'Soft, chewy and thick New York-style bagel swirled with sweet cinnamon and raisins. Available with cream cheese or butter.', '1.10', 9),
(142, 'Everything Bagel', 'images/prod142.png', 'Soft, chewy and thick New York–style bagel topped with onion, garlic, salt, poppy and sesame seeds. Available with cream cheese or butter. ', '1.15', 9),
(143, 'Cookies & Cream Cake Pop', 'images/prod143.png', 'Chocolate cake blended with creamy, sandwich-cookie buttercream and cookie bits, dipped in white-chocolaty coating and finished with dark-chocolaty cookie crumb.', '1.00', 9),
(144, 'Reindeer Cake Pop', 'images/prod144.png', 'Vanilla cake interior with chocolaty icing, finished with a festive red nose and antlers.', '1.00', 9),
(145, 'Birthday Cake Pop', 'images/prod145.png', 'Bite-sized vanilla cake mixed with vanilla buttercream, dipped in pink chocolaty icing and topped with white sprinkles.', '1.00', 9),
(146, 'Chocolate Cake Pop', 'images/prod146.png', 'Bite-sized chocolate cake mixed with chocolate buttercream, dipped in chocolaty icing and topped with white sprinkles.', '1.00', 9),
(147, 'Lime-Frosted Coconut Bar', 'images/prod147.png', 'A delightful combination of chewy coconut and oatmeal with mini white chocolate chips, topped with lime frosting made with cream cheese, drizzled with a white-chocolaty coating and sprinkled with coconut.', '1.25', 9),
(148, 'Cranberry Bliss® Bar', 'images/prod148.png', 'A blondie cake with dried cranberries—finished with a layer of cream-cheese icing flecked with orange zest and a sprinkle of dried cranberries.', '1.30', 9),
(149, 'Double Chocolate Brownie', 'images/prod149.png', 'Rich chocolate brownie with generous chunks of semisweet chocolate.', '1.35', 9),
(150, 'Chocolate Chip Cookie', 'images/prod150.png', 'Cage-free egg whites combined with Monterey Jack cheese, spinach and fire-roasted red peppers and cooked using the French \"sous vide\" technique to create a velvety texture that\'s full of flavor.', '1.25', 9),
(151, 'Ham & Swiss Croissant', 'images/prod151.png', 'Hickory-smoked ham and melted Swiss cheese wrapped in a butter croissant with soft, flaky layers and a golden-brown crust.', '1.10', 9),
(152, 'Butter Croissant', 'images/prod152.png', 'Classic butter croissant with soft, flaky layers and a golden-brown crust.', '1.05', 9),
(153, 'Chocolate Croissant', 'images/prod153.png', 'Two generous pieces of chocolate wrapped in a butter croissant with soft, flaky layers and a golden-brown crust.', '1.10', 9),
(154, 'Chocolate Pistachio Swirl', 'images/prod154.png', 'Brioche inspired spiraled bun, with hints of cocoa and cinnamon, and topped with pistachios.', '1.15', 9),
(155, 'Cinnamon Coffee Cake', 'images/prod155.png', 'Buttery, moist, coffee cake swirled with a cinnamon-sugar blend and finished with a crunchy streusel topping.', '1.25', 9),
(156, 'Iced Lemon Loaf', 'images/prod156.png', 'Citrusy, buttery, moist lemon pound cake topped with a sweet icing.', '1.15', 9),
(157, 'Banana Walnut & Pecan Loaf', 'images/prod157.png', 'Bananas, walnuts and pecans mixed into a moist, nutty, classic banana bread.', '1.20', 9),
(158, 'Cheese Danish', 'images/prod158.png', 'Flaky, butter croissant dough with soft, warm cheese in the center.', '1.10', 9),
(159, 'Glazed Doughnut', 'images/prod159.png', 'Old-fashioned cake doughnut glazed with sweet icing. - VEGETARIAN', '1.05', 9),
(160, 'Sugar Plum Cheese Danish', 'images/prod160.png', 'Cream-cheese filling surrounded by a fluffy danish, topped with a spiced sugar-plum spread.', '1.15', 9),
(161, 'Pumpkin Cream Cheese Muffin', 'images/prod161.png', 'A spiced pumpkin muffin topped with sweet cream cheese filling and a sprinkling of chopped, spiced pepitas.', '1.25', 9),
(162, 'Blueberry Muffin', 'images/prod162.png', 'Soft muffin with sweet, juicy blueberries and a hint of lemon, finished with a crunchy sugar topping.', '1.25', 9),
(163, 'Pumpkin Scone', 'images/prod163.png', 'A spiced pumpkin scone topped with sweet icing—a marvelously flavorful fall treat.', '1.20', 9),
(164, 'Petite Vanilla Bean Scone', 'images/prod164.png', 'Moist, fluffy, petite scone made with real vanilla beans and vanilla extract.', '1.25', 9),
(165, 'Crispy Grilled Cheese on Sourdough', 'images/prod165.png', 'A blend of white Cheddar and mozzarella cheeses on sourdough bread, topped with a Parmesan butter spread.', '3.05', 10),
(166, 'Ham & Swiss on Baguette', 'images/prod166.png', 'Ham and Swiss cheese meld with Dijon butter on a toasted baguette.', '3.10', 10),
(167, 'Turkey, Provolone & Pesto on Ciabatta', 'images/prod167.png', 'Thick-sliced turkey breast, melted provolone cheese, dry-roasted red peppers and basil pesto on a ciabatta roll.', '3.15', 10),
(168, 'Tomato & Mozzarella on Focaccia', 'images/prod168.png', 'Roasted tomatoes, mozzarella, spinach and basil pesto layered on toasted focaccia bread.', '3.10', 10),
(169, 'Eggs & Gouda Protein Box', 'images/prod169.png', 'Two cage-free hard-boiled eggs with Gouda and multigrain crackers plus a blend of dried apricots and apples, peanut butter spread and salt and pepper.', '4.00', 10),
(170, 'Cheese Trio Protein Box', 'images/prod170.png', 'Brie, Gouda and aged sharp Cheddar cheese paired with olive oil and sea-salt crackers, plus a blend of dried apricots and cranberries.', '4.00', 10),
(171, 'Cheddar & Uncured Salami Protein Box', 'images/prod171.png', 'Flavorful salami, aged sharp and white Cheddar cheeses and olive oil and sea-salt crackers paired with a blend of dried cranberries, almonds, walnuts and pepitas.', '4.30', 10),
(172, 'Chickpea Bites & Avocado Protein Box', 'images/prod172.png', 'Falafel-inspired chickpea bites are paired with snap peas, mini carrots, avocado spread and a blend of dried cranberries, almonds, pepitas and sunflower seeds. ', '4.25', 10),
(173, 'Eggs & Cheddar Protein Box', 'images/prod173.png', 'Two cage-free hard-boiled eggs, sliced tart apples, grapes and white Cheddar cheese come together with multigrain muesli bread and honey peanut butter.', '4.30', 10),
(174, 'PB&J Protein Box', 'images/prod174.png', 'Natural peanut butter and strawberry jam spread on soft, honey wheat bread and served with string cheese, apples, mini carrots and Greek yogurt ranch dip plus chocolate-covered raisins.', '4.35', 10),
(175, 'Cheese & Fruit Protein Box', 'images/prod175.png', 'Brie, Gouda and aged Cheddar cheeses paired with olive oil and sea-salt crackers, apples and grapes.', '4.25', 10),
(176, 'Dipped Madeleines', 'images/prod176.png', 'A blend of white Cheddar and mozzarella cheeses on sourdough bread, topped with a Parmesan butter spread.', '1.15', 11),
(177, 'Madeleines', 'images/prod177.png', 'Made with quality ingredients, these rich and buttery French cakes are soft and moist in the center and baked with lightly crisped edges.', '1.10', 11),
(178, 'Shortbread Cookies', 'images/prod178.png', 'Our two-pack of butter shortbread cookies made with quality ingredients create a melt-in-your-mouth texture in every bite.', '1.10', 11),
(179, 'Dark Chocolate Graham', 'images/prod179.png', 'Two crunchy graham cookies covered with dark chocolate and topped with a milk chocolate drizzle. The perfect snack to complement your favorite latte or coffee drink.', '1.75', 11),
(180, 'Salted Peppermint Bark', 'images/prod180.png', 'Two cage-free hard-boiled eggs with Gouda and multigrain crackers plus a blend of dried apricots and apples, peanut butter spread and salt and pepper.', '1.95', 11),
(181, 'Salted Almond Chocolate Bites', 'images/prod181.png', 'Triple chocolate-covered almonds with gray sea salt: a flavorful nutty-salty experience.', '2.00', 11),
(182, 'Dark Chocolate Peanut Butter Cups', 'images/prod182.png', 'What happens when the best-tasting peanut butter in the world is delicately placed into the highest-quality, dark chocolate available? Peanut-butter cup perfection.', '2.30', 11),
(183, 'Squirrel™ - Classic Almonds', 'images/prod183.png', 'Pure California almonds are kettle-cooked, then finished with a hint of salt. A classic taste of wholesomeness.', '2.25', 11),
(184, 'Squirrel Brand® Fruit & Nut', 'images/prod184.png', 'Premium cashews and pure California almonds loaded with juicy cranberries and mouthwatering blueberries. Ah, such a delightful blend of sweet and savory.', '2.25', 11),
(185, 'Spearmint Gum', 'images/prod185.png', 'A strong and crisp mint flavor that freshens breath after coffee, leaves breath feeling fresh for hours.', '1.05', 11),
(186, 'Perfectly Salted Chips', 'images/prod186.png', 'Brie, Gouda and aged Cheddar cheeses paired with olive oil and sea-salt crackers, apples and grapes.', '2.20', 11),
(187, 'Starbucks Butter Popcorn', 'images/prod187.png', 'Perfectly buttery with just the right amount of salt, this fluffy snack favorite makes movie theaters everywhere jealous.', '2.15', 11),
(188, 'Country Archer - Hickory Smoked Turkey Jerkey', 'images/prod188.png', 'This small-batch, handcrafted turkey jerkey: hickory-smoked and prepared the way it was always intended, with slices of real turkey breast, true smoke flavor and no nonsense.', '3.10', 11),
(189, 'String Cheese', 'images/prod189.png', 'As a mess-free car snack or a quick add-on to round out their lunch box—this string cheese is always a fan favorite. Made with low-moisture part-skim mozzarella cheese.', '1.00', 11),
(190, 'KIND Blueberry Vanilla & Cashew Bar', 'images/prod190.png', 'A chewy blend of blueberries and cashews, combined with the sweet taste of vanilla. It\'s goodness on the go.', '4.30', 11),
(191, 'KIND Peanut Butter Dark Chocolate Bar', 'images/prod191.png', 'A satisfying blend of peanuts and cocoa bound together in honey. This snack bar delights from the first bite till the last.', '2.30', 11),
(192, 'That\'s It - Apple + Blueberry Bar', 'images/prod192.png', 'Fruit bars made from only two ingredients: apples and blueberries. Seriously, that\'s it!', '2.25', 11),
(193, 'Rolled & Steel-Cut Oatmeal', 'images/prod193.png', 'A blend of rolled and whole-grain steel-cut oats to customize any way you want with a selection of toppings: dried fruit, nut medley, brown sugar, agave or blueberries.', '2.15', 12),
(194, 'Berry Trio Parfait', 'images/prod194.png', 'Nonfat vanilla yogurt combined with sliced strawberries, whole blueberries, raspberries and topped with a crisp honey-oat granola.', '2.20', 12),
(195, 'Strawberry Overnight Grains', 'images/prod195.png', 'Steel-cut oats, quinoa, chia seeds and coconutmilk combined with fresh strawberries and topped with shaved coconut and toasted almonds.', '1.20', 12);

-- --------------------------------------------------------

--
-- Table structure for table `stat`
--

CREATE TABLE `stat` (
  `statID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stat`
--

INSERT INTO `stat` (`statID`, `name`, `count`) VALUES
(1, 'Cafes Worldwide', 33833),
(2, 'Awards', 32),
(3, 'Employees', 383000),
(4, 'Staff', 170000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`blogID`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartID`),
  ADD UNIQUE KEY `productID` (`productID`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryID`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`commentID`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedbackID`);

--
-- Indexes for table `giftcard`
--
ALTER TABLE `giftcard`
  ADD PRIMARY KEY (`cardID`);

--
-- Indexes for table `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD PRIMARY KEY (`orderID`,`productID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderID`);

--
-- Indexes for table `photogallery`
--
ALTER TABLE `photogallery`
  ADD PRIMARY KEY (`photoID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productID`),
  ADD KEY `fk_categoryID` (`categoryID`);

--
-- Indexes for table `stat`
--
ALTER TABLE `stat`
  ADD PRIMARY KEY (`statID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `blogID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cartID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `categoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `commentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedbackID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `giftcard`
--
ALTER TABLE `giftcard`
  MODIFY `cardID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `photogallery`
--
ALTER TABLE `photogallery`
  MODIFY `photoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `productID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=196;

--
-- AUTO_INCREMENT for table `stat`
--
ALTER TABLE `stat`
  MODIFY `statID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `fk_categoryID` FOREIGN KEY (`categoryID`) REFERENCES `category` (`categoryID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
