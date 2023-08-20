-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2023 at 04:17 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `baby_lc_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `centers`
--

CREATE TABLE `centers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Phone_Number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Goal` int(11) NOT NULL,
  `doses_Number` int(11) NOT NULL,
  `address_town` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailed_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `region_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `children`
--

CREATE TABLE `children` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth_date` date NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `childrenbyages`
--

CREATE TABLE `childrenbyages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `v_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `less_year` int(11) NOT NULL DEFAULT 0,
  `one_to_two_year` int(11) NOT NULL DEFAULT 0,
  `more_year` int(11) NOT NULL DEFAULT 0,
  `daily_record_page_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `civilregistries`
--

CREATE TABLE `civilregistries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth_date` date NOT NULL,
  `national_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `civilregistries`
--

INSERT INTO `civilregistries` (`id`, `created_at`, `updated_at`, `first_name`, `last_name`, `father_name`, `mother_name`, `gender`, `birth_date`, `national_ID`) VALUES
(1, NULL, NULL, 'أيمن', 'ابو سعده', 'عبدالحميد', 'ريهام', 'male', '1982-08-17', '74611760253'),
(2, NULL, NULL, 'أمل', 'الامام', 'شربف', 'حبيبة', 'female', '1987-09-17', '73790081217'),
(3, NULL, NULL, 'انعام', 'السعد', 'رداد', 'ماريا', 'female', '1977-08-16', '47503664186'),
(4, NULL, NULL, 'رنيم', 'الحسين', 'صالح', 'هناء', 'female', '1977-01-02', '48712941238'),
(5, NULL, NULL, 'صقر', 'القطيشات', 'عماد الدين', 'لبنا', 'male', '1959-08-18', '77794465629'),
(6, NULL, NULL, 'حامد', 'الشمالي', 'بشر', 'زين', 'male', '1986-08-18', '75751106118'),
(7, NULL, NULL, 'رعد', 'الطويسات', 'جبرائي', 'ﻟﻮﺗﺸﻴﺎ', 'male', '1983-08-18', '76401962710'),
(8, NULL, NULL, 'رئاد', 'السيوف', 'سركيس', 'سلمى', 'male', '1984-08-18', '79281280939'),
(9, NULL, NULL, 'فخري', 'النشاشيبي', 'سهل', 'منال', 'male', '1976-08-18', '63039349874'),
(10, NULL, NULL, 'ارام', 'المحاميد', 'عبد الناصر', 'جوانا', 'male', '1966-08-18', '39944062842'),
(11, NULL, NULL, 'ضرار', 'ابو سعده', 'مدحت', 'سيلفا', 'male', '1959-08-18', '60399851668'),
(12, NULL, NULL, 'رداد', 'المساعيد', 'ايليا', 'ميريت', 'male', '1961-08-18', '23658470476'),
(13, NULL, NULL, 'رماح', 'الكردي', 'إيهاب', 'ليلى', 'male', '1972-08-18', '90569478277'),
(14, NULL, NULL, 'ايهم', 'السحاقات', 'مدحت', 'احمد', 'male', '1992-08-18', '87290591088'),
(15, NULL, NULL, 'بشار', 'المساعيد', 'تيمور', 'نادين', 'male', '1982-08-18', '73739122167'),
(16, NULL, NULL, 'سفيان', 'الكردي', 'مظهر', 'ينان', 'male', '1981-08-18', '32309480129'),
(17, NULL, NULL, 'مسعد', 'المجالي', 'نادر', 'اروى', 'male', '1988-08-18', '26792534364'),
(18, NULL, NULL, 'حموده', 'السيوف', 'ورد', 'رفاعية', 'male', '1981-08-18', '24674245021'),
(19, NULL, NULL, 'فهد', 'النسور', 'رأفت', 'عنود', 'male', '1988-08-18', '86727228711'),
(20, NULL, NULL, 'كنان', 'الطباع', 'منصف', 'عالية', 'male', '1963-08-18', '29158584170'),
(21, NULL, NULL, 'عملا', 'الكردي', 'بطرس', 'ايمان', 'male', '1987-08-18', '19677681078'),
(22, NULL, NULL, 'وسن', 'النشاشيبي', 'معنصم', 'مريام', 'male', '1963-08-18', '77945346854'),
(23, NULL, NULL, 'عوض', 'الكردي', 'خيرالله', 'هناء', 'male', '1973-08-18', '92868327667'),
(24, NULL, NULL, 'مسعود', 'عابدين', 'هملر', 'أيه', 'male', '1967-08-18', '85830169506'),
(25, NULL, NULL, 'مضر', 'النعيمات', 'عمار', 'أيناس', 'male', '1967-08-18', '82614511784'),
(26, NULL, NULL, 'نجاتي', 'آلهامي', 'دانيال', 'ناديه', 'male', '1975-08-18', '29922785605'),
(27, NULL, NULL, 'حمود', 'الترابين', 'مدين', 'ايفا', 'male', '1966-08-18', '37637631522'),
(28, NULL, NULL, 'فيصل', 'العنانبه', 'بشير', 'زكية', 'male', '1985-08-18', '76754111445'),
(29, NULL, NULL, 'معاد', 'الشريف', 'مارتن', 'زها', 'male', '1960-08-18', '29438153477'),
(30, NULL, NULL, 'رسلان الدين', 'الفاخوري', 'عبدالجليل', 'قمر', 'male', '1992-08-18', '47519631795'),
(31, NULL, NULL, 'معين', 'التلهوني', 'عواد', 'منار', 'male', '1963-08-18', '19358260327'),
(32, NULL, NULL, 'ارام', 'الطباع', 'عبد الرحمان', 'غيفار', 'male', '1972-08-18', '68649239663'),
(33, NULL, NULL, 'عبد الرحيم', 'الامام', 'إياد', 'سماح', 'male', '1992-08-18', '83332793231'),
(34, NULL, NULL, 'عربي', 'الشمالي', 'المعتز', 'مشيرة', 'male', '1984-08-18', '10511007894'),
(35, NULL, NULL, 'مراد', 'الفاعوري', 'قيس', 'ماريان', 'male', '1979-08-18', '94951119138'),
(36, NULL, NULL, 'هشام', 'السيوف', 'مصطغى', 'دالية', 'male', '1980-08-18', '50123650650'),
(37, NULL, NULL, 'بكر', 'الجوابره', 'سلطان', 'ريما', 'male', '1967-08-18', '12981238292'),
(38, NULL, NULL, 'منتصر', 'الحوراني', 'يزن', 'بنان', 'male', '1976-08-18', '97641621856'),
(39, NULL, NULL, 'اوهان', 'الصرايرة', 'نسيم', 'ايمان', 'male', '1981-08-18', '44373213633'),
(40, NULL, NULL, 'سدير', 'القطيشات', 'عدنان', 'هيا', 'male', '1970-08-18', '37233695421'),
(41, NULL, NULL, 'مينا', 'المواجدة', 'حافظ', 'إنعام', 'male', '1977-08-18', '82242509940'),
(42, NULL, NULL, 'وسام الدين', 'عابدين', 'جريس', 'رغد', 'male', '1994-08-18', '18496361774'),
(43, NULL, NULL, 'غالب', 'الريماوي', 'شوان', 'جيسيكا', 'male', '1980-08-18', '37113501913'),
(44, NULL, NULL, 'سلام', 'عجلون', 'عبدالرزاق', 'غيد', 'male', '1962-08-18', '28947338063'),
(45, NULL, NULL, 'حازم', 'الشريف', 'ادريس', 'ميرنا', 'male', '1988-08-18', '80483726779'),
(46, NULL, NULL, 'هشام', 'الفاعوري', 'ناهض', 'وفاء', 'male', '1983-08-18', '25473290033'),
(47, NULL, NULL, 'هادي', 'الصرايرة', 'يعقوب', 'منار', 'male', '1973-08-18', '36438045145'),
(48, NULL, NULL, 'وسام الدين', 'التلهوني', 'حالد', 'سوزانا', 'male', '1958-08-18', '51092398100'),
(49, NULL, NULL, 'عربي', 'الصمادي', 'رضا', 'دنيا', 'male', '1992-08-18', '15191582647'),
(50, NULL, NULL, 'عطا', 'بني صقر', 'كرم', 'فاطمة', 'male', '1967-08-18', '78589819924'),
(51, NULL, NULL, 'عبد الحافظ', 'العلامي', 'عبد الحكيم', 'نعمه', 'male', '1961-08-18', '14695680089'),
(52, NULL, NULL, 'عبدالحليم', 'العضيبات', 'اسحق', 'شيماء', 'male', '1969-08-18', '10891779589'),
(53, NULL, NULL, 'المستبد', 'الحوراني', 'شوكت', 'ليان', 'male', '1982-08-18', '28519906426'),
(54, NULL, NULL, 'مشيل', 'الدعجة', 'نمر', 'رباب', 'male', '1965-08-18', '82018313682'),
(55, NULL, NULL, 'ناردين', 'العمرية', 'مارتن', 'باميلا', 'female', '1966-08-18', '17901134172'),
(56, NULL, NULL, 'هبة', 'القطيشات', 'عماد', 'كلودين', 'female', '1987-08-18', '61520670029'),
(57, NULL, NULL, 'هنادا', 'التلهوني', 'مضر', 'فاطمة', 'female', '1972-08-18', '60671153082'),
(58, NULL, NULL, 'رشا', 'الصرايرة', 'ازد', 'ايام', 'female', '1976-08-18', '77107759030'),
(59, NULL, NULL, 'سنابل', 'ابو سعده', 'شريف', 'جولييت', 'female', '1973-08-18', '35571816914'),
(60, NULL, NULL, 'نجوان', 'الرفاعي', 'تركي', 'آلاء', 'female', '1971-08-18', '24901841190'),
(61, NULL, NULL, 'زينة', 'الغريب', 'رافي', 'ملاك', 'female', '1987-08-18', '50645193220'),
(62, NULL, NULL, 'سنريت', 'الزعبية', 'جبر', 'نجوان', 'female', '1974-08-18', '96067555654'),
(63, NULL, NULL, 'فايزة', 'عقلة', 'غسان', 'إباء', 'female', '1963-08-18', '17736823631'),
(64, NULL, NULL, 'ناتاشا', 'الشريدة', 'عزالدين', 'شفاء', 'female', '1990-08-18', '94831371992'),
(65, NULL, NULL, 'نور', 'عجلون', 'حموده', 'صبرين', 'female', '1990-08-18', '42627199052'),
(66, NULL, NULL, 'لاري', 'الجبارات', 'عزام', 'ميسم', 'female', '1970-08-18', '45210658793'),
(67, NULL, NULL, 'رغدة', 'طلفاح', 'سائد', 'زكية', 'female', '1970-08-18', '52052938791'),
(68, NULL, NULL, 'ابراهيم', 'سحاب', 'زيد', 'رجاء', 'female', '1992-08-18', '97511203540'),
(69, NULL, NULL, 'بشائر', 'آلهامي', 'شهم', 'هناء', 'female', '1963-08-18', '31745001608'),
(70, NULL, NULL, 'نهيدة', 'ضميدات', 'حمودة', 'تسنيم', 'female', '1965-08-18', '91378210830'),
(71, NULL, NULL, 'وسيم', 'النسور', 'امير', 'سمية', 'female', '1986-08-18', '82498753140'),
(72, NULL, NULL, 'سندس', 'الشامي', 'ركان', 'ضحى', 'female', '1980-08-18', '62938499150'),
(73, NULL, NULL, 'ولاء', 'الشطناوي', 'هادي', 'اعتدال', 'female', '1995-08-18', '68926586040'),
(74, NULL, NULL, 'أصاله', 'الرفاعي', 'سري', 'أسيل', 'female', '1983-08-18', '29101348893'),
(75, NULL, NULL, 'دارين', 'عجلون', 'تشارلي', 'غزل', 'female', '1966-08-18', '59030337660'),
(76, NULL, NULL, 'سباتا', 'المعشر', 'حسام', 'جوسيت', 'female', '1972-08-18', '75614161667'),
(77, NULL, NULL, 'احمد', 'الطباع', 'رغيد', 'لين', 'female', '1991-08-18', '65110344921'),
(78, NULL, NULL, 'ابرار', 'آلهامي', 'خليل', 'أمل', 'female', '1972-08-18', '11165714530'),
(79, NULL, NULL, 'نهى', 'ابو سعده', 'سمير', 'جود', 'female', '1964-08-18', '94593117844'),
(80, NULL, NULL, 'رنين', 'الامام', 'حامد', 'بشرى', 'female', '1992-08-18', '80621538049'),
(81, NULL, NULL, 'إباء', 'التلهوني', 'ضياء', 'نجوان', 'female', '1984-08-18', '30711659435'),
(82, NULL, NULL, 'بشرى', 'الرفاعي', 'مسعود', 'ابتهاج', 'female', '1981-08-18', '55800451963'),
(83, NULL, NULL, 'نداء', 'الطراونة', 'فجر', 'دنيا', 'female', '1995-08-18', '78429188381'),
(84, NULL, NULL, 'زمان', 'الغريب', 'سكوت', 'روزين', 'female', '1984-08-18', '58050055235'),
(85, NULL, NULL, 'تهاني', 'الجبارات', 'عبد السميع', 'ريناتا', 'female', '1985-08-18', '27367475944'),
(86, NULL, NULL, 'أيات', 'ابو سعده', 'عبد الفتاح', 'ايناس', 'female', '1978-08-18', '36097802582'),
(87, NULL, NULL, 'أمل', 'الامام', 'مصطفى', 'ابراهيم', 'female', '1992-08-18', '61476947672'),
(88, NULL, NULL, 'بيسان', 'العضيبات', 'ازد', 'ناتالي', 'female', '1964-08-18', '54291581087'),
(89, NULL, NULL, 'نهيدة', 'الامام', 'خلدون', 'أروى', 'female', '1974-08-18', '27144868635'),
(90, NULL, NULL, 'شريفة', 'ابو يوسف', 'عبد الرزاق', 'ميار', 'female', '1966-08-18', '87549665817'),
(91, NULL, NULL, 'آثار', 'وادي', 'حسن', 'نجوى', 'female', '1996-08-18', '79221998221'),
(92, NULL, NULL, 'أصاله', 'وادي', 'نورالدين', 'اريج', 'female', '1973-08-18', '34611830792'),
(93, NULL, NULL, 'بسمة', 'المساعيد', 'عبدالسلام', 'اكرام', 'female', '1983-08-18', '89858696080'),
(94, NULL, NULL, 'إباء', 'الكركي', 'عمرو', 'ميلاء', 'female', '1965-08-18', '34110026080'),
(95, NULL, NULL, 'راما', 'المواجدة', 'حسين', 'سباتا', 'female', '1985-08-18', '15864832384'),
(96, NULL, NULL, 'حليمة', 'الطويسات', 'عمران', 'بلقيس', 'female', '1975-08-18', '98094236623'),
(97, NULL, NULL, 'كوثر', 'معاني', 'تحسين', 'سوسن', 'female', '1997-08-18', '45601112154'),
(98, NULL, NULL, 'اخلاص', 'السعد', 'عبدالناصر', 'تالة', 'female', '1981-08-18', '85846097089'),
(99, NULL, NULL, 'وداد', 'الصرايرة', 'حمد', 'ليان', 'female', '1986-08-18', '20661220683'),
(100, NULL, NULL, 'ؤقهسفغ', 'الجوابره', 'خليل', 'اسما', 'female', '1966-08-18', '47736429277'),
(101, NULL, NULL, 'اسامة', 'الصنات', 'لؤي', 'نهيدة', 'female', '1968-08-18', '89451129764'),
(102, NULL, NULL, 'فيفيان', 'الصمادي', 'اوسم', 'لورا', 'female', '1996-08-18', '23330473898'),
(103, NULL, NULL, 'صفا', 'الجوابره', 'عبد الحافظ', 'ميرا', 'female', '1987-08-18', '43026468919'),
(104, NULL, NULL, 'ناريمان', 'الكركي', 'حافظ', 'ساجده', 'female', '1986-08-18', '66100577844');

-- --------------------------------------------------------

--
-- Table structure for table `consumersruins`
--

CREATE TABLE `consumersruins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `v_su_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer` int(11) NOT NULL DEFAULT 0,
  `ruin` int(11) NOT NULL DEFAULT 0,
  `daily_record_page_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dailyrecordlines`
--

CREATE TABLE `dailyrecordlines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `card_ID_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '-',
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `daily_record_page_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dailyrecordpages`
--

CREATE TABLE `dailyrecordpages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `session_date` date NOT NULL,
  `males_number` int(11) NOT NULL DEFAULT 0,
  `females_number` int(11) NOT NULL DEFAULT 0,
  `children_number` int(11) NOT NULL DEFAULT 0,
  `protected_Number` int(11) NOT NULL DEFAULT 0,
  `unprotected_Number` int(11) NOT NULL DEFAULT 0,
  `center_id` bigint(20) UNSIGNED NOT NULL,
  `vaccine_session_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `directorates`
--

CREATE TABLE `directorates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `governorate_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `directorates`
--

INSERT INTO `directorates` (`id`, `created_at`, `updated_at`, `name`, `governorate_id`, `user_id`) VALUES
(1, '2023-08-18 14:03:50', '2023-08-18 14:03:50', 'Directorate Damascus Countryside', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dropoutsrecord`
--

CREATE TABLE `dropoutsrecord` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `month` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_ID_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `due_doses` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `report_date` date NOT NULL,
  `report_method` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cause_leaky` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `response_date` date DEFAULT NULL,
  `execute_doses` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `center_id` bigint(20) UNSIGNED NOT NULL,
  `vaccine_card_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `governorates`
--

CREATE TABLE `governorates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `governorates`
--

INSERT INTO `governorates` (`id`, `created_at`, `updated_at`, `name`) VALUES
(1, '2023-08-18 14:03:50', '2023-08-18 14:03:50', 'حلب'),
(2, '2023-08-18 14:03:50', '2023-08-18 14:03:50', 'دمشق'),
(3, '2023-08-18 14:03:50', '2023-08-18 14:03:50', 'ريف دمشق'),
(4, '2023-08-18 14:03:50', '2023-08-18 14:03:50', 'درعا'),
(5, '2023-08-18 14:03:50', '2023-08-18 14:03:50', 'دير الزور'),
(6, '2023-08-18 14:03:50', '2023-08-18 14:03:50', 'حماة'),
(7, '2023-08-18 14:03:50', '2023-08-18 14:03:50', 'الحسكة'),
(8, '2023-08-18 14:03:50', '2023-08-18 14:03:50', 'حمص'),
(9, '2023-08-18 14:03:50', '2023-08-18 14:03:50', 'إدلب'),
(10, '2023-08-18 14:03:50', '2023-08-18 14:03:50', 'اللاذقية'),
(11, '2023-08-18 14:03:50', '2023-08-18 14:03:50', 'القنيطرة'),
(12, '2023-08-18 14:03:50', '2023-08-18 14:03:50', 'الرقة'),
(13, '2023-08-18 14:03:50', '2023-08-18 14:03:50', 'السويداء'),
(14, '2023-08-18 14:03:50', '2023-08-18 14:03:50', 'طرطوس');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_05_27_195910_create_Centers_table', 1),
(6, '2023_05_27_195910_create_ChildrenByAges_table', 1),
(7, '2023_05_27_195910_create_Children_table', 1),
(8, '2023_05_27_195910_create_CivilRegistries_table', 1),
(9, '2023_05_27_195910_create_ConsumersRuins_table', 1),
(10, '2023_05_27_195910_create_DailyRecordLines_table', 1),
(11, '2023_05_27_195910_create_DailyRecordPages_table', 1),
(12, '2023_05_27_195910_create_Directorates_table', 1),
(13, '2023_05_27_195910_create_DropoutsRecord_table', 1),
(14, '2023_05_27_195910_create_Governorates_table', 1),
(15, '2023_05_27_195910_create_MonthlyReports_table', 1),
(16, '2023_05_27_195910_create_Notifications_table', 1),
(17, '2023_05_27_195910_create_Nurses_table', 1),
(18, '2023_05_27_195910_create_Parents_table', 1),
(19, '2023_05_27_195910_create_ProtectedStudyMReport_table', 1),
(20, '2023_05_27_195910_create_PublicRecordLines_table', 1),
(21, '2023_05_27_195910_create_PublicRecordPages_table', 1),
(22, '2023_05_27_195910_create_Regions_table', 1),
(23, '2023_05_27_195910_create_SideEffectsMReport_table', 1),
(24, '2023_05_27_195910_create_Supplies_table', 1),
(25, '2023_05_27_195910_create_TPDosesMReport_table', 1),
(26, '2023_05_27_195910_create_VSuMReport_table', 1),
(27, '2023_05_27_195910_create_VaccineAppForms_table', 1),
(28, '2023_05_27_195910_create_VaccineCardLines_table', 1),
(29, '2023_05_27_195910_create_VaccineCards_table', 1),
(30, '2023_05_27_195910_create_VaccineDosesMReport_table', 1),
(31, '2023_05_27_195910_create_VaccineSessions_table', 1),
(32, '2023_05_27_195910_create_VaccinesExecutDaily_table', 1),
(33, '2023_05_27_195910_create_VaccinesExecutPublic_table', 1),
(34, '2023_05_27_195910_create_Vaccines_table', 1),
(35, '2023_05_27_222213_create_towns_table', 1),
(36, '2023_06_25_130213_create_permission_tables', 1),
(37, '2023_07_27_195920_create_foreign_keys', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Table structure for table `monthlyreports`
--

CREATE TABLE `monthlyreports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `directorate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `region` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `center` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `month` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scheduled_sessions_Number` int(11) NOT NULL DEFAULT 0,
  `Executed_sessions_Number` int(11) NOT NULL DEFAULT 0,
  `children_less_five_year_Number` int(11) NOT NULL DEFAULT 0,
  `males_Number` int(11) NOT NULL DEFAULT 0,
  `females_Number` int(11) NOT NULL DEFAULT 0,
  `leaky_Number` int(11) NOT NULL DEFAULT 0,
  `followed_ch_Number` int(11) NOT NULL DEFAULT 0,
  `st_Official_Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `center_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `status_reading` tinyint(1) NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nurses`
--

CREATE TABLE `nurses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `national_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `center_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parents`
--

CREATE TABLE `parents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `father_firstName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_lastName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `national_ID_Father` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_firstName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_lastName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `national_ID_Mother` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_Number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobilePhone_Number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_governorate` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_region` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_town` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailed_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `protectedstudymreport`
--

CREATE TABLE `protectedstudymreport` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `protected_Number` int(11) NOT NULL DEFAULT 0,
  `unprotected_Number` int(11) NOT NULL DEFAULT 0,
  `protected_ratio` int(11) NOT NULL DEFAULT 0,
  `monthly_report_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `publicrecordlines`
--

CREATE TABLE `publicrecordlines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `serial_Number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_childe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth_date` date NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '-',
  `public_record_page_id` bigint(20) UNSIGNED NOT NULL,
  `vaccine_card_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `publicrecordpages`
--

CREATE TABLE `publicrecordpages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `page_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `center_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE `regions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `directorate_id` bigint(20) UNSIGNED NOT NULL,
  `governorate_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `regions`
--

INSERT INTO `regions` (`id`, `created_at`, `updated_at`, `Name`, `directorate_id`, `governorate_id`) VALUES
(1, '2023-08-18 14:03:50', '2023-08-18 14:03:50', 'حرستا', 1, 3),
(2, '2023-08-18 14:03:50', '2023-08-18 14:03:50', 'دوما', 1, 3),
(3, '2023-08-18 14:03:50', '2023-08-18 14:03:50', 'النشابية', 1, 3),
(4, '2023-08-18 14:03:50', '2023-08-18 14:03:50', 'القطيفة', 1, 3),
(5, '2023-08-18 14:03:50', '2023-08-18 14:03:50', 'التل', 1, 3),
(6, '2023-08-18 14:03:51', '2023-08-18 14:03:51', 'داريا', 1, 3),
(7, '2023-08-18 14:03:51', '2023-08-18 14:03:51', 'الكسوة', 1, 3),
(8, '2023-08-18 14:03:51', '2023-08-18 14:03:51', 'قطنا', 1, 3),
(9, '2023-08-18 14:03:51', '2023-08-18 14:03:51', 'النبك', 1, 3),
(10, '2023-08-18 14:03:51', '2023-08-18 14:03:51', 'يبرود', 1, 3),
(11, '2023-08-18 14:03:51', '2023-08-18 14:03:51', 'الزبداني', 1, 3),
(12, '2023-08-18 14:03:51', '2023-08-18 14:03:51', 'قدسيا', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2023-08-18 14:03:50', '2023-08-18 14:03:50'),
(2, 'Center', 'user-api', '2023-08-18 14:03:50', '2023-08-18 14:03:50');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sideeffectsmreport`
--

CREATE TABLE `sideeffectsmreport` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `lumphadenitis` int(11) NOT NULL DEFAULT 0,
  `ISa` int(11) NOT NULL DEFAULT 0,
  `twitch` int(11) NOT NULL DEFAULT 0,
  `anaphylactic_shock` int(11) NOT NULL DEFAULT 0,
  `other_effects` int(11) NOT NULL DEFAULT 0,
  `monthly_report_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supplies`
--

CREATE TABLE `supplies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `towns`
--

CREATE TABLE `towns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `region_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `towns`
--

INSERT INTO `towns` (`id`, `name`, `region_id`, `created_at`, `updated_at`) VALUES
(1, 'جرمانا', 1, '2023-08-18 14:03:50', '2023-08-18 14:03:50'),
(2, 'ضاحية الأسد', 1, '2023-08-18 14:03:50', '2023-08-18 14:03:50'),
(3, 'سقبا', 1, '2023-08-18 14:03:50', '2023-08-18 14:03:50'),
(4, 'حمورية', 1, '2023-08-18 14:03:50', '2023-08-18 14:03:50'),
(5, 'مسرابا', 1, '2023-08-18 14:03:50', '2023-08-18 14:03:50'),
(6, 'عين ترما', 1, '2023-08-18 14:03:50', '2023-08-18 14:03:50'),
(7, 'عربين', 1, '2023-08-18 14:03:50', '2023-08-18 14:03:50'),
(8, 'زملكا', 1, '2023-08-18 14:03:50', '2023-08-18 14:03:50'),
(9, 'المليحة', 1, '2023-08-18 14:03:50', '2023-08-18 14:03:50'),
(10, 'شبعا', 1, '2023-08-18 14:03:50', '2023-08-18 14:03:50'),
(11, 'دير العصافير', 1, '2023-08-18 14:03:50', '2023-08-18 14:03:50'),
(12, 'حتيتة التركمان', 1, '2023-08-18 14:03:50', '2023-08-18 14:03:50'),
(13, 'كفر بطنا', 1, '2023-08-18 14:03:50', '2023-08-18 14:03:50'),
(14, 'زبدين', 1, '2023-08-18 14:03:50', '2023-08-18 14:03:50'),
(15, 'بيت سوى', 1, '2023-08-18 14:03:50', '2023-08-18 14:03:50'),
(16, 'الضمير', 2, '2023-08-18 14:03:50', '2023-08-18 14:03:50'),
(17, 'عدرا العمالية', 2, '2023-08-18 14:03:50', '2023-08-18 14:03:50'),
(18, 'حفير التحتا', 2, '2023-08-18 14:03:50', '2023-08-18 14:03:50'),
(19, 'عدرا الصناعية', 2, '2023-08-18 14:03:50', '2023-08-18 14:03:50'),
(20, 'دوما البلد', 2, '2023-08-18 14:03:50', '2023-08-18 14:03:50'),
(21, 'الغزلانية', 3, '2023-08-18 14:03:50', '2023-08-18 14:03:50'),
(22, 'الهيجانة', 3, '2023-08-18 14:03:50', '2023-08-18 14:03:50'),
(23, 'جديدة الخاص', 3, '2023-08-18 14:03:50', '2023-08-18 14:03:50'),
(24, 'الكفرين', 3, '2023-08-18 14:03:50', '2023-08-18 14:03:50'),
(25, 'البيطارية', 3, '2023-08-18 14:03:50', '2023-08-18 14:03:50'),
(26, 'غسولة', 3, '2023-08-18 14:03:50', '2023-08-18 14:03:50'),
(27, 'سكا', 3, '2023-08-18 14:03:50', '2023-08-18 14:03:50'),
(28, 'محطة تشرين الحرارية', 3, '2023-08-18 14:03:50', '2023-08-18 14:03:50'),
(29, 'النشابية', 3, '2023-08-18 14:03:50', '2023-08-18 14:03:50'),
(30, 'العتيبة', 3, '2023-08-18 14:03:50', '2023-08-18 14:03:50'),
(31, 'العبادة', 3, '2023-08-18 14:03:50', '2023-08-18 14:03:50'),
(32, 'القاسمية', 3, '2023-08-18 14:03:50', '2023-08-18 14:03:50'),
(33, 'الميدعاني', 3, '2023-08-18 14:03:50', '2023-08-18 14:03:50'),
(34, 'الجربا', 3, '2023-08-18 14:03:50', '2023-08-18 14:03:50'),
(35, 'حران العواميد', 3, '2023-08-18 14:03:50', '2023-08-18 14:03:50'),
(36, 'الأحمدية', 3, '2023-08-18 14:03:50', '2023-08-18 14:03:50'),
(37, 'القيسا', 3, '2023-08-18 14:03:50', '2023-08-18 14:03:50'),
(38, 'البلالية', 3, '2023-08-18 14:03:50', '2023-08-18 14:03:50'),
(39, 'المنصورة', 3, '2023-08-18 14:03:50', '2023-08-18 14:03:50'),
(40, 'تل مسكن', 3, '2023-08-18 14:03:50', '2023-08-18 14:03:50'),
(41, 'القطيفة البلد', 4, '2023-08-18 14:03:50', '2023-08-18 14:03:50'),
(42, 'جيرود', 4, '2023-08-18 14:03:50', '2023-08-18 14:03:50'),
(43, 'الرحيبة', 4, '2023-08-18 14:03:50', '2023-08-18 14:03:50'),
(44, 'معضمية القلمون', 4, '2023-08-18 14:03:50', '2023-08-18 14:03:50'),
(45, 'حلا', 4, '2023-08-18 14:03:50', '2023-08-18 14:03:50'),
(46, 'معلولا', 4, '2023-08-18 14:03:50', '2023-08-18 14:03:50'),
(47, 'التواني', 4, '2023-08-18 14:03:50', '2023-08-18 14:03:50'),
(48, 'جبعدين', 4, '2023-08-18 14:03:50', '2023-08-18 14:03:50'),
(49, 'عين التينة', 4, '2023-08-18 14:03:50', '2023-08-18 14:03:50'),
(50, 'الناصرية', 4, '2023-08-18 14:03:50', '2023-08-18 14:03:50'),
(51, 'العطنة', 4, '2023-08-18 14:03:50', '2023-08-18 14:03:50'),
(52, 'التل البلد', 5, '2023-08-18 14:03:50', '2023-08-18 14:03:50'),
(53, 'رنكوس', 5, '2023-08-18 14:03:50', '2023-08-18 14:03:50'),
(54, 'بدا', 5, '2023-08-18 14:03:50', '2023-08-18 14:03:50'),
(55, 'حفير الفوقا', 5, '2023-08-18 14:03:50', '2023-08-18 14:03:50'),
(56, 'معربا', 5, '2023-08-18 14:03:50', '2023-08-18 14:03:50'),
(57, 'الدريج', 5, '2023-08-18 14:03:50', '2023-08-18 14:03:50'),
(58, 'منين', 5, '2023-08-18 14:03:50', '2023-08-18 14:03:50'),
(59, 'حلبون', 5, '2023-08-18 14:03:50', '2023-08-18 14:03:50'),
(60, 'تلفيتا', 5, '2023-08-18 14:03:50', '2023-08-18 14:03:50'),
(61, 'حرنة الشرقية', 5, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(62, 'ضاحية البعث', 5, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(63, 'صيدنايا', 5, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(64, 'معرة صيدنايا', 5, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(65, 'معرونة', 5, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(66, 'عكوبر', 5, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(67, 'حوش عرب', 5, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(68, 'رأفت هناوي', 6, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(69, 'رائد شعبان', 6, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(70, 'ضاحية 8 أذار', 6, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(71, 'معضمية الشام', 6, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(72, 'خربة الورد', 6, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(73, 'السيدة زينب', 6, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(74, 'ضاحية الحسينية', 6, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(75, 'عقربا', 6, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(76, 'يلدا', 6, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(77, 'بيت سحم', 6, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(78, 'ببيلا', 6, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(79, 'السبينة', 6, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(80, 'داريا البلد', 6, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(81, 'حجيرة', 6, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(82, 'البويضة', 6, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(83, 'الكسوة البلد', 7, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(84, 'زاكيا', 7, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(85, 'الحرجلة', 7, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(86, 'المقيلبية', 7, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(87, 'خيارة الدنون', 7, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(88, 'الطيبة', 7, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(89, 'الزريقية', 7, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(90, 'عين السودا', 7, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(91, 'الدرخبية', 7, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(92, 'العادلية', 7, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(93, 'قطنا البلد', 8, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(94, 'جديدة عرطوز', 8, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(95, 'منشية خان الشيح', 8, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(96, 'دروشا', 8, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(97, 'سعسع', 8, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(98, 'كناكر', 8, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(99, 'دير ماكر', 8, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(100, 'الحرمون', 8, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(101, 'بيت جن', 8, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(102, 'حينة', 8, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(103, 'كفر حور', 8, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(104, 'بيت تيما', 8, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(105, 'قلعة جندل', 8, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(106, 'عرنة', 8, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(107, 'الصبورة', 8, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(108, 'بيت سابر', 8, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(109, 'يعفور', 8, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(110, 'رسم الطحين', 8, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(111, 'دربل', 8, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(112, 'امببيا', 8, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(113, 'حرفا', 8, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(114, 'ضاحية 16 تشرين', 8, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(115, 'رخلة', 8, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(116, 'بقعسم', 8, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(117, 'نبك البلد', 9, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(118, 'دير عطية', 9, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(119, 'قارة', 9, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(120, 'الحميرة', 9, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(121, 'جراجير', 9, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(122, 'السحل', 9, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(123, 'القسطل', 9, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(124, 'المراح', 9, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(125, 'المشرفة', 9, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(126, 'يبرود البلد', 10, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(127, 'رأس المعرة', 10, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(128, 'الجبة', 10, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(129, 'عسال الورد', 10, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(130, 'رأس العين', 10, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(131, 'الصرخة', 10, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(132, 'بلودان', 11, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(133, 'مضايا', 11, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(134, 'سرغايا', 11, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(135, 'الروضة', 11, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(136, 'عين حور', 11, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(137, 'الزبداني الغربية', 11, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(138, 'جديدة يابوس', 11, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(139, 'بقين', 11, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(140, 'قدسيا البلد', 12, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(141, 'ضاحية قدسيا', 12, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(142, 'وادي بردى', 12, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(143, 'الديماس', 12, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(144, 'دير قانون', 12, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(145, 'دير مقرن', 12, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(146, 'كفر العواميد', 12, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(147, 'الحسينية', 12, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(148, 'قرى الأسد', 12, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(149, 'كفير الزيت', 12, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(150, 'الهامة', 12, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(151, 'جديدة الوادي', 12, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(152, 'اشرفية الوادي', 12, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(153, 'أفرة', 12, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(154, 'جبل الورد', 12, '2023-08-18 14:03:51', '2023-08-18 14:03:51'),
(155, 'هريرة', 12, '2023-08-18 14:03:51', '2023-08-18 14:03:51');

-- --------------------------------------------------------

--
-- Table structure for table `tpdosesmreport`
--

CREATE TABLE `tpdosesmreport` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pregnants` int(11) NOT NULL DEFAULT 0,
  `Unpregnants` int(11) NOT NULL DEFAULT 0,
  `sum` int(11) NOT NULL DEFAULT 0,
  `monthly_report_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_active` tinyint(1) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `email_verified_at`, `password`, `type_user`, `status_active`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'baby.lc.admin@gmail.com', NULL, '$2y$10$VrKrEaQhpPnSGEnBltX8J.Kucjp//5fGQEmZW1Z1ya5Wqj1Maw4ta', 'admin', 1, NULL, '2023-08-18 14:03:50', '2023-08-18 14:03:50');

-- --------------------------------------------------------

--
-- Table structure for table `vaccineappforms`
--

CREATE TABLE `vaccineappforms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `month` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `v_su_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exp` date DEFAULT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `directorate_id` bigint(20) UNSIGNED NOT NULL,
  `center_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vaccinecardlines`
--

CREATE TABLE `vaccinecardlines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `v_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `v_date` date NOT NULL,
  `v_center` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `v_nurse_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `next_visit` date NOT NULL,
  `vaccine_card_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vaccinecards`
--

CREATE TABLE `vaccinecards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `number_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `region` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `governorate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `center` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number_center` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_leaky` tinyint(1) NOT NULL DEFAULT 0,
  `childe_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vaccinedosesmreport`
--

CREATE TABLE `vaccinedosesmreport` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `v_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lees_year` int(11) NOT NULL DEFAULT 0,
  `12_to_23_month` int(11) NOT NULL DEFAULT 0,
  `24_to_60_month` int(11) NOT NULL DEFAULT 0,
  `sum` int(11) NOT NULL DEFAULT 0,
  `goal` int(11) NOT NULL DEFAULT 0,
  `coverage` int(11) NOT NULL DEFAULT 0,
  `monthly_report_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vaccines`
--

CREATE TABLE `vaccines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `due_month_of_Age` int(11) NOT NULL,
  `doses_number` int(11) NOT NULL,
  `AD` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vaccines`
--

INSERT INTO `vaccines` (`id`, `created_at`, `updated_at`, `name_ar`, `name_en`, `due_month_of_Age`, `doses_number`, `AD`) VALUES
(1, '2023-08-18 14:03:50', '2023-08-18 14:03:50', 'السل', 'BCG', 0, 20, '0.05'),
(2, '2023-08-18 14:03:50', '2023-08-18 14:03:50', 'الكبد 1', 'Hep 1', 0, 1, '0.5'),
(3, '2023-08-18 14:03:50', '2023-08-18 14:03:50', 'شلل صفر', 'bopv 0', 0, 20, '-'),
(4, '2023-08-18 14:03:50', '2023-08-18 14:03:50', 'اللقاح الحاوي على الرباعي 1', 'DTwp-Hib-HepB 1', 2, 10, '0.5'),
(5, '2023-08-18 14:03:50', '2023-08-18 14:03:50', 'شلل عضلي 1', 'Ipv 1', 2, 10, '0.5'),
(6, '2023-08-18 14:03:50', '2023-08-18 14:03:50', 'الكبد 2', 'Hep 2', 2, 1, '0.5'),
(7, '2023-08-18 14:03:50', '2023-08-18 14:03:50', 'اللقاح الحاوي على الرباعي 2', 'DTwp-Hib-HepB 2', 4, 10, '0.5'),
(8, '2023-08-18 14:03:50', '2023-08-18 14:03:50', 'شلل عضلي 2', 'Ipv 2', 4, 10, '0.5'),
(9, '2023-08-18 14:03:50', '2023-08-18 14:03:50', 'اللقاح الحاوي على الرباعي 3', 'DTwp-Hib-HepB 3', 6, 10, '0.5'),
(10, '2023-08-18 14:03:50', '2023-08-18 14:03:50', 'شلل فموي 1', 'bopv 1', 6, 20, '-'),
(11, '2023-08-18 14:03:50', '2023-08-18 14:03:50', 'الكبد 3', 'Hep 3', 6, 1, '0.5'),
(12, '2023-08-18 14:03:50', '2023-08-18 14:03:50', 'MMR 1', 'MMR 1', 12, 10, '0.5'),
(13, '2023-08-18 14:03:50', '2023-08-18 14:03:50', 'شلل فموي 2', 'bopv 2', 12, 20, '-'),
(14, '2023-08-18 14:03:50', '2023-08-18 14:03:50', 'فيتامين أ جرعة أولى', 'Vit A 1', 12, 1, '-'),
(15, '2023-08-18 14:03:50', '2023-08-18 14:03:50', 'MMR 2', 'MMR 2', 18, 10, '0.5'),
(16, '2023-08-18 14:03:50', '2023-08-18 14:03:50', 'شلل فموي داعمة', 'bopv supportive', 18, 20, '-'),
(17, '2023-08-18 14:03:50', '2023-08-18 14:03:50', 'اللقاح الحاوي على الرباعي الداعم', 'DTwp-Hib-HepB supportive', 18, 10, '0.5'),
(18, '2023-08-18 14:03:50', '2023-08-18 14:03:50', 'فيتامين أ جرعة ثانية', 'Vit A 2', 18, 1, '-');

-- --------------------------------------------------------

--
-- Table structure for table `vaccinesessions`
--

CREATE TABLE `vaccinesessions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name_day` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `nurse_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `center_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vaccinesexecutdaily`
--

CREATE TABLE `vaccinesexecutdaily` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `v_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `execute` tinyint(1) NOT NULL,
  `daily_record_line_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vaccinesexecutpublic`
--

CREATE TABLE `vaccinesexecutpublic` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `v_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `execute_date` date NOT NULL,
  `public_record_line_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vsumreport`
--

CREATE TABLE `vsumreport` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `v_su_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_last_month` int(11) NOT NULL DEFAULT 0,
  `receiv_month` int(11) NOT NULL DEFAULT 0,
  `M_month` int(11) NOT NULL DEFAULT 0,
  `ruin` int(11) NOT NULL DEFAULT 0,
  `consumer_month` int(11) NOT NULL DEFAULT 0,
  `finaly_month` int(11) NOT NULL DEFAULT 0,
  `V_Doses_Execute` int(11) NOT NULL DEFAULT 0,
  `WP` int(11) NOT NULL DEFAULT 0,
  `monthly_report_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `centers`
--
ALTER TABLE `centers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `centers_region_id_foreign` (`region_id`),
  ADD KEY `centers_user_id_foreign` (`user_id`);

--
-- Indexes for table `children`
--
ALTER TABLE `children`
  ADD PRIMARY KEY (`id`),
  ADD KEY `children_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `childrenbyages`
--
ALTER TABLE `childrenbyages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `childrenbyages_daily_record_page_id_foreign` (`daily_record_page_id`);

--
-- Indexes for table `civilregistries`
--
ALTER TABLE `civilregistries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `consumersruins`
--
ALTER TABLE `consumersruins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `consumersruins_daily_record_page_id_foreign` (`daily_record_page_id`);

--
-- Indexes for table `dailyrecordlines`
--
ALTER TABLE `dailyrecordlines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dailyrecordlines_daily_record_page_id_foreign` (`daily_record_page_id`);

--
-- Indexes for table `dailyrecordpages`
--
ALTER TABLE `dailyrecordpages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dailyrecordpages_center_id_foreign` (`center_id`),
  ADD KEY `dailyrecordpages_vaccine_session_id_foreign` (`vaccine_session_id`);

--
-- Indexes for table `directorates`
--
ALTER TABLE `directorates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directorates_governorate_id_foreign` (`governorate_id`),
  ADD KEY `directorates_user_id_foreign` (`user_id`);

--
-- Indexes for table `dropoutsrecord`
--
ALTER TABLE `dropoutsrecord`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dropoutsrecord_center_id_foreign` (`center_id`),
  ADD KEY `dropoutsrecord_vaccine_card_id_foreign` (`vaccine_card_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `governorates`
--
ALTER TABLE `governorates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `monthlyreports`
--
ALTER TABLE `monthlyreports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `monthlyreports_center_id_foreign` (`center_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_user_id_foreign` (`user_id`);

--
-- Indexes for table `nurses`
--
ALTER TABLE `nurses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nurses_center_id_foreign` (`center_id`);

--
-- Indexes for table `parents`
--
ALTER TABLE `parents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `parents_national_id_father_unique` (`national_ID_Father`),
  ADD UNIQUE KEY `parents_national_id_mother_unique` (`national_ID_Mother`),
  ADD KEY `parents_user_id_foreign` (`user_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `protectedstudymreport`
--
ALTER TABLE `protectedstudymreport`
  ADD PRIMARY KEY (`id`),
  ADD KEY `protectedstudymreport_monthly_report_id_foreign` (`monthly_report_id`);

--
-- Indexes for table `publicrecordlines`
--
ALTER TABLE `publicrecordlines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `publicrecordlines_public_record_page_id_foreign` (`public_record_page_id`),
  ADD KEY `publicrecordlines_vaccine_card_id_foreign` (`vaccine_card_id`);

--
-- Indexes for table `publicrecordpages`
--
ALTER TABLE `publicrecordpages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `publicrecordpages_center_id_foreign` (`center_id`);

--
-- Indexes for table `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `regions_directorate_id_foreign` (`directorate_id`),
  ADD KEY `regions_governorate_id_foreign` (`governorate_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sideeffectsmreport`
--
ALTER TABLE `sideeffectsmreport`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sideeffectsmreport_monthly_report_id_foreign` (`monthly_report_id`);

--
-- Indexes for table `supplies`
--
ALTER TABLE `supplies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `towns`
--
ALTER TABLE `towns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `towns_region_id_foreign` (`region_id`);

--
-- Indexes for table `tpdosesmreport`
--
ALTER TABLE `tpdosesmreport`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tpdosesmreport_monthly_report_id_foreign` (`monthly_report_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vaccineappforms`
--
ALTER TABLE `vaccineappforms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vaccineappforms_directorate_id_foreign` (`directorate_id`),
  ADD KEY `vaccineappforms_center_id_foreign` (`center_id`);

--
-- Indexes for table `vaccinecardlines`
--
ALTER TABLE `vaccinecardlines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vaccinecardlines_vaccine_card_id_foreign` (`vaccine_card_id`);

--
-- Indexes for table `vaccinecards`
--
ALTER TABLE `vaccinecards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vaccinecards_childe_id_foreign` (`childe_id`);

--
-- Indexes for table `vaccinedosesmreport`
--
ALTER TABLE `vaccinedosesmreport`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vaccinedosesmreport_monthly_report_id_foreign` (`monthly_report_id`);

--
-- Indexes for table `vaccines`
--
ALTER TABLE `vaccines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vaccinesessions`
--
ALTER TABLE `vaccinesessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vaccinesessions_center_id_foreign` (`center_id`);

--
-- Indexes for table `vaccinesexecutdaily`
--
ALTER TABLE `vaccinesexecutdaily`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vaccinesexecutdaily_daily_record_line_id_foreign` (`daily_record_line_id`);

--
-- Indexes for table `vaccinesexecutpublic`
--
ALTER TABLE `vaccinesexecutpublic`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vaccinesexecutpublic_public_record_line_id_foreign` (`public_record_line_id`);

--
-- Indexes for table `vsumreport`
--
ALTER TABLE `vsumreport`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vsumreport_monthly_report_id_foreign` (`monthly_report_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `centers`
--
ALTER TABLE `centers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `children`
--
ALTER TABLE `children`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `childrenbyages`
--
ALTER TABLE `childrenbyages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `civilregistries`
--
ALTER TABLE `civilregistries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `consumersruins`
--
ALTER TABLE `consumersruins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dailyrecordlines`
--
ALTER TABLE `dailyrecordlines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dailyrecordpages`
--
ALTER TABLE `dailyrecordpages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `directorates`
--
ALTER TABLE `directorates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dropoutsrecord`
--
ALTER TABLE `dropoutsrecord`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `governorates`
--
ALTER TABLE `governorates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `monthlyreports`
--
ALTER TABLE `monthlyreports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nurses`
--
ALTER TABLE `nurses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `parents`
--
ALTER TABLE `parents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `protectedstudymreport`
--
ALTER TABLE `protectedstudymreport`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `publicrecordlines`
--
ALTER TABLE `publicrecordlines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `publicrecordpages`
--
ALTER TABLE `publicrecordpages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `regions`
--
ALTER TABLE `regions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sideeffectsmreport`
--
ALTER TABLE `sideeffectsmreport`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supplies`
--
ALTER TABLE `supplies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `towns`
--
ALTER TABLE `towns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT for table `tpdosesmreport`
--
ALTER TABLE `tpdosesmreport`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vaccineappforms`
--
ALTER TABLE `vaccineappforms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vaccinecardlines`
--
ALTER TABLE `vaccinecardlines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vaccinecards`
--
ALTER TABLE `vaccinecards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vaccinedosesmreport`
--
ALTER TABLE `vaccinedosesmreport`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vaccines`
--
ALTER TABLE `vaccines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `vaccinesessions`
--
ALTER TABLE `vaccinesessions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vaccinesexecutdaily`
--
ALTER TABLE `vaccinesexecutdaily`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vaccinesexecutpublic`
--
ALTER TABLE `vaccinesexecutpublic`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vsumreport`
--
ALTER TABLE `vsumreport`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `centers`
--
ALTER TABLE `centers`
  ADD CONSTRAINT `centers_region_id_foreign` FOREIGN KEY (`region_id`) REFERENCES `regions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `centers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `children`
--
ALTER TABLE `children`
  ADD CONSTRAINT `children_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `parents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `childrenbyages`
--
ALTER TABLE `childrenbyages`
  ADD CONSTRAINT `childrenbyages_daily_record_page_id_foreign` FOREIGN KEY (`daily_record_page_id`) REFERENCES `dailyrecordpages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `consumersruins`
--
ALTER TABLE `consumersruins`
  ADD CONSTRAINT `consumersruins_daily_record_page_id_foreign` FOREIGN KEY (`daily_record_page_id`) REFERENCES `dailyrecordpages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `dailyrecordlines`
--
ALTER TABLE `dailyrecordlines`
  ADD CONSTRAINT `dailyrecordlines_daily_record_page_id_foreign` FOREIGN KEY (`daily_record_page_id`) REFERENCES `dailyrecordpages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `dailyrecordpages`
--
ALTER TABLE `dailyrecordpages`
  ADD CONSTRAINT `dailyrecordpages_center_id_foreign` FOREIGN KEY (`center_id`) REFERENCES `centers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `dailyrecordpages_vaccine_session_id_foreign` FOREIGN KEY (`vaccine_session_id`) REFERENCES `vaccinesessions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `directorates`
--
ALTER TABLE `directorates`
  ADD CONSTRAINT `directorates_governorate_id_foreign` FOREIGN KEY (`governorate_id`) REFERENCES `governorates` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `directorates_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `dropoutsrecord`
--
ALTER TABLE `dropoutsrecord`
  ADD CONSTRAINT `dropoutsrecord_center_id_foreign` FOREIGN KEY (`center_id`) REFERENCES `centers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `dropoutsrecord_vaccine_card_id_foreign` FOREIGN KEY (`vaccine_card_id`) REFERENCES `vaccinecards` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `monthlyreports`
--
ALTER TABLE `monthlyreports`
  ADD CONSTRAINT `monthlyreports_center_id_foreign` FOREIGN KEY (`center_id`) REFERENCES `centers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `nurses`
--
ALTER TABLE `nurses`
  ADD CONSTRAINT `nurses_center_id_foreign` FOREIGN KEY (`center_id`) REFERENCES `centers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `parents`
--
ALTER TABLE `parents`
  ADD CONSTRAINT `parents_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `protectedstudymreport`
--
ALTER TABLE `protectedstudymreport`
  ADD CONSTRAINT `protectedstudymreport_monthly_report_id_foreign` FOREIGN KEY (`monthly_report_id`) REFERENCES `monthlyreports` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `publicrecordlines`
--
ALTER TABLE `publicrecordlines`
  ADD CONSTRAINT `publicrecordlines_public_record_page_id_foreign` FOREIGN KEY (`public_record_page_id`) REFERENCES `publicrecordpages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `publicrecordlines_vaccine_card_id_foreign` FOREIGN KEY (`vaccine_card_id`) REFERENCES `vaccinecards` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `publicrecordpages`
--
ALTER TABLE `publicrecordpages`
  ADD CONSTRAINT `publicrecordpages_center_id_foreign` FOREIGN KEY (`center_id`) REFERENCES `centers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `regions`
--
ALTER TABLE `regions`
  ADD CONSTRAINT `regions_directorate_id_foreign` FOREIGN KEY (`directorate_id`) REFERENCES `directorates` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `regions_governorate_id_foreign` FOREIGN KEY (`governorate_id`) REFERENCES `governorates` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sideeffectsmreport`
--
ALTER TABLE `sideeffectsmreport`
  ADD CONSTRAINT `sideeffectsmreport_monthly_report_id_foreign` FOREIGN KEY (`monthly_report_id`) REFERENCES `monthlyreports` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `towns`
--
ALTER TABLE `towns`
  ADD CONSTRAINT `towns_region_id_foreign` FOREIGN KEY (`region_id`) REFERENCES `regions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tpdosesmreport`
--
ALTER TABLE `tpdosesmreport`
  ADD CONSTRAINT `tpdosesmreport_monthly_report_id_foreign` FOREIGN KEY (`monthly_report_id`) REFERENCES `monthlyreports` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `vaccineappforms`
--
ALTER TABLE `vaccineappforms`
  ADD CONSTRAINT `vaccineappforms_center_id_foreign` FOREIGN KEY (`center_id`) REFERENCES `centers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vaccineappforms_directorate_id_foreign` FOREIGN KEY (`directorate_id`) REFERENCES `directorates` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `vaccinecardlines`
--
ALTER TABLE `vaccinecardlines`
  ADD CONSTRAINT `vaccinecardlines_vaccine_card_id_foreign` FOREIGN KEY (`vaccine_card_id`) REFERENCES `vaccinecards` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `vaccinecards`
--
ALTER TABLE `vaccinecards`
  ADD CONSTRAINT `vaccinecards_childe_id_foreign` FOREIGN KEY (`childe_id`) REFERENCES `children` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `vaccinedosesmreport`
--
ALTER TABLE `vaccinedosesmreport`
  ADD CONSTRAINT `vaccinedosesmreport_monthly_report_id_foreign` FOREIGN KEY (`monthly_report_id`) REFERENCES `monthlyreports` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `vaccinesessions`
--
ALTER TABLE `vaccinesessions`
  ADD CONSTRAINT `vaccinesessions_center_id_foreign` FOREIGN KEY (`center_id`) REFERENCES `centers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `vaccinesexecutdaily`
--
ALTER TABLE `vaccinesexecutdaily`
  ADD CONSTRAINT `vaccinesexecutdaily_daily_record_line_id_foreign` FOREIGN KEY (`daily_record_line_id`) REFERENCES `dailyrecordlines` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `vaccinesexecutpublic`
--
ALTER TABLE `vaccinesexecutpublic`
  ADD CONSTRAINT `vaccinesexecutpublic_public_record_line_id_foreign` FOREIGN KEY (`public_record_line_id`) REFERENCES `publicrecordlines` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `vsumreport`
--
ALTER TABLE `vsumreport`
  ADD CONSTRAINT `vsumreport_monthly_report_id_foreign` FOREIGN KEY (`monthly_report_id`) REFERENCES `monthlyreports` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
