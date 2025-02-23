-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2022 at 10:51 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pg-finder`
--

-- --------------------------------------------------------

--
-- Table structure for table `amenities`
--

CREATE TABLE `amenities` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `type` varchar(150) NOT NULL,
  `icon` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `amenities`
--

INSERT INTO `amenities` (`id`, `name`, `type`, `icon`) VALUES
(1, 'Wifi', 'Common Area', 'wifi'),
(2, 'Power Backup', 'Building', 'powerbackup'),
(3, 'Fire Extinguisher', 'Building', 'fireext'),
(4, 'TV', 'Common Area', 'tv'),
(5, 'Bed with Mattress', 'Bedroom', 'bed'),
(6, 'Parking', 'Building', 'parking'),
(7, 'Water Purifier', 'Common Area', 'rowater'),
(8, 'Dining', 'Common Area', 'dining'),
(9, 'Air Conditioner', 'Bedroom', 'ac'),
(10, 'Washing Machine', 'Common Area', 'washingmachine'),
(11, 'Lift', 'Building', 'lift'),
(12, 'CCTV', 'Building', 'cctv'),
(13, 'Geyser', 'Washroom', 'geyser');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`) VALUES
(1, 'Delhi'),
(2, 'Mumbai'),
(3, 'Gurugram'),
(4, 'Mathura'),
(6, 'Bengaluru'),
(7, 'Ahmedabad'),
(8, 'Hyderabad'),
(9, 'Chennai'),
(10, 'Kolkata'),
(11, 'Pune'),
(12, 'Jaipur'),
(13, 'Surat'),
(14, 'Lucknow'),
(15, 'Kanpur'),
(16, 'Nagpur'),
(17, 'Patna'),
(18, 'Indore'),
(19, 'Thane'),
(20, 'Bhopal'),
(21, 'Visakhapatnam'),
(22, 'Vadodara'),
(23, 'Firozabad'),
(24, 'Ludhiana'),
(25, 'Rajkot'),
(26, 'Agra'),
(27, 'Siliguri'),
(28, 'Nashik'),
(29, 'Faridabad'),
(30, 'Patiala'),
(31, 'Meerut'),
(32, 'Kalyan-Dombivali'),
(33, 'Vasai-Virar'),
(34, 'Varanasi'),
(35, 'Srinagar'),
(36, 'Dhanbad'),
(37, 'Jodhpur'),
(38, 'Amritsar'),
(39, 'Raipur'),
(40, 'Allahabad'),
(41, 'Coimbatore'),
(42, 'Jabalpur'),
(43, 'Gwalior'),
(44, 'Vijayawada'),
(45, 'Madurai'),
(46, 'Guwahati'),
(47, 'Chandigarh'),
(48, 'Hubli-Dharwad'),
(49, 'Amroha'),
(50, 'Moradabad'),
(51, 'Aligarh'),
(52, 'Solapur'),
(53, 'Ranchi'),
(54, 'Jalandhar'),
(55, 'Tiruchirappalli'),
(56, 'Bhubaneswar'),
(57, 'Salem'),
(58, 'Warangal'),
(59, 'Mira-Bhayandar'),
(60, 'Thiruvananthpuram'),
(61, 'Bhiwandi'),
(62, 'Saharanpur'),
(63, 'Guntur'),
(64, 'Amravati'),
(65, 'Bikaner'),
(66, 'Noida'),
(67, 'Jamshedpur'),
(68, 'Bhilai Nagar'),
(69, 'Cuttack'),
(70, 'Kochi'),
(71, 'Udaipur'),
(72, 'Bhavnagar'),
(73, 'Dehradun'),
(74, 'Asansol'),
(75, 'Nanded-Waghala'),
(76, 'Ajmer'),
(77, 'Jamnagar'),
(78, 'Ujjain'),
(79, 'Sangli'),
(80, 'Loni'),
(81, 'Jhansi'),
(82, 'Pondicherry'),
(83, 'Nellore'),
(84, 'Jammu'),
(85, 'Belagavi'),
(86, 'Raurkela'),
(87, 'Mangaluru'),
(88, 'Tirunelveli'),
(89, 'Malegaon'),
(90, 'Gaya'),
(91, 'Tiruppur'),
(92, 'Davanagere'),
(93, 'Kozhikode'),
(94, 'Akola'),
(95, 'Kurnool'),
(96, 'Bokaro Steel City'),
(97, 'Rajahmundry'),
(98, 'Ballari'),
(99, 'Agartala'),
(100, 'Bhagalpur'),
(101, 'Latur'),
(102, 'Dhule'),
(103, 'Korba'),
(104, 'Bhilwara'),
(105, 'Brahmapur'),
(106, 'Mysore'),
(107, 'Muzaffarpur'),
(108, 'Ahmednagar'),
(109, 'Kollam'),
(110, 'Raghunathganj'),
(111, 'Bilaspur'),
(112, 'Shahjahanpur'),
(113, 'Thrissur'),
(114, 'Alwar'),
(115, 'Kakinada'),
(116, 'Nizamabad'),
(117, 'Sagar'),
(118, 'Tumkur'),
(119, 'Hisar'),
(120, 'Rohtak'),
(121, 'Panipat'),
(122, 'Darbhanga'),
(123, 'Kharagpur'),
(124, 'Aizawl'),
(125, 'Ichalkaranji'),
(126, 'Tirupati'),
(127, 'Karnal'),
(128, 'Bathinda'),
(129, 'Rampur'),
(130, 'Shivamogga'),
(131, 'Ratlam'),
(132, 'Modinagar'),
(133, 'Durg'),
(134, 'Shillong'),
(135, 'Imphal'),
(136, 'Hapur'),
(137, 'Ranipet'),
(138, 'Anantapur'),
(139, 'Arrah'),
(140, 'Karimnagar'),
(141, 'Parbhani'),
(142, 'Etawah'),
(143, 'Bharatpur'),
(144, 'Begusarai'),
(145, 'New Delhi'),
(146, 'Chhapra'),
(147, 'Kadapa'),
(148, 'Ramagundam'),
(149, 'Pali'),
(150, 'Satna'),
(151, 'Vizianagaram'),
(152, 'Katihar'),
(153, 'Hardwar'),
(154, 'Sonipat'),
(155, 'Nagercoil'),
(156, 'Thanjavur'),
(157, 'Murwara (Katni'),
(158, 'Naihati'),
(159, 'Sambhal'),
(160, 'Nadiad'),
(161, 'Yamunanagar'),
(162, 'English Bazar'),
(163, 'Eluru'),
(164, 'Munger'),
(165, 'Panchkula'),
(166, 'Raayachuru'),
(167, 'Panvel'),
(168, 'Deoghar'),
(169, 'Ongole'),
(170, 'Nandyal'),
(171, 'Morena'),
(172, 'Bhiwani'),
(173, 'Porbandar'),
(174, 'Palakkad'),
(175, 'Anand'),
(176, 'Purnia'),
(177, 'Baharampur'),
(178, 'Barmer'),
(179, 'Morvi'),
(180, 'Orai'),
(181, 'Bahraich'),
(182, 'Sikar'),
(183, 'Vellore'),
(184, 'Singrauli'),
(185, 'Khammam'),
(186, 'Mahesana'),
(187, 'Silchar'),
(188, 'Sambalpur'),
(189, 'Rewa'),
(190, 'Unnao'),
(191, 'Hugli-Chinsurah'),
(192, 'Raiganj'),
(193, 'Phusro'),
(194, 'Adityapur'),
(195, 'Alappuzha'),
(196, 'Bahadurgarh'),
(197, 'Machilipatnam'),
(198, 'Rae Bareli'),
(199, 'Jalpaiguri'),
(200, 'Bharuch'),
(201, 'Pathankot'),
(202, 'Hoshiarpur'),
(203, 'Baramula'),
(204, 'Adoni'),
(205, 'Jind'),
(206, 'Tonk'),
(207, 'Tenali'),
(208, 'Kancheepuram'),
(209, 'Vapi'),
(210, 'Sirsa'),
(211, 'Navsari'),
(212, 'Mahbubnagar'),
(213, 'Puri'),
(214, 'Robertson Pet'),
(215, 'Erode'),
(216, 'Batala'),
(217, 'Haldwani-cum-Kathgodam'),
(218, 'Vidisha'),
(219, 'Saharsa'),
(220, 'Thanesar'),
(221, 'Chittoor'),
(222, 'Veraval'),
(223, 'Lakhimpur'),
(224, 'Sitapur'),
(225, 'Hindupur'),
(226, 'Santipur'),
(227, 'Balurghat'),
(228, 'Ganjbasoda'),
(229, 'Moga'),
(230, 'Proddatur'),
(231, 'Srinagar'),
(232, 'Medinipur'),
(233, 'Habra'),
(234, 'Sasaram'),
(235, 'Hajipur'),
(236, 'Bhuj'),
(237, 'Shivpuri'),
(238, 'Ranaghat'),
(239, 'Shimla'),
(240, 'Tiruvannamalai'),
(241, 'Kaithal'),
(242, 'Rajnandgaon'),
(243, 'Godhra'),
(244, 'Hazaribag'),
(245, 'Bhimavaram'),
(246, 'Mandsaur'),
(247, 'Dibrugarh'),
(248, 'Kolar'),
(249, 'Bankura'),
(250, 'Mandya'),
(251, 'Dehri-on-Sone'),
(252, 'Madanapalle'),
(253, 'Malerkotla'),
(254, 'Lalitpur'),
(255, 'Bettiah'),
(256, 'Pollachi'),
(257, 'Khanna'),
(258, 'Neemuch'),
(259, 'Palwal'),
(260, 'Palanpur'),
(261, 'Guntakal'),
(262, 'Nabadwip'),
(263, 'Udupi'),
(264, 'Jagdalpur'),
(265, 'Motihari'),
(266, 'Pilibhit'),
(267, 'Dimapur'),
(268, 'Mohali'),
(269, 'Sadulpur'),
(270, 'Rajapalayam'),
(271, 'Dharmavaram'),
(272, 'Kashipur'),
(273, 'Sivakasi'),
(274, 'Darjiling'),
(275, 'Chikkamagaluru'),
(276, 'Gudivada'),
(277, 'Baleshwar Town'),
(278, 'Mancherial'),
(279, 'Srikakulam'),
(280, 'Adilabad'),
(281, 'Yavatmal'),
(282, 'Barnala'),
(283, 'Nagaon'),
(284, 'Narasaraopet'),
(285, 'Raigarh'),
(286, 'Roorkee'),
(287, 'Valsad'),
(288, 'Ambikapur'),
(289, 'Giridih'),
(290, 'Chandausi'),
(291, 'Purulia'),
(292, 'Patan'),
(293, 'Bagaha'),
(294, 'Hardoi '),
(295, 'Achalpur'),
(296, 'Osmanabad'),
(297, 'Deesa'),
(298, 'Nandurbar'),
(299, 'Azamgarh'),
(300, 'Ramgarh'),
(301, 'Firozpur'),
(302, 'Baripada Town'),
(303, 'Karwar'),
(304, 'Siwan'),
(305, 'Rajampet'),
(306, 'Pudukkottai'),
(307, 'Anantnag'),
(308, 'Tadpatri'),
(309, 'Satara'),
(310, 'Bhadrak'),
(311, 'Kishanganj'),
(312, 'Suryapet'),
(313, 'Wardha'),
(314, 'Ranebennuru'),
(315, 'Amreli'),
(316, 'Neyveli (TS'),
(317, 'Jamalpur'),
(318, 'Marmagao'),
(319, 'Udgir'),
(320, 'Tadepalligudem'),
(321, 'Nagapattinam'),
(322, 'Buxar'),
(323, 'Aurangabad'),
(324, 'Jehanabad'),
(325, 'Phagwara'),
(326, 'Khair'),
(327, 'Sawai Madhopur'),
(328, 'Kapurthala'),
(329, 'Chilakaluripet'),
(330, 'Aurangabad'),
(331, 'Malappuram'),
(332, 'Rewari'),
(333, 'Nagaur'),
(334, 'Sultanpur'),
(335, 'Nagda'),
(336, 'Port Blair'),
(337, 'Lakhisarai'),
(338, 'Panaji'),
(339, 'Tinsukia'),
(340, 'Itarsi'),
(341, 'Kohima'),
(342, 'Balangir'),
(343, 'Nawada'),
(344, 'Jharsuguda'),
(345, 'Jagtial'),
(346, 'Viluppuram'),
(347, 'Amalner'),
(348, 'Zirakpur'),
(349, 'Tanda'),
(350, 'Tiruchengode'),
(351, 'Nagina'),
(352, 'Yemmiganur'),
(353, 'Vaniyambadi'),
(354, 'Sarni'),
(355, 'Theni Allinagaram'),
(356, 'Margao'),
(357, 'Akot'),
(358, 'Sehore'),
(359, 'Mhow Cantonment'),
(360, 'Kot Kapura'),
(361, 'Makrana'),
(362, 'Pandharpur'),
(363, 'Miryalaguda'),
(364, 'Shamli'),
(365, 'Seoni'),
(366, 'Ranibennur'),
(367, 'Kadiri'),
(368, 'Shrirampur'),
(369, 'Rudrapur'),
(370, 'Parli'),
(371, 'Najibabad'),
(372, 'Nirmal'),
(373, 'Udhagamandalam'),
(374, 'Shikohabad'),
(375, 'Jhumri Tilaiya'),
(376, 'Aruppukkottai'),
(377, 'Ponnani'),
(378, 'Jamui'),
(379, 'Sitamarhi'),
(380, 'Chirala'),
(381, 'Anjar'),
(382, 'Karaikal'),
(383, 'Hansi'),
(384, 'Anakapalle'),
(385, 'Mahasamund'),
(386, 'Faridkot'),
(387, 'Saunda'),
(388, 'Dhoraji'),
(389, 'Paramakudi'),
(390, 'Balaghat'),
(391, 'Sujangarh'),
(392, 'Khambhat'),
(393, 'Muktsar'),
(394, 'Rajpura'),
(395, 'Kavali'),
(396, 'Dhamtari'),
(397, 'Ashok Nagar'),
(398, 'Sardarshahar'),
(399, 'Mahuva'),
(400, 'Bargarh'),
(401, 'Kamareddy'),
(402, 'Sahibganj'),
(403, 'Kothagudem'),
(404, 'Ramanagaram'),
(405, 'Gokak'),
(406, 'Tikamgarh'),
(407, 'Araria'),
(408, 'Rishikesh'),
(409, 'Shahdol'),
(410, 'Medininagar (Daltonganj'),
(411, 'Arakkonam'),
(412, 'Washim'),
(413, 'Sangrur'),
(414, 'Bodhan'),
(415, 'Fazilka'),
(416, 'Palacole'),
(417, 'Keshod'),
(418, 'Sullurpeta'),
(419, 'Wadhwan'),
(420, 'Gurdaspur'),
(421, 'Vatakara'),
(422, 'Tura'),
(423, 'Narnaul'),
(424, 'Kharar'),
(425, 'Yadgir'),
(426, 'Ambejogai'),
(427, 'Ankleshwar'),
(428, 'Savarkundla'),
(429, 'Paradip'),
(430, 'Virudhachalam'),
(431, 'Kanhangad'),
(432, 'Kadi'),
(433, 'Srivilliputhur'),
(434, 'Gobindgarh'),
(435, 'Tindivanam'),
(436, 'Mansa'),
(437, 'Taliparamba'),
(438, 'Manmad'),
(439, 'Tanuku'),
(440, 'Rayachoti'),
(441, 'Virudhunagar'),
(442, 'Koyilandy'),
(443, 'Jorhat'),
(444, 'Karur'),
(445, 'Valparai'),
(446, 'Srikalahasti'),
(447, 'Neyyattinkara'),
(448, 'Bapatla'),
(449, 'Fatehabad'),
(450, 'Malout'),
(451, 'Sankarankovil'),
(452, 'Tenkasi'),
(453, 'Ratnagiri'),
(454, 'Rabkavi Banhatti'),
(455, 'Sikandrabad'),
(456, 'Chaibasa'),
(457, 'Chirmiri'),
(458, 'Palwancha'),
(459, 'Bhawanipatna'),
(460, 'Kayamkulam'),
(461, 'Pithampur'),
(462, 'Nabha'),
(463, '\"Shahabad, Hardoi'),
(464, 'Dhenkanal'),
(465, 'Uran Islampur'),
(466, 'Gopalganj'),
(467, 'Bongaigaon City'),
(468, 'Palani'),
(469, 'Pusad'),
(470, 'Sopore'),
(471, 'Pilkhuwa'),
(472, 'Tarn Taran'),
(473, 'Renukoot'),
(474, 'Mandamarri'),
(475, 'Shahabad'),
(476, 'Barbil'),
(477, 'Koratla'),
(478, 'Madhubani'),
(479, 'Arambagh'),
(480, 'Gohana'),
(481, 'Ladnu'),
(482, 'Pattukkottai'),
(483, 'Sirsi'),
(484, 'Sircilla'),
(485, 'Tamluk'),
(486, 'Jagraon'),
(487, 'AlipurdUrban Agglomerationr'),
(488, 'Alirajpur'),
(489, 'Tandur'),
(490, 'Naidupet'),
(491, 'Tirupathur'),
(492, 'Tohana'),
(493, 'Ratangarh'),
(494, 'Dhubri'),
(495, 'Masaurhi'),
(496, 'Visnagar'),
(497, 'Vrindavan'),
(498, 'Nokha'),
(499, 'Nagari'),
(500, 'Narwana'),
(501, 'Ramanathapuram'),
(502, 'Ujhani'),
(503, 'Samastipur'),
(504, 'Laharpur'),
(505, 'Sangamner'),
(506, 'Nimbahera'),
(507, 'Siddipet'),
(508, 'Suri'),
(509, 'Diphu'),
(510, 'Jhargram'),
(511, 'Shirpur-Warwade'),
(512, 'Tilhar'),
(513, 'Sindhnur'),
(514, 'Udumalaipettai'),
(515, 'Malkapur'),
(516, 'Wanaparthy'),
(517, 'Gudur'),
(518, 'Kendujhar'),
(519, 'Mandla'),
(520, 'Mandi'),
(521, 'Nedumangad'),
(522, 'North Lakhimpur'),
(523, 'Vinukonda'),
(524, 'Tiptur'),
(525, 'Gobichettipalayam'),
(526, 'Sunabeda'),
(527, 'Wani'),
(528, 'Upleta'),
(529, 'Narasapuram'),
(530, 'Nuzvid'),
(531, 'Tezpur'),
(532, 'Una'),
(533, 'Markapur'),
(534, 'Sheopur'),
(535, 'Thiruvarur'),
(536, 'Sidhpur'),
(537, 'Sahaswan'),
(538, 'Suratgarh'),
(539, 'Shajapur'),
(540, 'Rayagada'),
(541, 'Lonavla'),
(542, 'Ponnur'),
(543, 'Kagaznagar'),
(544, 'Gadwal'),
(545, 'Bhatapara'),
(546, 'Kandukur'),
(547, 'Sangareddy'),
(548, 'Unjha'),
(549, 'Lunglei'),
(550, 'Karimganj'),
(551, 'Kannur'),
(552, 'Bobbili'),
(553, 'Mokameh'),
(554, 'Talegaon Dabhade'),
(555, 'Anjangaon'),
(556, 'Mangrol'),
(557, 'Sunam'),
(558, 'Gangarampur'),
(559, 'Thiruvallur'),
(560, 'Tirur'),
(561, 'Rath'),
(562, 'Jatani'),
(563, 'Viramgam'),
(564, 'Rajsamand'),
(565, 'Yanam'),
(566, 'Kottayam'),
(567, 'Panruti'),
(568, 'Dhuri'),
(569, 'Namakkal'),
(570, 'Kasaragod'),
(571, 'Modasa'),
(572, 'Rayadurg'),
(573, 'Supaul'),
(574, 'Kunnamkulam'),
(575, 'Umred'),
(576, 'Bellampalle'),
(577, 'Sibsagar'),
(578, 'Mandi Dabwali'),
(579, 'Ottappalam'),
(580, 'Dumraon'),
(581, 'Samalkot'),
(582, 'Jaggaiahpet'),
(583, 'Goalpara'),
(584, 'Tuni'),
(585, 'Lachhmangarh'),
(586, 'Bhongir'),
(587, 'Amalapuram'),
(588, 'Firozpur Cantt'),
(589, 'Vikarabad'),
(590, 'Thiruvalla'),
(591, 'Sherkot'),
(592, 'Palghar'),
(593, 'Shegaon'),
(594, 'Jangaon'),
(595, 'Bheemunipatnam'),
(596, 'Panna'),
(597, 'Thodupuzha'),
(598, 'KathUrban Agglomeration'),
(599, 'Palitana'),
(600, 'Arwal'),
(601, 'Venkatagiri'),
(602, 'Kalpi'),
(603, 'Rajgarh (Churu'),
(604, 'Sattenapalle'),
(605, 'Arsikere'),
(606, 'Ozar'),
(607, 'Thirumangalam'),
(608, 'Petlad'),
(609, 'Nasirabad'),
(610, 'Phaltan'),
(611, 'Rampurhat'),
(612, 'Nanjangud'),
(613, 'Forbesganj'),
(614, 'Tundla'),
(615, 'BhabUrban Agglomeration'),
(616, 'Sagara'),
(617, 'Pithapuram'),
(618, 'Sira'),
(619, 'Bhadrachalam'),
(620, 'Charkhi Dadri'),
(621, 'Chatra'),
(622, 'Palasa Kasibugga'),
(623, 'Nohar'),
(624, 'Yevla'),
(625, 'Sirhind Fatehgarh Sahib'),
(626, 'Bhainsa'),
(627, 'Parvathipuram'),
(628, 'Shahade'),
(629, 'Chalakudy'),
(630, 'Narkatiaganj'),
(631, 'Kapadvanj'),
(632, 'Macherla'),
(633, 'Raghogarh-Vijaypur'),
(634, 'Rupnagar'),
(635, 'Naugachhia'),
(636, 'Sendhwa'),
(637, 'Byasanagar'),
(638, 'Sandila'),
(639, 'Gooty'),
(640, 'Salur'),
(641, 'Nanpara'),
(642, 'Sardhana'),
(643, 'Vita'),
(644, 'Gumia'),
(645, 'Puttur'),
(646, 'Jalandhar Cantt'),
(647, 'Nehtaur'),
(648, 'Changanassery'),
(649, 'Mandapeta'),
(650, 'Dumka'),
(651, 'Seohara'),
(652, 'Umarkhed'),
(653, 'Madhupur'),
(654, 'Vikramasingapuram'),
(655, 'Punalur'),
(656, 'Kendrapara'),
(657, 'Sihor'),
(658, 'Nellikuppam'),
(659, 'Samana'),
(660, 'Warora'),
(661, 'Nilambur'),
(662, 'Rasipuram'),
(663, 'Ramnagar'),
(664, 'Jammalamadugu'),
(665, 'Nawanshahr'),
(666, 'Thoubal'),
(667, 'Athni'),
(668, 'Cherthala'),
(669, 'Sidhi'),
(670, 'Farooqnagar'),
(671, 'Peddapuram'),
(672, 'Chirkunda'),
(673, 'Pachora'),
(674, 'Madhepura'),
(675, 'Pithoragarh'),
(676, 'Tumsar'),
(677, 'Phalodi'),
(678, 'Tiruttani'),
(679, 'Rampura Phul'),
(680, 'Perinthalmanna'),
(681, 'Padrauna'),
(682, 'Pipariya'),
(683, 'Dalli-Rajhara'),
(684, 'Punganur'),
(685, 'Mattannur'),
(686, 'Thakurdwara'),
(687, 'Nandivaram-Guduvancheri'),
(688, 'Mulbagal'),
(689, 'Manjlegaon'),
(690, 'Wankaner'),
(691, 'Sillod'),
(692, 'Nidadavole'),
(693, 'Surapura'),
(694, 'Rajagangapur'),
(695, 'Sheikhpura'),
(696, 'Parlakhemundi'),
(697, 'Kalimpong'),
(698, 'Siruguppa'),
(699, 'Arvi'),
(700, 'Limbdi'),
(701, 'Barpeta'),
(702, 'Manglaur'),
(703, 'Repalle'),
(704, 'Mudhol'),
(705, 'Shujalpur'),
(706, 'Mandvi'),
(707, 'Thangadh'),
(708, 'Sironj'),
(709, 'Nandura'),
(710, 'Shoranur'),
(711, 'Nathdwara'),
(712, 'Periyakulam'),
(713, 'Sultanganj'),
(714, 'Medak'),
(715, 'Narayanpet'),
(716, 'Raxaul Bazar'),
(717, 'Rajauri'),
(718, 'Pernampattu'),
(719, 'Nainital'),
(720, 'Ramachandrapuram'),
(721, 'Vaijapur'),
(722, 'Nangal'),
(723, 'Sidlaghatta'),
(724, 'Punch'),
(725, 'Pandhurna'),
(726, 'Wadgaon Road'),
(727, 'Talcher'),
(728, 'Varkala'),
(729, 'Pilani'),
(730, 'Nowgong'),
(731, 'Naila Janjgir'),
(732, 'Mapusa'),
(733, 'Vellakoil'),
(734, 'Merta City'),
(735, 'Sivaganga'),
(736, 'Mandideep'),
(737, 'Sailu'),
(738, 'Vyara'),
(739, 'Kovvur'),
(740, 'Vadalur'),
(741, 'Nawabganj'),
(742, 'Padra'),
(743, 'Sainthia'),
(744, 'Siana'),
(745, 'Shahpur'),
(746, 'Sojat'),
(747, 'Noorpur'),
(748, 'Paravoor'),
(749, 'Murtijapur'),
(750, 'Ramnagar'),
(751, 'Sundargarh'),
(752, 'Taki'),
(753, 'Saundatti-Yellamma'),
(754, 'Pathanamthitta'),
(755, 'Wadi'),
(756, 'Rameshwaram'),
(757, 'Tasgaon'),
(758, 'Sikandra Rao'),
(759, 'Sihora'),
(760, 'Tiruvethipuram'),
(761, 'Tiruvuru'),
(762, 'Mehkar'),
(763, 'Peringathur'),
(764, 'Perambalur'),
(765, 'Manvi'),
(766, 'Zunheboto'),
(767, 'Mahnar Bazar'),
(768, 'Attingal'),
(769, 'Shahbad'),
(770, 'Puranpur'),
(771, 'Nelamangala'),
(772, 'Nakodar'),
(773, 'Lunawada'),
(774, 'Murshidabad'),
(775, 'Mahe'),
(776, 'Lanka'),
(777, 'Rudauli'),
(778, 'Tuensang'),
(779, 'Lakshmeshwar'),
(780, 'Zira'),
(781, 'Yawal'),
(782, 'Thana Bhawan'),
(783, 'Ramdurg'),
(784, 'Pulgaon'),
(785, 'Sadasivpet'),
(786, 'Nargund'),
(787, 'Neem-Ka-Thana'),
(788, 'Memari'),
(789, 'Nilanga'),
(790, 'Naharlagun'),
(791, 'Pakaur'),
(792, 'Wai'),
(793, 'Tarikere'),
(794, 'Malavalli'),
(795, 'Raisen'),
(796, 'Lahar'),
(797, 'Uravakonda'),
(798, 'Savanur'),
(799, 'Sirohi'),
(800, 'Udhampur'),
(801, 'Umarga'),
(802, 'Pratapgarh'),
(803, 'Lingsugur'),
(804, 'Usilampatti'),
(805, 'Palia Kalan'),
(806, 'Wokha'),
(807, 'Rajpipla'),
(808, 'Vijayapura'),
(809, 'Rawatbhata'),
(810, 'Sangaria'),
(811, 'Paithan'),
(812, 'Rahuri'),
(813, 'Patti'),
(814, 'Zaidpur'),
(815, 'Lalsot'),
(816, 'Maihar'),
(817, 'Vedaranyam'),
(818, 'Nawapur'),
(819, 'Solan'),
(820, 'Vapi'),
(821, 'Sanawad'),
(822, 'Warisaliganj'),
(823, 'Revelganj'),
(824, 'Sabalgarh'),
(825, 'Tuljapur'),
(826, 'Simdega'),
(827, 'Musabani'),
(828, 'Kodungallur'),
(829, 'Phulabani'),
(830, 'Umreth'),
(831, 'Narsipatnam'),
(832, 'Nautanwa'),
(833, 'Rajgir'),
(834, 'Yellandu'),
(835, 'Sathyamangalam'),
(836, 'Pilibanga'),
(837, 'Morshi'),
(838, 'Pehowa'),
(839, 'Sonepur'),
(840, 'Pappinisseri'),
(841, 'Zamania'),
(842, 'Mihijam'),
(843, 'Purna'),
(844, 'Puliyankudi'),
(845, '\"Shikarpur, Bulandshahr'),
(846, 'Umaria'),
(847, 'Porsa'),
(848, 'Naugawan Sadat'),
(849, 'Fatehpur Sikri'),
(850, 'Manuguru'),
(851, 'Udaipur'),
(852, 'Pipar City'),
(853, 'Pattamundai'),
(854, 'Nanjikottai'),
(855, 'Taranagar'),
(856, 'Yerraguntla'),
(857, 'Satana'),
(858, 'Sherghati'),
(859, 'Sankeshwara'),
(860, 'Madikeri'),
(861, 'Thuraiyur'),
(862, 'Sanand'),
(863, 'Rajula'),
(864, 'Kyathampalle'),
(865, '\"Shahabad, Rampur'),
(866, 'Tilda Newra'),
(867, 'Narsinghgarh'),
(868, 'Chittur-Thathamangalam'),
(869, 'Malaj Khand'),
(870, 'Sarangpur'),
(871, 'Robertsganj'),
(872, 'Sirkali'),
(873, 'Radhanpur'),
(874, 'Tiruchendur'),
(875, 'Utraula'),
(876, 'Patratu'),
(877, '\"Vijainagar, Ajmer'),
(878, 'Periyasemur'),
(879, 'Pathri'),
(880, 'Sadabad'),
(881, 'Talikota'),
(882, 'Sinnar'),
(883, 'Mungeli'),
(884, 'Sedam'),
(885, 'Shikaripur'),
(886, 'Sumerpur'),
(887, 'Sattur'),
(888, 'Sugauli'),
(889, 'Lumding'),
(890, 'Vandavasi'),
(891, 'Titlagarh'),
(892, 'Uchgaon'),
(893, 'Mokokchung'),
(894, 'Paschim Punropara'),
(895, 'Sagwara'),
(896, 'Ramganj Mandi'),
(897, 'Tarakeswar'),
(898, 'Mahalingapura'),
(899, 'Dharmanagar'),
(900, 'Mahemdabad'),
(901, 'Manendragarh'),
(902, 'Uran'),
(903, 'Tharamangalam'),
(904, 'Tirukkoyilur'),
(905, 'Pen'),
(906, 'Makhdumpur'),
(907, 'Maner'),
(908, 'Oddanchatram'),
(909, 'Palladam'),
(910, 'Mundi'),
(911, 'Nabarangapur'),
(912, 'Mudalagi'),
(913, 'Samalkha'),
(914, 'Nepanagar'),
(915, 'Karjat'),
(916, 'Ranavav'),
(917, 'Pedana'),
(918, 'Pinjore'),
(919, 'Lakheri'),
(920, 'Pasan'),
(921, 'Puttur'),
(922, 'Vadakkuvalliyur'),
(923, 'Tirukalukundram'),
(924, 'Mahidpur'),
(925, 'Mussoorie'),
(926, 'Muvattupuzha'),
(927, 'Rasra'),
(928, 'Udaipurwati'),
(929, 'Manwath'),
(930, 'Adoor'),
(931, 'Uthamapalayam'),
(932, 'Partur'),
(933, 'Nahan'),
(934, 'Ladwa'),
(935, 'Mankachar'),
(936, 'Nongstoin'),
(937, 'Losal'),
(938, 'Sri Madhopur'),
(939, 'Ramngarh'),
(940, 'Mavelikkara'),
(941, 'Rawatsar'),
(942, 'Rajakhera'),
(943, 'Lar'),
(944, 'Lal Gopalganj Nindaura'),
(945, 'Muddebihal'),
(946, 'Sirsaganj'),
(947, 'Shahpura'),
(948, 'Surandai'),
(949, 'Sangole'),
(950, 'Pavagada'),
(951, 'Tharad'),
(952, 'Mansa'),
(953, 'Umbergaon'),
(954, 'Mavoor'),
(955, 'Nalbari'),
(956, 'Talaja'),
(957, 'Malur'),
(958, 'Mangrulpir'),
(959, 'Soro'),
(960, 'Shahpura'),
(961, 'Vadnagar'),
(962, 'Raisinghnagar'),
(963, 'Sindhagi'),
(964, 'Sanduru'),
(965, 'Sohna'),
(966, 'Manavadar'),
(967, 'Pihani'),
(968, 'Safidon'),
(969, 'Risod'),
(970, 'Rosera'),
(971, 'Sankari'),
(972, 'Malpura'),
(973, 'Sonamukhi'),
(974, '\"Shamsabad, Agra'),
(975, 'Nokha'),
(976, 'PandUrban Agglomeration'),
(977, 'Mainaguri'),
(978, 'Afzalpur'),
(979, 'Shirur'),
(980, 'Salaya'),
(981, 'Shenkottai'),
(982, 'Pratapgarh'),
(983, 'Vadipatti'),
(984, 'Nagarkurnool'),
(985, 'Savner'),
(986, 'Sasvad'),
(987, 'Rudrapur'),
(988, 'Soron'),
(989, 'Sholingur'),
(990, 'Pandharkaoda'),
(991, 'Perumbavoor'),
(992, 'Maddur'),
(993, 'Nadbai'),
(994, 'Talode'),
(995, 'Shrigonda'),
(996, 'Madhugiri'),
(997, 'Tekkalakote'),
(998, 'Seoni-Malwa'),
(999, 'Shirdi'),
(1000, 'SUrban Agglomerationr'),
(1001, 'Terdal'),
(1002, 'Raver'),
(1003, 'Tirupathur'),
(1004, 'Taraori'),
(1005, 'Mukhed'),
(1006, 'Manachanallur'),
(1007, 'Rehli'),
(1008, 'Sanchore'),
(1009, 'Rajura'),
(1010, 'Piro'),
(1011, 'Mudabidri'),
(1012, 'Vadgaon Kasba'),
(1013, 'Nagar'),
(1014, 'Vijapur'),
(1015, 'Viswanatham'),
(1016, 'Polur'),
(1017, 'Panagudi'),
(1018, 'Manawar'),
(1019, 'Tehri'),
(1020, 'Samdhan'),
(1021, 'Pardi'),
(1022, 'Rahatgarh'),
(1023, 'Panagar'),
(1024, 'Uthiramerur'),
(1025, 'Tirora'),
(1026, 'Rangia'),
(1027, 'Sahjanwa'),
(1028, 'Wara Seoni'),
(1029, 'Magadi'),
(1030, 'Rajgarh (Alwar'),
(1031, 'Rafiganj'),
(1032, 'Tarana'),
(1033, 'Rampur Maniharan'),
(1034, 'Sheoganj'),
(1035, 'Raikot'),
(1036, 'Pauri'),
(1037, 'Sumerpur'),
(1038, 'Navalgund'),
(1039, 'Shahganj'),
(1040, 'Marhaura'),
(1041, 'Tulsipur'),
(1042, 'Sadri'),
(1043, 'Thiruthuraipoondi'),
(1044, 'Shiggaon'),
(1045, 'Pallapatti'),
(1046, 'Mahendragarh'),
(1047, 'Sausar'),
(1048, 'Ponneri'),
(1049, 'Mahad'),
(1050, 'Lohardaga'),
(1051, 'Tirwaganj'),
(1052, 'Margherita'),
(1053, 'Sundarnagar'),
(1054, 'Rajgarh'),
(1055, 'Mangaldoi'),
(1056, 'Renigunta'),
(1057, 'Longowal'),
(1058, 'Ratia'),
(1059, 'Lalgudi'),
(1060, 'Shrirangapattana'),
(1061, 'Niwari'),
(1062, 'Natham'),
(1063, 'Unnamalaikadai'),
(1064, 'PurqUrban Agglomerationzi'),
(1065, '\"Shamsabad, Farrukhabad'),
(1066, 'Mirganj'),
(1067, 'Todaraisingh'),
(1068, 'Warhapur'),
(1069, 'Rajam'),
(1070, 'Urmar Tanda'),
(1071, 'Lonar'),
(1072, 'Powayan'),
(1073, 'P.N.Patti'),
(1074, 'Palampur'),
(1075, 'Srisailam Project (Right Flank Colony) Township'),
(1076, 'Sindagi'),
(1077, 'Sandi'),
(1078, 'Vaikom'),
(1079, 'Malda'),
(1080, 'Tharangambadi'),
(1081, 'Sakaleshapura'),
(1082, 'Lalganj'),
(1083, 'Malkangiri'),
(1084, 'Rapar'),
(1085, 'Mauganj'),
(1086, 'Todabhim'),
(1087, 'Srinivaspur'),
(1088, 'Murliganj'),
(1089, 'Reengus'),
(1090, 'Sawantwadi'),
(1091, 'Tittakudi'),
(1092, 'Lilong'),
(1093, 'Rajaldesar'),
(1094, 'Pathardi'),
(1095, 'Achhnera'),
(1096, 'Pacode'),
(1097, 'Naraura'),
(1098, 'Nakur'),
(1099, 'Palai'),
(1100, '\"Morinda, India'),
(1101, 'Manasa'),
(1102, 'Nainpur'),
(1103, 'Sahaspur'),
(1104, 'Pauni'),
(1105, 'Prithvipur'),
(1106, 'Ramtek'),
(1107, 'Silapathar'),
(1108, 'Songadh'),
(1109, 'Safipur'),
(1110, 'Sohagpur'),
(1111, 'Mul'),
(1112, 'Sadulshahar'),
(1113, 'Phillaur'),
(1114, 'Sambhar'),
(1115, 'Prantij'),
(1116, 'Nagla'),
(1117, 'Pattran'),
(1118, 'Mount Abu'),
(1119, 'Reoti'),
(1120, 'Tenu dam-cum-Kathhara'),
(1121, 'Panchla'),
(1122, 'Sitarganj'),
(1123, 'Pasighat'),
(1124, 'Motipur'),
(1125, 'Raghunathpur'),
(1126, 'Suriyampalayam'),
(1127, 'Qadian'),
(1128, 'Rairangpur'),
(1129, 'Silvassa'),
(1130, 'Nowrozabad (Khodargama'),
(1131, 'Mangrol'),
(1132, 'Soyagaon'),
(1133, 'Sujanpur'),
(1134, 'Manihari'),
(1135, 'Sikanderpur'),
(1136, 'Mangalvedhe'),
(1137, 'Phulera'),
(1138, 'Ron'),
(1139, 'Sholavandan'),
(1140, 'Saidpur'),
(1141, 'Shamgarh'),
(1142, 'Thammampatti'),
(1143, 'Maharajpur'),
(1144, 'Multai'),
(1145, 'Mukerian'),
(1146, 'Sirsi'),
(1147, 'Purwa'),
(1148, 'Sheohar'),
(1149, 'Namagiripettai'),
(1150, 'Parasi'),
(1151, 'Lathi'),
(1152, 'Lalganj'),
(1153, 'Narkhed'),
(1154, 'Mathabhanga'),
(1155, 'Shendurjana'),
(1156, 'Peravurani'),
(1157, 'Mariani'),
(1158, 'Phulpur'),
(1159, 'Rania'),
(1160, 'Pali'),
(1161, 'Pachore'),
(1162, 'Parangipettai'),
(1163, 'Pudupattinam'),
(1164, 'Panniyannur'),
(1165, 'Maharajganj'),
(1166, 'Rau'),
(1167, 'Monoharpur'),
(1168, 'Mandawa'),
(1169, 'Marigaon'),
(1170, 'Pallikonda'),
(1171, 'Pindwara'),
(1172, 'Shishgarh'),
(1173, 'Patur'),
(1174, 'Mayang Imphal'),
(1175, 'Mhowgaon'),
(1176, 'Guruvayoor'),
(1177, 'Mhaswad'),
(1178, 'Sahawar'),
(1179, 'Sivagiri'),
(1180, 'Mundargi'),
(1181, 'Punjaipugalur'),
(1182, 'Kailasahar'),
(1183, 'Samthar'),
(1184, 'Sakti'),
(1185, 'Sadalagi'),
(1186, 'Silao'),
(1187, 'Mandalgarh'),
(1188, 'Loha'),
(1189, 'Pukhrayan'),
(1190, 'Padmanabhapuram'),
(1191, 'Belonia'),
(1192, 'Saiha'),
(1193, 'Srirampore'),
(1194, 'Talwara'),
(1195, 'Puthuppally'),
(1196, 'Khowai'),
(1197, 'Vijaypur'),
(1198, 'Takhatgarh'),
(1199, 'Thirupuvanam'),
(1200, 'Adra'),
(1201, 'Piriyapatna'),
(1202, 'Obra'),
(1203, 'Adalaj'),
(1204, 'Nandgaon'),
(1205, 'Barh'),
(1206, 'Chhapra'),
(1207, 'Panamattom'),
(1208, 'Niwai'),
(1209, 'Bageshwar'),
(1210, 'Tarbha'),
(1211, 'Adyar'),
(1212, 'Narsinghgarh'),
(1213, 'Warud'),
(1214, 'Asarganj'),
(1215, 'Sarsod');

-- --------------------------------------------------------

--
-- Table structure for table `interested_users_properties`
--

CREATE TABLE `interested_users_properties` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `interested_users_properties`
--

INSERT INTO `interested_users_properties` (`id`, `user_id`, `property_id`) VALUES
(127, 18, 2),
(128, 29, 1),
(134, 30, 2);

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `address` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `gender` enum('male','female','unisex') NOT NULL,
  `rent` int(11) NOT NULL,
  `rating_clean` float(2,1) NOT NULL,
  `rating_food` float(2,1) NOT NULL,
  `rating_safety` float(2,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `city_id`, `name`, `address`, `description`, `gender`, `rent`, `rating_clean`, `rating_food`, `rating_safety`) VALUES
(1, 1, 'Saxena\'s Paying Guest', 'H.No. 3958 Kaseru Walan, Pahar Ganj, New Delhi, Delhi 110055', 'Furnished studio apartment - share it with close friends! Located in posh area of Bijwasan in Delhi, this house is available for both boys and girls. Go for a private room or opt for a shared one and make it your own abode. Go out with your new friends - catch a movie at the nearest cinema hall or just chill in a cafe which is not even 2 kms away. Unwind with your flatmates after a long day at work/college. With a common living area and a shared kitchen, make your own FRIENDS moments. After all, there\'s always a Joey with unlimited supply of food. Remember, all it needs is one crazy story to convert a roomie into a BFF. What\'s nearby/Your New Neighborhood 4.0 Kms from Dwarka Sector- 21 Metro Station.', 'male', 5000, 4.3, 3.4, 4.8),
(2, 1, 'Navrang PG Home', '644-C,Mohalla Baoli 6 Tooti Chowk, Paharganj, New Delhi, Delhi 110055', 'Furnished studio apartment - share it with close friends! Located in posh area of Bijwasan in Delhi, this house is available for both boys and girls. Go for a private room or opt for a shared one and make it your own abode. Go out with your new friends - catch a movie at the nearest cinema hall or just chill in a cafe which is not even 2 kms away. Unwind with your flatmates after a long day at work/college. With a common living area and a shared kitchen, make your own FRIENDS moments. After all, there\'s always a Joey with unlimited supply of food. Remember, all it needs is one crazy story to convert a roomie into a BFF. What\'s nearby/Your New Neighborhood 4.0 Kms from Dwarka Sector- 21 Metro Station.', 'unisex', 6000, 2.9, 3.4, 3.8),
(3, 2, 'Navkar Paying Guest', '44, Juhu Scheme, Juhu, Mumbai, Maharashtra 400058', 'Furnished studio apartment - share it with close friends! Located in posh area of Bijwasan in Delhi, this house is available for both boys and girls. Go for a private room or opt for a shared one and make it your own abode. Go out with your new friends - catch a movie at the nearest cinema hall or just chill in a cafe which is not even 2 kms away. Unwind with your flatmates after a long day at work/college. With a common living area and a shared kitchen, make your own FRIENDS moments. After all, there\'s always a Joey with unlimited supply of food. Remember, all it needs is one crazy story to convert a roomie into a BFF. What\'s nearby/Your New Neighborhood 4.0 Kms from Dwarka Sector- 21 Metro Station.', 'female', 9500, 3.9, 3.8, 4.9),
(4, 2, 'PG for Girls Borivali West', 'Plot no.258/D4, Gorai no.2, Borivali West, Mumbai, Maharashtra 400092', 'Furnished studio apartment - share it with close friends! Located in posh area of Bijwasan in Delhi, this house is available for both boys and girls. Go for a private room or opt for a shared one and make it your own abode. Go out with your new friends - catch a movie at the nearest cinema hall or just chill in a cafe which is not even 2 kms away. Unwind with your flatmates after a long day at work/college. With a common living area and a shared kitchen, make your own FRIENDS moments. After all, there\'s always a Joey with unlimited supply of food. Remember, all it needs is one crazy story to convert a roomie into a BFF. What\'s nearby/Your New Neighborhood 4.0 Kms from Dwarka Sector- 21 Metro Station.', 'female', 8000, 4.2, 4.1, 4.5),
(5, 2, 'Ganpati Paying Guest', 'Police Beat, Sainath Complex, Besides, SV Rd, Daulat Nagar, Borivali East, Mumbai - 400066', 'Furnished studio apartment - share it with close friends! Located in posh area of Bijwasan in Delhi, this house is available for both boys and girls. Go for a private room or opt for a shared one and make it your own abode. Go out with your new friends - catch a movie at the nearest cinema hall or just chill in a cafe which is not even 2 kms away. Unwind with your flatmates after a long day at work/college. With a common living area and a shared kitchen, make your own FRIENDS moments. After all, there\'s always a Joey with unlimited supply of food. Remember, all it needs is one crazy story to convert a roomie into a BFF. What\'s nearby/Your New Neighborhood 4.0 Kms from Dwarka Sector- 21 Metro Station.', 'male', 8500, 4.2, 3.9, 4.6);

-- --------------------------------------------------------

--
-- Table structure for table `properties_amenities`
--

CREATE TABLE `properties_amenities` (
  `id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `amenity_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `properties_amenities`
--

INSERT INTO `properties_amenities` (`id`, `property_id`, `amenity_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 4),
(4, 1, 5),
(5, 1, 7),
(6, 1, 8),
(7, 1, 9),
(8, 1, 10),
(9, 1, 11),
(10, 1, 13),
(11, 2, 1),
(12, 2, 2),
(13, 2, 3),
(14, 2, 4),
(15, 2, 5),
(16, 2, 7),
(17, 2, 8),
(18, 2, 9),
(19, 2, 10),
(20, 2, 11),
(21, 2, 13),
(22, 3, 1),
(23, 3, 2),
(24, 3, 3),
(25, 3, 4),
(26, 3, 5),
(27, 3, 7),
(28, 3, 8),
(29, 3, 10),
(30, 3, 11),
(31, 3, 12),
(32, 3, 13),
(33, 4, 1),
(34, 4, 3),
(35, 4, 4),
(36, 4, 5),
(37, 4, 7),
(38, 4, 8),
(39, 4, 10),
(40, 4, 11),
(41, 4, 12),
(42, 4, 13),
(43, 5, 1),
(44, 5, 3),
(45, 5, 4),
(46, 5, 5),
(47, 5, 7),
(48, 5, 8),
(49, 5, 10),
(50, 5, 11),
(51, 5, 12),
(52, 5, 13);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `user_name` varchar(150) NOT NULL,
  `content` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `property_id`, `user_name`, `content`) VALUES
(1, 1, 'Ashutosh Gowariker', 'You just have to arrive at the place, it\'s fully furnished and stocked with all basic amenities and services and even your friends are welcome.'),
(2, 1, 'Karan Johar', 'You just have to arrive at the place, it\'s fully furnished and stocked with all basic amenities and services and even your friends are welcome.'),
(3, 2, 'Zoya Akhtar', 'You just have to arrive at the place, it\'s fully furnished and stocked with all basic amenities and services and even your friends are welcome.'),
(4, 2, 'Farhan Akhtar', 'You just have to arrive at the place, it\'s fully furnished and stocked with all basic amenities and services and even your friends are welcome.'),
(5, 2, 'Anurag Kashyap', 'You just have to arrive at the place, it\'s fully furnished and stocked with all basic amenities and services and even your friends are welcome.'),
(6, 3, 'Mira Nair', 'You just have to arrive at the place, it\'s fully furnished and stocked with all basic amenities and services and even your friends are welcome.'),
(7, 3, 'Meghna Gulzar', 'You just have to arrive at the place, it\'s fully furnished and stocked with all basic amenities and services and even your friends are welcome.'),
(8, 4, 'Farah Khan', 'You just have to arrive at the place, it\'s fully furnished and stocked with all basic amenities and services and even your friends are welcome.'),
(9, 5, 'Rajkumar Hirani', 'You just have to arrive at the place, it\'s fully furnished and stocked with all basic amenities and services and even your friends are welcome.'),
(10, 5, 'Sanjay Leela Bhansali', 'You just have to arrive at the place, it\'s fully furnished and stocked with all basic amenities and services and even your friends are welcome.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `full_name` varchar(150) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `gender` enum('male','female') NOT NULL,
  `college_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `full_name`, `phone`, `gender`, `college_name`) VALUES
(18, 'gtmkr1234@gmail.com', '837a77592e5f7c1ba0c6ceb92a2e8fab992db4e8', 'Krishna', '9879816515', 'male', 'jhjh'),
(19, 'rajat@gmail.com', '837a77592e5f7c1ba0c6ceb92a2e8fab992db4e8', 'Rajat', '4844515646', 'male', 'GAK'),
(20, 'arun@gamer.com', '7a8b06488092a02217ecfc66d9d7583f7432e598', 'Arun Kumar', '8734657654', 'male', 'GLA'),
(21, 'lalit@gmail.com', 'fc1a090b95d921f7e4f19d41c4226b314b1c2c98', 'Lalit', '7986546546', 'male', 'GLA'),
(22, 'aryan@gmail.com', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', 'Aryan', '9540668225', 'male', 'GLA University'),
(23, 'a@b.com', '114a42d736ced0dce1affc1e898c69b3998426df', 'Priyanshi', '9540662621', 'female', 'GLA'),
(24, 'akash@gmail.com', '114a42d736ced0dce1affc1e898c69b3998426df', 'Akash', '9789789546', 'male', 'GLA'),
(25, 'ravi@com', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', 'Ravi', '5768546576', 'male', 'hgdjh'),
(26, 'rajat@rajjo.com', 'd35b8780d3048caead2806d8f8b817882e2a5d9c', 'Rajat Rajjo', '7846465465', 'male', 'rajat'),
(27, 'a@bbb.com', 'a694547f110c7a866dc50458abc2ff5c3ae44d96', 'Aryan', '9999777788', 'male', 'GLA'),
(28, '1@1.1', '3d4f2bf07dc1be38b20cd6e46949a1071f9d0e3d', '11', '9999777788', 'male', 'GLA'),
(29, 'a@bcd.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'Aryan', '1234567890', 'male', 'GLA'),
(30, 'aa@bb.com', 'c55e94247fbfc4f11842fc3bd979e5beb5ed1080', 'A', '9638527410', 'male', 'GLA'),
(31, 'k@b.com', '114a42d736ced0dce1affc1e898c69b3998426df', 'Khubchand', '9999988888', 'male', 'GLA'),
(32, 'k@b.com', '114a42d736ced0dce1affc1e898c69b3998426df', 'Khubchand', '9999988888', 'male', 'GLA'),
(33, 'krishna@gmail.com', 'dea742e166979027ae70b28e0a9006fb1010e760', 'Narendra Modi', '8946515464', 'male', 'INDIA');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `amenities`
--
ALTER TABLE `amenities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interested_users_properties`
--
ALTER TABLE `interested_users_properties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `property_id` (`property_id`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `properties_amenities`
--
ALTER TABLE `properties_amenities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `property_id` (`property_id`),
  ADD KEY `amenity_id` (`amenity_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `amenities`
--
ALTER TABLE `amenities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1216;

--
-- AUTO_INCREMENT for table `interested_users_properties`
--
ALTER TABLE `interested_users_properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `properties_amenities`
--
ALTER TABLE `properties_amenities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `interested_users_properties`
--
ALTER TABLE `interested_users_properties`
  ADD CONSTRAINT `interested_users_properties_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `interested_users_properties_ibfk_2` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`);

--
-- Constraints for table `properties`
--
ALTER TABLE `properties`
  ADD CONSTRAINT `properties_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`);

--
-- Constraints for table `properties_amenities`
--
ALTER TABLE `properties_amenities`
  ADD CONSTRAINT `properties_amenities_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`),
  ADD CONSTRAINT `properties_amenities_ibfk_2` FOREIGN KEY (`amenity_id`) REFERENCES `amenities` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
