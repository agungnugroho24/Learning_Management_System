-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2015 at 02:59 AM
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `capstone`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE IF NOT EXISTS `activity_log` (
  `activity_log_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `action` varchar(100) NOT NULL,
  PRIMARY KEY (`activity_log_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`activity_log_id`, `username`, `date`, `action`) VALUES
(11, 'admin', '2015-05-06 12:15:24', 'Add School Year 2014-2015'),
(12, 'admin', '2015-05-06 15:44:50', 'Add Subject EX. 1'),
(13, 'admin', '2015-05-06 15:52:37', 'Add Subject Penjaskes'),
(14, 'admin', '2015-05-26 13:31:59', 'Add Subject 123'),
(15, 'admin', '2015-05-26 21:24:42', 'Add Subject 001'),
(16, 'admin', '2015-05-26 21:25:25', 'Add Subject 002'),
(17, 'admin', '2015-05-26 21:26:27', 'Add Subject 003'),
(18, 'admin', '2015-05-26 21:27:30', 'Add Subject 004'),
(19, 'admin', '2015-05-26 21:28:07', 'Add Subject 005'),
(20, 'admin', '2015-05-26 21:28:43', 'Add Subject 006'),
(21, 'admin', '2015-05-26 21:29:31', 'Add Subject 007'),
(22, 'admin', '2015-05-26 21:30:06', 'Add Subject 008'),
(23, 'admin', '2015-05-26 21:30:53', 'Add Subject 009'),
(24, 'admin', '2015-05-26 21:31:41', 'Add Subject 010');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE IF NOT EXISTS `answer` (
  `answer_id` int(11) NOT NULL AUTO_INCREMENT,
  `quiz_question_id` int(11) NOT NULL,
  `answer_text` varchar(100) NOT NULL,
  `choices` varchar(3) NOT NULL,
  PRIMARY KEY (`answer_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=109 ;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`answer_id`, `quiz_question_id`, `answer_text`, `choices`) VALUES
(81, 32, 'john', 'A'),
(82, 32, 'smith', 'B'),
(83, 32, 'kevin', 'C'),
(84, 32, 'lorayna', 'D'),
(85, 34, 'Peso', 'A'),
(86, 34, 'PHP Hypertext', 'B'),
(87, 34, 'PHP Hypertext Preprosesor', 'C'),
(88, 34, 'Philippines', 'D'),
(89, 36, 'Allah SWT', 'A'),
(90, 36, 'tes', 'B'),
(91, 36, 'tes', 'C'),
(92, 36, 'tes', 'D'),
(93, 41, 'radIo', 'A'),
(94, 41, 'koran', 'B'),
(95, 41, 'televisi', 'C'),
(96, 41, 'komputer', 'D'),
(97, 42, 'tidur', 'A'),
(98, 42, 'minum', 'B'),
(99, 42, 'makan', 'C'),
(100, 42, 'bermain', 'D'),
(101, 43, 'radio', 'A'),
(102, 43, 'tv', 'B'),
(103, 43, 'komputer', 'C'),
(104, 43, 'koran', 'D'),
(105, 44, '<br /><b>Notice</b>:  Undefined variable: a in <b>C:xampphtdocslmsedit_question.php</b> on line <b>8', 'A'),
(106, 44, '<br /><b>Notice</b>:  Undefined variable: b in <b>C:xampphtdocslmsedit_question.php</b> on line <b>8', 'B'),
(107, 44, '<br /><b>Notice</b>:  Undefined variable: c in <b>C:xampphtdocslmsedit_question.php</b> on line <b>9', 'C'),
(108, 44, '<br /><b>Notice</b>:  Undefined variable: d in <b>C:xampphtdocslmsedit_question.php</b> on line <b>9', 'D');

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE IF NOT EXISTS `assignment` (
  `assignment_id` int(11) NOT NULL AUTO_INCREMENT,
  `floc` varchar(300) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  PRIMARY KEY (`assignment_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `assignment`
--

INSERT INTO `assignment` (`assignment_id`, `floc`, `fdatein`, `fdesc`, `teacher_id`, `class_id`, `fname`) VALUES
(30, 'admin/uploads/6926_File_Resume.docx', '2014-02-13 11:27:59', 'q', 23, 167, 'q'),
(32, 'admin/uploads/6431_File_Surat Pengunduran diri uwie.docx', '2015-05-26 13:23:13', 'hkj', 22, 200, 'tugas 1');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `teacher_id` int(3) NOT NULL,
  `category_title` varchar(55) NOT NULL,
  `category_description` varchar(122) NOT NULL,
  `last_post_date` datetime DEFAULT NULL,
  `last_user_posted` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `teacher_id`, `category_title`, `category_description`, `last_post_date`, `last_user_posted`) VALUES
(1, 22, 'Kelas 1A', 'Jelaskan tentang aljabar', '2015-06-05 07:20:29', 9);

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE IF NOT EXISTS `class` (
  `class_id` int(11) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(100) NOT NULL,
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `class_name`) VALUES
(13, 'Kelas 1A'),
(14, 'Kelas 2A'),
(15, 'Kelas 3A'),
(25, 'X 1'),
(26, 'X 2'),
(27, 'X 3'),
(28, 'XI IPA 1'),
(29, 'XI IPA 2'),
(30, 'XI IPA 3'),
(31, 'XI IPS 1'),
(32, 'XI IPS 2'),
(33, 'XI IPS 3'),
(34, 'XII IPA 1'),
(35, 'XII IPA 2'),
(36, 'XII IPA 3'),
(37, 'XII IPS 1'),
(38, 'XII IPS 2'),
(39, 'XII IPS 3');

-- --------------------------------------------------------

--
-- Table structure for table `class_quiz`
--

CREATE TABLE IF NOT EXISTS `class_quiz` (
  `class_quiz_id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_class_id` int(11) NOT NULL,
  `quiz_time` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  PRIMARY KEY (`class_quiz_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `class_quiz`
--

INSERT INTO `class_quiz` (`class_quiz_id`, `teacher_class_id`, `quiz_time`, `quiz_id`) VALUES
(13, 167, 3600, 3),
(14, 167, 3600, 3),
(15, 167, 1800, 3),
(16, 185, 900, 0),
(17, 186, 300, 6),
(18, 201, 1800, 0),
(19, 201, 1800, 0),
(20, 201, 6000000, 9),
(21, 201, 6000000, 9),
(22, 200, 600, 7),
(23, 203, 2700, 13),
(24, 200, 6000, 12);

-- --------------------------------------------------------

--
-- Table structure for table `class_subject_overview`
--

CREATE TABLE IF NOT EXISTS `class_subject_overview` (
  `class_subject_overview_id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_class_id` int(11) NOT NULL,
  `content` varchar(10000) NOT NULL,
  PRIMARY KEY (`class_subject_overview_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `class_subject_overview`
--

INSERT INTO `class_subject_overview` (`class_subject_overview_id`, `teacher_class_id`, `content`) VALUES
(1, 167, '<p>Chapter&nbsp; 1</p>\r\n\r\n<p>Cha</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE IF NOT EXISTS `content` (
  `content_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`content_id`, `title`, `content`) VALUES
(1, 'Misi', '<pre>\r\n<span style="font-size:16px"><strong>Mission</strong></span></pre>\r\n\r\n<p style="text-align:left"><span style="font-family:arial,helvetica,sans-serif; font-size:medium"><span style="font-size:large">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></span>&nbsp; &nbsp;<span style="font-size:18px"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; A leading institution in higher and continuing education commited to engage in quality instruction, development-oriented research sustinable lucrative economic enterprise, and responsive extension and training services through relevant academic programs to empower a human resource that responds effectively to challenges in life and acts as catalyst in the holistoic development of a humane society.&nbsp;</span></p>\r\n\r\n<p style="text-align:left">&nbsp;</p>\r\n'),
(2, 'Visi', '<pre>\r\n<span style="font-size:large"><strong>Vision</strong></span></pre>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size:large">&nbsp; Driven by its passion for continous improvement, the State College has to vigorously pursue distinction and proficieny in delivering its statutory functions to the Filipino people in the fields of education, business, agro-fishery, industrial, science and technology, through committed and competent human resource, guided by the beacon of innovation and productivity towards the heights of elevated status. </span><br />\r\n&nbsp;</p>\r\n'),
(3, 'Sejarah', '<pre>\r\nSejarah</pre>\r\n\r\n<p style="text-align:justify">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Sekolah Buddhi Tangerang terdiri dari KB/TK, SD, SMP, SMA adalah lembaga Pendidikan yang diselenggarakan oleh Perkumpulan Keagamaan dan Sosial BOEN TEK BIO sejak tahun 1975.&nbsp;Tenaga pengajar di Sekolah Buddhi Tangerang adalah Sarjana Pendidikan berpengalaman dan sebagian beasr telah lulus sertifikasi guru. Maka, dengan mengacu kepada Kurikulum 2013, tenaga pengajar di Sekolah Buddhi siap memberikan bimbingan kepada siswa - siswinya, sehingga ia akan siap melanjutkan pendidikan ke jenjang yang lebih tinggi.&nbsp;Dengan komitmen kami untuk mengedepankan kualitas serta biaya pendidikan yang relatif terjangkau. Sekolah Buddhi Tangerang siap pula membekali siswa-siswinya dengan berbagai pengorbanan dan keterampilan yang diburtuhkan saat ini.</p>\r\n'),
(4, 'Footer', '<p style="text-align:center">SMA Perguruan Buddhi&nbsp;Online Learning Managenment System</p>\r\n\r\n<p style="text-align:center">All Rights Reserved &reg;2013</p>\r\n'),
(5, 'Upcoming Events', '<pre>\r\nUP COMING EVENTS</pre>\r\n\r\n<p><strong>&gt;</strong> EXAM</p>\r\n\r\n<p><strong>&gt;</strong> INTERCAMPUS MEET</p>\r\n\r\n<p><strong>&gt;</strong> DEFENSE</p>\r\n\r\n<p><strong>&gt;</strong> ENROLLMENT</p>\r\n\r\n<p>&nbsp;</p>\r\n'),
(6, 'Prosedur', '<p><span style="font-size:16px"><strong>Prosedur penggunaan LMS:</strong></span></p>\r\n\r\n<p><span style="font-size:16px"><strong>1.</strong></span> ..............</p>\r\n\r\n<p><a href="" style="font-size:16px"> </a></p>\r\n'),
(7, 'News', '<pre>\r\n<span style="font-size:medium"><em><strong>Recent News\r\n</strong></em></span></pre>\r\n\r\n<h2><span style="font-size:small">Extension and Community Services</span></h2>\r\n\r\n<p style="text-align:justify">This technology package was promoted by the College of Industrial Technology Unit is an index to offer Practical Skills and Livelihood Training Program particularly to the Ina ngTahanan of Tayabas, Barangay Zone 15, Talisay City, Negros Occidental</p>\r\n\r\n<p style="text-align:justify">The respondent of this technology package were mostly &ldquo;ina&rdquo; or mothers in PurokTayabas. There were twenty mothers who responded to the call of training and enhancing their sewing skills. The beginners projects include an apron, elastics waist skirts, pillow-cover and t-shirt style top. Short sleeve blouses with buttonholes or contoured seaming are also some of the many projects introduced to the mothers. Based on the interview conducted after the culmination activity, the projects done contributed as a means of earning to the respondents.</p>\r\n\r\n<p style="text-align:justify">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; In support to the thrust of the government to improve the health status of neighboring barangays, the Faculty and Staff of CHMSC ECS Fortune Towne, Bacolod City, launched its Medical Mission in Patag, Silay City. It was conducted last March 2010, to address the health needs of the people. A medical consultation is given to the residents of SitioPatag to attend to their health related problems that may need medical treatment. Medical tablets for headache, flu, fever, antibiotics and others were availed by the residents.</p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:justify">&nbsp;The BAYAN-ANIHAN is a Food Production Program with a battle cry of &ldquo;GOODBYE GUTOM&rdquo;, advocating its legacy &ldquo;Food on the Table for every Filipino Family&rdquo; through backyard gardening. NGO&rsquo;s, governmental organizations, private and public sectors, business sectors are the cooperating agencies that support and facilitate this project and Carlos Hilado Memorial State College (CHMSC) is one of the identified partner school. Being a member institution in advocating its thrust, the school through its Extension and Community Services had conducted capability training workshop along this program identifying two deputy coordinators and trainers last November 26,27 and 28, 2009, with the end in view of implementing the project all throughout the neighboring towns, provinces and regions to help address poverty in the country. Program beneficiaries were the selected families of GawadKalinga (GK) in Hope Village, Brgy. Cabatangan, Talisay City, with 120 families beneficiaries; GK FIAT Village in Silay City with 30 beneficiaries; Bonbon Dream Village brgy. E. Lopez, Silay City with 60 beneficiaries; and respectively Had. Teresita and Had. Carmen in Talisay City, Negros Occidental both with 60 member beneficiaries. This program was introduced to 30 household members with the end in view of alleviating the quality standards of their living.</p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:justify">The extension &amp; Community Services of the College conducted a series of consultations and meetings with the different local government units to assess technology needs to determines potential products to be developed considering the abundance of raw materials in their respective areas and their product marketability. The project was released in November 2009 in six cities in the province of Negros Occidental, namely San Carlos, Sagay, Silay, Bago, Himamaylan and Sipalay and the Municipality of E. B Magalona</p>\r\n\r\n<p style="text-align:justify">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; The City of San Carlos focused on peanut and fish processing. Sagay and bago focused on meat processing, while Silay City on fish processing. The City of Himamaylan is on sardines, and in Sipalay focused on fish processing specially on their famous BARONGAY product. The municipality of E.B Magalona focused on bangus deboning.</p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:justify">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; The food technology instructors are tasked to provide the needed skills along with the TLDC Livelihood project that each City is embarking on while the local government units provide the training venue for the project and the training equipment and machine were provided by the Department of Science and Technology.</p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n'),
(8, 'Announcements', '<pre>\r\n<span style="font-size:medium"><em><strong>Announcements</strong></em></span></pre>\r\n\r\n<p>Examination Period: October 9-11, 2013</p>\r\n\r\n<p>Semestrial Break: October 12- November 3, 2013</p>\r\n\r\n<p>FASKFJASKFAFASFMFAS</p>\r\n\r\n<p>GASGA</p>\r\n'),
(10, 'Calendar', '<pre style="text-align:center">\r\n<span style="font-size:medium"><strong>&nbsp;CALENDAR OF EVENT</strong></span></pre>\r\n\r\n<table align="center" cellpadding="0" cellspacing="0" style="line-height:1.6em; margin-left:auto; margin-right:auto">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>First Semester &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>June 10, 2013 to October 11, 2013&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Semestral Break</p>\r\n			</td>\r\n			<td>\r\n			<p>Oct. 12, 2013 to November 3, 2013</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Second Semester</p>\r\n			</td>\r\n			<td>\r\n			<p>Nov. 5, 2013 to March 27, 2014</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Summer Break</p>\r\n			</td>\r\n			<td>\r\n			<p>March 27, 2014 to April 8, 2014</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Summer</p>\r\n			</td>\r\n			<td>\r\n			<p>April 8 , 2014 to May 24, 2014</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<table cellpadding="0" cellspacing="0" style="line-height:1.6em; margin-left:auto; margin-right:auto">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan="4">\r\n			<p><strong>June 5, 2013 to October 11, 2013 &ndash; First Semester AY 2013-2014</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>June 4, 2013 &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>Orientation with the Parents of the College&nbsp;Freshmen</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>June 5</p>\r\n			</td>\r\n			<td>\r\n			<p>First Day of Service</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>June 5</p>\r\n			</td>\r\n			<td>\r\n			<p>College Personnel General Assembly</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>June 6,7</p>\r\n			</td>\r\n			<td>\r\n			<p>In-Service Training (Departmental)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>June 10</p>\r\n			</td>\r\n			<td>\r\n			<p>First Day of Classes</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>June 14</p>\r\n			</td>\r\n			<td>\r\n			<p>Orientation with Students by College/Campus/Department</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>June 19,20,21</p>\r\n			</td>\r\n			<td>\r\n			<p>Branch/Campus Visit for Administrative / Academic/Accreditation/ Concerns</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td rowspan="2">\r\n			<p>June</p>\r\n			</td>\r\n			<td>\r\n			<p>Club Organizations (By Discipline/Programs)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Student Affiliation/Induction Programs</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>July</p>\r\n			</td>\r\n			<td>\r\n			<p>Nutrition Month (Sponsor: Laboratory School)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>July 11, 12</p>\r\n			</td>\r\n			<td>\r\n			<p>Long Tests</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>August&nbsp; 8, 9</p>\r\n			</td>\r\n			<td>\r\n			<p>Midterm Examinations</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>August 19</p>\r\n			</td>\r\n			<td>\r\n			<p>ArawngLahi</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>August 23</p>\r\n			</td>\r\n			<td>\r\n			<p>Submission of Grade Sheets for Midterm</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>August</p>\r\n			</td>\r\n			<td>\r\n			<p>Recognition Program (Dean&rsquo;s List)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>August 26</p>\r\n			</td>\r\n			<td>\r\n			<p>National Heroes Day (Regular Holiday)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>August 28, 29, 30</p>\r\n			</td>\r\n			<td>\r\n			<p>Sports and Cultural Meet</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>September 19,20</p>\r\n			</td>\r\n			<td>\r\n			<p>Long Tests</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>October 5</p>\r\n			</td>\r\n			<td>\r\n			<p>Teachers&rsquo; Day / World Teachers&rsquo; Day</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>October 10, 11</p>\r\n			</td>\r\n			<td>\r\n			<p>Final Examination</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>October 12</p>\r\n			</td>\r\n			<td>\r\n			<p>Semestral Break</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<table cellpadding="0" cellspacing="0" style="margin-left:auto; margin-right:auto">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan="4">\r\n			<p><strong>Nov. 4, 2013 to March 27, 2014 &ndash; Second Semester AY 2013-2014</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>November 4 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>Start of Classes</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>November 19, 20, 21, 22</p>\r\n			</td>\r\n			<td>\r\n			<p>Intercampus Sports and Cultural Fest/College Week</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>December 5, 6</p>\r\n			</td>\r\n			<td>\r\n			<p>Long Tests</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>December 19,20</p>\r\n			</td>\r\n			<td>\r\n			<p>Thanksgiving Celebrations</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>December 21</p>\r\n			</td>\r\n			<td>\r\n			<p>Start of Christmas Vacation</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>December 25</p>\r\n			</td>\r\n			<td>\r\n			<p>Christmas Day (Regular Holiday)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>December 30</p>\r\n			</td>\r\n			<td>\r\n			<p>Rizal Day (Regular Holiday)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>January 6, 2014</p>\r\n			</td>\r\n			<td>\r\n			<p>Classes Resume</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>January 9, 10</p>\r\n			</td>\r\n			<td>\r\n			<p>Midterm Examinations</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>January 29</p>\r\n			</td>\r\n			<td>\r\n			<p>Submission of Grades Sheets for Midterm</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>February 13, 14</p>\r\n			</td>\r\n			<td>\r\n			<p>Long Tests</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>March 6, 7</p>\r\n			</td>\r\n			<td>\r\n			<p>Final Examinations (Graduating)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>March 13, 14</p>\r\n			</td>\r\n			<td>\r\n			<p>Final Examinations (Non-Graduating)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>March 17, 18, 19, 20, 21</p>\r\n			</td>\r\n			<td>\r\n			<p>Recognition / Graduation Rites</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>March 27</p>\r\n			</td>\r\n			<td>\r\n			<p>Last Day of Service for Faculty</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>June 5, 2014</p>\r\n			</td>\r\n			<td>\r\n			<p>First Day of Service for SY 2014-2015</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<table border="1" cellpadding="0" cellspacing="0" style="margin-left:auto; margin-right:auto">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan="2">\r\n			<p><strong>FLAG RAISING CEREMONY-TALISAY CAMPUS</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>MONTHS &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>UNIT-IN-CHARGE</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>June, Sept. and Dec. 2013, March 2014</p>\r\n			</td>\r\n			<td>\r\n			<p>COE</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>July and October 2013, Jan. 2014</p>\r\n			</td>\r\n			<td>\r\n			<p>SAS</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>August and November 2013, Feb. 2014</p>\r\n\r\n			<p>April and May 2014</p>\r\n			</td>\r\n			<td>\r\n			<p>CIT</p>\r\n\r\n			<p>GASS</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n'),
(11, 'Directories', '<div class="jsn-article-content" style="text-align: left;">\r\n<pre>\r\n<span style="font-size:medium"><em><strong>DIRECTORIES</strong></em></span></pre>\r\n\r\n<ul>\r\n	<li>Lab School - 712-0848</li>\r\n	<li>Accounting - 495-5560</li>\r\n	<li>Presidents Office - 495-4064(telefax)</li>\r\n	<li>VPA/PME - 495-1635</li>\r\n	<li>Registrar Office - 495-4657(telefax)</li>\r\n	<li>Cashier - 712-7272</li>\r\n	<li>CIT - 712-0670</li>\r\n	<li>SAS/COE - 495-6017</li>\r\n	<li>BAC - 712-8404(telefax)</li>\r\n	<li>Records - 495-3470</li>\r\n	<li>Supply - 495-3767</li>\r\n	<li>Internet Lab - 712-6144/712-6459</li>\r\n	<li>COA - 495-5748</li>\r\n	<li>Guard House - 476-1600</li>\r\n	<li>HRM - 495-4996</li>\r\n	<li>Extension - 457-2819</li>\r\n	<li>Canteen - 495-5396</li>\r\n	<li>Research - 712-8464</li>\r\n	<li>Library - 495-5143</li>\r\n	<li>OSA - 495-1152</li>\r\n</ul>\r\n</div>\r\n'),
(12, 'president', '<p>It is my great pleasure and privilege to welcome you to CHMSC&rsquo;s official website. Accept my deep appreciation for continuously taking interest in CHMSC and its programs and activities.<br /> Recently, the challenges of the knowledge era of the 21st Century led me to think very deeply how educational institutions of higher learning must vigorously pursue relevant e<img style="float: left;" src="images/president.jpg" alt="" />ducation to compete with and respond to the challenges of globalization. As an international fellow, I realized that in the face of this globalization and technological advancement, educational institutions are compelled to work extraordinary in educating the youths and enhancing their potentials for gainful employment and realization of their dreams to become effective citizens.<br /><br /> Honored and humbled to be given the opportunity for stewardship of this good College, I am fully aware that the goal is to make CHMSC as the center of excellence or development in various fields. The vision, CHMSC ExCELS: Excellence, Competence and Educational Leadership in Science and Technology is a profound battle cry for each member of CHMSC Community. A CHMSCian must be technologically and academically competent, socially mature, safety conscious with care for the environment, a good citizen and possesses high moral values. The way the College is being managed, the internal and the external culture of all stockholders, and the efforts for quality and excellence will result to the establishment of the good corporate image of the College. The hallmark is reflected as the image of the good institution.<br /><br /> The tasks at hand call for our full cooperation, support and active participation. Therefore, I urge everyone to help me in the crusade to <br /><br /></p>\r\n<p style="text-align: justify;"><span style="line-height: 1.3em;">Provide wider access to CHMSC programs;</span></p>\r\n<p style="text-align: justify;"><span style="line-height: 1.3em;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;* Harness the potentials of students thru effective teaching and learning methodologies and techniques;</span></p>\r\n<p style="text-align: justify;"><span style="line-height: 1.3em;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;* Enable CHMSC Environment for All through secure green campus;</span></p>\r\n<p style="text-align: justify;"><span style="line-height: 1.3em;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;* Advocate green movement, protect intellectual property and stimulate innovation;</span></p>\r\n<p style="text-align: justify;"><span style="line-height: 1.3em;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;* Promote lifelong learning;</span></p>\r\n<p style="text-align: justify;"><span style="line-height: 1.3em;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;* Conduct Research and Development for community and poverty alleviation;</span></p>\r\n<p style="text-align: justify;"><span style="line-height: 1.3em;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;* Share and disseminate knowledge through publication and extension outreach to communities; and</span></p>\r\n<p style="text-align: justify;"><span style="line-height: 1.3em;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;*Strengthen Institute-industry linkages and public-private partnership for mutual interest.</span></p>\r\n<p style="text-align: justify;"><br /><span style="line-height: 1.3em; text-align: justify;">Together, WE can make CHMSC</span></p>\r\n<p style="text-align: justify;"><br /><span style="line-height: 1.3em;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;*A model green institution for Human Resources Development, a builder of human resources in the knowledge era of the 21st Century;</span></p>\r\n<p style="text-align: justify;"><span style="line-height: 1.3em;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; *A center for curricular innovations and research especially in education, technology, engineering, ICT and entrepreneurship; and</span></p>\r\n<p style="text-align: justify;"><span style="line-height: 1.3em;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; *A Provider of quality graduates in professional and technological programs for industry and community.</span></p>\r\n<p style="text-align: justify;"><br /><br /> Dear readers and guests, these are the challenges for every CHMSCian to hurdle and the dreams to realize. This website will be one of the connections with you as we ardently take each step. Feel free to visit often and be kept posted as we continue to work for discoveries and advancement that will bring benefits to the lives of the students, the community, and the world, as a whole.<br /><br /> Warmest welcome and I wish you well!</p>\r\n<p style="text-align: justify;"><br /><br /></p>\r\n<p style="text-align: justify;">RENATO M. SOROLLA, Ph.D.<br />SUC President II</p>'),
(13, 'motto', '<p><strong><span style="color:#FFF0F5"><span style="font-family:arial,helvetica,sans-serif">CHMSC EXCELS:</span></span></strong></p>\r\n\r\n<p><strong><span style="color:#FFF0F5"><span style="font-family:arial,helvetica,sans-serif">Excellence, Competence and Educational</span></span></strong></p>\r\n\r\n<p><strong><span style="color:#FFF0F5"><span style="font-family:arial,helvetica,sans-serif">Leadership in Science and Technology</span></span></strong></p>\r\n'),
(14, 'Campuses', '<pre>\r\n<span style="font-size:16px"><strong>Campuses</strong></span></pre>\r\n\r\n<ul>\r\n	<li>Alijis Campus</li>\r\n	<li>Binalbagan Campus</li>\r\n	<li>Fortunetown Campus</li>\r\n	<li>Talisay Campus<br />\r\n	&nbsp;</li>\r\n</ul>\r\n'),
(15, 'Prosedur', 'Cara menggunakan learning management system');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE IF NOT EXISTS `department` (
  `department_id` int(11) NOT NULL AUTO_INCREMENT,
  `department_name` varchar(100) NOT NULL,
  `dean` varchar(100) NOT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `department_name`, `dean`) VALUES
(10, 'IPA (Ilmu Pengetahuan Alam)', 'Rina'),
(11, 'IPS (Ilmu Pengetahuan Sosial)', 'Uwie');

-- --------------------------------------------------------

--
-- Table structure for table `diskusi`
--

CREATE TABLE IF NOT EXISTS `diskusi` (
  `quiz_id` int(11) NOT NULL AUTO_INCREMENT,
  `quiz_title` varchar(50) NOT NULL,
  `quiz_description` varchar(100) NOT NULL,
  `date_added` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `forum` varchar(100) NOT NULL,
  `forumdeskripsi` varchar(100) NOT NULL,
  `tgldeskripsi` varchar(100) NOT NULL,
  PRIMARY KEY (`quiz_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `diskusi`
--

INSERT INTO `diskusi` (`quiz_id`, `quiz_title`, `quiz_description`, `date_added`, `teacher_id`, `forum`, `forumdeskripsi`, `tgldeskripsi`) VALUES
(3, 'Sample Test', 'Test', '2013-12-03 23:01:56', 12, '', '', ''),
(4, 'Chapter 1', 'topics', '2013-12-13 01:51:02', 14, '', '', ''),
(5, 'test3', '123', '2014-01-16 04:12:07', 12, '', '', ''),
(6, 'Quiz', 'Quiz', '2015-02-23 10:29:35', 11, '', '', ''),
(8, 'minggu 1', 'true or false', '2015-05-06 21:40:22', 220, '', '', ''),
(11, '', '', '', 5, '', 'Penjelasan diskusi 1', '2015-05-11 15:32:18'),
(12, '', '', '', 9, 'Diskusi', 'tes diskusi', '2015-05-26 10:30:22'),
(13, '', '', '', 23, 'test', 'coba diskusi', '2015-05-26 15:36:32'),
(14, '', '', '', 227, 'Diskusi 1', 'iya test', '2015-05-27 14:16:21');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE IF NOT EXISTS `event` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `event_title` varchar(100) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `date_start` varchar(100) NOT NULL,
  `date_end` varchar(100) NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`event_id`, `event_title`, `teacher_class_id`, `date_start`, `date_end`) VALUES
(12, ' 	  Orientation with the Parents of the College Freshmen', 0, '06/04/2013', '06/04/2013'),
(13, 'Start of Classes', 0, '11/04/2013', '11/04/2013'),
(14, 'Intercampus Sports and Cultural Fest/College Week', 0, '11/19/2013', '11/22/2013'),
(15, 'Long Test', 113, '12/05/2013', '12/06/2013'),
(16, 'Long Test', 0, '12/05/2013', '12/06/2013'),
(17, 'sdasf', 147, '11/16/2013', '11/16/2013');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE IF NOT EXISTS `files` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `floc` varchar(500) NOT NULL,
  `fdatein` varchar(200) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `uploaded_by` varchar(100) NOT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=145 ;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`file_id`, `floc`, `fdatein`, `fdesc`, `teacher_id`, `class_id`, `fname`, `uploaded_by`) VALUES
(128, 'admin/uploads/7614_File_1476273_644977475552481_2029187901_n.jpg', '2014-02-13 13:31:18', 'qwwqw', 12, 185, 'kevi', 'Ruby Mae Morante'),
(127, 'admin/uploads/1085_File_Resume.docx', '2014-02-13 12:53:09', 'q', 12, 183, 'q', 'Ruby Mae Morante'),
(126, 'admin/uploads/7895_File_PERU REPORT.pptx', '2014-02-13 12:35:42', 'chapter 1', 12, 182, 'chapter 1', 'Ruby Mae Morante'),
(125, 'admin/uploads/2658_File_kevin.docx', '2014-02-13 11:10:56', 'test', 12, 181, 'test', 'Ruby Mae Morante'),
(123, 'admin/uploads/4801_File_painting-02.jpg', '2013-12-11 12:02:46', 'jdkasjfd', 12, 163, 'Test', 'Ruby Mae Morante'),
(122, 'admin/uploads/3985_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-12-07 20:00:22', 'dasdasd', 12, 145, 'dasd', 'Ruby Mae Morante'),
(121, 'admin/uploads/7439_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-12-07 19:59:46', 'asdad', 12, 162, 'kevin', 'Ruby Mae Morante'),
(120, 'admin/uploads/7439_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-12-07 19:59:46', 'asdad', 12, 145, 'kevin', 'Ruby Mae Morante'),
(119, 'admin/uploads/3166_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-12-07 19:58:44', 'kevin', 12, 145, 'kevin', 'Ruby Mae Morante'),
(118, 'admin/uploads/4849_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-26 23:59:20', 'q', 0, 162, 'qq', 'StephanieVillanueva'),
(117, 'admin/uploads/9467_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-26 10:42:37', 'test', 0, 162, 'report group 1', 'MarrianneTumala'),
(116, 'admin/uploads/5990_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-26 02:51:24', 'w', 12, 162, 'w', 'Ruby Mae Morante'),
(115, 'admin/uploads/5990_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-26 02:51:24', 'w', 12, 145, 'w', 'Ruby Mae Morante'),
(138, 'admin/uploads/1458_File_contoh.txt', '2015-02-23 10:26:45', 'contoh', 0, 172, 'contoh', 'Mark DominicSayon'),
(139, 'admin/uploads/6583_File_Surat Pengunduran diri uwie.docx', '2015-05-06 21:35:22', 'coba', 9, 188, 'test', 'JomarPabuaya'),
(140, 'admin/uploads/3458_File_$m.jpg', '2015-05-07 20:54:19', 'tes2', 9, 188, 'tes2', 'JomarPabuaya'),
(141, 'admin/uploads/3680_File_@_--.jpg', '2015-05-07 21:09:53', 'tes4', 0, 193, 'tes4', 'Mark DominicSayon'),
(143, 'admin/uploads/8367_File_BAB 1 Uwie OK.docx', '2015-05-13 06:25:14', 'ABC', 5, 201, 'Materi pert 1', 'UwieArifin'),
(144, 'admin/uploads/2366_File_BAB 1 Uwie OK.docx', '2015-05-13 13:07:28', 'gggg', 5, 201, 'pert  2', 'UwieArifin');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE IF NOT EXISTS `log` (
  `user_log_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `login_date` varchar(30) NOT NULL,
  `logout_date` varchar(30) NOT NULL,
  `student_id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `level` varchar(11) NOT NULL,
  PRIMARY KEY (`user_log_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=54 ;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`user_log_id`, `username`, `login_date`, `logout_date`, `student_id`, `firstname`, `lastname`, `level`) VALUES
(1, '123', '2015-05-25 17:36:20', '2015-05-26 08:18:54', 222, '', '', ''),
(2, '123', '2015-05-25 17:44:28', '2015-05-26 08:18:54', 222, '', '', 'Murid'),
(3, '20100452', '2015-05-25 18:14:52', '2015-05-25 18:15:37', 224, '', '', 'Murid'),
(4, '123', '2015-05-26 07:48:52', '2015-05-26 08:18:54', 222, '', '', 'Murid'),
(5, '123', '2015-05-26 08:18:37', '2015-05-26 08:18:54', 222, '', '', 'Murid'),
(6, '20100452', '2015-05-26 08:19:03', '2015-05-26 12:54:44', 218, '', '', 'Murid'),
(7, '20100452', '2015-05-26 08:27:27', '2015-05-26 12:54:44', 218, '', '', 'Murid'),
(8, '20100452', '2015-05-26 08:28:33', '2015-05-26 12:54:44', 218, '', '', 'Murid'),
(9, '20100452', '2015-05-26 10:27:43', '2015-05-26 12:54:44', 218, '', '', 'Murid'),
(10, '20100452', '2015-05-26 10:41:18', '2015-05-26 12:54:44', 218, '', '', 'Murid'),
(11, '20100452', '2015-05-26 10:41:49', '2015-05-26 12:54:44', 218, '', '', 'Murid'),
(12, '0102110080', '2015-05-26 10:58:42', '2015-05-27 20:31:09', 225, '', '', 'Murid'),
(13, '0102110080', '2015-05-26 11:05:09', '2015-05-27 20:31:09', 225, '', '', 'Murid'),
(14, '0102110080', '2015-05-26 11:07:24', '2015-05-27 20:31:09', 225, '', '', 'Murid'),
(15, '20100452', '2015-05-26 11:24:56', '2015-05-26 12:54:44', 218, '', '', 'Murid'),
(16, '20100452', '2015-05-26 11:27:59', '2015-05-26 12:54:44', 218, '', '', 'Murid'),
(17, '20100452', '2015-05-26 12:37:17', '2015-05-26 12:54:44', 218, '', '', 'Murid'),
(18, '20100452', '2015-05-26 12:51:01', '2015-05-26 12:54:44', 218, '', '', 'Murid'),
(19, '0102110080', '2015-05-26 12:54:56', '2015-05-27 20:31:09', 225, '', '', 'Murid'),
(20, '20100452', '2015-05-26 13:04:57', '', 218, '', '', 'Murid'),
(21, '20100452', '2015-05-26 13:04:57', '', 218, '', '', 'Murid'),
(22, '20100452', '2015-05-26 13:04:58', '', 218, '', '', 'Murid'),
(23, '20100452', '2015-05-26 13:04:58', '', 218, '', '', 'Murid'),
(24, '20100452', '2015-05-26 13:04:58', '', 218, '', '', 'Murid'),
(25, '20100452', '2015-05-26 13:04:58', '', 218, '', '', 'Murid'),
(26, '20100452', '2015-05-26 13:04:58', '', 218, '', '', 'Murid'),
(27, '20100452', '2015-05-26 13:04:58', '', 218, '', '', 'Murid'),
(28, '20100452', '2015-05-26 13:04:59', '', 218, '', '', 'Murid'),
(29, '20100452', '2015-05-26 13:04:59', '', 218, '', '', 'Murid'),
(30, '20100452', '2015-05-26 13:04:59', '', 218, '', '', 'Murid'),
(31, '20100452', '2015-05-26 13:04:59', '', 218, '', '', 'Murid'),
(32, '20100452', '2015-05-26 13:04:59', '', 218, '', '', 'Murid'),
(33, '20100452', '2015-05-26 13:05:00', '', 218, '', '', 'Murid'),
(34, '20100452', '2015-05-26 13:05:00', '', 218, '', '', 'Murid'),
(35, '20100452', '2015-05-26 13:05:00', '', 218, '', '', 'Murid'),
(36, '20100452', '2015-05-26 13:05:00', '', 218, '', '', 'Murid'),
(37, '20100452', '2015-05-26 13:05:00', '', 218, '', '', 'Murid'),
(38, '20100452', '2015-05-26 13:05:01', '', 218, '', '', 'Murid'),
(39, '20100452', '2015-05-26 13:05:01', '', 218, '', '', 'Murid'),
(40, '20100452', '2015-05-26 13:05:01', '', 218, '', '', 'Murid'),
(41, '20100452', '2015-05-26 13:05:01', '', 218, '', '', 'Murid'),
(42, '0102110080', '2015-05-26 13:13:08', '2015-05-27 20:31:09', 225, '', '', 'Murid'),
(43, '0102110080', '2015-05-26 14:38:45', '2015-05-27 20:31:09', 225, '', '', 'Murid'),
(44, '0102110080', '2015-05-26 14:41:11', '2015-05-27 20:31:09', 225, '', '', 'Murid'),
(45, '12131004', '2015-05-26 15:25:53', '2015-05-26 15:33:31', 226, '', '', 'Murid'),
(46, '12131004', '2015-05-26 15:28:55', '2015-05-26 15:33:31', 226, '', '', 'Murid'),
(47, '0102110084', '2015-05-26 15:38:07', '2015-05-26 15:39:54', 219, '', '', 'Murid'),
(48, '20100452', '2015-05-27 14:02:14', '', 224, '', '', 'Murid'),
(49, '0909', '2015-05-27 14:14:49', '2015-05-27 14:17:20', 227, '', '', 'Murid'),
(50, '20100452', '2015-05-27 14:21:06', '', 218, '', '', 'Murid'),
(51, '0102110080', '2015-05-27 19:52:48', '2015-05-27 20:31:09', 225, '', '', 'Murid'),
(52, '0909', '2015-06-05 07:28:49', '', 227, '', '', 'Murid'),
(53, '0909', '2015-06-05 07:37:30', '', 227, '', '', 'Murid');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `reciever_id` int(11) NOT NULL,
  `content` varchar(200) NOT NULL,
  `date_sended` varchar(100) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `reciever_name` varchar(50) NOT NULL,
  `sender_name` varchar(200) NOT NULL,
  `message_status` varchar(100) NOT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `reciever_id`, `content`, `date_sended`, `sender_id`, `reciever_name`, `sender_name`, `message_status`) VALUES
(2, 11, 'fasf', '2013-11-13 13:15:47', 42, 'Aladin Cabrera', 'john kevin lorayna', ''),
(4, 71, 'bcjhbcjksdbckldj', '2013-11-25 15:59:13', 71, 'Noli Mendoza', 'Noli Mendoza', 'read'),
(17, 12, 'tst', '2013-12-01 23:38:40', 93, 'Ruby Mae  Morante', 'John Kevin  Lorayna', ''),
(19, 12, 'fasfaf', '2013-12-01 23:56:17', 93, 'Ruby Mae  Morante', 'John Kevin  Lorayna', ''),
(27, 93, 'fa', '2013-12-02 00:01:54', 12, 'John Kevin  Lorayna', 'Ruby Mae  Morante', ''),
(28, 136, 'Submit your classcard', '2014-02-13 13:35:21', 12, 'Jorgielyn Serfino', 'Ruby Mae  Morante', ''),
(29, 220, 'test', '2015-05-06 12:21:53', 9, 'Yuly arifin', 'Jomar Pabuaya', ''),
(30, 9, 'skripsi', '2015-05-06 15:39:54', 220, 'Jomar Pabuaya', 'Yuly arifin', 'read'),
(31, 218, 'COBA DULU SAJA', '2015-05-13 06:31:21', 5, 'josie banday', 'Uwie Arifin', 'read'),
(32, 218, 'rina rina', '2015-05-13 12:12:05', 5, 'josie banday', 'Uwie Arifin', '');

-- --------------------------------------------------------

--
-- Table structure for table `message_sent`
--

CREATE TABLE IF NOT EXISTS `message_sent` (
  `message_sent_id` int(11) NOT NULL AUTO_INCREMENT,
  `reciever_id` int(11) NOT NULL,
  `content` varchar(200) NOT NULL,
  `date_sended` varchar(100) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `reciever_name` varchar(100) NOT NULL,
  `sender_name` varchar(100) NOT NULL,
  PRIMARY KEY (`message_sent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `message_sent`
--

INSERT INTO `message_sent` (`message_sent_id`, `reciever_id`, `content`, `date_sended`, `sender_id`, `reciever_name`, `sender_name`) VALUES
(1, 42, 'sad', '2013-11-12 22:50:05', 42, 'john kevin lorayna', 'john kevin lorayna'),
(2, 11, 'fasf', '2013-11-13 13:15:47', 42, 'Aladin Cabrera', 'john kevin lorayna'),
(3, 12, 'bjhkcbkjsdnckldvls', '2013-11-25 15:58:55', 71, 'Ruby Mae  Morante', 'Noli Mendoza'),
(4, 71, 'bcjhbcjksdbckldj', '2013-11-25 15:59:13', 71, 'Noli Mendoza', 'Noli Mendoza'),
(5, 12, 'test', '2013-11-30 20:54:05', 93, 'Ruby Mae  Morante', 'John Kevin  Lorayna'),
(11, 12, 'tst', '2013-12-01 23:38:40', 93, 'Ruby Mae  Morante', 'John Kevin  Lorayna'),
(12, 12, 'fasfasf', '2013-12-01 23:49:13', 93, 'Ruby Mae  Morante', 'John Kevin  Lorayna'),
(13, 136, 'Submit your classcard', '2014-02-13 13:35:21', 12, 'Jorgielyn Serfino', 'Ruby Mae  Morante'),
(14, 220, 'test', '2015-05-06 12:21:53', 9, 'Yuly arifin', 'Jomar Pabuaya'),
(15, 9, 'skripsi', '2015-05-06 15:39:55', 220, 'Jomar Pabuaya', 'Yuly arifin'),
(16, 218, 'COBA DULU SAJA', '2015-05-13 06:31:21', 5, 'josie banday', 'Uwie Arifin'),
(17, 218, 'rina rina', '2015-05-13 12:12:06', 5, 'josie banday', 'Uwie Arifin');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE IF NOT EXISTS `notification` (
  `notification_id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_class_id` int(11) NOT NULL,
  `notification` varchar(100) NOT NULL,
  `date_of_notification` varchar(50) NOT NULL,
  `link` varchar(100) NOT NULL,
  PRIMARY KEY (`notification_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`notification_id`, `teacher_class_id`, `notification`, `date_of_notification`, `link`) VALUES
(2, 0, 'Add Downloadable Materials file name <b>sss</b>', '2014-01-17 14:35:32', 'downloadable_student.php'),
(3, 167, 'Add Annoucements', '2014-01-17 14:36:32', 'announcements_student.php'),
(4, 0, 'Add Downloadable Materials file name <b>test</b>', '2014-02-13 11:10:56', 'downloadable_student.php'),
(5, 167, 'Add Assignment file name <b>q</b>', '2014-02-13 11:27:59', 'assignment_student.php'),
(6, 0, 'Add Downloadable Materials file name <b>chapter 1</b>', '2014-02-13 12:35:42', 'downloadable_student.php'),
(7, 0, 'Add Downloadable Materials file name <b>q</b>', '2014-02-13 12:53:09', 'downloadable_student.php'),
(8, 0, 'Add Downloadable Materials file name <b>kevi</b>', '2014-02-13 13:31:18', 'downloadable_student.php'),
(9, 185, 'Add Practice Quiz file', '2014-02-13 13:33:27', 'student_quiz_list.php'),
(10, 167, 'Add Annoucements', '2014-02-13 13:45:59', 'announcements_student.php'),
(11, 0, 'Add Downloadable Materials file name <b>q</b>', '2014-02-21 16:43:38', 'downloadable_student.php'),
(12, 0, 'Add Downloadable Materials file name <b>q</b>', '2014-02-21 16:46:18', 'downloadable_student.php'),
(13, 0, 'Add Downloadable Materials file name <b>q</b>', '2014-02-21 16:46:49', 'downloadable_student.php'),
(14, 0, 'Add Downloadable Materials file name <b>q</b>', '2014-02-21 16:52:30', 'downloadable_student.php'),
(15, 186, 'Add Practice Quiz file', '2015-02-23 10:34:50', 'student_quiz_list.php'),
(16, 192, 'Add Assignment file name <b>materi pert 1</b>', '2015-05-06 16:47:30', 'assignment_student.php'),
(17, 188, 'Add Downloadable Materials file name <b>test</b>', '2015-05-06 21:35:22', 'downloadable_student.php'),
(18, 188, 'Add Downloadable Materials file name <b>tes2</b>', '2015-05-07 20:54:19', 'downloadable_student.php'),
(19, 194, 'Add Practice Quiz file', '2015-05-11 15:35:10', 'student_quiz_list.php'),
(20, 0, 'Add Downloadable Materials file name <b>Materi pert 1</b>', '2015-05-13 06:17:44', 'downloadable_student.php'),
(21, 201, 'Add Downloadable Materials file name <b>Materi pert 1</b>', '2015-05-13 06:25:14', 'downloadable_student.php'),
(22, 201, 'Add Practice Quiz file', '2015-05-13 06:35:36', 'student_quiz_list.php'),
(23, 201, 'Add Practice Quiz file', '2015-05-13 06:35:59', 'student_quiz_list.php'),
(24, 201, 'Add Annoucements', '2015-05-13 12:14:12', 'announcements_student.php'),
(25, 201, 'Add Annoucements', '2015-05-13 12:15:43', 'announcements_student.php'),
(26, 201, 'Add Downloadable Materials file name <b>pert  2</b>', '2015-05-13 13:07:28', 'downloadable_student.php'),
(27, 201, 'Add Practice Quiz file', '2015-05-13 18:38:57', 'student_quiz_list.php'),
(28, 201, 'Add Practice Quiz file', '2015-05-13 18:42:08', 'student_quiz_list.php'),
(29, 200, 'Add Practice Quiz file', '2015-05-26 11:04:42', 'student_quiz_list.php'),
(30, 200, 'Add Assignment file name <b>tugas 1</b>', '2015-05-26 13:23:13', 'assignment_student.php'),
(31, 203, 'Tambah diskusi', '2015-05-26 15:36:57', 'student_quiz_list.php'),
(32, 200, 'Tambah diskusi', '2015-05-27 14:07:34', 'student_quiz_list.php');

-- --------------------------------------------------------

--
-- Table structure for table `notification_read`
--

CREATE TABLE IF NOT EXISTS `notification_read` (
  `notification_read_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `student_read` varchar(50) NOT NULL,
  `notification_id` int(11) NOT NULL,
  PRIMARY KEY (`notification_read_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `notification_read`
--

INSERT INTO `notification_read` (`notification_read_id`, `student_id`, `student_read`, `notification_id`) VALUES
(1, 111, 'yes', 15),
(2, 218, 'yes', 21);

-- --------------------------------------------------------

--
-- Table structure for table `notification_read_teacher`
--

CREATE TABLE IF NOT EXISTS `notification_read_teacher` (
  `notification_read_teacher_id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_id` int(11) NOT NULL,
  `student_read` varchar(100) NOT NULL,
  `notification_id` int(11) NOT NULL,
  PRIMARY KEY (`notification_read_teacher_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `notification_read_teacher`
--

INSERT INTO `notification_read_teacher` (`notification_read_teacher_id`, `teacher_id`, `student_read`, `notification_id`) VALUES
(1, 12, 'yes', 14),
(2, 12, 'yes', 13),
(3, 12, 'yes', 12),
(4, 12, 'yes', 11),
(5, 12, 'yes', 10),
(6, 12, 'yes', 9),
(7, 12, 'yes', 8),
(8, 12, 'yes', 7),
(9, 18, 'yes', 18);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE IF NOT EXISTS `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_id` int(3) NOT NULL,
  `category_id` tinyint(4) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `post_creator` int(11) NOT NULL,
  `post_content` text NOT NULL,
  `post_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `teacher_id`, `category_id`, `topic_id`, `post_creator`, `post_content`, `post_date`) VALUES
(1, 0, 1, 1, 9, 'Aljabar pusing', '2015-06-05 07:13:23'),
(2, 0, 1, 1, 9, 'test', '2015-06-05 07:16:07'),
(3, 0, 1, 1, 9, 'test', '2015-06-05 07:17:34'),
(4, 0, 1, 1, 9, 'test', '2015-06-05 07:19:58'),
(5, 0, 1, 1, 9, 'test', '2015-06-05 07:20:19'),
(6, 0, 1, 1, 9, 'Alajabar adalah matematika', '2015-06-05 07:20:29');

-- --------------------------------------------------------

--
-- Table structure for table `post_comment`
--

CREATE TABLE IF NOT EXISTS `post_comment` (
  `post_commentID` int(11) NOT NULL AUTO_INCREMENT,
  `postID` int(30) NOT NULL,
  `usersID` int(30) NOT NULL,
  `comment` text NOT NULL,
  `status` smallint(1) NOT NULL,
  PRIMARY KEY (`post_commentID`),
  KEY `fk_post_comment_postID` (`postID`),
  KEY `fk_post_comment_usersID` (`usersID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `post_comment`
--

INSERT INTO `post_comment` (`post_commentID`, `postID`, `usersID`, `comment`, `status`) VALUES
(1, 142, 25, 'TERSERAH...', 0),
(2, 142, 25, 'jika iya jika', 0),
(3, 142, 25, 'test<br />\n', 0);

-- --------------------------------------------------------

--
-- Table structure for table `post_status`
--

CREATE TABLE IF NOT EXISTS `post_status` (
  `post_statusID` int(11) NOT NULL AUTO_INCREMENT,
  `postID` int(30) NOT NULL,
  `usersID` int(30) NOT NULL,
  `status` varchar(7) NOT NULL,
  PRIMARY KEY (`post_statusID`),
  KEY `fk_postID_post_status` (`postID`),
  KEY `fk_usersID_post_status` (`usersID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `profile_pics`
--

CREATE TABLE IF NOT EXISTS `profile_pics` (
  `profile_picID` int(11) NOT NULL AUTO_INCREMENT,
  `usersID` int(30) NOT NULL,
  `pic_name` text NOT NULL,
  PRIMARY KEY (`profile_picID`),
  KEY `fk_usersID_pic` (`usersID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `profile_pics`
--

INSERT INTO `profile_pics` (`profile_picID`, `usersID`, `pic_name`) VALUES
(7, 17, 'images/head-linux.gif'),
(11, 24, 'images/bgimg1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `public_chat_msg`
--

CREATE TABLE IF NOT EXISTS `public_chat_msg` (
  `pcmID` int(11) NOT NULL AUTO_INCREMENT,
  `usersID` int(30) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`pcmID`),
  KEY `fk_pcm_usersID` (`usersID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=87 ;

--
-- Dumping data for table `public_chat_msg`
--

INSERT INTO `public_chat_msg` (`pcmID`, `usersID`, `message`) VALUES
(84, 24, 'smiley_cool.png'),
(85, 25, 'cabe'),
(86, 25, 'TEST');

-- --------------------------------------------------------

--
-- Table structure for table `question_type`
--

CREATE TABLE IF NOT EXISTS `question_type` (
  `question_type_id` int(11) NOT NULL,
  `question_type` varchar(150) NOT NULL,
  PRIMARY KEY (`question_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question_type`
--

INSERT INTO `question_type` (`question_type_id`, `question_type`) VALUES
(1, 'Multiple Choice'),
(2, 'True or False'),
(3, 'Diskusi');

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE IF NOT EXISTS `quiz` (
  `quiz_id` int(11) NOT NULL AUTO_INCREMENT,
  `quiz_title` varchar(50) NOT NULL,
  `quiz_description` varchar(100) NOT NULL,
  `date_added` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `forum` varchar(100) NOT NULL,
  `forumdeskripsi` varchar(100) NOT NULL,
  `tgldeskripsi` varchar(100) NOT NULL,
  PRIMARY KEY (`quiz_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`quiz_id`, `quiz_title`, `quiz_description`, `date_added`, `teacher_id`, `forum`, `forumdeskripsi`, `tgldeskripsi`) VALUES
(3, 'Sample Test', 'Test', '2013-12-03 23:01:56', 12, '', '', ''),
(4, 'Chapter 1', 'topics', '2013-12-13 01:51:02', 14, '', '', ''),
(5, 'test3', '123', '2014-01-16 04:12:07', 12, '', '', ''),
(6, 'Quiz', 'Quiz', '2015-02-23 10:29:35', 11, '', '', ''),
(7, 'test', 'hhhhhhhhhhhhhhhhhhhhhhhh', '2015-05-05 23:26:14', 9, '', '', ''),
(8, 'minggu 1', 'true or false', '2015-05-06 21:40:22', 220, '', '', ''),
(9, 'Pertemuan1', 'abc', '2015-05-13 06:36:35', 5, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_question`
--

CREATE TABLE IF NOT EXISTS `quiz_question` (
  `quiz_question_id` int(11) NOT NULL AUTO_INCREMENT,
  `quiz_id` int(11) NOT NULL,
  `question_text` varchar(100) NOT NULL,
  `question_type_id` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  `date_added` varchar(100) NOT NULL,
  `answer` varchar(100) NOT NULL,
  `forum` varchar(100) NOT NULL,
  PRIMARY KEY (`quiz_question_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=47 ;

--
-- Dumping data for table `quiz_question`
--

INSERT INTO `quiz_question` (`quiz_question_id`, `quiz_id`, `question_text`, `question_type_id`, `points`, `date_added`, `answer`, `forum`) VALUES
(33, 5, '<p>q</p>\r\n', 2, 0, '2014-01-17 04:15:03', 'False', ''),
(34, 3, '<p>Php Stands for ?</p>\r\n', 1, 0, '2014-01-17 12:25:17', 'C', ''),
(35, 3, '<p>Echo is a Php code that display the output.</p>\r\n', 2, 0, '2014-01-17 12:26:18', 'True', ''),
(36, 6, '<p>Siapa tuhanmu?</p>\r\n', 1, 0, '2015-02-23 10:30:44', 'A', ''),
(38, 7, '<p>bebAEFGGG<br />\r\n&nbsp;</p>\r\n', 2, 0, '2015-05-05 23:29:04', 'f', ''),
(39, 7, '<p>bebAEFGGG<br />\r\n&nbsp;</p>\r\n', 2, 0, '2015-05-05 23:29:35', 't', ''),
(40, 8, '<p>air di simpan di piring</p>\r\n', 2, 0, '2015-05-06 21:41:52', 'False', ''),
(42, 9, '<p>jika haus hendaknya kita?</p>\r\n', 1, 0, '2015-05-13 06:50:22', 'B', ''),
(43, 9, '<p>1. &quot; Selamat pagi sahabat pendengar &quot; kalimat sapaan tersebut dibacakan oleh penyiar?</', 1, 0, '2015-05-13 06:52:13', 'A', ''),
(44, 9, '<p>1. &quot; Selamat pagi sahabat pendengar &quot; kalimat sapaan tersebut dibacakan oleh penyiar?&l', 3, 0, '2015-05-13 06:58:26', '', ''),
(45, 7, '<p>Apakah manusia bernafas dengan insang?<br />\r\n&nbsp;</p>\r\n', 2, 0, '2015-05-26 11:06:26', '', ''),
(46, 7, '<p>uwi anak singkong?</p>\r\n', 2, 0, '2015-05-26 11:10:09', 'f', '');

-- --------------------------------------------------------

--
-- Table structure for table `school_year`
--

CREATE TABLE IF NOT EXISTS `school_year` (
  `school_year_id` int(11) NOT NULL AUTO_INCREMENT,
  `school_year` varchar(100) NOT NULL,
  PRIMARY KEY (`school_year_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `school_year`
--

INSERT INTO `school_year` (`school_year_id`, `school_year`) VALUES
(2, '2012-2013'),
(3, '2013-2014'),
(4, '2014-2015');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `class_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `forum_notification` enum('0','1') NOT NULL DEFAULT '1',
  `email` varchar(30) NOT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=228 ;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `firstname`, `lastname`, `class_id`, `username`, `password`, `location`, `status`, `forum_notification`, `email`) VALUES
(227, 'Rina', 'Lagi', 13, '0909', '12345678', '', 'Registered', '1', ''),
(226, 'Amelia', 'Haryati', 13, '12131004', 'amelia1', '', 'Registered', '1', ''),
(225, 'Yuly', '123uwi', 13, '0102110080', '123uwi', 'uploads/Penguins.jpg', 'Registered', '1', ''),
(222, 'rina', 'rina123', 13, '123', 'rinarina', 'uploads/Chrysanthemum.jpg', 'Registered', '1', ''),
(224, 'tes1', 'tes2', 13, '20100452', 'tes123', 'uploads/Penguins.jpg', 'Registered', '1', ''),
(219, 'oio', 'ioi', 14, '0102110084', '123', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered', '1', ''),
(218, 'karina', 'temmy', 13, '20100452', 'heaven', 'uploads/Lighthouse.jpg', 'Registered', '1', '');

-- --------------------------------------------------------

--
-- Table structure for table `student_assignment`
--

CREATE TABLE IF NOT EXISTS `student_assignment` (
  `student_assignment_id` int(11) NOT NULL AUTO_INCREMENT,
  `assignment_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `assignment_fdatein` varchar(50) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `student_id` int(11) NOT NULL,
  `grade` varchar(5) NOT NULL,
  PRIMARY KEY (`student_assignment_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `student_assignment`
--

INSERT INTO `student_assignment` (`student_assignment_id`, `assignment_id`, `floc`, `assignment_fdatein`, `fdesc`, `fname`, `student_id`, `grade`) VALUES
(21, 13, 'admin/uploads/1414_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-24 11:59:28', 'fasfasfasfsfsafasf', 'safas', 93, ''),
(22, 13, 'admin/uploads/5554_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-24 12:07:46', 'fasfaf', 'fdasf', 93, ''),
(23, 13, 'admin/uploads/3202_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-24 12:08:21', 'fasf', 'fasf', 93, ''),
(24, 13, 'admin/uploads/6535_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-24 12:09:19', 'fasf', 'saff', 93, ''),
(25, 12, 'admin/uploads/8974_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-24 12:24:38', 'fgs', 'gs', 93, ''),
(26, 13, 'admin/uploads/9035_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-24 12:51:44', 'q', 'q', 93, ''),
(27, 13, 'admin/uploads/4503_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-24 12:52:44', 'fasfaf', 'fasf', 93, ''),
(28, 13, 'admin/uploads/7827_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-24 12:54:20', 'ffsafsfafsaf', 'fsa', 93, ''),
(29, 13, 'admin/uploads/6680_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-24 13:02:49', 'jkl', 'jkl', 93, ''),
(30, 14, 'admin/uploads/1457_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-24 13:06:56', 'fasf', 'saf', 93, ''),
(31, 16, 'admin/uploads/7151_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-25 10:39:52', 'test', 'my_assginment', 93, ''),
(32, 17, 'admin/uploads/1918_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-25 15:54:19', 'q', 'q', 71, '95'),
(33, 31, 'admin/uploads/7519_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-12-07 20:58:58', 'dad', 'das', 75, ''),
(34, 20, 'admin/uploads/2416_File_about.php', '2014-01-14 08:51:53', 'Asssd', 'Assignment1', 136, ''),
(35, 20, 'admin/uploads/5560_File_Chrysanthemum.jpg', '2014-01-14 08:52:22', 'sder', 'sfew', 136, '98'),
(36, 32, 'admin/uploads/4998_File_listing kode.docx', '2015-05-26 14:39:26', 'ini', 'jawaban tugas 1', 225, 'acc');

-- --------------------------------------------------------

--
-- Table structure for table `student_backpack`
--

CREATE TABLE IF NOT EXISTS `student_backpack` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `floc` varchar(100) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `student_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `student_backpack`
--

INSERT INTO `student_backpack` (`file_id`, `floc`, `fdatein`, `fdesc`, `student_id`, `fname`) VALUES
(1, 'admin/uploads/2658_File_kevin.docx', '2014-02-13 11:11:50', 'test', 210, 'test'),
(3, 'admin/uploads/1458_File_contoh.txt', '2015-04-28 11:46:58', 'contoh', 111, 'contoh'),
(4, 'admin/uploads/3680_File_@_--.jpg', '2015-05-07 21:10:30', 'tes4', 111, 'tes4');

-- --------------------------------------------------------

--
-- Table structure for table `student_class_quiz`
--

CREATE TABLE IF NOT EXISTS `student_class_quiz` (
  `student_class_quiz_id` int(11) NOT NULL AUTO_INCREMENT,
  `class_quiz_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `student_quiz_time` varchar(100) NOT NULL,
  `grade` varchar(100) NOT NULL,
  PRIMARY KEY (`student_class_quiz_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `student_class_quiz`
--

INSERT INTO `student_class_quiz` (`student_class_quiz_id`, `class_quiz_id`, `student_id`, `student_quiz_time`, `grade`) VALUES
(1, 15, 107, '3600', '0 out of 2'),
(2, 16, 136, '3600', '0 out of 0'),
(3, 17, 111, '3599', '1 out of 1'),
(4, 19, 218, '3127', '0 out of 0'),
(5, 18, 218, '3127', '0 out of 0'),
(6, 19, 5, '1772', ''),
(7, 20, 218, '3127', '1 out of 3'),
(8, 21, 218, '3127', ''),
(9, 22, 225, '3583', '1 out of 4'),
(10, 22, 226, '3599', '0 out of 4'),
(11, 23, 219, '3599', '0 out of 0'),
(12, 24, 225, '3583', '');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE IF NOT EXISTS `subject` (
  `subject_id` int(11) NOT NULL AUTO_INCREMENT,
  `subject_code` varchar(100) NOT NULL,
  `subject_title` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `unit` int(11) NOT NULL,
  `Pre_req` varchar(100) NOT NULL,
  `semester` varchar(100) NOT NULL,
  PRIMARY KEY (`subject_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=60 ;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `subject_code`, `subject_title`, `category`, `description`, `unit`, `Pre_req`, `semester`) VALUES
(45, '001', 'Penjas Orkes', '', '<p>-</p>\r\n', 1, '', 'Pertama'),
(46, '002', 'Biologi', '', '<p>-</p>\r\n', 1, '', 'Pertama'),
(47, '003', 'Ekonomi & Akuntansi', '', '<p>-</p>\r\n', 1, '', 'Pertama'),
(48, '004', 'Agama Budha', '', '<p>-</p>\r\n', 1, '', 'Pertama'),
(49, '005', 'Kimia', '', '<p>-</p>\r\n', 1, '', 'Pertama'),
(50, '006', 'Sosiologi', '', '<p>-</p>\r\n', 1, '', 'Pertama'),
(51, '007', 'Fisika', '', '<p>-</p>\r\n', 1, '', 'Pertama'),
(52, '008', 'Sejarah', '', '<p>-</p>\r\n', 1, '', 'Pertama'),
(53, '009', 'Budi Pekerti Agama Budha', '', '<p>-</p>\r\n', 1, '', 'Pertama'),
(54, '010', 'Geografi', '', '<p>-</p>\r\n', 1, '', 'Pertama'),
(55, '011', 'Geografi', '', '<p>-</p>\r\n', 1, '', 'Pertama'),
(56, '012', 'Pendidikan Kewarganegaraan', '', '<p>-</p>\r\n', 1, '', 'Pertama'),
(57, '013a', 'Bahasa Inggris', '', '<p>-</p>\r\n', 1, '', 'Pertama'),
(58, '013b', 'Bahasa Inggris', '', '<p>-</p>\r\n', 1, '', 'Pertama'),
(59, '013c', 'Bahasa Inggris', '', '<p>-</p>\r\n', 1, '', 'Pertama'),
(44, '123', 'indonesia', '', '<p>judul buku suka beda beda</p>\r\n', 1, '', 'Kedua'),
(15, 'Penjaskes', 'Penjaskes', '', '', 1, '', 'Pertama');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE IF NOT EXISTS `teacher` (
  `teacher_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `department_id` int(11) NOT NULL,
  `location` varchar(200) NOT NULL,
  `about` varchar(500) NOT NULL,
  `teacher_status` varchar(20) NOT NULL,
  `teacher_stat` varchar(100) NOT NULL,
  `email` varchar(30) NOT NULL,
  `forum_notification` enum('0','1') NOT NULL DEFAULT '1',
  PRIMARY KEY (`teacher_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `username`, `password`, `firstname`, `lastname`, `department_id`, `location`, `about`, `teacher_status`, `teacher_stat`, `email`, `forum_notification`) VALUES
(9, '1003', 'test', 'Yuly', 'Purwaningsih', 10, 'uploads/~).jpg', '', 'Registered', 'Activated', '', '1'),
(22, '1002', 'retno1', 'Ir. Retno', 'Widyastuti', 10, 'uploads/Hydrangeas.jpg', '', 'Registered', 'Activated', '', '1'),
(23, '1001', 'budi1', 'Drs. Setia', 'Budi', 10, '', '', 'Registered', 'Activated', '', '1'),
(24, '0987654321', 'qwerty', 'guru', 'guru', 11, '', '', 'Registered', 'Activated', '', '1'),
(25, '01020299', '12345678', 'Mike', 'Muhinar', 10, '', '', 'Registered', 'Activated', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_backpack`
--

CREATE TABLE IF NOT EXISTS `teacher_backpack` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `floc` varchar(100) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_class`
--

CREATE TABLE IF NOT EXISTS `teacher_class` (
  `teacher_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `thumbnails` varchar(100) NOT NULL,
  `school_year` varchar(100) NOT NULL,
  PRIMARY KEY (`teacher_class_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=205 ;

--
-- Dumping data for table `teacher_class`
--

INSERT INTO `teacher_class` (`teacher_class_id`, `teacher_id`, `class_id`, `subject_id`, `thumbnails`, `school_year`) VALUES
(97, 9, 7, 15, 'admin/uploads/thumbnails.jpg', '2012-2013'),
(135, 0, 22, 29, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(151, 5, 7, 14, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(152, 5, 8, 14, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(153, 5, 13, 36, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(157, 18, 15, 23, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(158, 18, 16, 23, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(159, 18, 12, 23, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(160, 18, 7, 29, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(165, 134, 15, 23, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(167, 12, 13, 35, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(168, 12, 14, 35, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(170, 12, 16, 24, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(172, 18, 13, 39, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(173, 18, 14, 39, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(174, 13, 12, 16, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(175, 13, 13, 16, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(176, 13, 14, 16, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(177, 14, 12, 32, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(178, 14, 13, 32, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(179, 14, 14, 32, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(180, 19, 13, 22, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(181, 12, 20, 24, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(183, 12, 18, 24, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(184, 12, 17, 25, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(185, 12, 7, 22, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(186, 11, 13, 16, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(187, 9, 15, 23, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(195, 18, 13, 39, 'admin/uploads/thumbnails.jpg', '2014-2015'),
(198, 11, 13, 29, 'admin/uploads/thumbnails.jpg', '2014-2015'),
(200, 9, 13, 43, 'admin/uploads/thumbnails.jpg', '2014-2015'),
(201, 5, 13, 22, 'admin/uploads/thumbnails.jpg', '2014-2015'),
(202, 22, 14, 43, 'admin/uploads/thumbnails.jpg', '2014-2015'),
(203, 23, 14, 44, 'admin/uploads/thumbnails.jpg', '2014-2015'),
(204, 23, 13, 54, 'admin/uploads/thumbnails.jpg', '2014-2015');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_class_announcements`
--

CREATE TABLE IF NOT EXISTS `teacher_class_announcements` (
  `teacher_class_announcements_id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(500) NOT NULL,
  `teacher_id` varchar(100) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `date` varchar(50) NOT NULL,
  PRIMARY KEY (`teacher_class_announcements_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `teacher_class_announcements`
--

INSERT INTO `teacher_class_announcements` (`teacher_class_announcements_id`, `content`, `teacher_id`, `teacher_class_id`, `date`) VALUES
(2, '<p><strong>Project Deadline</strong></p>\r\n\r\n<p>In December 1st week&nbsp; system must fully functioning.</p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n', '9', 87, '2013-10-30 13:21:13'),
(21, '<p>fsaf</p>\r\n', '9', 87, '2013-10-30 14:33:21'),
(31, '<p>Hi im kevin i edit this</p>\r\n', '9', 87, '2013-10-30 15:41:56'),
(33, '<p>hello teph</p>\r\n', '9', 95, '2013-10-30 17:44:28'),
(34, '<p>hello guys</p>\r\n', '9', 95, '2013-11-02 10:51:39'),
(35, '<p>dsdasd</p>\r\n', '12', 147, '2013-11-16 13:59:33'),
(36, '<p>BSIS 1A: Submit assignment on November 20, 2013 before 5pm.</p>\r\n', '12', 154, '2013-11-18 15:29:34'),
(37, '<p>aaaaa<br />\r\n&nbsp;</p>\r\n', '12', 167, '2014-01-17 14:36:32'),
(38, '<p>wala klase<img alt="sad" src="http://localhost/lms/admin/vendors/ckeditor/plugins/smiley/images/sad_smile.gif" style="height:20px; width:20px" title="sad" /></p>\r\n', '12', 167, '2014-02-13 13:45:59'),
(39, '<p>bala bala</p>\r\n', '5', 201, '2015-05-13 12:14:12'),
(40, '<p>asaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</p>\r\n', '5', 201, '2015-05-13 12:15:43');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_class_student`
--

CREATE TABLE IF NOT EXISTS `teacher_class_student` (
  `teacher_class_student_id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_class_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  PRIMARY KEY (`teacher_class_student_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=499 ;

--
-- Dumping data for table `teacher_class_student`
--

INSERT INTO `teacher_class_student` (`teacher_class_student_id`, `teacher_class_id`, `student_id`, `teacher_id`) VALUES
(31, 165, 141, 134),
(32, 165, 134, 134),
(54, 167, 113, 12),
(55, 167, 112, 12),
(57, 167, 108, 12),
(58, 167, 105, 12),
(59, 167, 106, 12),
(60, 167, 103, 12),
(61, 167, 104, 12),
(62, 167, 100, 12),
(63, 167, 101, 12),
(64, 167, 102, 12),
(65, 167, 97, 12),
(66, 167, 98, 12),
(67, 167, 95, 12),
(68, 167, 94, 12),
(69, 167, 76, 12),
(70, 167, 107, 12),
(71, 167, 110, 12),
(72, 167, 109, 12),
(73, 167, 99, 12),
(74, 167, 96, 12),
(75, 167, 75, 12),
(76, 167, 74, 12),
(77, 167, 73, 12),
(78, 167, 72, 12),
(79, 167, 71, 12),
(80, 168, 135, 12),
(81, 168, 140, 12),
(82, 168, 162, 12),
(83, 168, 164, 12),
(84, 168, 165, 12),
(85, 168, 166, 12),
(86, 168, 167, 12),
(87, 168, 168, 12),
(88, 168, 169, 12),
(89, 168, 172, 12),
(90, 168, 171, 12),
(91, 168, 173, 12),
(92, 168, 174, 12),
(93, 168, 175, 12),
(94, 168, 176, 12),
(95, 168, 177, 12),
(96, 168, 178, 12),
(97, 168, 179, 12),
(98, 168, 180, 12),
(99, 168, 181, 12),
(100, 168, 182, 12),
(101, 168, 183, 12),
(102, 168, 206, 12),
(103, 168, 207, 12),
(127, 172, 113, 18),
(128, 172, 112, 18),
(129, 172, 111, 18),
(130, 172, 108, 18),
(131, 172, 105, 18),
(132, 172, 106, 18),
(133, 172, 103, 18),
(134, 172, 104, 18),
(135, 172, 100, 18),
(136, 172, 101, 18),
(137, 172, 102, 18),
(138, 172, 97, 18),
(139, 172, 98, 18),
(140, 172, 95, 18),
(141, 172, 94, 18),
(142, 172, 76, 18),
(143, 172, 107, 18),
(144, 172, 110, 18),
(145, 172, 109, 18),
(146, 172, 99, 18),
(147, 172, 96, 18),
(148, 172, 75, 18),
(149, 172, 74, 18),
(150, 172, 73, 18),
(151, 172, 72, 18),
(152, 172, 71, 18),
(153, 173, 135, 18),
(154, 173, 140, 18),
(155, 173, 162, 18),
(156, 173, 164, 18),
(157, 173, 165, 18),
(158, 173, 166, 18),
(159, 173, 167, 18),
(160, 173, 168, 18),
(161, 173, 169, 18),
(162, 173, 172, 18),
(163, 173, 171, 18),
(164, 173, 173, 18),
(165, 173, 174, 18),
(166, 173, 175, 18),
(167, 173, 176, 18),
(168, 173, 177, 18),
(169, 173, 178, 18),
(170, 173, 179, 18),
(171, 173, 180, 18),
(172, 173, 181, 18),
(173, 173, 182, 18),
(174, 173, 183, 18),
(175, 173, 206, 18),
(176, 173, 207, 18),
(177, 174, 134, 13),
(178, 174, 142, 13),
(179, 174, 143, 13),
(180, 174, 144, 13),
(181, 174, 145, 13),
(182, 174, 146, 13),
(183, 174, 147, 13),
(184, 174, 148, 13),
(185, 174, 149, 13),
(186, 174, 150, 13),
(187, 174, 151, 13),
(188, 174, 152, 13),
(189, 174, 153, 13),
(190, 174, 154, 13),
(191, 174, 155, 13),
(192, 174, 156, 13),
(193, 174, 157, 13),
(194, 174, 158, 13),
(195, 174, 159, 13),
(196, 175, 113, 13),
(197, 175, 112, 13),
(198, 175, 111, 13),
(199, 175, 108, 13),
(200, 175, 105, 13),
(201, 175, 106, 13),
(202, 175, 103, 13),
(203, 175, 104, 13),
(204, 175, 100, 13),
(205, 175, 101, 13),
(206, 175, 102, 13),
(207, 175, 97, 13),
(208, 175, 98, 13),
(209, 175, 95, 13),
(210, 175, 94, 13),
(211, 175, 76, 13),
(212, 175, 107, 13),
(213, 175, 110, 13),
(214, 175, 109, 13),
(215, 175, 99, 13),
(216, 175, 96, 13),
(217, 175, 75, 13),
(218, 175, 74, 13),
(219, 175, 73, 13),
(220, 175, 72, 13),
(221, 175, 71, 13),
(222, 176, 135, 13),
(223, 176, 140, 13),
(224, 176, 162, 13),
(225, 176, 164, 13),
(226, 176, 165, 13),
(227, 176, 166, 13),
(228, 176, 167, 13),
(229, 176, 168, 13),
(230, 176, 169, 13),
(231, 176, 172, 13),
(232, 176, 171, 13),
(233, 176, 173, 13),
(234, 176, 174, 13),
(235, 176, 175, 13),
(236, 176, 176, 13),
(237, 176, 177, 13),
(238, 176, 178, 13),
(239, 176, 179, 13),
(240, 176, 180, 13),
(241, 176, 181, 13),
(242, 176, 182, 13),
(243, 176, 183, 13),
(244, 176, 206, 13),
(245, 176, 207, 13),
(246, 177, 134, 14),
(247, 177, 142, 14),
(248, 177, 143, 14),
(249, 177, 144, 14),
(250, 177, 145, 14),
(251, 177, 146, 14),
(252, 177, 147, 14),
(253, 177, 148, 14),
(254, 177, 149, 14),
(255, 177, 150, 14),
(256, 177, 151, 14),
(257, 177, 152, 14),
(258, 177, 153, 14),
(259, 177, 154, 14),
(260, 177, 155, 14),
(261, 177, 156, 14),
(262, 177, 157, 14),
(263, 177, 158, 14),
(264, 177, 159, 14),
(265, 178, 113, 14),
(266, 178, 112, 14),
(267, 178, 111, 14),
(268, 178, 108, 14),
(269, 178, 105, 14),
(270, 178, 106, 14),
(271, 178, 103, 14),
(272, 178, 104, 14),
(273, 178, 100, 14),
(274, 178, 101, 14),
(275, 178, 102, 14),
(276, 178, 97, 14),
(277, 178, 98, 14),
(278, 178, 95, 14),
(279, 178, 94, 14),
(280, 178, 76, 14),
(281, 178, 107, 14),
(282, 178, 110, 14),
(283, 178, 109, 14),
(284, 178, 99, 14),
(285, 178, 96, 14),
(286, 178, 75, 14),
(287, 178, 74, 14),
(288, 178, 73, 14),
(289, 178, 72, 14),
(290, 178, 71, 14),
(291, 179, 135, 14),
(292, 179, 140, 14),
(293, 179, 162, 14),
(294, 179, 164, 14),
(295, 179, 165, 14),
(296, 179, 166, 14),
(297, 179, 167, 14),
(298, 179, 168, 14),
(299, 179, 169, 14),
(300, 179, 172, 14),
(301, 179, 171, 14),
(302, 179, 173, 14),
(303, 179, 174, 14),
(304, 179, 175, 14),
(305, 179, 176, 14),
(306, 179, 177, 14),
(307, 179, 178, 14),
(308, 179, 179, 14),
(309, 179, 180, 14),
(310, 179, 181, 14),
(311, 179, 182, 14),
(312, 179, 183, 14),
(313, 179, 206, 14),
(314, 179, 207, 14),
(315, 180, 113, 19),
(316, 180, 112, 19),
(317, 180, 111, 19),
(318, 180, 108, 19),
(319, 180, 105, 19),
(320, 180, 106, 19),
(321, 180, 103, 19),
(322, 180, 104, 19),
(323, 180, 100, 19),
(324, 180, 101, 19),
(325, 180, 102, 19),
(326, 180, 97, 19),
(327, 180, 98, 19),
(328, 180, 95, 19),
(329, 180, 94, 19),
(330, 180, 76, 19),
(331, 180, 107, 19),
(332, 180, 110, 19),
(333, 180, 109, 19),
(334, 180, 99, 19),
(335, 180, 96, 19),
(336, 180, 75, 19),
(337, 180, 74, 19),
(338, 180, 73, 19),
(339, 180, 72, 19),
(340, 180, 71, 19),
(341, 181, 209, 12),
(342, 181, 210, 12),
(345, 183, 213, 12),
(346, 183, 214, 12),
(347, 183, 215, 12),
(348, 183, 216, 12),
(349, 184, 184, 12),
(350, 184, 185, 12),
(351, 184, 186, 12),
(352, 184, 187, 12),
(353, 184, 188, 12),
(354, 184, 189, 12),
(355, 184, 190, 12),
(356, 184, 191, 12),
(358, 184, 193, 12),
(359, 184, 194, 12),
(360, 184, 195, 12),
(361, 184, 196, 12),
(362, 184, 197, 12),
(363, 184, 198, 12),
(364, 184, 199, 12),
(365, 184, 200, 12),
(366, 184, 201, 12),
(367, 184, 202, 12),
(368, 184, 203, 12),
(369, 184, 204, 12),
(370, 184, 205, 12),
(371, 184, 217, 12),
(372, 184, 192, 12),
(373, 185, 93, 12),
(374, 185, 136, 12),
(375, 185, 138, 12),
(376, 185, 139, 12),
(377, 185, 211, 12),
(378, 186, 113, 11),
(379, 186, 112, 11),
(380, 186, 111, 11),
(381, 186, 108, 11),
(382, 186, 105, 11),
(383, 186, 106, 11),
(384, 186, 103, 11),
(385, 186, 104, 11),
(386, 186, 100, 11),
(387, 186, 101, 11),
(388, 186, 102, 11),
(389, 186, 97, 11),
(390, 186, 98, 11),
(391, 186, 95, 11),
(392, 186, 94, 11),
(393, 186, 76, 11),
(394, 186, 107, 11),
(395, 186, 110, 11),
(396, 186, 109, 11),
(397, 186, 99, 11),
(398, 186, 96, 11),
(399, 186, 75, 11),
(400, 186, 74, 11),
(401, 186, 73, 11),
(402, 186, 72, 11),
(403, 186, 71, 11),
(404, 187, 141, 9),
(405, 187, 212, 9),
(483, 198, 218, 11),
(485, 200, 218, 9),
(486, 201, 218, 5),
(487, 202, 219, 22),
(488, 200, 219, 9),
(491, 200, 225, 9),
(492, 200, 226, 9),
(493, 203, 219, 23),
(494, 204, 226, 23),
(495, 204, 222, 23),
(496, 204, 224, 23),
(497, 204, 218, 23),
(498, 200, 227, 227);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_notification`
--

CREATE TABLE IF NOT EXISTS `teacher_notification` (
  `teacher_notification_id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_class_id` int(11) NOT NULL,
  `notification` varchar(100) NOT NULL,
  `date_of_notification` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `student_id` int(11) NOT NULL,
  `assignment_id` int(11) NOT NULL,
  PRIMARY KEY (`teacher_notification_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `teacher_notification`
--

INSERT INTO `teacher_notification` (`teacher_notification_id`, `teacher_class_id`, `notification`, `date_of_notification`, `link`, `student_id`, `assignment_id`) VALUES
(15, 160, 'Submit Assignment file name <b>my_assginment</b>', '2013-11-25 10:39:52', 'view_submit_assignment.php', 93, 16),
(17, 161, 'Submit Assignment file name <b>q</b>', '2013-11-25 15:54:19', 'view_submit_assignment.php', 71, 17),
(18, 172, 'Add Downloadable Materials file name <b>contoh</b>', '2015-02-23 10:26:45', 'downloadable.php', 111, 0),
(19, 200, 'Submit Assignment file name <b>jawaban tugas 1</b>', '2015-05-26 14:39:26', 'view_submit_assignment.php', 225, 32);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_shared`
--

CREATE TABLE IF NOT EXISTS `teacher_shared` (
  `teacher_shared_id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_id` int(11) NOT NULL,
  `shared_teacher_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `fname` varchar(100) NOT NULL,
  PRIMARY KEY (`teacher_shared_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `teacher_shared`
--

INSERT INTO `teacher_shared` (`teacher_shared_id`, `teacher_id`, `shared_teacher_id`, `floc`, `fdatein`, `fdesc`, `fname`) VALUES
(1, 12, 14, 'admin/uploads/7939_File_449E26DB.jpg', '2014-02-20 09:55:32', 'sas', 'sss');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE IF NOT EXISTS `topics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` tinyint(33) NOT NULL,
  `topic_title` varchar(33) NOT NULL,
  `topic_creator` int(33) NOT NULL,
  `topic_last_user` int(11) DEFAULT NULL,
  `topic_date` datetime NOT NULL,
  `topic_reply_date` datetime NOT NULL,
  `topic_views` int(11) NOT NULL DEFAULT '0',
  `teacher_id` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `category_id`, `topic_title`, `topic_creator`, `topic_last_user`, `topic_date`, `topic_reply_date`, `topic_views`, `teacher_id`) VALUES
(1, 1, 'Aljabar', 9, 9, '2015-06-05 07:03:45', '2015-06-05 07:20:30', 34, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `firstname`, `lastname`) VALUES
(15, 'admin', 'admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `usersID` int(11) NOT NULL AUTO_INCREMENT,
  `email_add` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(30) NOT NULL,
  PRIMARY KEY (`usersID`),
  UNIQUE KEY `email_add` (`email_add`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`usersID`, `email_add`, `password`, `status`) VALUES
(17, 'agidao@gmail.com', 'ce51f048f5d93dddbb853d8611f6d05a', 'offline'),
(22, 'Guru1a', 'guru', 'offline'),
(24, 'dadzky33@gmail.com', 'admin', 'online'),
(25, '1a', 'tes123', 'online');

-- --------------------------------------------------------

--
-- Table structure for table `users_info`
--

CREATE TABLE IF NOT EXISTS `users_info` (
  `users_info_ID` int(11) NOT NULL AUTO_INCREMENT,
  `usersID` int(20) DEFAULT NULL,
  `Fname` varchar(50) DEFAULT NULL,
  `Lname` varchar(50) DEFAULT NULL,
  `Nname` varchar(50) DEFAULT NULL,
  `Gender` varchar(7) DEFAULT NULL,
  `Birthdate` date DEFAULT NULL,
  `Age` int(20) NOT NULL,
  PRIMARY KEY (`users_info_ID`),
  KEY `fk_UsersID` (`usersID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `users_info`
--

INSERT INTO `users_info` (`users_info_ID`, `usersID`, `Fname`, `Lname`, `Nname`, `Gender`, `Birthdate`, `Age`) VALUES
(26, 17, 'agidao', 'agidao', 'agidao', 'Male', '2007-01-03', 6),
(31, 22, 'Kelas 1A', 'Forum Diskusi', 'Guru', 'Male', '1995-06-30', 18),
(32, 24, 'Admin', 'Pengguna', 'admin', 'Male', '1995-05-26', 18),
(33, 25, 'Kelas 1A', 'Forum Diskusi', '1A', 'Male', '2009-04-01', 6);

-- --------------------------------------------------------

--
-- Table structure for table `users_post`
--

CREATE TABLE IF NOT EXISTS `users_post` (
  `postID` int(11) NOT NULL AUTO_INCREMENT,
  `usersID` int(30) NOT NULL,
  `users_post` text NOT NULL,
  `date_posted` date NOT NULL,
  PRIMARY KEY (`postID`),
  KEY `fk_usersID_post` (`usersID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=143 ;

--
-- Dumping data for table `users_post`
--

INSERT INTO `users_post` (`postID`, `usersID`, `users_post`, `date_posted`) VALUES
(140, 25, 'Tes Forum diskusi', '2015-04-23'),
(142, 25, 'Diskusi', '2015-05-05');

-- --------------------------------------------------------

--
-- Table structure for table `user_log`
--

CREATE TABLE IF NOT EXISTS `user_log` (
  `user_log_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `login_date` varchar(30) NOT NULL,
  `logout_date` varchar(30) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`user_log_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=142 ;

--
-- Dumping data for table `user_log`
--

INSERT INTO `user_log` (`user_log_id`, `username`, `login_date`, `logout_date`, `user_id`) VALUES
(84, 'admin', '2015-02-20 19:09:30', '2015-05-30 17:00:11', 15),
(85, 'admin', '2015-02-20 19:20:10', '2015-05-30 17:00:11', 15),
(86, 'admin', '2015-02-23 10:38:30', '2015-05-30 17:00:11', 15),
(87, 'admin', '2015-02-23 10:38:30', '2015-05-30 17:00:11', 15),
(88, 'admin', '2015-02-23 10:38:51', '2015-05-30 17:00:11', 15),
(89, 'admin', '2015-03-09 21:00:29', '2015-05-30 17:00:11', 15),
(90, 'admin', '2015-04-23 11:55:12', '2015-05-30 17:00:11', 15),
(91, 'admin', '2015-05-05 17:39:57', '2015-05-30 17:00:11', 15),
(92, 'admin', '2015-05-05 17:41:25', '2015-05-30 17:00:11', 15),
(93, 'admin', '2015-05-05 20:01:47', '2015-05-30 17:00:11', 15),
(94, 'admin', '2015-05-05 20:03:50', '2015-05-30 17:00:11', 15),
(95, 'admin', '2015-05-05 20:36:32', '2015-05-30 17:00:11', 15),
(96, 'admin', '2015-05-05 22:07:39', '2015-05-30 17:00:11', 15),
(97, 'admin', '2015-05-06 11:58:37', '2015-05-30 17:00:11', 15),
(98, 'admin', '2015-05-06 20:26:13', '2015-05-30 17:00:11', 15),
(99, 'admin', '2015-05-06 21:20:28', '2015-05-30 17:00:11', 15),
(100, 'admin', '2015-05-07 10:53:53', '2015-05-30 17:00:11', 15),
(101, 'admin', '2015-05-07 11:18:19', '2015-05-30 17:00:11', 15),
(102, 'admin', '2015-05-07 14:03:05', '2015-05-30 17:00:11', 15),
(103, 'admin', '2015-05-07 20:40:18', '2015-05-30 17:00:11', 15),
(104, 'admin', '2015-05-07 20:59:55', '2015-05-30 17:00:11', 15),
(105, 'admin', '2015-05-12 16:24:46', '2015-05-30 17:00:11', 15),
(106, 'admin', '2015-05-12 16:36:52', '2015-05-30 17:00:11', 15),
(107, 'admin', '2015-05-12 16:36:53', '2015-05-30 17:00:11', 15),
(108, 'admin', '2015-05-12 16:36:54', '2015-05-30 17:00:11', 15),
(124, 'admin', '2015-05-25 16:19:16', '2015-05-30 17:00:11', 15),
(125, 'admin', '2015-05-25 18:17:14', '2015-05-30 17:00:11', 15),
(126, 'admin', '2015-05-26 08:29:48', '2015-05-30 17:00:11', 15),
(127, 'admin', '2015-05-26 11:02:02', '2015-05-30 17:00:11', 15),
(128, 'admin', '2015-05-26 11:11:25', '2015-05-30 17:00:11', 15),
(129, 'admin', '2015-05-26 11:12:58', '2015-05-30 17:00:11', 15),
(141, 'admin', '2015-05-30 16:53:42', '2015-05-30 17:00:11', 15);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `post_comment`
--
ALTER TABLE `post_comment`
  ADD CONSTRAINT `fk_post_comment` FOREIGN KEY (`postID`) REFERENCES `users_post` (`postID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_post_comment_usersID` FOREIGN KEY (`usersID`) REFERENCES `users` (`usersID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `post_status`
--
ALTER TABLE `post_status`
  ADD CONSTRAINT `fk_postID_post_status` FOREIGN KEY (`postID`) REFERENCES `users_post` (`postID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_usersID_post_status` FOREIGN KEY (`usersID`) REFERENCES `users` (`usersID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `profile_pics`
--
ALTER TABLE `profile_pics`
  ADD CONSTRAINT `fk_usersID_pic` FOREIGN KEY (`usersID`) REFERENCES `users` (`usersID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `public_chat_msg`
--
ALTER TABLE `public_chat_msg`
  ADD CONSTRAINT `fk_pcm_usersID` FOREIGN KEY (`usersID`) REFERENCES `users` (`usersID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users_info`
--
ALTER TABLE `users_info`
  ADD CONSTRAINT `fk_UsersID` FOREIGN KEY (`usersID`) REFERENCES `users` (`usersID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users_post`
--
ALTER TABLE `users_post`
  ADD CONSTRAINT `fk_usersID_post` FOREIGN KEY (`usersID`) REFERENCES `users` (`usersID`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
