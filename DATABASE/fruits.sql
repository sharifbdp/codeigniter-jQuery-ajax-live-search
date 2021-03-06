--
-- Database: `fruits`
--

-- --------------------------------------------------------

--
-- Table structure for table `fruits`
--

CREATE TABLE `fruits` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fruits`
--

INSERT INTO `fruits` (`id`, `name`, `created_at`) VALUES
(1, 'Apple', '2012-12-27 18:14:52'),
(2, 'Apricot', '2012-12-27 18:14:53'),
(3, 'Avocado', '2012-12-27 18:14:54'),
(4, 'Banana', '2012-12-27 18:14:55'),
(5, 'Bilberry', '2012-12-27 18:14:56'),
(6, 'Blackberry', '2012-12-27 18:14:57'),
(7, 'Blackcurrant', '2012-12-27 18:14:58'),
(8, 'Blueberry', '2012-12-27 18:14:59'),
(9, 'Boysenberry', '2012-12-27 18:14:01'),
(10, 'Currant', '2012-12-27 18:14:02'),
(11, 'Cherry', '2012-12-27 18:14:03'),
(12, 'Cherimoya', '2012-12-27 18:14:04'),
(13, 'Cloudberry', '2012-12-27 18:14:05'),
(14, 'Coconut', '2012-12-27 18:14:06'),
(15, 'Cranberry', '2012-12-27 18:14:07'),
(16, 'Cucumber', '2012-12-27 18:14:08'),
(17, 'Custard apple', '2012-12-27 18:14:09'),
(18, 'Damson', '2012-12-27 18:14:10'),
(19, 'Date', '2012-12-27 18:14:11'),
(20, 'Dragonfruit', '2012-12-27 18:14:12'),
(21, 'Durian', '2012-12-27 18:14:13'),
(22, 'Elderberry', '2012-12-27 18:14:14'),
(23, 'Feijoa', '2012-12-27 18:14:15'),
(24, 'Fig', '2012-12-27 18:14:16'),
(25, 'Goji berry', '2012-12-27 18:14:17'),
(26, 'Gooseberry', '2012-12-27 18:14:18'),
(27, 'Grape', '2012-12-27 18:14:19'),
(28, 'Raisin', '2012-12-27 18:14:20'),
(29, 'Grapefruit', '2012-12-27 18:14:21'),
(30, 'Guava', '2012-12-27 18:14:22'),
(31, 'Honeyberry', '2012-12-27 18:14:23'),
(32, 'Huckleberry', '2012-12-27 18:14:24'),
(33, 'Jabuticaba', '2012-12-27 18:14:25'),
(34, 'Jackfruit', '2012-12-27 18:14:26'),
(35, 'Jambul', '2012-12-27 18:14:27'),
(36, 'Jujube', '2012-12-27 18:14:28'),
(37, 'Juniper berry', '2012-12-27 18:14:29'),
(38, 'Kiwifruit', '2012-12-27 18:14:30'),
(39, 'Kumquat', '2012-12-27 18:14:31'),
(40, 'Lemon', '2012-12-27 18:14:32'),
(41, 'Lime', '2012-12-27 18:14:33'),
(42, 'Loquat', '2012-12-27 18:14:34'),
(43, 'Longan', '2012-12-27 18:14:35'),
(44, 'Lychee', '2012-12-27 18:14:36'),
(45, 'Mango', '2012-12-27 18:14:37'),
(46, 'Marionberry', '2012-12-27 18:14:38'),
(47, 'Melon', '2012-12-27 18:14:39'),
(48, 'Cantaloupe', '2012-12-27 18:14:40'),
(49, 'Honeydew', '2012-12-27 18:14:41'),
(50, 'Watermelon', '2012-12-27 18:14:42'),
(51, 'Miracle fruit', '2012-12-27 18:14:43'),
(52, 'Mulberry', '2012-12-27 18:14:44'),
(53, 'Nectarine', '2012-12-27 18:14:45'),
(54, 'Nance', '2012-12-27 18:14:46'),
(55, 'Olive', '2012-12-27 18:14:47'),
(56, 'Orange', '2012-12-27 18:14:48'),
(57, 'Blood orange', '2012-12-27 18:14:49'),
(58, 'Clementine', '2012-12-27 18:14:50'),
(59, 'Mandarine', '2012-12-27 18:14:51'),
(60, 'Tangerine', '2012-12-27 18:14:52'),
(61, 'Papaya', '2012-12-27 18:14:53'),
(62, 'Passionfruit', '2012-12-27 18:14:54'),
(63, 'Peach', '2012-12-27 18:14:55'),
(64, 'Pear', '2012-12-27 18:14:56'),
(65, 'Persimmon', '2012-12-27 18:14:57'),
(66, 'Physalis', '2012-12-27 18:14:58'),
(67, 'Plantain', '2012-12-27 18:14:59'),
(68, 'Plum', '2012-12-27 18:13:01'),
(69, 'Prune', '2012-12-27 18:13:02'),
(70, 'Pineapple', '2012-12-27 18:13:03'),
(71, 'Plumcot', '2012-12-27 18:13:04'),
(72, 'Pomegranate', '2012-12-27 18:13:05'),
(73, 'Pomelo', '2012-12-27 18:13:06'),
(74, 'Purple mangosteen', '2012-12-27 18:13:07'),
(75, 'Quince', '2012-12-27 18:13:08'),
(76, 'Raspberry', '2012-12-27 18:13:09'),
(77, 'Salmonberry', '2012-12-27 18:13:10'),
(78, 'Rambutan', '2012-12-27 18:13:11'),
(79, 'Redcurrant', '2012-12-27 18:13:12'),
(80, 'Salal', '2012-12-27 18:13:13'),
(81, 'Salak', '2012-12-27 18:13:14'),
(82, 'Satsuma', '2012-12-27 18:13:15'),
(83, 'Star fruit', '2012-12-27 18:13:16'),
(84, 'Strawberry', '2012-12-27 18:13:17'),
(85, 'Tamarillo', '2012-12-27 18:13:18'),
(86, 'Tamarind', '2012-12-27 18:13:19'),
(87, 'Tomato', '2012-12-27 18:13:20'),
(88, 'Ugli fruit', '2012-12-27 18:13:21'),
(89, 'Yuzu', '2012-12-27 18:13:22');

--
-- Indexes for table `fruits`
--
ALTER TABLE `fruits`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for table `fruits`
--
ALTER TABLE `fruits`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;