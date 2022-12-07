-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2022 at 02:40 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mentorfied`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `title` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `category_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `image_id` int(11) DEFAULT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `seo_title` varchar(244) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `title`, `summary`, `content`, `created`, `category_id`, `member_id`, `image_id`, `published`, `seo_title`) VALUES
(1, 'Systemic Brochure', 'Brochure design for science festival', '<p>This brochure design is part of a suite of advertising materials that promote the Systemic science festival. These materials feature the complex visual identity that is an abstract grid of pathways representing choice and decision-making in designing complex systems.</p>', '2021-01-26 20:21:03', 1, 2, 1, 1, 'systemic-brochure'),
(2, 'Forecast', 'Illustration for fashion magazine article', '<p>This drawing was commissioned by a fashion magazine for an article about spotting future trends. This piece uses luxury handbags to mimic clouds in a kind of fashion-based weather forecast-style graphic. The use of repetition and pattern highlights the potential power of a single prediction.</p>', '2021-01-29 03:44:03', 3, 2, 19, 1, 'forecast'),
(3, 'Swimming pool', 'Architecture magazine photography', '<p>This photograph is one of a series commissioned for an article in an architectural magazine featuring swimming pools in private residences. The variety of locations shared a similar mid-century modern aesthetic and were rendered using a grainy, black and white film stock.</p>', '2021-02-02 17:45:52', 4, 1, 3, 1, 'swimming-pool'),
(4, 'Walking Birds', 'Artwork for music video', '<p>The brief for this music video was to combine a psychedelic sixties vibe with a granola-brown seventies aesthetic and morph it into a Sesame Street-style animation. With over two million views online, the artwork successfully promoted the song across multiple social media channels.</p>', '2021-02-12 19:05:35', 3, 3, 4, 1, 'walking-birds'),
(5, 'Sisters', 'Editorial graphics for psychology article', '<p>The article that these illustrations accompany highlights the changing landscape of family connections in the modern age as compared to fifty years ago. The brief was to visualize the interpersonal drift caused by increased dispersement of communities across the globe.</p>', '2021-02-26 23:31:16', 3, 3, 5, 1, 'sisters'),
(6, 'Micro-Dunes', 'Photography for scientific journal', '<p>This photograph was commissioned to accompany a scientific article about micro-ecologies in the coastal environment. Due to the miniature scale of the subject matter, a macro lens was used to capture the fine detail. It was shot on location on the mid-north coast of Australia.</p>', '2021-03-03 05:02:47', 4, 1, 6, 1, 'micro-dunes'),
(7, 'Milk Beach Website', 'Website for music series', '<p>Using the imagery commissioned for the album artwork, this website aims to provide a simple channel for users to listen to the music digitally. Care was taken to ensure fans of the music could connect with the brand and keep updated on future offerings.</p>', '2021-03-06 18:16:22', 2, 1, 7, 1, 'milk-beach-website'),
(8, 'Wellness App', 'App for health facility', '<p>The Wellness chain of health facilities required an app that allowed members to view and book classes. The existing brand style guide defined the overall look and feel of the site with the main goal of the design to be as minimalistic as possible.</p>', '2021-03-12 22:45:49', 2, 2, 8, 1, 'wellness-app'),
(9, 'Milk Beach Music', 'Photography for a music series', '<p>The music label that released this series wanted to capture the beach that inspired its creation. A number of photographs (including panoramic views and close-ups) were shot on location at Milk Beach in Sydney, Australia. They were given a duotone appearance in post-production.</p>', '2021-03-13 01:09:40', 4, 1, 9, 1, 'milk-beach-music'),
(10, 'Polite Society Mural', 'Large-scale illustrations for fashion label', '<p>This is one of several illustrations commissioned by fashion label, Polite Society, to decorate their new autumn-winter collection displays. Appearing in various forms (such as murals, digital projections, and in print) they represent the modern aesthetic of the latest range.</p>', '2021-03-16 21:14:40', 3, 1, 10, 1, 'polite-society-mural'),
(11, 'Stargazer Website and App', 'Website and app design for music festival', '<p>The Stargazer music festival website uses a highly typographic treatment to communicate the high calbre performers who will be appearing. As well as allowing users to view the line-up and purchase tickets, the website also allows them to plan their itineraries and book food.</p>', '2021-03-18 01:01:19', 2, 3, 11, 1, 'stargazer-website-and-app'),
(12, 'The Ice Palace', 'Book cover design', '<p>This cover is for a Chimney Press reissue of the Norwegian classic novel, The Ice Palace. The design reflects the concise style of the writing and the sense of unease that appears throughout, almost as its own frozen character. The binding uses linen and a thick cover keeps its secrets close to its chest.</p>', '2021-03-20 18:24:52', 1, 2, 12, 1, 'the-ice-palace'),
(13, 'Chimney Press Website', 'Website for book publisher', '<p>This design was based on extensive research into the perception of the Chimney Press brand across multiple channels. The insights gained showed that customers were very keen to keep informed on new and upcoming releases and also to share this information throughout their social networks.</p>', '2021-03-21 15:44:01', 2, 2, 13, 1, 'chimney-press-website'),
(14, 'Milk Beach Album Cover', 'Packaging for music series', '<p>Having commissioned a number of photographs of the intertidal rocks that adorn the eponymous Milk Beach, this packaging creates a beautiful and serene context for the hugely successful music series. Natural, recycled cardstocks and gentle colorways were used throughout.</p>', '2021-03-27 20:15:20', 1, 1, 14, 1, 'milk-beach-album-cover'),
(15, 'Seascape', 'Photograph for art exhibition', '<p>This shot of tbe sea at Margate was included in a group show at the Turner Contemporary art gallery in Kent, England. Printed at a large scale, the serene viewpoint reveals a timeless beauty to the briny waters that have lured Londoners to it for centuries.</p>', '2021-04-04 02:36:08', 4, 2, 15, 1, 'seascape'),
(16, 'Polite Society Website', 'Website for fashion label', '<p>The Polite Society website was rebuilt from the ground up with a complete evaluation of the old version and adjustments to the new user experience to respond to it. As well as working on multiple devices, a new back-end was built to encompass the expanding nature of the company.</p>', '2021-04-06 17:21:44', 2, 1, 16, 1, 'polite-society-website'),
(17, 'Snow Search', 'Graphics for mobile game', '<p>These illustrations of a young boy and his dog formed the basis for a highly successful animated game called Snow Search. The game, which was designed for mobile devices, received several awards for game design and mechanics. More illustration work is currently underway for a sequel.</p>', '2021-04-08 15:46:31', 3, 3, 17, 1, 'snow-search'),
(18, 'Floral Website', 'Website for florist', '<p>This florist in Brooklyn required an updated website to support the expanding scope of their business. Working in association with a stylist and a photographer, we created a pleasant and straightforward user experience. Since the relaunch, online enquiries have increased.</p>', '2021-04-09 00:05:19', 2, 1, 18, 1, 'floral-website'),
(19, 'Abandoned Industry', 'Photograph for magazine feature', '<p>This photograph of old industrial equipment on a disused dock appeared alongside an essay in a magazine about urban-planning and regeneration. The brief was to consider the visual beauty inherent in decay and inspire readers to embrace sustainable idealogies within the contemporary landscape.</p>', '2021-04-11 17:52:02', 4, 2, 21, 1, 'abandoned-industry'),
(20, 'Chimney Business Cards', 'Stationery design for publishing company', '<p>Along with several other items of branded stationery, Chimney Press required new business cards for their expanding office staff. In keeping with their company mission of re-releasing older book titles, a clean and vintage-inspired aesthetic informed the otherwise modern design.</p>', '2021-04-15 16:04:39', 1, 2, 20, 1, 'chimney-business-cards'),
(21, 'Stargazer', 'Illustrations for music festival', '<p>A series of illustrations were commissioned for the Stargazer music festivals range of promotional materials. A creative choice was made not to portray the night sky itself (as in previous years) but to focus on the beauty and wonder inherent in the patrons themselves.</p>', '2021-04-20 01:08:11', 3, 3, 23, 1, 'stargazer'),
(22, 'Polite Society Posters', 'Poster designs for fashion label', '<p>These posters were designed to increase brand awareness in fashion districts as part of an international campaign ahead of the upcoming autumn-winter season. The client required something aesthetically modern that introduced the vibrant palette of the new collection.</p>', '2021-04-22 14:49:27', 1, 1, 2, 1, 'Polite-Society-Posters'),
(23, 'Golden Brown', 'Photograph for interior design book', '<p>This photograph is one of a range that appears in a book about interior design called Golden Brown. The interiors featured in the book show the current trend for looking back to the 1970\'s and the colour treatment of the photography reflects this warm, earthy palette.</p>', '2021-04-25 20:51:19', 4, 3, 22, 1, 'golden-brown'),
(24, 'Travel Guide', 'Book design for series of travel guides', '<p>The best-selling travel guide series, <strong>Featherview</strong>, required a refreshed look and feel for their latest series of books covering the Asian region. They were after a clean and concise solution - a versatile design that could accommodate both the coffee table and the backpack.</p>', '2021-04-26 02:11:42', 1, 1, 24, 1, 'travel-guide'),
(25, 'Buddha', 'Photograph for magazine article', '<p>The article this photograph accompanies is about the growing popularity of mindfulness meditation in the mental health industry today. The text traces the history of mindfulness back to its Buddhist origins.</p>', '2021-08-03 16:30:19', 4, 12, 25, 1, 'buddha'),
(26, 'Faces in the Water', 'Book cover design', '<p>Chimney Press requested a book cover design for this poignant portrayal of a woman\'s experience in a psychiatric facility. The typographic treatment intends to mimic the movement of water across the surface of a body of water and I feel it resonates with the highly poetic and sensitive subject matter.</p>', '2021-08-03 19:11:24', 1, 8, 26, 1, 'faces-in-the-water'),
(27, 'Salmon', 'Photograph for restaurant review', '<p>This photograph was part of a series shot at a new seafood restaurant to appear alongside a review in the New York Times. Care was taken to ensure the series reflected the fresh, organic menu and \"clean-eating\" minimalist aesthetic of the restaurant itself.</p>', '2021-08-03 16:23:07', 4, 10, 27, 1, 'salmon'),
(28, 'Quiet', 'Book cover design', '<p>This cover design is for a book about silent movies and is based on the dialogue boards they used. The card stock for the cover is designed to look slightly old and dusty and uses rough-textured recycled materials to give the ink a nice matte effect.</p>', '2021-08-03 18:21:04', 1, 7, 28, 1, 'quiet'),
(29, 'Quiet Invite', 'Invitation design for documentary', '<p>This invitation was designed for the world premiere and launch party of a new documentary by Claude Dupont titled \"Quiet: A Silent Film History.\" It was important to make it visually cohesive with the book that I also designed for the same feature.</p>', '2021-08-03 18:26:29', 1, 7, 29, 1, 'quiet-invite'),
(30, 'Museum', 'Photography for a museum', '<p>The MAXII museum (Museo Nazionale delle Arti del XXI Secolo) in Rome, Italy was designed by Zaha Hadid and is dedicated to contemporary art and architecture. This assignment was to capture the neon installation on its exterior by Italian artist, Maurizio Nannucci.</p>', '2021-08-03 16:06:12', 4, 5, 30, 1, 'museum'),
(31, 'New Forest', 'Website design for artist retreat', '<p>This website for a retreat in the New Forest was designed to inspire artists and writers to consider it the perfect location in which to create. The layout is clean and classical to allow the photography to communicate the beautiful surroundings.</p>', '2021-08-04 17:04:37', 2, 7, 31, 1, 'new-forest');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `navigation` tinyint(1) NOT NULL,
  `seo_name` varchar(244) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `description`, `navigation`, `seo_name`) VALUES
(1, 'Print', 'Inspiring graphic design and visual communication for print and packaging', 1, 'print'),
(2, 'Digital', 'Websites and apps that push digital design to its limits on all devices', 1, 'digital'),
(3, 'Illustration', 'Visual storytellers specialising in hand drawn and vector illustrations', 1, 'illustration'),
(4, 'Photography', 'Capturing images that transport the viewer to the moment they were taken', 1, 'Photography');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(12) NOT NULL,
  `comment` varchar(4000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posted` datetime NOT NULL DEFAULT current_timestamp(),
  `article_id` int(12) NOT NULL,
  `member_id` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `comment`, `posted`, `article_id`, `member_id`) VALUES
(1, 'Love this, totally makes me want to visit Japan again. Really clean design, with an organised format for the information and great picture pages.', '2021-03-14 17:45:13', 24, 3),
(2, 'I bought one of these guides for NYC last year and the design really made an impact on me. Its a beautiful product and lovely design. Well done!', '2021-03-14 17:45:15', 24, 6),
(3, 'Another great piece of work Ivy, thanks for sharing it with us.', '2021-03-14 17:53:52', 24, 7),
(4, 'Oooh! So nice! Putting it on my book list now.', '2021-03-14 17:53:54', 24, 9),
(5, 'Wow! Really like the lighting for this shot.', '2021-04-03 21:22:53', 23, 4),
(6, 'Another great piece of design, Ivy!', '2021-04-04 20:15:12', 24, 4),
(7, 'Those green chairs are beautiful.', '2021-06-30 17:45:43', 23, 1),
(8, 'Lovely box ', '2021-07-03 11:21:13', 20, 1),
(9, 'This is beautiful work!', '2021-08-03 23:14:49', 28, 6),
(10, 'This is super inspiring! I like the typographic treatment on the homepage especially.', '2021-08-09 21:35:16', 31, 1),
(11, 'What typeface did you use for the title?', '2021-08-09 21:36:31', 28, 12),
(12, 'Thanks so much, everybody!', '2021-08-10 11:08:37', 24, 1),
(13, 'I love the illustration on the cover. It reminds me of children\'s books I grew up with. And the type goes really well with it.', '2021-08-15 13:40:59', 26, 1),
(14, 'The collage style on this is so cute.', '2021-08-18 08:14:08', 17, 7),
(15, 'This is such an amazing building - really like how you captured it.', '2021-08-21 15:34:37', 30, 7),
(16, 'I bet this looks amazing big, you\'d really see the hand drawn element of it.', '2021-08-22 11:17:50', 10, 5),
(17, 'I\'m so into the full-bleed photography and gentle colors of this.', '2021-08-27 21:49:29', 31, 6),
(18, 'This is a great photo, Emiko! Love it.', '2021-09-03 01:15:30', 23, 6),
(19, 'Absolutely. Not what you expect to find in Rome, and love the light in this shot.', '2021-09-05 17:22:35', 30, 11),
(20, 'Great choices of colors. And the simple type is lovely.', '2021-09-07 08:53:11', 22, 11),
(21, 'The duotone-look is fab!', '2021-09-07 09:01:32', 9, 11),
(22, 'Bet this would look awesome printed on a Risograph.', '2021-09-11 22:21:54', 9, 9),
(23, 'Yeah! And its so nice the way it gets more realistic towards the back.', '2021-09-13 14:00:42', 17, 12),
(24, 'This is really clever. Great work.', '2021-09-13 16:56:36', 17, 10),
(25, 'The album cover for this in the print section is great, too.', '2021-09-15 12:42:07', 9, 3),
(26, 'Nice work, Luke!', '2021-09-18 20:18:10', 13, 3),
(27, 'The series of these are all really nice. The photo and the album cover work really well, too.', '2021-09-21 11:16:28', 7, 3),
(28, 'What\'s the name of the book you grew up with that it reminds you of, Ivy?', '2022-10-13 08:24:59', 26, 14);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `name` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_name` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `navigation` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `name`, `seo_name`, `navigation`) VALUES
(1, 'Agricultural and Biosystems Engineering', 'Agricultural-and-Biosystems-Engineering', 1),
(2, 'Accounting', 'Accounting', 1),
(3, 'Agricultural Extension and Community Development', 'Agricultural-Extension-and-Community-Development', 1),
(4, 'Arts Education', 'Arts-Education', 1),
(5, 'Agricultural Economics and Farm Management', 'Agricultural-Economics-and-Farm-Management', 1),
(6, 'Adult Education Studies', 'Adult-Education-Studies', 1),
(7, 'Anatomy', 'Anatomy', 1),
(8, 'Animal Production', 'Animal-Production', 1),
(9, 'Arabic', 'Arabic', 1),
(10, 'Architecture', 'Architecture', 1),
(11, 'Arts and Social Science Education', 'Arts-and-Social-Science-Education', 1),
(12, 'Aquaculture and Fisheries', 'Aquaculture-and-Fisheries', 1),
(13, 'Agricultural Extension and Rural Development', 'Agricultural-Extension-and-Rural-Development', 1),
(14, 'Biochemistry', 'Biochemistry', 1),
(15, 'Business Education', 'Business-Education', 1),
(16, 'Business Education (Marketing Option)', 'Business-Education-(Marketing-Option)', 1),
(17, 'Biomedical Engineering', 'Biomedical-Engineering', 1),
(18, 'Basic Medical Science', 'Basic-Medical-Science', 1),
(19, 'Business Law', 'Business-Law', 1),
(20, 'Business Administration', 'Business-Administration', 1),
(21, 'Counsellor Education', 'Counsellor-Education', 1),
(22, 'Chemical Engineering', 'Chemical-Engineering', 1),
(23, 'Chemistry', 'Chemistry', 1),
(24, 'Communication and Information Science', 'Communication-and-Information-Science', 1),
(25, 'Computer Engineering', 'Computer-Engineering', 1),
(26, 'Comparative Religious Studies', 'Comparative-Religious-Studies', 1),
(27, 'Christian Studies', 'Christian-Studies', 1),
(28, 'Crop Protection', 'Crop-Protection', 1),
(29, 'Computer Science', 'Computer-Science', 1),
(30, 'Civil Engineering', 'Civil-Engineering', 1),
(31, 'Economics', 'Economics', 1),
(32, 'Educational Technology', 'Educational-Technology', 1),
(33, 'Education', 'Education', 1),
(34, 'Electrical Engineering', 'Electrical-Engineering', 1),
(35, 'Educational Management', 'Educational-Management', 1),
(36, 'English', 'English', 1),
(37, 'Estate Management', 'Estate-Management', 1),
(38, 'Food and Bioprocess Engineering', 'Food-and-Bioprocess-Engineering', 1),
(39, 'Food science', 'Food-science', 1),
(40, 'Finance', 'Finance', 1),
(41, 'French', 'French', 1),
(42, 'Forest Resources Management', 'Forest-Resources-Management', 1),
(43, 'General Engineering and Technology', 'General-Engineering-and-Technology', 1),
(44, 'Geology and Mineral Sciences', 'Geology-and-Mineral-Sciences', 1),
(45, 'General Studies', 'General-Studies', 1),
(46, 'Geophysics', 'Geophysics', 1),
(47, 'Geography and Environmental Management', 'Geography-and-Environmental-Management', 1),
(48, 'German', 'German', 1),
(49, 'Graduate Self Employment', 'Graduate-Self-Employment', 1),
(50, 'Health Education', 'Health-Education', 1),
(51, 'Health Information Management', 'Health-Information-Management', 1),
(52, 'History and International Studies', 'History-and-International-Studies', 1),
(53, 'Human Kinetics Education', 'Human-Kinetics-Education', 1),
(54, 'Industrial Chemistry', 'Industrial-Chemistry', 1),
(55, 'Information and Communication Science', 'Information-and-Communication-Science', 1),
(56, 'Industrial Relations and Personnel Management', 'Industrial-Relations-and-Personnel-Management', 1),
(57, 'Islamic Studies', 'Islamic-Studies', 1),
(58, 'Islamic Law', 'Islamic-Law', 1),
(59, 'Jurisprudence and International Law', 'Jurisprudence-and-International-Law', 1),
(60, 'Linguistics', 'Linguistics', 1),
(61, 'Library and Information Science', 'Library-and-Information-Science', 1),
(62, 'Mass Communication', 'Mass-Communication', 1),
(63, 'Mathematics', 'Mathematics', 1),
(64, 'Materials and Metallurgical Engineering', 'Materials-and-Metallurgical-Engineering', 1),
(65, 'Marketing', 'Marketing', 1),
(66, 'Microbiology', 'Microbiology', 1),
(67, 'Mechanical Engineering', 'Mechanical-Engineering', 1),
(68, 'Nursing Science', 'Nursing-Science', 1),
(69, 'Optometry and Vision Science', 'Optometry-and-Vision-Science', 1),
(70, 'Performing Arts', 'Performing-Arts', 1),
(71, 'Pharmaceutical and Medicinal Chemistry', 'Pharmaceutical-and-Medicinal-Chemistry', 1),
(72, 'Pharmacognosy and Drug Development', 'Pharmacognosy-and-Drug-Development', 1),
(73, 'Pharmacology and Toxicology', 'Pharmacology-and-Toxicology', 1),
(74, 'Pharmaceutics and Industrial Pharmacy', 'Pharmaceutics-and-Industrial-Pharmacy', 1),
(75, 'Pharmaceutical Microbiology and Biotechnology', 'Pharmaceutical-Microbiology-and-Biotechnology', 1),
(76, 'Pharmacology', 'Pharmacology', 1),
(77, 'Physiology', 'Physiology', 1),
(78, 'Physiotherapy', 'Physiotherapy', 1),
(79, 'Physics', 'Physics', 1),
(80, 'Public Administration', 'Public-Administration', 1),
(81, 'Private and Property Law', 'Private-and-Property-Law', 1),
(82, 'Public Law', 'Public-Law', 1),
(83, 'Science Education', 'Science-Education', 1),
(84, 'Students Industrial Work Experience Scheme', 'Students-Industrial-Work-Experience-Scheme', 1),
(85, 'Sociology', 'Sociology', 1),
(86, 'Social Sciences Education', 'Social-Sciences-Education', 1),
(87, 'Statistics', 'Statistics', 1),
(88, 'Surveying and Geoinformatics', 'Surveying-and-Geoinformatics', 1),
(89, 'Telecommunication Science', 'Telecommunication-Science', 1),
(90, 'Technology Education', 'Technology-Education', 1),
(91, 'Urban and Regional Planning', 'Urban-and-Regional-Planning', 1),
(92, 'Veterinary Anatomy', 'Veterinary-Anatomy', 1),
(93, 'Veterinary Microbiology', 'Veterinary-Microbiology', 1),
(94, 'Veterinary Medicine', 'Veterinary-Medicine', 1),
(95, 'Veterinary Pathology', 'Veterinary-Pathology', 1),
(96, 'Veterinary Physiology and Biochemistry', 'Veterinary-Physiology-and-Biochemistry', 1),
(97, 'Veterinary Parasitology and Entomology', 'Veterinary-Parasitology-and-Entomology', 1),
(98, 'Veterinary Public Health & Preventive Medicine', 'Veterinary-Public-Health-&-Preventive-Medicine', 1),
(99, 'Veterinary Pharmacology and Toxicology', 'Veterinary-Pharmacology-and-Toxicology', 1),
(100, 'Veterinary Surgery and Radiology', 'Veterinary-Surgery-and-Radiology', 1),
(101, 'Theriogenology and Production', 'Theriogenology-and-Production', 1),
(102, 'Water Resources and Environmental Engineering', 'Water-Resources-and-Environmental-Engineering', 1),
(103, 'Yoruba', 'Yoruba', 1);

-- --------------------------------------------------------

--
-- Table structure for table `follow_department`
--

CREATE TABLE `follow_department` (
  `id` int(11) NOT NULL,
  `department_id` int(8) NOT NULL,
  `member_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `follow_department`
--

INSERT INTO `follow_department` (`id`, `department_id`, `member_id`) VALUES
(5, 96, 14),
(6, 5, 61),
(7, 5, 63),
(9, 5, 65);

-- --------------------------------------------------------

--
-- Table structure for table `follow_interest`
--

CREATE TABLE `follow_interest` (
  `id` int(11) NOT NULL,
  `interest_id` int(8) NOT NULL,
  `member_id` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `follow_interest`
--

INSERT INTO `follow_interest` (`id`, `interest_id`, `member_id`) VALUES
(1, 1, 14),
(2, 1, 61),
(3, 2, 14),
(4, 2, 61),
(5, 3, 14),
(6, 3, 61),
(7, 4, 61),
(8, 5, 61),
(9, 5, 63),
(11, 6, 65);

-- --------------------------------------------------------

--
-- Table structure for table `follow_location`
--

CREATE TABLE `follow_location` (
  `id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `follow_location`
--

INSERT INTO `follow_location` (`id`, `location_id`, `member_id`) VALUES
(1, 508, 61),
(2, 496, 14),
(3, 281, 63),
(5, 508, 65);

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `file` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `file`, `alt`) VALUES
(1, 'systemic-brochure.jpg', 'Brochure for Systemic science festival'),
(2, 'polite-society-posters.jpg', 'Posters for Polite Society'),
(3, 'swimming-pool.jpg', 'Photograph of swimming pool'),
(4, 'birds.jpg', 'Collage of two birds'),
(5, 'sisters.jpg', 'Illustration of two sisters'),
(6, 'micro-dunes.jpg', 'Photograph of tiny sand dunes'),
(7, 'milk-beach.jpg', 'Website for Milk Beach'),
(8, 'wellness.jpg', 'Yoga timetable for Wellness'),
(9, 'milk-beach-skyline.jpg', 'Photograph of Sydney Harbour from Milk Beach'),
(10, 'polite-society-mural.jpg', 'Mural for Polite Society'),
(11, 'stargazer.jpg', 'Line-up for Stargazer website'),
(12, 'the-ice-palace.jpg', 'The Ice Palace book cover'),
(13, 'chimney.jpg', 'Website for Chimney Press'),
(14, 'milk-beach-album.jpg', 'Vinyl LP cover for Milk Beach'),
(15, 'seascape.jpg', 'The sea taken at Margate Beach'),
(16, 'polite-society.jpg', 'Website for Polite Society'),
(17, 'snow-search.jpg', 'Illustration of boy in snow'),
(18, 'floral.jpg', 'Floral Website'),
(19, 'forecast.jpg', 'Illustration of handbags'),
(20, 'chimney-cards.jpg', 'Business cards for Chimney Press'),
(21, 'abandoned.jpg', 'Photograph of disused cranes'),
(22, 'golden-brown.jpg', 'Photograph of the interior of a cafe'),
(23, 'stargazer-mascot.jpg', 'Illustration of girl looking at the sky'),
(24, 'featherview.jpg', 'Internal pages from travel book'),
(25, 'buddha.jpg', 'Buddha statue in a pond'),
(26, 'faces.jpg', 'Cover of Faces in the Water by Janet Frame'),
(27, 'salmon.jpg', 'Salmon with zucchini ribbons'),
(28, 'quiet.jpg', 'Cover of Quiet - A Silent Film History'),
(29, 'quiet-invite.jpg', 'Invitation for film premiere'),
(30, 'museum.jpg', 'Facade of the MAXII museum in Rome'),
(31, 'new-forest.jpg', 'New Forest Retreat website on iPad Pro'),
(32, 'beauty.png', 'Somewhere I\'d love to visit');

-- --------------------------------------------------------

--
-- Table structure for table `interest`
--

CREATE TABLE `interest` (
  `id` int(11) NOT NULL,
  `name` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_name` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `navigation` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `interest`
--

INSERT INTO `interest` (`id`, `name`, `seo_name`, `navigation`) VALUES
(1, 'Blogging', 'Blogging', 1),
(2, 'Photography', 'Photography', 1),
(3, 'Content making', 'Content-making', 1),
(4, 'Design', 'design', 1),
(5, 'Programming', 'Programming', 1),
(6, 'Listening to music', 'listening-to-music', 1),
(7, 'Music Producer', 'music-producer', 1),
(8, 'Entrepreneurship', 'Entrepreneurship', 1),
(9, 'Cooking', 'Cooking', 1),
(10, 'Web Development', 'Web-development', 1),
(11, 'Travel', 'Travel', 1),
(12, 'Arts', 'Arts', 1),
(13, 'Reading', 'Reading', 1),
(14, 'Food', 'Food', 1),
(15, 'Watching movies', 'watching-movies', 1),
(16, 'Fashion', 'Fashion', 1),
(17, 'Walking', 'Walking', 1),
(18, 'Cycling', 'Cycling', 1),
(19, 'Writing', 'Writing', 1),
(20, 'Running', 'Running', 1),
(21, 'Fitness', 'Fitness', 1),
(22, 'Politics', 'Politics', 1),
(23, 'Hiking', 'Hiking', 1),
(24, 'Innovating', 'Innovating', 1),
(25, 'Watching TV', 'Watching-TV', 1),
(26, 'Education', 'Education', 1),
(27, 'DIY', 'DIY', 1),
(28, 'Acting', 'Acting', 1),
(29, 'Dancing', 'Dancing', 1),
(30, 'Sketching', 'Sketching', 1),
(31, 'Yoga', 'Yoga', 1),
(32, 'Singing', 'Singing', 1),
(33, 'Gardening', 'Gardening', 1),
(34, 'Painting', 'Painting', 1),
(35, 'Causes', 'Causes', 1),
(36, 'Volunteering', 'Volunteering', 1),
(37, 'Animals', 'Animals', 1),
(38, 'Shopping', 'Shopping', 1),
(39, 'Sports', 'Sports', 1),
(40, 'Dogs', 'Dogs', 1),
(41, 'Cats', 'Cats', 1),
(42, 'Volleyball', 'Volleyball', 1),
(43, 'Basketball', 'Basketball', 1),
(44, 'Tennis', 'Tennis', 1),
(45, 'Knitting', 'Knitting', 1),
(46, 'Video Games', 'Video-games', 1),
(47, 'Drawing', 'Drawing', 1),
(48, 'Caligraphy', 'Caligraphy', 1),
(49, 'Jewelry Making', 'Jewelry-making', 1),
(50, 'Writing', 'Writing', 1),
(51, 'Sewing', 'Sewing', 1),
(52, 'Nail Art', 'Nail-art', 1),
(53, 'Floral design', 'Floral-design', 1),
(54, 'Staying informed', 'Staying-formed', 1),
(55, 'Woodworking', 'woodwrorking', 1),
(56, 'Golf', 'Golf', 1),
(57, 'Football', 'Football', 1),
(58, 'Swimming', 'Swimming', 1),
(59, 'Saop making', 'Soap-making', 1),
(60, 'Hair Styling', 'Hair-styling', 1),
(61, 'Acting', 'Acting', 1),
(62, 'Tie dye', 'Tie-dye', 1),
(63, 'Puzzles', 'Puzzles', 1),
(64, 'Listening to podcast', 'Listening-to-podcast', 1),
(65, 'Playing instruments', 'Playing-instrument', 1),
(66, 'Collecting pieces', 'Collecting-pieces', 1);

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `id` int(11) NOT NULL,
  `member_id` int(8) NOT NULL,
  `name` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`id`, `member_id`, `name`) VALUES
(2, 14, '8 year mentee of Toyeeb Godo'),
(3, 14, ''),
(4, 14, ''),
(5, 14, '8 year mentee of Toyeeb Godo'),
(6, 14, 'Drop out'),
(7, 14, '400 Level'),
(8, 14, '200 Level'),
(9, 61, '8 year mentee of Toyeeb Godo'),
(10, 63, '8 year mentee of Toyeeb Godo'),
(12, 65, '8 year mentee of Toyeeb Godo');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `article_id` int(8) NOT NULL,
  `member_id` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`article_id`, `member_id`) VALUES
(1, 3),
(1, 6),
(1, 14),
(2, 1),
(2, 8),
(4, 1),
(4, 8),
(5, 8),
(6, 8),
(7, 3),
(9, 3),
(9, 8),
(9, 9),
(9, 10),
(9, 11),
(9, 12),
(10, 3),
(10, 7),
(10, 9),
(10, 12),
(11, 7),
(11, 9),
(11, 12),
(12, 6),
(13, 1),
(13, 3),
(13, 5),
(14, 3),
(15, 1),
(15, 6),
(16, 1),
(16, 5),
(17, 8),
(17, 11),
(17, 12),
(17, 14),
(18, 1),
(18, 8),
(18, 10),
(18, 14),
(19, 3),
(19, 4),
(19, 5),
(19, 7),
(19, 9),
(19, 12),
(20, 1),
(20, 9),
(20, 10),
(21, 1),
(21, 6),
(21, 9),
(21, 11),
(21, 12),
(22, 3),
(22, 5),
(22, 11),
(23, 1),
(23, 4),
(23, 6),
(23, 7),
(23, 8),
(23, 9),
(23, 10),
(23, 12),
(24, 1),
(24, 3),
(24, 5),
(24, 9),
(25, 8),
(25, 10),
(26, 1),
(26, 9),
(26, 12),
(26, 14),
(27, 3),
(27, 14),
(27, 61),
(28, 1),
(28, 8),
(28, 14),
(29, 1),
(29, 8),
(29, 14),
(30, 1),
(30, 3),
(30, 7),
(30, 12),
(30, 14),
(31, 1),
(31, 3),
(31, 6),
(31, 11),
(31, 12),
(31, 14);

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int(11) NOT NULL,
  `name` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_name` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `navigation` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `name`, `seo_name`, `navigation`) VALUES
(1, 'Aba North, Abia', 'Aba-North-Abia', 1),
(2, 'Aba South, Abia', 'Aba-South-Abia', 1),
(3, 'Arochukwu, Abia', 'Arochukwu-Abia', 1),
(4, 'Bende, Abia', 'Bende-Abia', 1),
(5, 'Ikwuano, Abia', 'Ikwuano-Abia', 1),
(6, 'Isiala Ngwa North, Abia', 'Isiala-Ngwa-North-Abia', 1),
(7, 'Isiala Ngwa South, Abia', 'Isiala-Ngwa-South-Abia', 1),
(8, 'Isuikwuato, Abia', 'Isuikwuato-Abia', 1),
(9, 'Obi Ngwa, Abia', 'Obi-Ngwa-Abia', 1),
(10, 'Ohafia, Abia', 'Ohafia-Abia', 1),
(11, 'Osisioma, Abia', 'Osisioma-Abia', 1),
(12, 'Ugwunagbo, Abia', 'Ugwunagbo-Abia', 1),
(13, 'Ukwa East, Abia', 'Ukwa-East-Abia', 1),
(14, 'Ukwa West, Abia', 'Ukwa-West-Abia', 1),
(15, 'Umuahia North, Abia', 'Umuahia-North-Abia', 1),
(16, 'Umuahia South, Abia', 'Umuahia-South-Abia', 1),
(17, 'Umu Nneochi, Abia', 'Umu-Nneochi-Abia', 1),
(18, 'Demsa, Adamawa', 'Demsa-Adamawa', 1),
(19, 'Fufure, Adamawa', 'Fufure-Adamawa', 1),
(20, 'Ganye, Adamawa', 'Ganye-Adamawa', 1),
(21, 'Gayuk, Adamawa', 'Gayuk-Adamawa', 1),
(22, 'Gombi, Adamawa', 'Gombi-Adamawa', 1),
(23, 'Grie, Adamawa', 'Grie-Adamawa', 1),
(24, 'Hong, Adamawa', 'Hong-Adamawa', 1),
(25, 'Jada, Adamawa', 'Jada-Adamawa', 1),
(26, 'Lamurde, Adamawa', 'Lamurde-Adamawa', 1),
(27, 'Madagali, Adamawa', 'Madagali-Adamawa', 1),
(28, 'Maiha, Adamawa', 'Maiha-Adamawa', 1),
(29, 'Mayo Belwa, Adamawa', 'Mayo-Belwa-Adamawa', 1),
(30, 'Michika, Adamawa', 'Michika-Adamawa', 1),
(31, 'Mubi North, Adamawa', 'Mubi-North-Adamawa', 1),
(32, 'Mubi South, Adamawa', 'Mubi-South-Adamawa', 1),
(33, 'Numan, Adamawa', 'Numan-Adamawa', 1),
(34, 'Shelleng, Adamawa', 'Shelleng-Adamawa', 1),
(35, 'Song, Adamawa', 'Song-Adamawa', 1),
(36, 'Toungo, Adamawa', 'Toungo-Adamawa', 1),
(37, 'Yola North, Adamawa', 'Yola-North-Adamawa', 1),
(38, 'Yola South, Adamawa', 'Yola-South-Adamawa', 1),
(39, 'Abak, Akwa Ibom', 'Abak-Akwa-Ibom', 1),
(40, 'Eastern Obolo, Akwa Ibom', 'Eastern-Obolo-Akwa-Ibom', 1),
(41, 'Eket, Akwa Ibom', 'Eket-Akwa-Ibom', 1),
(42, 'Esit Eket, Akwa Ibom', 'Esit-Eket-Akwa-Ibom', 1),
(43, 'Essien Udim, Akwa Ibom', 'Essien-Udim-Akwa-Ibom', 1),
(44, 'Etim Ekpo, Akwa Ibom', 'Etim-Ekpo-Akwa-Ibom', 1),
(45, 'Etinan, Akwa Ibom', 'Etinan-Akwa-Ibom', 1),
(46, 'Ibeno, Akwa Ibom', 'Ibeno-Akwa-Ibom', 1),
(47, 'Ibesikpo Asutan, Akwa Ibom', 'Ibesikpo-Asutan-Akwa-Ibom', 1),
(48, 'Ibiono-Ibom, Akwa Ibom', 'Ibiono-Ibom-Akwa-Ibom', 1),
(49, 'Ika, Akwa Ibom', 'Ika-Akwa-Ibom', 1),
(50, 'Ikono, Akwa Ibom', 'Ikono-Akwa-Ibom', 1),
(51, 'Ikot Abasi, Akwa Ibom', 'Ikot-Abasi-Akwa-Ibom', 1),
(52, 'Ikot Ekpene, Akwa Ibom', 'Ikot-Ekpene-Akwa-Ibom', 1),
(53, 'Ini, Akwa Ibom', 'Ini-Akwa-Ibom', 1),
(54, 'Itu, Akwa Ibom', 'Itu-Akwa-Ibom', 1),
(55, 'Mbo, Akwa Ibom', 'Mbo-Akwa-Ibom', 1),
(56, 'Mkpat-Enin, Akwa Ibom', 'Mkpat-Enin-Akwa-Ibom', 1),
(57, 'Nsit-Atai, Akwa Ibom', 'Nsit-Atai-Akwa-Ibom', 1),
(58, 'Nsit-Ibom, Akwa Ibom', 'Nsit-Ibom-Akwa-Ibom', 1),
(59, 'Nsit-Ubium, Akwa Ibom', 'Nsit-Ubium-Akwa-Ibom', 1),
(60, 'Obot Akara, Akwa Ibom', 'Obot-Akara-Akwa-Ibom', 1),
(61, 'Okobo, Akwa Ibom', 'Okobo-Akwa-Ibom', 1),
(62, 'Onna, Akwa Ibom', 'Onna-Akwa-Ibom', 1),
(63, 'Oron, Akwa Ibom', 'Oron-Akwa-Ibom', 1),
(64, 'Oruk Anam, Akwa Ibom', 'Oruk-Anam-Akwa-Ibom', 1),
(65, 'Udung-Uko, Akwa Ibom', 'Udung-Uko-Akwa-Ibom', 1),
(66, 'Ukanafun, Akwa Ibom', 'Ukanafun-Akwa-Ibom', 1),
(67, 'Uruan, Akwa Ibom', 'Uruan-Akwa-Ibom', 1),
(68, 'Urue-Offong-Oruko, Akwa Ibom', 'Urue-Offong-Oruko-Akwa-Ibom', 1),
(69, 'Uyo, Akwa Ibom', 'Uyo-Akwa-Ibom', 1),
(70, 'Aguata, Anambra', 'Aguata-Anambra', 1),
(71, 'Anambra East, Anambra', 'Anambra-East-Anambra', 1),
(72, 'Anambra West, Anambra', 'Anambra-West-Anambra', 1),
(73, 'Anaocha, Anambra', 'Anaocha-Anambra', 1),
(74, 'Awka North, Anambra', 'Awka-North-Anambra', 1),
(75, 'Awka South, Anambra', 'Awka-South-Anambra', 1),
(76, 'Ayamelum, Anambra', 'Ayamelum-Anambra', 1),
(77, 'Dunukofia, Anambra', 'Dunukofia-Anambra', 1),
(78, 'Ekwusigo, Anambra', 'Ekwusigo-Anambra', 1),
(79, 'Idemili North, Anambra', 'Idemili-North-Anambra', 1),
(80, 'Idemili South, Anambra', 'Idemili-South-Anambra', 1),
(81, 'Ihiala, Anambra', 'Ihiala-Anambra', 1),
(82, 'Njikoka, Anambra', 'Njikoka-Anambra', 1),
(83, 'Nnewi North, Anambra', 'Nnewi-North-Anambra', 1),
(84, 'Nnewi South, Anambra', 'Nnewi-South-Anambra', 1),
(85, 'Ogbaru, Anambra', 'Ogbaru-Anambra', 1),
(86, 'Onitsha North, Anambra', 'Onitsha-North-Anambra', 1),
(87, 'Onitsha South, Anambra', 'Onitsha-South-Anambra', 1),
(88, 'Orumba North, Anambra', 'Orumba-North-Anambra', 1),
(89, 'Orumba South, Anambra', 'Orumba-South-Anambra', 1),
(90, 'Oyi, Anambra', 'Oyi-Anambra', 1),
(91, 'Alkaleri, Bauchi', 'Alkaleri-Bauchi', 1),
(92, 'Bauchi, Bauchi', 'Bauchi-Bauchi', 1),
(93, 'Bogoro, Bauchi', 'Bogoro-Bauchi', 1),
(94, 'Damban, Bauchi', 'Damban-Bauchi', 1),
(95, 'Darazo, Bauchi', 'Darazo-Bauchi', 1),
(96, 'Dass, Bauchi', 'Dass-Bauchi', 1),
(97, 'Gamawa, Bauchi', 'Gamawa-Bauchi', 1),
(98, 'Ganjuwa, Bauchi', 'Ganjuwa-Bauchi', 1),
(99, 'Giade, Bauchi', 'Giade-Bauchi', 1),
(100, 'Itas-Gadau, Bauchi', 'Itas-Gadau-Bauchi', 1),
(101, 'Jama\'are, Bauchi', 'Jama\'are-Bauchi', 1),
(102, 'Katagum, Bauchi', 'Katagum-Bauchi', 1),
(103, 'Kirfi, Bauchi', 'Kirfi-Bauchi', 1),
(104, 'Misau, Bauchi', 'Misau-Bauchi', 1),
(105, 'Ningi, Bauchi', 'Ningi-Bauchi', 1),
(106, 'Shira, Bauchi', 'Shira-Bauchi', 1),
(107, 'Tafawa Balewa, Bauchi', 'Tafawa-Balewa-Bauchi', 1),
(108, 'Toro, Bauchi', 'Toro-Bauchi', 1),
(109, 'Warji, Bauchi', 'Warji-Bauchi', 1),
(110, 'Zaki, Bauchi', 'Zaki-Bauchi', 1),
(111, 'Brass, Bayelsa', 'Brass-Bayelsa', 1),
(112, 'Ekeremor, Bayelsa', 'Ekeremor-Bayelsa', 1),
(113, 'Kolokuma-Opokuma, Bayelsa', 'Kolokuma-Opokuma-Bayelsa', 1),
(114, 'Nembe, Bayelsa', 'Nembe-Bayelsa', 1),
(115, 'Ogbia, Bayelsa', 'Ogbia-Bayelsa', 1),
(116, 'Sagbama, Bayelsa', 'Sagbama-Bayelsa', 1),
(117, 'Southern Ijaw, Bayelsa', 'Southern-Ijaw-Bayelsa', 1),
(118, 'Yenagoa, Bayelsa', 'Yenagoa-Bayelsa', 1),
(119, 'Agatu, Benue', 'Agatu-Benue', 1),
(120, 'Apa, Benue', 'Apa-Benue', 1),
(121, 'Ado, Benue', 'Ado-Benue', 1),
(122, 'Buruku, Benue', 'Buruku-Benue', 1),
(123, 'Gboko, Benue', 'Gboko-Benue', 1),
(124, 'Guma, Benue', 'Guma-Benue', 1),
(125, 'Gwer East, Benue', 'Gwer-East-Benue', 1),
(126, 'Gwer West, Benue', 'Gwer-West-Benue', 1),
(127, 'Katsina-Ala, Benue', 'Katsina-Ala-Benue', 1),
(128, 'Konshisha, Benue', 'Konshisha-Benue', 1),
(129, 'Kwande, Benue', 'Kwande-Benue', 1),
(130, 'Logo, Benue', 'Logo-Benue', 1),
(131, 'Makurdi, Benue', 'Makurdi-Benue', 1),
(132, 'Obi, Benue', 'Obi-Benue', 1),
(133, 'Ogbadibo, Benue', 'Ogbadibo-Benue', 1),
(134, 'Ohimini, Benue', 'Ohimini-Benue', 1),
(135, 'Oju, Benue', 'Oju-Benue', 1),
(136, 'Okpokwu, Benue', 'Okpokwu-Benue', 1),
(137, 'Oturkpo, Benue', 'Oturkpo-Benue', 1),
(138, 'Tarka, Benue', 'Tarka-Benue', 1),
(139, 'Ukum, Benue', 'Ukum-Benue', 1),
(140, 'Ushongo, Benue', 'Ushongo-Benue', 1),
(141, 'Vandeikya, Benue', 'Vandeikya-Benue', 1),
(142, 'Abadam, Borno', 'Abadam-Borno', 1),
(143, 'Askira-Uba, Borno', 'Askira-Uba-Borno', 1),
(144, 'Bama, Borno', 'Bama-Borno', 1),
(145, 'Bayo, Borno', 'Bayo-Borno', 1),
(146, 'Biu, Borno', 'Biu-Borno', 1),
(147, 'Chibok, Borno', 'Chibok-Borno', 1),
(148, 'Damboa, Borno', 'Damboa-Borno', 1),
(149, 'Dikwa, Borno', 'Dikwa-Borno', 1),
(150, 'Gubio, Borno', 'Gubio-Borno', 1),
(151, 'Guzamala, Borno', 'Guzamala-Borno', 1),
(152, 'Gwoza, Borno', 'Gwoza-Borno', 1),
(153, 'Hawul, Borno', 'Hawul-Borno', 1),
(154, 'Jere, Borno', 'Jere-Borno', 1),
(155, 'Kaga, Borno', 'Kaga-Borno', 1),
(156, 'Kala-Balge, Borno', 'Kala-Balge-Borno', 1),
(157, 'Konduga, Borno', 'Konduga-Borno', 1),
(158, 'Kukawa, Borno', 'Kukawa-Borno', 1),
(159, 'Kwaya Kusar, Borno', 'Kwaya-Kusar-Borno', 1),
(160, 'Mafa, Borno', 'Mafa-Borno', 1),
(161, 'Magumeri, Borno', 'Magumeri-Borno', 1),
(162, 'Maiduguri, Borno', 'Maiduguri-Borno', 1),
(163, 'Marte, Borno', 'Marte-Borno', 1),
(164, 'Mobbar, Borno', 'Mobbar-Borno', 1),
(165, 'Monguno, Borno', 'Monguno-Borno', 1),
(166, 'Ngala, Borno', 'Ngala-Borno', 1),
(167, 'Nganzai, Borno', 'Nganzai-Borno', 1),
(168, 'Shani, Borno', 'Shani-Borno', 1),
(169, 'Abi, Cross River', 'Abi-Cross-River', 1),
(170, 'Akamkpa, Cross River', 'Akamkpa-Cross-River', 1),
(171, 'Akpabuyo, Cross River', 'Akpabuyo-Cross-River', 1),
(172, 'Bakassi, Cross River', 'Bakassi-Cross-River', 1),
(173, 'Bekwarra, Cross River', 'Bekwarra-Cross-River', 1),
(174, 'Biase, Cross River', 'Biase-Cross-River', 1),
(175, 'Boki, Cross River', 'Boki-Cross-River', 1),
(176, 'Calabar Municipal, Cross River', 'Calabar-Municipal-Cross-River', 1),
(177, 'Calabar South, Cross River', 'Calabar-South-Cross-River', 1),
(178, 'Etung, Cross River', 'Etung-Cross-River', 1),
(179, 'Ikom, Cross River', 'Ikom-Cross-River', 1),
(180, 'Obanliku, Cross River', 'Obanliku-Cross-River', 1),
(181, 'Obubra, Cross River', 'Obubra-Cross-River', 1),
(182, 'Obudu, Cross River', 'Obudu-Cross-River', 1),
(183, 'Odukpani, Cross River', 'Odukpani-Cross-River', 1),
(184, 'Ogoja, Cross River', 'Ogoja-Cross-River', 1),
(185, 'Yakuur, Cross River', 'Yakuur-Cross-River', 1),
(186, 'Yala, Cross River', 'Yala-Cross-River', 1),
(187, 'Aniocha North, Delta', 'Aniocha-North-Delta', 1),
(188, 'Aniocha South, Delta', 'Aniocha-South-Delta', 1),
(189, 'Bomadi, Delta', 'Bomadi-Delta', 1),
(190, 'Burutu, Delta', 'Burutu-Delta', 1),
(191, 'Ethiope East, Delta', 'Ethiope-East-Delta', 1),
(192, 'Ethiope West, Delta', 'Ethiope-West-Delta', 1),
(193, 'Ika North East, Delta', 'Ika-North-East-Delta', 1),
(194, 'Ika South, Delta', 'Ika-South-Delta', 1),
(195, 'Isoko North, Delta', 'Isoko-North-Delta', 1),
(196, 'Isoko South, Delta', 'Isoko-South-Delta', 1),
(197, 'Ndokwa East, Delta', 'Ndokwa-East-Delta', 1),
(198, 'Ndokwa West, Delta', 'Ndokwa-West-Delta', 1),
(199, 'Okpe, Delta', 'Okpe-Delta', 1),
(200, 'Oshimili North, Delta', 'Oshimili-North-Delta', 1),
(201, 'Oshimili South, Delta', 'Oshimili-South-Delta', 1),
(202, 'Patani, Delta', 'Patani-Delta', 1),
(203, 'Sapele, Delta', 'Sapele-Delta', 1),
(204, 'Udu, Delta', 'Udu-Delta', 1),
(205, 'Ughelli North, Delta', 'Ughelli-North-Delta', 1),
(206, 'Ughelli South, Delta', 'Ughelli-South-Delta', 1),
(207, 'Ukwuani, Delta', 'Ukwuani-Delta', 1),
(208, 'Uvwie, Delta', 'Uvwie-Delta', 1),
(209, 'Warri North, Delta', 'Warri-North-Delta', 1),
(210, 'Warri South, Delta', 'Warri-South-Delta', 1),
(211, 'Warri South West, Delta', 'Warri-South-West-Delta', 1),
(212, 'Abakaliki, Ebonyi', 'Abakaliki-Ebonyi', 1),
(213, 'Afikpo North, Ebonyi', 'Afikpo-North-Ebonyi', 1),
(214, 'Afikpo South, Ebonyi', 'Afikpo-South-Ebonyi', 1),
(215, 'Ebonyi, Ebonyi', 'Ebonyi-Ebonyi', 1),
(216, 'Ezza North, Ebonyi', 'Ezza-North-Ebonyi', 1),
(217, 'Ezza South, Ebonyi', 'Ezza-South-Ebonyi', 1),
(218, 'Ikwo, Ebonyi', 'Ikwo-Ebonyi', 1),
(219, 'Ishielu, Ebonyi', 'Ishielu-Ebonyi', 1),
(220, 'Ivo, Ebonyi', 'Ivo-Ebonyi', 1),
(221, 'Izzi, Ebonyi', 'Izzi-Ebonyi', 1),
(222, 'Ohaozara, Ebonyi', 'Ohaozara-Ebonyi', 1),
(223, 'Ohaukwu, Ebonyi', 'Ohaukwu-Ebonyi', 1),
(224, 'Onicha, Ebonyi', 'Onicha-Ebonyi', 1),
(225, 'Akoko-Edo, Edo', 'Akoko-Edo-Edo', 1),
(226, 'Egor, Edo', 'Egor-Edo', 1),
(227, 'Esan Central, Edo', 'Esan-Central-Edo', 1),
(228, 'Esan North-East, Edo', 'Esan-North-East-Edo', 1),
(229, 'Esan South-East, Edo', 'Esan-South-East-Edo', 1),
(230, 'Esan West, Edo', 'Esan-West-Edo', 1),
(231, 'Etsako Central, Edo', 'Etsako-Central-Edo', 1),
(232, 'Etsako East, Edo', 'Etsako-East-Edo', 1),
(233, 'Etsako West, Edo', 'Etsako-West-Edo', 1),
(234, 'Igueben, Edo', 'Igueben-Edo', 1),
(235, 'Ikpoba Okha, Edo', 'Ikpoba-Okha-Edo', 1),
(236, 'Orhionmwon, Edo', 'Orhionmwon-Edo', 1),
(237, 'Oredo, Edo', 'Oredo-Edo', 1),
(238, 'Ovia North-East, Edo', 'Ovia-North-East-Edo', 1),
(239, 'Ovia South-West, Edo', 'Ovia-South-West-Edo', 1),
(240, 'Owan East, Edo', 'Owan-East-Edo', 1),
(241, 'Owan West, Edo', 'Owan-West-Edo', 1),
(242, 'Uhunmwonde, Edo', 'Uhunmwonde-Edo', 1),
(243, 'Ado Ekiti, Ekiti', 'Ado-Ekiti-Ekiti', 1),
(244, 'Efon, Ekiti', 'Efon-Ekiti', 1),
(245, 'Ekiti East, Ekiti', 'Ekiti-East-Ekiti', 1),
(246, 'Ekiti South-West, Ekiti', 'Ekiti-South-West-Ekiti', 1),
(247, 'Ekiti West, Ekiti', 'Ekiti-West-Ekiti', 1),
(248, 'Emure, Ekiti', 'Emure-Ekiti', 1),
(249, 'Gbonyin, Ekiti', 'Gbonyin-Ekiti', 1),
(250, 'Ido Osi, Ekiti', 'Ido-Osi-Ekiti', 1),
(251, 'Ijero, Ekiti', 'Ijero-Ekiti', 1),
(252, 'Ikere, Ekiti', 'Ikere-Ekiti', 1),
(253, 'Ikole, Ekiti', 'Ikole-Ekiti', 1),
(254, 'Ilejemeje, Ekiti', 'Ilejemeje-Ekiti', 1),
(255, 'Irepodun-Ifelodun, Ekiti', 'Irepodun-Ifelodun-Ekiti', 1),
(256, 'Ise-Orun, Ekiti', 'Ise-Orun-Ekiti', 1),
(257, 'Moba, Ekiti', 'Moba-Ekiti', 1),
(258, 'Oye, Ekiti', 'Oye-Ekiti', 1),
(259, 'Aninri, Enugu', 'Aninri-Enugu', 1),
(260, 'Awgu, Enugu', 'Awgu-Enugu', 1),
(261, 'Enugu East, Enugu', 'Enugu-East-Enugu', 1),
(262, 'Enugu North, Enugu', 'Enugu-North-Enugu', 1),
(263, 'Enugu South, Enugu', 'Enugu-South-Enugu', 1),
(264, 'Ezeagu, Enugu', 'Ezeagu-Enugu', 1),
(265, 'Igbo Etiti, Enugu', 'Igbo-Etiti-Enugu', 1),
(266, 'Igbo Eze North, Enugu', 'Igbo-Eze-North-Enugu', 1),
(267, 'Igbo Eze South, Enugu', 'Igbo-Eze-South-Enugu', 1),
(268, 'Isi Uzo, Enugu', 'Isi-Uzo-Enugu', 1),
(269, 'Nkanu East, Enugu', 'Nkanu-East-Enugu', 1),
(270, 'Nkanu West, Enugu', 'Nkanu-West-Enugu', 1),
(271, 'Nsukka, Enugu', 'Nsukka-Enugu', 1),
(272, 'Oji River, Enugu', 'Oji-River-Enugu', 1),
(273, 'Udenu, Enugu', 'Udenu-Enugu', 1),
(274, 'Udi, Enugu', 'Udi-Enugu', 1),
(275, 'Uzo Uwani, Enugu', 'Uzo-Uwani-Enugu', 1),
(276, 'Abaji, FCT', 'Abaji-FCT', 1),
(277, 'Bwari, FCT', 'Bwari-FCT', 1),
(278, 'Gwagwalada, FCT', 'Gwagwalada-FCT', 1),
(279, 'Kuje, FCT', 'Kuje-FCT', 1),
(280, 'Kwali, FCT', 'Kwali-FCT', 1),
(281, 'Municipal Area Council, FCT', 'Municipal-Area-Council-FCT', 1),
(282, 'Akko, Gombe', 'Akko-Gombe', 1),
(283, 'Balanga, Gombe', 'Balanga-Gombe', 1),
(284, 'Billiri, Gombe', 'Billiri-Gombe', 1),
(285, 'Dukku, Gombe', 'Dukku-Gombe', 1),
(286, 'Funakaye, Gombe', 'Funakaye-Gombe', 1),
(287, 'Gombe, Gombe', 'Gombe-Gombe', 1),
(288, 'Kaltungo, Gombe', 'Kaltungo-Gombe', 1),
(289, 'Kwami, Gombe', 'Kwami-Gombe', 1),
(290, 'Nafada, Gombe', 'Nafada-Gombe', 1),
(291, 'Shongom, Gombe', 'Shongom-Gombe', 1),
(292, 'Yamaltu-Deba, Gombe', 'Yamaltu-Deba-Gombe', 1),
(293, 'Aboh Mbaise, Imo', 'Aboh-Mbaise-Imo', 1),
(294, 'Ahiazu Mbaise, Imo', 'Ahiazu-Mbaise-Imo', 1),
(295, 'Ehime Mbano, Imo', 'Ehime-Mbano-Imo', 1),
(296, 'Ezinihitte, Imo', 'Ezinihitte-Imo', 1),
(297, 'Ideato North, Imo', 'Ideato-North-Imo', 1),
(298, 'Ideato South, Imo', 'Ideato-South-Imo', 1),
(299, 'Ihitte-Uboma, Imo', 'Ihitte-Uboma-Imo', 1),
(300, 'Ikeduru, Imo', 'Ikeduru-Imo', 1),
(301, 'Isiala Mbano, Imo', 'Isiala-Mbano-Imo', 1),
(302, 'Isu, Imo', 'Isu-Imo', 1),
(303, 'Mbaitoli, Imo', 'Mbaitoli-Imo', 1),
(304, 'Ngor Okpala, Imo', 'Ngor-Okpala-Imo', 1),
(305, 'Njaba, Imo', 'Njaba-Imo', 1),
(306, 'Nkwerre, Imo', 'Nkwerre-Imo', 1),
(307, 'Nwangele, Imo', 'Nwangele-Imo', 1),
(308, 'Obowo, Imo', 'Obowo-Imo', 1),
(309, 'Oguta, Imo', 'Oguta-Imo', 1),
(310, 'Ohaji-Egbema, Imo', 'Ohaji-Egbema-Imo', 1),
(311, 'Okigwe, Imo', 'Okigwe-Imo', 1),
(312, 'Orlu, Imo', 'Orlu-Imo', 1),
(313, 'Orsu, Imo', 'Orsu-Imo', 1),
(314, 'Oru East, Imo', 'Oru-East-Imo', 1),
(315, 'Oru West, Imo', 'Oru-West-Imo', 1),
(316, 'Owerri Municipal, Imo', 'Owerri-Municipal-Imo', 1),
(317, 'Owerri North, Imo', 'Owerri-North-Imo', 1),
(318, 'Owerri West, Imo', 'Owerri-West-Imo', 1),
(319, 'Unuimo, Imo', 'Unuimo-Imo', 1),
(320, 'Auyo, Jigawa', 'Auyo-Jigawa', 1),
(321, 'Babura, Jigawa', 'Babura-Jigawa', 1),
(322, 'Biriniwa, Jigawa', 'Biriniwa-Jigawa', 1),
(323, 'Birnin Kudu, Jigawa', 'Birnin-Kudu-Jigawa', 1),
(324, 'Buji, Jigawa', 'Buji-Jigawa', 1),
(325, 'Dutse, Jigawa', 'Dutse-Jigawa', 1),
(326, 'Gagarawa, Jigawa', 'Gagarawa-Jigawa', 1),
(327, 'Garki, Jigawa', 'Garki-Jigawa', 1),
(328, 'Gumel, Jigawa', 'Gumel-Jigawa', 1),
(329, 'Guri, Jigawa', 'Guri-Jigawa', 1),
(330, 'Gwaram, Jigawa', 'Gwaram-Jigawa', 1),
(331, 'Gwiwa, Jigawa', 'Gwiwa-Jigawa', 1),
(332, 'Hadejia, Jigawa', 'Hadejia-Jigawa', 1),
(333, 'Jahun, Jigawa', 'Jahun-Jigawa', 1),
(334, 'Kafin Hausa, Jigawa', 'Kafin-Hausa-Jigawa', 1),
(335, 'Kazaure, Jigawa', 'Kazaure-Jigawa', 1),
(336, 'Kiri Kasama, Jigawa', 'Kiri-Kasama-Jigawa', 1),
(337, 'Kiyawa, Jigawa', 'Kiyawa-Jigawa', 1),
(338, 'Kaugama, Jigawa', 'Kaugama-Jigawa', 1),
(339, 'Maigatari, Jigawa', 'Maigatari-Jigawa', 1),
(340, 'Malam Madori, Jigawa', 'Malam-Madori-Jigawa', 1),
(341, 'Miga, Jigawa', 'Miga-Jigawa', 1),
(342, 'Ringim, Jigawa', 'Ringim-Jigawa', 1),
(343, 'Roni, Jigawa', 'Roni-Jigawa', 1),
(344, 'Sule Tankarkar, Jigawa', 'Sule-Tankarkar-Jigawa', 1),
(345, 'Taura, Jigawa', 'Taura-Jigawa', 1),
(346, 'Yankwashi, Jigawa', 'Yankwashi-Jigawa', 1),
(347, 'Birnin Gwari, Kaduna', 'Birnin-Gwari-Kaduna', 1),
(348, 'Chikun, Kaduna', 'Chikun-Kaduna', 1),
(349, 'Giwa, Kaduna', 'Giwa-Kaduna', 1),
(350, 'Igabi, Kaduna', 'Igabi-Kaduna', 1),
(351, 'Ikara, Kaduna', 'Ikara-Kaduna', 1),
(352, 'Jaba, Kaduna', 'Jaba-Kaduna', 1),
(353, 'Jema\'a, Kaduna', 'Jema\'a-Kaduna', 1),
(354, 'Kachia, Kaduna', 'Kachia-Kaduna', 1),
(355, 'Kaduna North, Kaduna', 'Kaduna-North-Kaduna', 1),
(356, 'Kaduna South, Kaduna', 'Kaduna-South-Kaduna', 1),
(357, 'Kagarko, Kaduna', 'Kagarko-Kaduna', 1),
(358, 'Kajuru, Kaduna', 'Kajuru-Kaduna', 1),
(359, 'Kaura, Kaduna', 'Kaura-Kaduna', 1),
(360, 'Kauru, Kaduna', 'Kauru-Kaduna', 1),
(361, 'Kubau, Kaduna', 'Kubau-Kaduna', 1),
(362, 'Kudan, Kaduna', 'Kudan-Kaduna', 1),
(363, 'Lere, Kaduna', 'Lere-Kaduna', 1),
(364, 'Makarfi, Kaduna', 'Makarfi-Kaduna', 1),
(365, 'Sabon Gari, Kaduna', 'Sabon-Gari-Kaduna', 1),
(366, 'Sanga, Kaduna', 'Sanga-Kaduna', 1),
(367, 'Soba, Kaduna', 'Soba-Kaduna', 1),
(368, 'Zangon Kataf, Kaduna', 'Zangon-Kataf-Kaduna', 1),
(369, 'Zaria, Kaduna', 'Zaria-Kaduna', 1),
(370, 'Ajingi, Kano', 'Ajingi-Kano', 1),
(371, 'Albasu, Kano', 'Albasu-Kano', 1),
(372, 'Bagwai, Kano', 'Bagwai-Kano', 1),
(373, 'Bebeji, Kano', 'Bebeji-Kano', 1),
(374, 'Bichi, Kano', 'Bichi-Kano', 1),
(375, 'Bunkure, Kano', 'Bunkure-Kano', 1),
(376, 'Dala, Kano', 'Dala-Kano', 1),
(377, 'Dambatta, Kano', 'Dambatta-Kano', 1),
(378, 'Dawakin Kudu, Kano', 'Dawakin-Kudu-Kano', 1),
(379, 'Dawakin Tofa, Kano', 'Dawakin-Tofa-Kano', 1),
(380, 'Doguwa, Kano', 'Doguwa-Kano', 1),
(381, 'Fagge, Kano', 'Fagge-Kano', 1),
(382, 'Gabasawa, Kano', 'Gabasawa-Kano', 1),
(383, 'Garko, Kano', 'Garko-Kano', 1),
(384, 'Garun Mallam, Kano', 'Garun-Mallam-Kano', 1),
(385, 'Gaya, Kano', 'Gaya-Kano', 1),
(386, 'Gezawa, Kano', 'Gezawa-Kano', 1),
(387, 'Gwale, Kano', 'Gwale-Kano', 1),
(388, 'Gwarzo, Kano', 'Gwarzo-Kano', 1),
(389, 'Kabo, Kano', 'Kabo-Kano', 1),
(390, 'Kano Municipal, Kano', 'Kano-Municipal-Kano', 1),
(391, 'Karaye, Kano', 'Karaye-Kano', 1),
(392, 'Kibiya, Kano', 'Kibiya-Kano', 1),
(393, 'Kiru, Kano', 'Kiru-Kano', 1),
(394, 'Kumbotso, Kano', 'Kumbotso-Kano', 1),
(395, 'Kunchi, Kano', 'Kunchi-Kano', 1),
(396, 'Kura, Kano', 'Kura-Kano', 1),
(397, 'Madobi, Kano', 'Madobi-Kano', 1),
(398, 'Makoda, Kano', 'Makoda-Kano', 1),
(399, 'Minjibir, Kano', 'Minjibir-Kano', 1),
(400, 'Nasarawa, Kano', 'Nasarawa-Kano', 1),
(401, 'Rano, Kano', 'Rano-Kano', 1),
(402, 'Rimin Gado, Kano', 'Rimin-Gado-Kano', 1),
(403, 'Rogo, Kano', 'Rogo-Kano', 1),
(404, 'Shanono, Kano', 'Shanono-Kano', 1),
(405, 'Sumaila, Kano', 'Sumaila-Kano', 1),
(406, 'Takai, Kano', 'Takai-Kano', 1),
(407, 'Tarauni, Kano', 'Tarauni-Kano', 1),
(408, 'Tofa, Kano', 'Tofa-Kano', 1),
(409, 'Tsanyawa, Kano', 'Tsanyawa-Kano', 1),
(410, 'Tudun Wada, Kano', 'Tudun-Wada-Kano', 1),
(411, 'Ungogo, Kano', 'Ungogo-Kano', 1),
(412, 'Warawa, Kano', 'Warawa-Kano', 1),
(413, 'Wudil, Kano', 'Wudil-Kano', 1),
(414, 'Bakori, Katsina', 'Bakori-Katsina', 1),
(415, 'Batagarawa, Katsina', 'Batagarawa-Katsina', 1),
(416, 'Batsari, Katsina', 'Batsari-Katsina', 1),
(417, 'Baure, Katsina', 'Baure-Katsina', 1),
(418, 'Bindawa, Katsina', 'Bindawa-Katsina', 1),
(419, 'Charanchi, Katsina', 'Charanchi-Katsina', 1),
(420, 'Dandume, Katsina', 'Dandume-Katsina', 1),
(421, 'Danja, Katsina', 'Danja-Katsina', 1),
(422, 'Dan Musa, Katsina', 'Dan-Musa-Katsina', 1),
(423, 'Daura, Katsina', 'Daura-Katsina', 1),
(424, 'Dutsi, Katsina', 'Dutsi-Katsina', 1),
(425, 'Dutsin Ma, Katsina', 'Dutsin-Ma-Katsina', 1),
(426, 'Faskari, Katsina', 'Faskari-Katsina', 1),
(427, 'Funtua, Katsina', 'Funtua-Katsina', 1),
(428, 'Ingawa, Katsina', 'Ingawa-Katsina', 1),
(429, 'Jibia, Katsina', 'Jibia-Katsina', 1),
(430, 'Kafur, Katsina', 'Kafur-Katsina', 1),
(431, 'Kaita, Katsina', 'Kaita-Katsina', 1),
(432, 'Kankara, Katsina', 'Kankara-Katsina', 1),
(433, 'Kankia, Katsina', 'Kankia-Katsina', 1),
(434, 'Katsina, Katsina', 'Katsina-Katsina', 1),
(435, 'Kurfi, Katsina', 'Kurfi-Katsina', 1),
(436, 'Kusada, Katsina', 'Kusada-Katsina', 1),
(437, 'Mai\'Adua, Katsina', 'Mai\'Adua-Katsina', 1),
(438, 'Malumfashi, Katsina', 'Malumfashi-Katsina', 1),
(439, 'Mani, Katsina', 'Mani-Katsina', 1),
(440, 'Mashi, Katsina', 'Mashi-Katsina', 1),
(441, 'Matazu, Katsina', 'Matazu-Katsina', 1),
(442, 'Musawa, Katsina', 'Musawa-Katsina', 1),
(443, 'Rimi, Katsina', 'Rimi-Katsina', 1),
(444, 'Sabuwa, Katsina', 'Sabuwa-Katsina', 1),
(445, 'Safana, Katsina', 'Safana-Katsina', 1),
(446, 'Sandamu, Katsina', 'Sandamu-Katsina', 1),
(447, 'Zango, Katsina', 'Zango-Katsina', 1),
(448, 'Aleiro, Kebbi', 'Aleiro-Kebbi', 1),
(449, 'Arewa Dandi, Kebbi', 'Arewa-Dandi-Kebbi', 1),
(450, 'Argungu, Kebbi', 'Argungu-Kebbi', 1),
(451, 'Augie, Kebbi', 'Augie-Kebbi', 1),
(452, 'Bagudo, Kebbi', 'Bagudo-Kebbi', 1),
(453, 'Birnin Kebbi, Kebbi', 'Birnin-Kebbi-Kebbi', 1),
(454, 'Bunza, Kebbi', 'Bunza-Kebbi', 1),
(455, 'Dandi, Kebbi', 'Dandi-Kebbi', 1),
(456, 'Fakai, Kebbi', 'Fakai-Kebbi', 1),
(457, 'Gwandu, Kebbi', 'Gwandu-Kebbi', 1),
(458, 'Jega, Kebbi', 'Jega-Kebbi', 1),
(459, 'Kalgo, Kebbi', 'Kalgo-Kebbi', 1),
(460, 'Koko-Besse, Kebbi', 'Koko-Besse-Kebbi', 1),
(461, 'Maiyama, Kebbi', 'Maiyama-Kebbi', 1),
(462, 'Ngaski, Kebbi', 'Ngaski-Kebbi', 1),
(463, 'Sakaba, Kebbi', 'Sakaba-Kebbi', 1),
(464, 'Shanga, Kebbi', 'Shanga-Kebbi', 1),
(465, 'Suru, Kebbi', 'Suru-Kebbi', 1),
(466, 'Wasagu-Danko, Kebbi', 'Wasagu-Danko-Kebbi', 1),
(467, 'Yauri, Kebbi', 'Yauri-Kebbi', 1),
(468, 'Zuru, Kebbi', 'Zuru-Kebbi', 1),
(469, 'Adavi, Kogi', 'Adavi-Kogi', 1),
(470, 'Ajaokuta, Kogi', 'Ajaokuta-Kogi', 1),
(471, 'Ankpa, Kogi', 'Ankpa-Kogi', 1),
(472, 'Bassa, Kogi', 'Bassa-Kogi', 1),
(473, 'Dekina, Kogi', 'Dekina-Kogi', 1),
(474, 'Ibaji, Kogi', 'Ibaji-Kogi', 1),
(475, 'Idah, Kogi', 'Idah-Kogi', 1),
(476, 'Igalamela Odolu, Kogi', 'Igalamela-Odolu-Kogi', 1),
(477, 'Ijumu, Kogi', 'Ijumu-Kogi', 1),
(478, 'Kabba-Bunu, Kogi', 'Kabba-Bunu-Kogi', 1),
(479, 'Kogi, Kogi', 'Kogi-Kogi', 1),
(480, 'Lokoja, Kogi', 'Lokoja-Kogi', 1),
(481, 'Mopa Muro, Kogi', 'Mopa-Muro-Kogi', 1),
(482, 'Ofu, Kogi', 'Ofu-Kogi', 1),
(483, 'Ogori-Magongo, Kogi', 'Ogori-Magongo-Kogi', 1),
(484, 'Okehi, Kogi', 'Okehi-Kogi', 1),
(485, 'Okene, Kogi', 'Okene-Kogi', 1),
(486, 'Olamaboro, Kogi', 'Olamaboro-Kogi', 1),
(487, 'Omala, Kogi', 'Omala-Kogi', 1),
(488, 'Yagba East, Kogi', 'Yagba-East-Kogi', 1),
(489, 'Yagba West, Kogi', 'Yagba-West-Kogi', 1),
(490, 'Asa, Kwara', 'Asa-Kwara', 1),
(491, 'Baruten, Kwara', 'Baruten-Kwara', 1),
(492, 'Edu, Kwara', 'Edu-Kwara', 1),
(493, 'Ekiti, Kwara', 'Ekiti-Kwara', 1),
(494, 'Ifelodun, Kwara', 'Ifelodun-Kwara', 1),
(495, 'Ilorin East, Kwara', 'Ilorin-East-Kwara', 1),
(496, 'Ilorin South, Kwara', 'Ilorin-South-Kwara', 1),
(497, 'Ilorin West, Kwara', 'Ilorin-West-Kwara', 1),
(498, 'Irepodun, Kwara', 'Irepodun-Kwara', 1),
(499, 'Isin, Kwara', 'Isin-Kwara', 1),
(500, 'Kaiama, Kwara', 'Kaiama-Kwara', 1),
(501, 'Moro, Kwara', 'Moro-Kwara', 1),
(502, 'Offa, Kwara', 'Offa-Kwara', 1),
(503, 'Oke Ero, Kwara', 'Oke-Ero-Kwara', 1),
(504, 'Oyun, Kwara', 'Oyun-Kwara', 1),
(505, 'Pategi, Kwara', 'Pategi-Kwara', 1),
(506, 'Agege, Lagos', 'Agege-Lagos', 1),
(507, 'Ajeromi-Ifelodun, Lagos', 'Ajeromi-Ifelodun-Lagos', 1),
(508, 'Alimosho, Lagos', 'Alimosho-Lagos', 1),
(509, 'Amuwo-Odofin, Lagos', 'Amuwo-Odofin-Lagos', 1),
(510, 'Apapa, Lagos', 'Apapa-Lagos', 1),
(511, 'Badagry, Lagos', 'Badagry-Lagos', 1),
(512, 'Epe, Lagos', 'Epe-Lagos', 1),
(513, 'Eti Osa, Lagos', 'Eti-Osa-Lagos', 1),
(514, 'Ibeju-Lekki, Lagos', 'Ibeju-Lekki-Lagos', 1),
(515, 'Ifako-Ijaiye, Lagos', 'Ifako-Ijaiye-Lagos', 1),
(516, 'Ikeja, Lagos', 'Ikeja-Lagos', 1),
(517, 'Ikorodu, Lagos', 'Ikorodu-Lagos', 1),
(518, 'Kosofe, Lagos', 'Kosofe-Lagos', 1),
(519, 'Lagos Island, Lagos', 'Lagos-Island-Lagos', 1),
(520, 'Lagos Mainland, Lagos', 'Lagos-Mainland-Lagos', 1),
(521, 'Mushin, Lagos', 'Mushin-Lagos', 1),
(522, 'Ojo, Lagos', 'Ojo-Lagos', 1),
(523, 'Oshodi-Isolo, Lagos', 'Oshodi-Isolo-Lagos', 1),
(524, 'Shomolu, Lagos', 'Shomolu-Lagos', 1),
(525, 'Surulere, Lagos', 'Surulere-Lagos', 1),
(526, 'Akwanga, Nasarawa', 'Akwanga-Nasarawa', 1),
(527, 'Awe, Nasarawa', 'Awe-Nasarawa', 1),
(528, 'Doma, Nasarawa', 'Doma-Nasarawa', 1),
(529, 'Karu, Nasarawa', 'Karu-Nasarawa', 1),
(530, 'Keana, Nasarawa', 'Keana-Nasarawa', 1),
(531, 'Keffi, Nasarawa', 'Keffi-Nasarawa', 1),
(532, 'Kokona, Nasarawa', 'Kokona-Nasarawa', 1),
(533, 'Lafia, Nasarawa', 'Lafia-Nasarawa', 1),
(534, 'Nasarawa, Nasarawa', 'Nasarawa-Nasarawa', 1),
(535, 'Nasarawa Egon, Nasarawa', 'Nasarawa-Egon-Nasarawa', 1),
(536, 'Obi, Nasarawa', 'Obi-Nasarawa', 1),
(537, 'Toto, Nasarawa', 'Toto-Nasarawa', 1),
(538, 'Wamba, Nasarawa', 'Wamba-Nasarawa', 1),
(539, 'Agaie, Niger', 'Agaie-Niger', 1),
(540, 'Agwara, Niger', 'Agwara-Niger', 1),
(541, 'Bida, Niger', 'Bida-Niger', 1),
(542, 'Borgu, Niger', 'Borgu-Niger', 1),
(543, 'Bosso, Niger', 'Bosso-Niger', 1),
(544, 'Chanchaga, Niger', 'Chanchaga-Niger', 1),
(545, 'Edati, Niger', 'Edati-Niger', 1),
(546, 'Gbako, Niger', 'Gbako-Niger', 1),
(547, 'Gurara, Niger', 'Gurara-Niger', 1),
(548, 'Katcha, Niger', 'Katcha-Niger', 1),
(549, 'Kontagora, Niger', 'Kontagora-Niger', 1),
(550, 'Lapai, Niger', 'Lapai-Niger', 1),
(551, 'Lavun, Niger', 'Lavun-Niger', 1),
(552, 'Magama, Niger', 'Magama-Niger', 1),
(553, 'Mariga, Niger', 'Mariga-Niger', 1),
(554, 'Mashegu, Niger', 'Mashegu-Niger', 1),
(555, 'Mokwa, Niger', 'Mokwa-Niger', 1),
(556, 'Moya, Niger', 'Moya-Niger', 1),
(557, 'Paikoro, Niger', 'Paikoro-Niger', 1),
(558, 'Rafi, Niger', 'Rafi-Niger', 1),
(559, 'Rijau, Niger', 'Rijau-Niger', 1),
(560, 'Shiroro, Niger', 'Shiroro-Niger', 1),
(561, 'Suleja, Niger', 'Suleja-Niger', 1),
(562, 'Tafa, Niger', 'Tafa-Niger', 1),
(563, 'Wushishi, Niger', 'Wushishi-Niger', 1),
(564, 'Abeokuta North, Ogun', 'Abeokuta-North-Ogun', 1),
(565, 'Abeokuta South, Ogun', 'Abeokuta-South-Ogun', 1),
(566, 'Ado-Odo-Ota, Ogun', 'Ado-Odo-Ota-Ogun', 1),
(567, 'Egbado North, Ogun', 'Egbado-North-Ogun', 1),
(568, 'Egbado South, Ogun', 'Egbado-South-Ogun', 1),
(569, 'Ewekoro, Ogun', 'Ewekoro-Ogun', 1),
(570, 'Ifo, Ogun', 'Ifo-Ogun', 1),
(571, 'Ijebu East, Ogun', 'Ijebu-East-Ogun', 1),
(572, 'Ijebu North, Ogun', 'Ijebu-North-Ogun', 1),
(573, 'Ijebu North East, Ogun', 'Ijebu-North-East-Ogun', 1),
(574, 'Ijebu Ode, Ogun', 'Ijebu-Ode-Ogun', 1),
(575, 'Ikenne, Ogun', 'Ikenne-Ogun', 1),
(576, 'Imeko Afon, Ogun', 'Imeko-Afon-Ogun', 1),
(577, 'Ipokia, Ogun', 'Ipokia-Ogun', 1),
(578, 'Obafemi Owode, Ogun', 'Obafemi-Owode-Ogun', 1),
(579, 'Odeda, Ogun', 'Odeda-Ogun', 1),
(580, 'Odogbolu, Ogun', 'Odogbolu-Ogun', 1),
(581, 'Ogun Waterside, Ogun', 'Ogun-Waterside-Ogun', 1),
(582, 'Remo North, Ogun', 'Remo-North-Ogun', 1),
(583, 'Shagamu, Ogun', 'Shagamu-Ogun', 1),
(584, 'Akoko North-East, Ondo', 'Akoko-North-East-Ondo', 1),
(585, 'Akoko North-West, Ondo', 'Akoko-North-West-Ondo', 1),
(586, 'Akoko South-West, Ondo', 'Akoko-South-West-Ondo', 1),
(587, 'Akoko South-East, Ondo', 'Akoko-South-East-Ondo', 1),
(588, 'Akure North, Ondo', 'Akure-North-Ondo', 1),
(589, 'Akure South, Ondo', 'Akure-South-Ondo', 1),
(590, 'Ese Odo, Ondo', 'Ese-Odo-Ondo', 1),
(591, 'Idanre, Ondo', 'Idanre-Ondo', 1),
(592, 'Ifedore, Ondo', 'Ifedore-Ondo', 1),
(593, 'Ilaje, Ondo', 'Ilaje-Ondo', 1),
(594, 'Ile Oluji-Okeigbo, Ondo', 'Ile-Oluji-Okeigbo-Ondo', 1),
(595, 'Irele, Ondo', 'Irele-Ondo', 1),
(596, 'Odigbo, Ondo', 'Odigbo-Ondo', 1),
(597, 'Okitipupa, Ondo', 'Okitipupa-Ondo', 1),
(598, 'Ondo East, Ondo', 'Ondo-East-Ondo', 1),
(599, 'Ondo West, Ondo', 'Ondo-West-Ondo', 1),
(600, 'Ose, Ondo', 'Ose-Ondo', 1),
(601, 'Owo, Ondo', 'Owo-Ondo', 1),
(602, 'Atakunmosa East, Osun', 'Atakunmosa-East-Osun', 1),
(603, 'Atakunmosa West, Osun', 'Atakunmosa-West-Osun', 1),
(604, 'Aiyedaade, Osun', 'Aiyedaade-Osun', 1),
(605, 'Aiyedire, Osun', 'Aiyedire-Osun', 1),
(606, 'Boluwaduro, Osun', 'Boluwaduro-Osun', 1),
(607, 'Boripe, Osun', 'Boripe-Osun', 1),
(608, 'Ede North, Osun', 'Ede-North-Osun', 1),
(609, 'Ede South, Osun', 'Ede-South-Osun', 1),
(610, 'Ife Central, Osun', 'Ife-Central-Osun', 1),
(611, 'Ife East, Osun', 'Ife-East-Osun', 1),
(612, 'Ife North, Osun', 'Ife-North-Osun', 1),
(613, 'Ife South, Osun', 'Ife-South-Osun', 1),
(614, 'Egbedore, Osun', 'Egbedore-Osun', 1),
(615, 'Ejigbo, Osun', 'Ejigbo-Osun', 1),
(616, 'Ifedayo, Osun', 'Ifedayo-Osun', 1),
(617, 'Ifelodun, Osun', 'Ifelodun-Osun', 1),
(618, 'Ila, Osun', 'Ila-Osun', 1),
(619, 'Ilesa East, Osun', 'Ilesa-East-Osun', 1),
(620, 'Ilesa West, Osun', 'Ilesa-West-Osun', 1),
(621, 'Irepodun, Osun', 'Irepodun-Osun', 1),
(622, 'Irewole, Osun', 'Irewole-Osun', 1),
(623, 'Isokan, Osun', 'Isokan-Osun', 1),
(624, 'Iwo, Osun', 'Iwo-Osun', 1),
(625, 'Obokun, Osun', 'Obokun-Osun', 1),
(626, 'Odo Otin, Osun', 'Odo-Otin-Osun', 1),
(627, 'Ola Oluwa, Osun', 'Ola-Oluwa-Osun', 1),
(628, 'Olorunda, Osun', 'Olorunda-Osun', 1),
(629, 'Oriade, Osun', 'Oriade-Osun', 1),
(630, 'Orolu, Osun', 'Orolu-Osun', 1),
(631, 'Osogbo, Osun', 'Osogbo-Osun', 1),
(632, 'Afijio, Oyo', 'Afijio-Oyo', 1),
(633, 'Akinyele, Oyo', 'Akinyele-Oyo', 1),
(634, 'Atiba, Oyo', 'Atiba-Oyo', 1),
(635, 'Atisbo, Oyo', 'Atisbo-Oyo', 1),
(636, 'Egbeda, Oyo', 'Egbeda-Oyo', 1),
(637, 'Ibadan North, Oyo', 'Ibadan-North-Oyo', 1),
(638, 'Ibadan North-East, Oyo', 'Ibadan-North-East-Oyo', 1),
(639, 'Ibadan North-West, Oyo', 'Ibadan-North-West-Oyo', 1),
(640, 'Ibadan South-East, Oyo', 'Ibadan-South-East-Oyo', 1),
(641, 'Ibadan South-West, Oyo', 'Ibadan-South-West-Oyo', 1),
(642, 'Ibarapa Central, Oyo', 'Ibarapa-Central-Oyo', 1),
(643, 'Ibarapa East, Oyo', 'Ibarapa-East-Oyo', 1),
(644, 'Ibarapa North, Oyo', 'Ibarapa-North-Oyo', 1),
(645, 'Ido, Oyo', 'Ido-Oyo', 1),
(646, 'Irepo, Oyo', 'Irepo-Oyo', 1),
(647, 'Iseyin, Oyo', 'Iseyin-Oyo', 1),
(648, 'Itesiwaju, Oyo', 'Itesiwaju-Oyo', 1),
(649, 'Iwajowa, Oyo', 'Iwajowa-Oyo', 1),
(650, 'Kajola, Oyo', 'Kajola-Oyo', 1),
(651, 'Lagelu, Oyo', 'Lagelu-Oyo', 1),
(652, 'Ogbomosho North, Oyo', 'Ogbomosho-North-Oyo', 1),
(653, 'Ogbomosho South, Oyo', 'Ogbomosho-South-Oyo', 1),
(654, 'Ogo Oluwa, Oyo', 'Ogo-Oluwa-Oyo', 1),
(655, 'Olorunsogo, Oyo', 'Olorunsogo-Oyo', 1),
(656, 'Oluyole, Oyo', 'Oluyole-Oyo', 1),
(657, 'Ona Ara, Oyo', 'Ona-Ara-Oyo', 1),
(658, 'Orelope, Oyo', 'Orelope-Oyo', 1),
(659, 'Ori Ire, Oyo', 'Ori-Ire-Oyo', 1),
(660, 'Oyo, Oyo', 'Oyo-Oyo', 1),
(661, 'Oyo East, Oyo', 'Oyo-East-Oyo', 1),
(662, 'Saki East, Oyo', 'Saki-East-Oyo', 1),
(663, 'Saki West, Oyo', 'Saki-West-Oyo', 1),
(664, 'Surulere, Oyo', 'Surulere-Oyo', 1),
(665, 'Bokkos, Plateau', 'Bokkos-Plateau', 1),
(666, 'Barkin Ladi, Plateau', 'Barkin-Ladi-Plateau', 1),
(667, 'Bassa, Plateau', 'Bassa-Plateau', 1),
(668, 'Jos East, Plateau', 'Jos-East-Plateau', 1),
(669, 'Jos North, Plateau', 'Jos-North-Plateau', 1),
(670, 'Jos South, Plateau', 'Jos-South-Plateau', 1),
(671, 'Kanam, Plateau', 'Kanam-Plateau', 1),
(672, 'Kanke, Plateau', 'Kanke-Plateau', 1),
(673, 'Langtang South, Plateau', 'Langtang-South-Plateau', 1),
(674, 'Langtang North, Plateau', 'Langtang-North-Plateau', 1),
(675, 'Mangu, Plateau', 'Mangu-Plateau', 1),
(676, 'Mikang, Plateau', 'Mikang-Plateau', 1),
(677, 'Pankshin, Plateau', 'Pankshin-Plateau', 1),
(678, 'Qua\'an Pan, Plateau', 'Qua\'an-Pan-Plateau', 1),
(679, 'Riyom, Plateau', 'Riyom-Plateau', 1),
(680, 'Shendam, Plateau', 'Shendam-Plateau', 1),
(681, 'Wase, Plateau', 'Wase-Plateau', 1),
(682, 'Abua-Odual, Rivers', 'Abua-Odual-Rivers', 1),
(683, 'Ahoada East, Rivers', 'Ahoada-East-Rivers', 1),
(684, 'Ahoada West, Rivers', 'Ahoada-West-Rivers', 1),
(685, 'Akuku-Toru, Rivers', 'Akuku-Toru-Rivers', 1),
(686, 'Andoni, Rivers', 'Andoni-Rivers', 1),
(687, 'Asari-Toru, Rivers', 'Asari-Toru-Rivers', 1),
(688, 'Bonny, Rivers', 'Bonny-Rivers', 1),
(689, 'Degema, Rivers', 'Degema-Rivers', 1),
(690, 'Eleme, Rivers', 'Eleme-Rivers', 1),
(691, 'Emuoha, Rivers', 'Emuoha-Rivers', 1),
(692, 'Etche, Rivers', 'Etche-Rivers', 1),
(693, 'Gokana, Rivers', 'Gokana-Rivers', 1),
(694, 'Ikwerre, Rivers', 'Ikwerre-Rivers', 1),
(695, 'Khana, Rivers', 'Khana-Rivers', 1),
(696, 'Obio-Akpor, Rivers', 'Obio-Akpor-Rivers', 1),
(697, 'Ogba-Egbema-Ndoni, Rivers', 'Ogba-Egbema-Ndoni-Rivers', 1),
(698, 'Ogu-Bolo, Rivers', 'Ogu-Bolo-Rivers', 1),
(699, 'Okrika, Rivers', 'Okrika-Rivers', 1),
(700, 'Omuma, Rivers', 'Omuma-Rivers', 1),
(701, 'Opobo-Nkoro, Rivers', 'Opobo-Nkoro-Rivers', 1),
(702, 'Oyigbo, Rivers', 'Oyigbo-Rivers', 1),
(703, 'Port Harcourt, Rivers', 'Port-Harcourt-Rivers', 1),
(704, 'Tai, Rivers', 'Tai-Rivers', 1),
(705, 'Binji, Sokoto', 'Binji-Sokoto', 1),
(706, 'Bodinga, Sokoto', 'Bodinga-Sokoto', 1),
(707, 'Dange Shuni, Sokoto', 'Dange-Shuni-Sokoto', 1),
(708, 'Gada, Sokoto', 'Gada-Sokoto', 1),
(709, 'Goronyo, Sokoto', 'Goronyo-Sokoto', 1),
(710, 'Gudu, Sokoto', 'Gudu-Sokoto', 1),
(711, 'Gwadabawa, Sokoto', 'Gwadabawa-Sokoto', 1),
(712, 'Illela, Sokoto', 'Illela-Sokoto', 1),
(713, 'Isa, Sokoto', 'Isa-Sokoto', 1),
(714, 'Kebbe, Sokoto', 'Kebbe-Sokoto', 1),
(715, 'Kware, Sokoto', 'Kware-Sokoto', 1),
(716, 'Rabah, Sokoto', 'Rabah-Sokoto', 1),
(717, 'Sabon Birni, Sokoto', 'Sabon-Birni-Sokoto', 1),
(718, 'Shagari, Sokoto', 'Shagari-Sokoto', 1),
(719, 'Silame, Sokoto', 'Silame-Sokoto', 1),
(720, 'Sokoto North, Sokoto', 'Sokoto-North-Sokoto', 1),
(721, 'Sokoto South, Sokoto', 'Sokoto-South-Sokoto', 1),
(722, 'Tambuwal, Sokoto', 'Tambuwal-Sokoto', 1),
(723, 'Tangaza, Sokoto', 'Tangaza-Sokoto', 1),
(724, 'Tureta, Sokoto', 'Tureta-Sokoto', 1),
(725, 'Wamako, Sokoto', 'Wamako-Sokoto', 1),
(726, 'Wurno, Sokoto', 'Wurno-Sokoto', 1),
(727, 'Yabo, Sokoto', 'Yabo-Sokoto', 1),
(728, 'Ardo Kola, Taraba', 'Ardo-Kola-Taraba', 1),
(729, 'Bali, Taraba', 'Bali-Taraba', 1),
(730, 'Donga, Taraba', 'Donga-Taraba', 1),
(731, 'Gashaka, Taraba', 'Gashaka-Taraba', 1),
(732, 'Gassol, Taraba', 'Gassol-Taraba', 1),
(733, 'Ibi, Taraba', 'Ibi-Taraba', 1),
(734, 'Jalingo, Taraba', 'Jalingo-Taraba', 1),
(735, 'Karim Lamido, Taraba', 'Karim-Lamido-Taraba', 1),
(736, 'Kumi, Taraba', 'Kumi-Taraba', 1),
(737, 'Lau, Taraba', 'Lau-Taraba', 1),
(738, 'Sardauna, Taraba', 'Sardauna-Taraba', 1),
(739, 'Takum, Taraba', 'Takum-Taraba', 1),
(740, 'Ussa, Taraba', 'Ussa-Taraba', 1),
(741, 'Wukari, Taraba', 'Wukari-Taraba', 1),
(742, 'Yorro, Taraba', 'Yorro-Taraba', 1),
(743, 'Zing, Taraba', 'Zing-Taraba', 1),
(744, 'Bade, Yobe', 'Bade-Yobe', 1),
(745, 'Bursari, Yobe', 'Bursari-Yobe', 1),
(746, 'Damaturu, Yobe', 'Damaturu-Yobe', 1),
(747, 'Fika, Yobe', 'Fika-Yobe', 1),
(748, 'Fune, Yobe', 'Fune-Yobe', 1),
(749, 'Geidam, Yobe', 'Geidam-Yobe', 1),
(750, 'Gujba, Yobe', 'Gujba-Yobe', 1),
(751, 'Gulani, Yobe', 'Gulani-Yobe', 1),
(752, 'Jakusko, Yobe', 'Jakusko-Yobe', 1),
(753, 'Karasuwa, Yobe', 'Karasuwa-Yobe', 1),
(754, 'Machina, Yobe', 'Machina-Yobe', 1),
(755, 'Nangere, Yobe', 'Nangere-Yobe', 1),
(756, 'Nguru, Yobe', 'Nguru-Yobe', 1),
(757, 'Potiskum, Yobe', 'Potiskum-Yobe', 1),
(758, 'Tarmuwa, Yobe', 'Tarmuwa-Yobe', 1),
(759, 'Yunusari, Yobe', 'Yunusari-Yobe', 1),
(760, 'Yusufari, Yobe', 'Yusufari-Yobe', 1),
(761, 'Anka, Zamfara', 'Anka-Zamfara', 1),
(762, 'Bakura, Zamfara', 'Bakura-Zamfara', 1),
(763, 'Birnin Magaji-Kiyaw, Zamfara', 'Birnin-Magaji-Kiyaw-Zamfara', 1),
(764, 'Bukkuyum, Zamfara', 'Bukkuyum-Zamfara', 1),
(765, 'Bungudu, Zamfara', 'Bungudu-Zamfara', 1),
(766, 'Gummi, Zamfara', 'Gummi-Zamfara', 1),
(767, 'Gusau, Zamfara', 'Gusau-Zamfara', 1),
(768, 'Kaura Namoda, Zamfara', 'Kaura-Namoda-Zamfara', 1),
(769, 'Maradun, Zamfara', 'Maradun-Zamfara', 1),
(770, 'Maru, Zamfara', 'Maru-Zamfara', 1),
(771, 'Shinkafi, Zamfara', 'Shinkafi-Zamfara', 1),
(772, 'Talata Mafara, Zamfara', 'Talata-Mafara-Zamfara', 1),
(773, 'Chafe, Zamfara', 'Chafe-Zamfara', 1),
(774, 'Zurmi, Zamfara', 'Zurmi-Zamfara', 1);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `forename` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `joined` timestamp NOT NULL DEFAULT current_timestamp(),
  `picture` varchar(254) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'member'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `forename`, `surname`, `email`, `password`, `joined`, `picture`, `role`) VALUES
(1, 'Ivy', 'Stone', 'ivy@eg.link', '$2y$10$MAdTTCA0Mi0whewgCcBv4uv0HUgdcAkW1pnqslSi/P2Ca9u5rpZl.', '2021-01-26 20:04:23', 'ivy.jpg', 'admin'),
(2, 'Luke', 'Wood', 'luke@eg.link', '$2y$10$MAdTTCA0Mi0whewgCcBv4uv0HUgdcAkW1pnqslSi/P2Ca9u5rpZl.', '2018-02-02 05:48:25', NULL, 'member'),
(3, 'Emiko', 'Ito', 'emi@eg.link', '$2y$10$MAdTTCA0Mi0whewgCcBv4uv0HUgdcAkW1pnqslSi/P2Ca9u5rpZl.', '2021-02-12 18:53:47', 'emi.jpg', 'member'),
(4, 'Dot', 'Clarke', 'dot@eg.link', '$2y$10$MAdTTCA0Mi0whewgCcBv4uv0HUgdcAkW1pnqslSi/P2Ca9u5rpZl.', '2021-03-04 16:21:28', 'dot.jpg', 'admin'),
(5, 'Henry', 'Bell', 'henry@eg.link', '$2y$10$MAdTTCA0Mi0whewgCcBv4uv0HUgdcAkW1pnqslSi/P2Ca9u5rpZl.', '2021-03-07 07:47:56', 'henry.jpg', 'member'),
(6, 'Samira', 'Mirza', 'samira@eg.link', '$2y$10$MAdTTCA0Mi0whewgCcBv4uv0HUgdcAkW1pnqslSi/P2Ca9u5rpZl.', '2021-03-08 20:12:53', 'samira.jpg', 'admin'),
(7, 'Eve', 'Howard', 'eve@eg.link', '$2y$10$MAdTTCA0Mi0whewgCcBv4uv0HUgdcAkW1pnqslSi/P2Ca9u5rpZl.', '2021-03-14 07:49:40', 'eve.jpg', 'member'),
(8, 'Lily', 'Morgan', 'lily@eg.link', '$2y$10$MAdTTCA0Mi0whewgCcBv4uv0HUgdcAkW1pnqslSi/P2Ca9u5rpZl.', '2021-03-14 18:04:30', 'lily.jpg', 'member'),
(9, 'Aiden', 'Peterson', 'aiden@eg.link', '$2y$10$MAdTTCA0Mi0whewgCcBv4uv0HUgdcAkW1pnqslSi/P2Ca9u5rpZl.', '2021-03-17 00:51:17', 'aiden.jpg', 'member'),
(10, 'Hyun-tae', 'Lee', 'hyun@eg.link', '$2y$10$MAdTTCA0Mi0whewgCcBv4uv0HUgdcAkW1pnqslSi/P2Ca9u5rpZl.', '2021-03-17 04:32:27', 'hyun.jpg', 'member'),
(11, 'Piper', 'Gray', 'piper@eg.link', '$2y$10$MAdTTCA0Mi0whewgCcBv4uv0HUgdcAkW1pnqslSi/P2Ca9u5rpZl.', '2021-03-18 15:18:23', 'piper.jpg', 'member'),
(12, 'Grace', 'Jackson', 'grace@eg.link', '$2y$10$MAdTTCA0Mi0whewgCcBv4uv0HUgdcAkW1pnqslSi/P2Ca9u5rpZl.', '2021-03-18 19:55:09', 'grace.jpg', 'member'),
(13, 'Noriko', 'Saito', 'noriko@eg.link', '$2y$10$MAdTTCA0Mi0whewgCcBv4uv0HUgdcAkW1pnqslSi/P2Ca9u5rpZl.', '2021-03-21 22:28:11', 'noriko.jpg', 'member'),
(14, 'Ayomide', 'Otunba', 'otunbaayomide2013@gmail.com', '$2y$10$gGk4w.RssQYj0c.2ESyTa.PjJvrDPmXYpiF4R0dQ.mGx4lTxn7HnC', '2022-09-24 13:19:50', '19942789_1229638437164977_3792046789524967477_o.jpg', 'member'),
(61, 'Ayomide', 'Otunba', 'ayomideotunbalifestyle@gmail.com', '$2y$10$NUWz3y3YsXi5hb9yAHKhHecMEP4K8AW2pOlYiKtY89d4j1Uotcy..', '2022-10-20 12:19:28', 'Dubai.png', 'member'),
(63, 'Ayomide', 'Otunba', 'ayomideabuja2022@gmail.com', '$2y$10$L9r52BTXdX3L2tXBHaxUU.rW349KtFZ2ho5C7hpnf2S2rMdCkfhQG', '2022-11-06 18:20:13', '2015.jpg', 'member'),
(64, 'Ayomide', 'Otunba', 'ayomideotunba24@gmail.com', '$2y$10$rnkzuXeYXhSRFpGVluZn6etz8WM7ya4G5GEigris.2hwLEq6r.T2S', '2022-11-06 20:34:10', 'whale2.png', 'member'),
(65, 'Ayomide', 'Otunba', 'ayomideotunba3.0@icloud.com', '$2y$10$0Yp4JAToQ23BfNTzT20H6uJuWRYu0px2kb.l5KFW2z6thEAV9Bs2e', '2022-11-24 19:42:56', 'WhatsApp-Image-2022-11-13-at-1-13-24-PM.jpeg', 'member');

-- --------------------------------------------------------

--
-- Table structure for table `token`
--

CREATE TABLE `token` (
  `id` int(11) NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `member_id` int(255) NOT NULL,
  `expires` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purpose` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `token`
--

INSERT INTO `token` (`id`, `token`, `member_id`, `expires`, `purpose`) VALUES
(1, '0d9781153ed42ea7d72b4a4963dbd4f7fbc1d09bca10a8faae55d5dd66441521881a4e51eb17cd62596b156f11218d31436e5ae3381bcb50acbf31dd2c5cd197', 50, '2021-09-09 15:47:04', 'password_reset'),
(30, 'ea61c4af389fd20452ea1206c43f8265351760f9ff54d86f7174c83b1abce230b037be3ecec841412aaa58cc5e94d06aa947bdd22d015fb3e2d4d52185d58890', 55, '2022-10-15 15:54:25', 'email_verification'),
(31, '8088ec1c83af201fd85d809e276ab9729d6506351c90fd214f3e17244cd4d878c5c1866f290cbf6e97ce4f19dd914d301a2b0c4aadef4fce8a2d4ba9825c71aa', 57, '2022-10-15 18:15:15', 'email_verification'),
(32, 'fccd191b2c9032c1b9575ace29c11ef7da2669fc121c364b3d52c769b4cc9121c3caca8d92022b926f32d619a1542e90946f9bc6ba35e33af19a433d0d98d8f0', 58, '2022-10-16 15:23:40', 'email_verification'),
(33, '0699de1856685ec41f8c8f831fc52ea6ed261adcde0575011bbfc920b7e0cac41feea468bb7b4f358394df7bf398b1f00a52a71dd405f39458256a8ab527673e', 59, '2022-10-16 23:58:29', 'email_verification'),
(34, '2752c3a9aad31a19c95c0008e7ab93d16be54b73c317349e9d3e3c091afd4eee7569c4fe023b0d167527aba2d35b9d98aab2e68472c4511552267b7cacbe69b7', 60, '2022-10-17 18:59:42', 'email_verification'),
(35, '177e8ad5414094f406a8ec3e39d511139102dd50ca4cf13a93d2734d3dcc0c64693e532126c70e8a1a6e0e3a9b6ec94e9c07e5ea1f6acc8de8492ba933d559f7', 61, '2022-10-20 18:19:28', 'email_verification'),
(37, 'db691558ee8155cc413eb90acf3c38eb5160246641473c258b58a48ecd5ae5d0393599d397bea7d667708feab26d8a94dcb75e8f66c4091461b6e9e4fee5b316', 63, '2022-11-06 23:20:13', 'email_verification'),
(39, 'e69b936c0fedd2d7363953e808ceea17c9725b8df74cfb9f6af56eefb75f396f7e6c2de25dad746c69b6ec1b4022ddb14c008bfcdcbd4048643b0f60db457bfe', 65, '2022-11-25 00:42:56', 'email_verification');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `author_id` (`member_id`),
  ADD KEY `image_id` (`image_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Article id exists` (`article_id`),
  ADD KEY `Member id exists` (`member_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `follow_department`
--
ALTER TABLE `follow_department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `follow_interest`
--
ALTER TABLE `follow_interest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `follow_location`
--
ALTER TABLE `follow_location`
  ADD PRIMARY KEY (`id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `member_id` (`member_id`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interest`
--
ALTER TABLE `interest`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`article_id`,`member_id`),
  ADD UNIQUE KEY `article_id` (`article_id`,`member_id`),
  ADD KEY `article_id_2` (`article_id`,`member_id`),
  ADD KEY `Is member id` (`member_id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `token`
--
ALTER TABLE `token`
  ADD PRIMARY KEY (`id`),
  ADD KEY `token` (`token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `follow_department`
--
ALTER TABLE `follow_department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `follow_interest`
--
ALTER TABLE `follow_interest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `follow_location`
--
ALTER TABLE `follow_location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `interest`
--
ALTER TABLE `interest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=775;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `token`
--
ALTER TABLE `token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `category_exists` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `image_exists` FOREIGN KEY (`image_id`) REFERENCES `image` (`id`),
  ADD CONSTRAINT `member_exists` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`);

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `Article id exists` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`),
  ADD CONSTRAINT `Member id exists` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`);

--
-- Constraints for table `follow_interest`
--
ALTER TABLE `follow_interest`
  ADD CONSTRAINT `follow_interest` FOREIGN KEY (`interest_id`) REFERENCES `interest` (`id`),
  ADD CONSTRAINT `member_interest` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`);

--
-- Constraints for table `follow_location`
--
ALTER TABLE `follow_location`
  ADD CONSTRAINT `follow_location` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`),
  ADD CONSTRAINT `follow_member` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`);

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `Is article id` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`),
  ADD CONSTRAINT `Is member id` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
