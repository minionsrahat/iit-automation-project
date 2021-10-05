-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2021 at 04:11 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;



-- --------------------------------------------------------

--
-- Table structure for table `assign_course_routine`
--

CREATE TABLE `assign_course_routine` (
  `id` int(11) NOT NULL,
  `course_code` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `batch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assign_course_routine`
--

INSERT INTO `assign_course_routine` (`id`, `course_code`, `teacher_id`, `batch_id`) VALUES
(1, 'CSE 1101', 1, 1),
(2, 'CSE 1102', 2, 1),
(3, 'CSE 1103', 3, 1),
(4, 'STAT 1105', 1, 2),
(5, 'MATH 1107', 2, 2),
(6, 'GE 1109', 1, 3),
(7, 'GE 1111', 2, 3),
(8, 'CSE 1102', 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `batch`
--

CREATE TABLE `batch` (
  `id` int(11) NOT NULL,
  `batch_name` varchar(25) NOT NULL,
  `session` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `batch`
--

INSERT INTO `batch` (`id`, `batch_name`, `session`) VALUES
(1, '1st Batch', '2017-2018'),
(2, '2nd Batch', '2018-2019'),
(3, '3rd Batch', '2020-2021');

-- --------------------------------------------------------

--
-- Table structure for table `books_catalog`
--

CREATE TABLE `books_catalog` (
  `bk_id` int(11) NOT NULL,
  `isbn_number` varchar(30) NOT NULL,
  `bk_name` varchar(255) NOT NULL,
  `bk_catagory` varchar(255) NOT NULL,
  `bk_author_name` varchar(255) NOT NULL,
  `copies` int(11) NOT NULL,
  `p_copies` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books_catalog`
--

INSERT INTO `books_catalog` (`bk_id`, `isbn_number`, `bk_name`, `bk_catagory`, `bk_author_name`, `copies`, `p_copies`) VALUES
(1, '', 'Algorithms to Live By: The Computer Science of Human Decisions', 'CSE', 'Brian Christian, Tom Griffiths', 100, 8),
(6, '', 'Superintelligence: Path, Dangers, Strategies ', 'SE', 'Nick Bostrom', 20, 20),
(7, '', 'Design Patterns: Elements of Reusable objects Oriented Software', 'CSE', 'Erich Gamma, John Vlissides, Richard Helm', 9, 9),
(9, '', 'Codes: The Hidden Language of the Computer Hardware and software ', 'CSE', 'Charles Petzold', 20, 14),
(10, '', 'The Artificial Intelligence: A Modern Approach', 'CSE', ' Stuart Russell', 17, 17),
(11, '', 'The Algorithmic Leader\r\nHow to Be Smart When Machines Are Smarter Than You', 'CSE', 'Mike Walsh', 30, 30),
(12, '', 'Algorithms Illuminated\r\nPart 1: The Basics', 'CSE', 'Tim Roughgarden', 30, 20),
(15, '', 'Barron\'s AP Computer Science A, 8th Edition\r\nwith Bonus Online Tests', 'CSE', 'Roselyn Teukolsky M.S.', 40, 29),
(16, '', 'Security in Computer and Information Sciences', 'SE', 'Erol Gelenbe, Paolo Campegiani, Tadeusz Czachórski, Sokratis K. Katsikas', 10, 0),
(19, '', 'Blockchain Basics\r\nA Non-Technical Introduction in 25 Steps', 'MATH', 'Daniel Drescher', 20, 20),
(20, '', 'Computer Science Distilled\r\nLearn the Art of Solving Computational Problems', 'CSE', 'Wladston Ferreira Filho, Raimondo Pictet', 20, 20),
(21, '', 'Introduction to Artificial Intelligence', 'CSE', 'Mariusz Flasi?ski(', 15, 10),
(22, '', 'Computer Science Principles', 'SE', 'Mr. Kevin P Hare, Pindar Van Arman', 9, 5),
(23, '', 'Robotics for Young Children', 'CSE', 'Ann Gadzikowski', 5, 0),
(24, '', 'Management', 'BBA', 'Stoner, Freeman and Gilbert Jr', 20, 10),
(25, '', 'Industrial Organization Management', 'BBA', 'Sherlekar, Patil, Paranjpe, Chitale', 20, 10),
(26, '', 'The C Programming Language', 'CSE', 'Stuart Russell', 20, 20);

-- --------------------------------------------------------

--
-- Table structure for table `book_requests`
--

CREATE TABLE `book_requests` (
  `reques_id` int(11) NOT NULL,
  `bk_id` int(11) NOT NULL,
  `bk_name` varchar(255) NOT NULL,
  `request_by` varchar(50) NOT NULL,
  `user_type` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book_requests`
--

INSERT INTO `book_requests` (`reques_id`, `bk_id`, `bk_name`, `request_by`, `user_type`, `date`) VALUES
(77, 12, 'Algorithms Illuminated\r\nPart 1: The Basics', 'Auhidur@gmail.com', '1', '2021-10-04 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `catagories`
--

CREATE TABLE `catagories` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `catagories`
--

INSERT INTO `catagories` (`cat_id`, `cat_name`, `quantity`) VALUES
(1, 'Math', 10),
(2, 'CSE', 15),
(3, 'BBA', 20),
(4, 'SE', 13);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `course_code` varchar(50) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `term` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_name`, `course_code`, `year`, `term`) VALUES
(1, 'Structured Programming', 'CSE 1101 ', 1, 1),
(2, 'Structured Programming Lab', 'CSE 1102 ', 1, 1),
(3, 'Discrete Mathematics', 'CSE 1103 ', 1, 1),
(4, 'Probability & Statistics-1', 'STAT 1105 ', 1, 1),
(5, 'Calculus and Analytical Geometry', 'MATH 1107 ', 1, 1),
(6, 'Soft Skill Communication', 'GE 1109 ', 1, 1),
(7, 'Technology and Society', 'GE 1111 ', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `discussion_answers`
--

CREATE TABLE `discussion_answers` (
  `id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer` varchar(2000) NOT NULL,
  `answer_by` varchar(40) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `discussion_answers`
--

INSERT INTO `discussion_answers` (`id`, `question_id`, `answer`, `answer_by`, `date`) VALUES
(1, 9, '/* centered columns styles */\r\n.row-centered {\r\n    text-align:center;\r\n}\r\n.col-centered {\r\n    display:inline-block;\r\n    float:none;\r\n    /* reset the text-align */\r\n    text-align:left;\r\n    /* inline-block space fix */\r\n    margin-right:-4px;\r\n    text-align: center;\r\n    background-color: #ccc;\r\n    border: 1px solid #ddd;', '7', '2021-09-25 02:52:01'),
(2, 9, '&sol;&ast; centered columns styles &ast;&sol;\r&NewLine;&period;row-centered &lbrace;\r&NewLine;    text-align&colon;center&semi;\r&NewLine;&rcub;\r&NewLine;&period;col-centered &lbrace;\r&NewLine;    display&colon;inline-block&semi;\r&NewLine;    float&colon;none&semi;\r&NewLine;    &sol;&ast; reset the text-align &ast;&sol;\r&NewLine;    text-align&colon;left&semi;\r&NewLine;    &sol;&ast; inline-block space fix &ast;&sol;\r&NewLine;    margin-right&colon;-4px&semi;\r&NewLine;    text-align&colon; center&semi;\r&NewLine;    background-color&colon; &num;ccc&semi;\r&NewLine;    border&colon; 1px solid &num;ddd&semi;', '7', '2021-09-25 03:02:15'),
(3, 9, '\"\"', '7', '2021-09-25 03:02:47'),
(4, 25, 'There is no need to overcomplicate things. This can be achieved with a simple short regular expression:\r\n\r\n$text = preg_replace(&quot;/(R){2,}/&quot;, &quot;$1&quot;, $text);', '7', '2021-09-25 13:56:24'),
(5, 9, '\r\napp.get(&#039;/&#039;, function(req, res) {\r\n\r\n  list(`./img`,(images)=&gt;{\r\n  if(images.error) throw images.error;\r\n  var floppa = images.files\r\n  let random = Math.floor((Math.random() * floppa.length))\r\n\r\n  var file = `domain${floppa[random]}`\r\n  res.json(\r\n    {\r\n      image: file\r\n    }\r\n    )\r\n});\r\n})', '7', '2021-09-26 00:37:55'),
(6, 25, 'I dont Know', '7', '2021-09-26 15:26:30'),
(7, 26, 'HIIIII', '7', '2021-09-27 14:01:19'),
(8, 26, '// These two have the same value\r\nnew String(&quot;test&quot;).equals(&quot;test&quot;) // --&gt; true \r\n\r\n// ... but they are not the same object\r\nnew String(&quot;test&quot;) == &quot;test&quot; // --&gt; false \r\n\r\n// ... neither are these\r\nnew String(&quot;test&quot;) == new String(&quot;test&quot;) // --&gt; false \r\n\r\n// ... but these are because literals are interned by \r\n// the compiler and thus refer to the same object\r\n&quot;test&quot; == &quot;test&quot; // --&gt; true \r\n\r\n// ... string literals are concatenated by the compiler\r\n// and the results are interned.\r\n&quot;test&quot; == &quot;te&quot; + &quot;st&quot; // --&gt; true\r\n\r\n// ... but you should really just call Objects.equals()\r\nObjects.equals(&quot;test&quot;, new String(&quot;test&quot;)) // --&gt; true\r\nObjects.equals(null, &quot;test&quot;) // --&gt; false\r\nObjects.equals(null, null) // --&gt; true', '10', '2021-09-27 15:56:05'),
(9, 11, 'Search related questions on stackoverflow. I think you will find better solutions', '9', '2021-09-27 20:01:47'),
(10, 23, 'Hey there\r\n', '9', '2021-09-27 22:08:36'),
(11, 23, 'you have to go to stackoverflow', '7', '2021-09-28 09:55:15'),
(12, 26, 'hlw', '7', '2021-09-28 10:55:20'),
(13, 26, 'hlw', '7', '2021-09-28 13:47:19'),
(15, 26, 'function animationLeave() {\r\n    var tl = gsap.timeline();\r\n    tl.to(&#039;.loading-screen&#039;, {\r\n        duration: 1,\r\n        width: &#039;100%&#039;,\r\n        left: &#039;0%&#039;,\r\n        ease: &#039;expo.easeInOut&#039;\r\n    });\r\n    tl.to(&#039;.loading-screen&#039;, {\r\n        duration: .8,\r\n        width: &#039;100%&#039;,\r\n        left: &#039;100%&#039;,\r\n        ease: &#039;expo.easeInOut&#039;,\r\n        delay: .3\r\n    });\r\n    tl.set(&#039;.loading-screen&#039;, {\r\n        left: &#039;-100%&#039;,\r\n        width: &#039;0%&#039;\r\n    });\r\n}', 'mahfuz@123gmail.com', '2021-10-04 15:03:12');

-- --------------------------------------------------------

--
-- Table structure for table `discussion_category`
--

CREATE TABLE `discussion_category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `discussion_category`
--

INSERT INTO `discussion_category` (`cat_id`, `cat_name`, `date`) VALUES
(1, 'Computer Science', '2021-09-24 15:19:35'),
(2, 'Database', '2021-09-24 15:19:35'),
(3, 'Web Development', '2021-09-24 15:20:35'),
(4, 'Programming', '2021-09-24 15:20:35'),
(5, 'Data Science', '2021-09-24 15:21:05'),
(6, 'App Development', '2021-09-24 15:21:05');

-- --------------------------------------------------------

--
-- Table structure for table `discussion_questions`
--

CREATE TABLE `discussion_questions` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `code_snippet` varchar(2000) NOT NULL,
  `posted_by` varchar(40) NOT NULL,
  `date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `discussion_questions`
--

INSERT INTO `discussion_questions` (`id`, `cat_id`, `title`, `description`, `code_snippet`, `posted_by`, `date`) VALUES
(3, 1, 'How to use foreach get data from the database table', 'My database has a table called tblprojects with column names say, project_num, project_status, project_name. I want to use foreach loop to get the data from the database and display the records in php table.\r\n\r\nHowever I am unable to display the records with following code. Please help me in correcting it. Am new to using PHP.\r\n\r\nFollowing is the code I have written:', '&amp;lt;&amp;quest;php\r&amp;NewLine;     &amp;dollar;projects &amp;equals; array&amp;lpar;&amp;rpar;&amp;semi;\r&amp;NewLine;     &amp;sol;&amp;sol; fetch data from the database\r&amp;NewLine;     &amp;dollar;records &amp;equals; mysql&amp;lowbar;query&amp;lpar;&#039;select project&amp;lowbar;num&amp;comma; project&amp;lowbar;status&amp;comma; project&amp;lowbar;name from tblprojects&#039;&amp;rpar; or die&amp;lpar;&quot;Query fail&amp;colon; &quot; &amp;period; mysqli&amp;lowbar;error&amp;lpar;&amp;rpar;&amp;rpar;&amp;semi;\r&amp;NewLine;&amp;quest;&amp;gt;\r&amp;NewLine;\r&amp;NewLine;\r&amp;NewLine;&amp;lt;table  class&amp;equals;&quot;table table-striped table-condensed&quot; id&amp;equals;&quot;tblData&quot;&amp;gt;\r&amp;NewLine;    &amp;lt;thead&amp;gt;\r&amp;NewLine;        &amp;lt;tr&amp;gt;\r&amp;NewLine;            &amp;lt;th&amp;gt;Project Name&amp;lt;&amp;sol;th&amp;gt;\r&amp;NewLine;            &amp;lt;th&amp;gt;Project Number&amp;lt;&amp;sol;th&amp;gt;\r&amp;NewLine;            &amp;lt;th&amp;gt;Project Status&amp;lt;&amp;sol;th&amp;gt;\r&amp;NewLine;       &amp;lt;&amp;sol;tr&amp;gt;\r&amp;NewLine;    &amp;lt;&amp;sol;thead&amp;gt;\r&amp;NewLine;\r&amp;NewLine;    &amp;lt;tbody&amp;gt;\r&amp;NewLine;       &amp;lt;&amp;quest;php \r&amp;NewLine;            while &amp;lpar;  &amp;dollar;row &amp;equals;  mysql&amp;lowbar;fetch&amp;lowbar;assoc&amp;lpar;&amp;dollar;records&amp;rpar;    &amp;rpar;\r&amp;NewLine;            &amp;lbrace;\r&amp;NewLine;                &amp;dollar;projects&amp;lbrack;&amp;rsqb; &amp;equals; &amp;dollar;row&amp;semi;\r&amp;NewLine;                foreach &amp;lpar;&amp;dollar;projects as &amp;dollar;project&amp;rpar;&amp;colon;\r&amp;NewLine;      &amp;quest;&amp;gt;\r&amp;NewLine;        &amp;lt;tr&amp;gt;\r&amp;NewLine;            &amp;lt;td&amp;gt;&amp;lt;&amp;quest;echo &amp;dollar;project&amp;lbrack;&#039;proj&amp;lowbar;name&#039;&amp;rsqb;&amp;semi; &amp;quest;&amp;gt;&amp;lt;&amp;sol;td&amp;gt;\r&amp;NewLine;            &amp;lt;td&amp;gt;&am', '7', '0000-00-00 00:00:00'),
(10, 1, '\"How do I modify the URL without reloading the page?\"', '\"Is there a way I can modify the URL of the current page without reloading the page?\r\nI would like to access the portion before the # hash if possible.\r\nI only need to change the portion after the domain, so it&#039;s not like I&#039;m violating cross-domain policies.\"', 'function processAjaxData&lpar;response&comma; urlPath&rpar;&lbrace;\r&NewLine;     document&period;getElementById&lpar;\"content\"&rpar;&period;innerHTML &equals; response&period;html&semi;\r&NewLine;     document&period;title &equals; response&period;pageTitle&semi;\r&NewLine;     window&period;history&period;pushState&lpar;&lbrace;\"html\"&colon;response&period;html&comma;\"pageTitle\"&colon;response&period;pageTitle&rcub;&comma;\"\"&comma; urlPath&rpar;&semi;\r&NewLine; &rcub;', '7', '2021-09-24 17:49:33'),
(11, 4, '\"Python Tkinter mixing radio and default user input box in canvas?\"', '\"I like to mixed my radio button selection with a few user input boxes.\r\n\r\nI managed to output them separately but I can&#039;t combine them due to the one using canvas1.pack and another using row.pack.\r\n\r\nenter image description here\r\nThis is my first radio button interface where user will select Auto or Manual and there is a box for user to input stock symbols manually.\"', 'from tkinter import *\r\nfrom tkinter import simpledialog\r\nfrom tkinter import messagebox\r\nimport tkinter as tk\r\n\r\n#default filter values\r\nparameter1 = 100000\r\nparameter2 = 3\r\n\r\nglobal answer \r\nglobal user_list\r\n\r\n# Prepare parameters\r\nfields = [&#039;Min. parameter1&#039;, &#039;Min. parameter2&#039;, &#039;Min. 3parameter3&#039;,\r\n          &#039;Min. parameter4&#039;,&#039;Min. parameter5&#039;, &#039;Max. parameter6&#039;]\r\ndefault_values = [parameter1,parameter2,parameter3,parameter4,\r\n                  parameter5,parameter6]\r\ncaptured_values = []\r\n\r\ndef on_closing():\r\n    if messagebox.askokcancel(&quot;Quit&quot;, &quot;Do you want to quit?&quot;):\r\n        root.destroy()\r\n        sys.stdout = orig_stdout\r\n        f.close()\r\n        sys.exit(&quot;Application closed by user&quot;)', '7', '2021-09-25 07:04:16'),
(12, 4, '\"Python Tkinter mixing radio and default user input box in canvas?\"', '\"I like to mixed my radio button selection with a few user input boxes.\r\n\r\nI managed to output them separately but I can&#039;t combine them due to the one using canvas1.pack and another using row.pack.\r\n\r\nenter image description here\r\nThis is my first radio button interface where user will select Auto or Manual and there is a box for user to input stock symbols manually.\"', 'from tkinter import *\r\nfrom tkinter import simpledialog\r\nfrom tkinter import messagebox\r\nimport tkinter as tk\r\n\r\n#default filter values\r\nparameter1 = 100000\r\nparameter2 = 3\r\n\r\nglobal answer \r\nglobal user_list\r\n\r\n# Prepare parameters\r\nfields = [&#039;Min. parameter1&#039;, &#039;Min. parameter2&#039;, &#039;Min. 3parameter3&#039;,\r\n          &#039;Min. parameter4&#039;,&#039;Min. parameter5&#039;, &#039;Max. parameter6&#039;]\r\ndefault_values = [parameter1,parameter2,parameter3,parameter4,\r\n                  parameter5,parameter6]\r\ncaptured_values = []\r\n\r\ndef on_closing():\r\n    if messagebox.askokcancel(&quot;Quit&quot;, &quot;Do you want to quit?&quot;):\r\n        root.destroy()\r\n        sys.stdout = orig_stdout\r\n        f.close()\r\n        sys.exit(&quot;Application closed by user&quot;)', '7', '2021-09-25 07:05:10'),
(13, 1, '\"How do I modify the URL without reloading the page?\"', '\"As you might fairly be a newcomer to php, on one hand it is great to follow tutorials, however chosing a right source might be a frequent disasterous problem.\r\n\r\nWhen you are using functions like mysql_select_db and mysql_query it basiaclly means that you are using a deprecated mysql style.\r\n\r\nIf you go to official php documentation and search for mysql method, it is going to tell you about its deprecation.\r\n\r\nProblem here, though, is not a way you interact with database, your style of coding still works and many people still do it just like that.\"', '&lt;?php\r\n    include_once(&#039;db.php&#039;);\r\n\r\n    $name =$_POST[&#039;name&#039;];\r\n    $email =$_POST[&#039;email&#039;];\r\n    $phone =$_POST[&#039;phone&#039;];\r\n\r\n    if(mysql_query(&quot;INSERT INTO users (name,email,phone) VALUES (&#039;$name&#039;,&#039;$email&#039;,&#039;$phone&#039;)&quot;))\r\n    echo&quot;successfully inserted&quot;;\r\n    else\r\n    echo &quot;failed&quot;;\r\n?&gt;', '7', '2021-09-25 07:06:25'),
(14, 4, '\"How can I prevent SQL injection in PHP?\"', '\"If user input is inserted without modification into an SQL query, then the application becomes vulnerable to SQL injection, like in the following example:\"', '&lt;?php\r\n    $mysqli = new mysqli(&quot;server&quot;, &quot;username&quot;, &quot;password&quot;, &quot;database_name&quot;);\r\n\r\n    // TODO - Check that connection was successful.\r\n\r\n    $unsafe_variable = $_POST[&quot;user-input&quot;];\r\n\r\n    $stmt = $mysqli-&gt;prepare(&quot;INSERT INTO table (column) VALUES (?)&quot;);\r\n\r\n    // TODO check that $stmt creation succeeded\r\n\r\n    // &quot;s&quot; means the database expects a string\r\n    $stmt-&gt;bind_param(&quot;s&quot;, $unsafe_variable);\r\n\r\n    $stmt-&gt;execute();\r\n\r\n    $stmt-&gt;close();\r\n\r\n    $mysqli-&gt;close();\r\n?&gt;', '7', '2021-09-25 07:10:31'),
(15, 4, '\"How can I prevent SQL injection in PHP?\"', '\"If user input is inserted without modification into an SQL query, then the application becomes vulnerable to SQL injection, like in the following example:\"', '&amp;lt;&amp;quest;php\r&amp;NewLine;    &amp;dollar;mysqli &amp;equals; new mysqli&amp;lpar;&quot;server&quot;&amp;comma; &quot;username&quot;&amp;comma; &quot;password&quot;&amp;comma; &quot;database&amp;lowbar;name&quot;&amp;rpar;&amp;semi;\r&amp;NewLine;\r&amp;NewLine;    &amp;sol;&amp;sol; TODO - Check that connection was successful&amp;period;\r&amp;NewLine;\r&amp;NewLine;    &amp;dollar;unsafe&amp;lowbar;variable &amp;equals; &amp;dollar;&amp;lowbar;POST&amp;lbrack;&quot;user-input&quot;&amp;rsqb;&amp;semi;\r&amp;NewLine;\r&amp;NewLine;    &amp;dollar;stmt &amp;equals; &amp;dollar;mysqli-&amp;gt;prepare&amp;lpar;&quot;INSERT INTO table &amp;lpar;column&amp;rpar; VALUES &amp;lpar;&amp;quest;&amp;rpar;&quot;&amp;rpar;&amp;semi;\r&amp;NewLine;\r&amp;NewLine;    &amp;sol;&amp;sol; TODO check that &amp;dollar;stmt creation succeeded\r&amp;NewLine;\r&amp;NewLine;    &amp;sol;&amp;sol; &quot;s&quot; means the database expects a string\r&amp;NewLine;    &amp;dollar;stmt-&amp;gt;bind&amp;lowbar;param&amp;lpar;&quot;s&quot;&amp;comma; &amp;dollar;unsafe&amp;lowbar;variable&amp;rpar;&amp;semi;\r&amp;NewLine;\r&amp;NewLine;    &amp;dollar;stmt-&amp;gt;execute&amp;lpar;&amp;rpar;&amp;semi;\r&amp;NewLine;\r&amp;NewLine;    &amp;dollar;stmt-&amp;gt;close&amp;lpar;&amp;rpar;&amp;semi;\r&amp;NewLine;\r&amp;NewLine;    &amp;dollar;mysqli-&amp;gt;close&amp;lpar;&amp;rpar;&amp;semi;\r&amp;NewLine;&amp;quest;&amp;gt;', '7', '2021-09-25 07:12:32'),
(16, 4, '\"How can I prevent SQL injection in PHP?\"', '\"If user input is inserted without modification into an SQL query, then the application becomes vulnerable to SQL injection, like in the following example:\"', '&amp;lt;&amp;quest;php\r&amp;NewLine;    &amp;dollar;mysqli &amp;equals; new mysqli&amp;lpar;&quot;server&quot;&amp;comma; &quot;username&quot;&amp;comma; &quot;password&quot;&amp;comma; &quot;database&amp;lowbar;name&quot;&amp;rpar;&amp;semi;\r&amp;NewLine;\r&amp;NewLine;    &amp;sol;&amp;sol; TODO - Check that connection was successful&amp;period;\r&amp;NewLine;\r&amp;NewLine;    &amp;dollar;unsafe&amp;lowbar;variable &amp;equals; &amp;dollar;&amp;lowbar;POST&amp;lbrack;&quot;user-input&quot;&amp;rsqb;&amp;semi;\r&amp;NewLine;\r&amp;NewLine;    &amp;dollar;stmt &amp;equals; &amp;dollar;mysqli-&amp;gt;prepare&amp;lpar;&quot;INSERT INTO table &amp;lpar;column&amp;rpar; VALUES &amp;lpar;&amp;quest;&amp;rpar;&quot;&amp;rpar;&amp;semi;\r&amp;NewLine;\r&amp;NewLine;    &amp;sol;&amp;sol; TODO check that &amp;dollar;stmt creation succeeded\r&amp;NewLine;\r&amp;NewLine;    &amp;sol;&amp;sol; &quot;s&quot; means the database expects a string\r&amp;NewLine;    &amp;dollar;stmt-&amp;gt;bind&amp;lowbar;param&amp;lpar;&quot;s&quot;&amp;comma; &amp;dollar;unsafe&amp;lowbar;variable&amp;rpar;&amp;semi;\r&amp;NewLine;\r&amp;NewLine;    &amp;dollar;stmt-&amp;gt;execute&amp;lpar;&amp;rpar;&amp;semi;\r&amp;NewLine;\r&amp;NewLine;    &amp;dollar;stmt-&amp;gt;close&amp;lpar;&amp;rpar;&amp;semi;\r&amp;NewLine;\r&amp;NewLine;    &amp;dollar;mysqli-&amp;gt;close&amp;lpar;&amp;rpar;&amp;semi;\r&amp;NewLine;&amp;quest;&amp;gt;', '7', '2021-09-25 07:12:55'),
(17, 4, '\"How do I modify the URL without reloading the page?\"', '\"Also, as others have suggested, you may find it useful/easier to step up a layer of abstraction with something like PDO.\r\n\r\nPlease note that the case you asked about is a fairly simple one and that more complex cases may require more complex approaches. In particular:\r\n\r\nIf you want to alter the structure of the SQL based on user input, parameterized queries are not going to help, and the escaping required is not covered by mysql_real_escape_string. In this kind of case, you would be better off passing the user&#039;s input through a whitelist to ensure only &#039;safe&#039; values are allowed through.\r\nIf you use integers from user input in a condition\"', '                       &amp;lt;&amp;quest;php\r&amp;NewLine;\r&amp;NewLine;     &amp;dollar;projects &amp;equals; array&amp;lpar;&amp;rpar;&amp;semi;\r&amp;NewLine;\r&amp;NewLine;     &amp;sol;&amp;sol; fetch data from the database\r&amp;NewLine;\r&amp;NewLine;     &amp;dollar;records &amp;equals; mysql&amp;lowbar;query&amp;lpar;&#039;select project&amp;lowbar;num&amp;comma; project&amp;lowbar;status&amp;comma; project&amp;lowbar;name from tblprojects&#039;&amp;rpar; or die&amp;lpar;&quot;Query fail&amp;colon; &quot; &amp;period; mysqli&amp;lowbar;error&amp;lpar;&amp;rpar;&amp;rpar;&amp;semi;\r&amp;NewLine;\r&amp;NewLine;&amp;quest;&amp;gt;\r&amp;NewLine;\r&amp;NewLine;\r&amp;NewLine;\r&amp;NewLine;\r&amp;NewLine;\r&amp;NewLine;&amp;lt;table  class&amp;equals;&quot;table table-striped table-condensed&quot; id&amp;equals;&quot;tblData&quot;&amp;gt;\r&amp;NewLine;\r&amp;NewLine;    &amp;lt;thead&amp;gt;\r&amp;NewLine;\r&amp;NewLine;        &amp;lt;tr&amp;gt;\r&amp;NewLine;\r&amp;NewLine;            &amp;lt;th&amp;gt;Project Name&amp;lt;&amp;sol;th&amp;gt;\r&amp;NewLine;\r&amp;NewLine;            &amp;lt;th&amp;gt;Project Number&amp;lt;&amp;sol;th&amp;gt;\r&amp;NewLine;\r&amp;NewLine;            &amp;lt;th&amp;gt;Project Status&amp;lt;&amp;sol;th&amp;gt;\r&amp;NewLine;\r&amp;NewLine;       &amp;lt;&amp;sol;tr&amp;gt;\r&amp;NewLine;\r&amp;NewLine;    &amp;lt;&amp;sol;thead&amp;gt;\r&amp;NewLine;\r&amp;NewLine;\r&amp;NewLine;\r&amp;NewLine;    &amp;lt;tbody&amp;gt;\r&amp;NewLine;\r&amp;NewLine;       &amp;lt;&amp;quest;php \r&amp;NewLine;\r&amp;NewLine;            while &amp;lpar;  &amp;dollar;row &amp;equals;  mysql&amp;lowbar;fetch&amp;lowbar;assoc&amp;lpar;&amp;dollar;records&amp;rpar;    &amp;rpar;\r&amp;NewLine;\r&amp;NewLine;            &amp;lbrace;\r&amp;NewLine;\r&amp;NewLine;                &amp;dollar;projects&amp;lbrack;&amp;rsqb; &amp;equals; &amp;dollar;row&amp;semi;\r&amp;NewLine;\r&amp;NewLine;                foreach &amp;lpar;&amp;dollar;projects as &amp;dollar;project&amp;rpar;&amp;colon;\r&amp;N', '7', '2021-09-25 07:21:08'),
(18, 4, '\"How do I modify the URL without reloading the page?\"', '\"Also, as others have suggested, you may find it useful/easier to step up a layer of abstraction with something like PDO.\r\n\r\nPlease note that the case you asked about is a fairly simple one and that more complex cases may require more complex approaches. In particular:\r\n\r\nIf you want to alter the structure of the SQL based on user input, parameterized queries are not going to help, and the escaping required is not covered by mysql_real_escape_string. In this kind of case, you would be better off passing the user&#039;s input through a whitelist to ensure only &#039;safe&#039; values are allowed through.\r\nIf you use integers from user input in a condition\"', '', '7', '2021-09-25 07:21:24'),
(19, 4, '\"How do I modify the URL without reloading the page?\"', '\"Also, as others have suggested, you may find it useful/easier to step up a layer of abstraction with something like PDO.\r\n\r\nPlease note that the case you asked about is a fairly simple one and that more complex cases may require more complex approaches. In particular:\r\n\r\nIf you want to alter the structure of the SQL based on user input, parameterized queries are not going to help, and the escaping required is not covered by mysql_real_escape_string. In this kind of case, you would be better off passing the user&#039;s input through a whitelist to ensure only &#039;safe&#039; values are allowed through.\r\nIf you use integers from user input in a condition\"', '                       &lt;?php\r\n\r\n     $projects = array();\r\n\r\n     // fetch data from the database\r\n\r\n     $records = mysql_query(&#039;select project_num, project_status, project_name from tblprojects&#039;) or die(&quot;Query fail: &quot; . mysqli_error());\r\n\r\n?&gt;\r\n\r\n\r\n\r\n\r\n\r\n&lt;table  class=&quot;table table-striped table-condensed&quot; id=&quot;tblData&quot;&gt;\r\n\r\n    &lt;thead&gt;\r\n\r\n        &lt;tr&gt;\r\n\r\n            &lt;th&gt;Project Name&lt;/th&gt;\r\n\r\n            &lt;th&gt;Project Number&lt;/th&gt;\r\n\r\n            &lt;th&gt;Project Status&lt;/th&gt;\r\n\r\n       &lt;/tr&gt;\r\n\r\n    &lt;/thead&gt;\r\n\r\n\r\n\r\n    &lt;tbody&gt;\r\n\r\n       &lt;?php \r\n\r\n            while (  $row =  mysql_fetch_assoc($records)    )\r\n\r\n            {\r\n\r\n                $projects[] = $row;\r\n\r\n                foreach ($projects as $project):\r\n\r\n      ?&gt;\r\n\r\n        &lt;tr&gt;\r\n\r\n            &lt;td&gt;&lt;?echo $project[&#039;proj_name&#039;]; ?&gt;&lt;/td&gt;\r\n\r\n            &lt;td&gt;&amp;am                       \r\n', '7', '2021-09-25 07:21:49'),
(20, 4, '\"How do I modify the URL without reloading the page?\"', '\"Also, as others have suggested, you may find it useful/easier to step up a layer of abstraction with something like PDO.\r\n\r\nPlease note that the case you asked about is a fairly simple one and that more complex cases may require more complex approaches. In particular:\r\n\r\nIf you want to alter the structure of the SQL based on user input, parameterized queries are not going to help, and the escaping required is not covered by mysql_real_escape_string. In this kind of case, you would be better off passing the user&#039;s input through a whitelist to ensure only &#039;safe&#039; values are allowed through.\r\nIf you use integers from user input in a condition\"', '                       &lt;?php\r\n\r\n     $projects = array();\r\n\r\n     // fetch data from the database\r\n\r\n     $records = mysql_query(&#039;select project_num, project_status, project_name from tblprojects&#039;) or die(&quot;Query fail: &quot; . mysqli_error());\r\n\r\n?&gt;\r\n\r\n\r\n\r\n\r\n\r\n&lt;table  class=&quot;table table-striped table-condensed&quot; id=&quot;tblData&quot;&gt;\r\n\r\n    &lt;thead&gt;\r\n\r\n        &lt;tr&gt;\r\n\r\n            &lt;th&gt;Project Name&lt;/th&gt;\r\n\r\n            &lt;th&gt;Project Number&lt;/th&gt;\r\n\r\n            &lt;th&gt;Project Status&lt;/th&gt;\r\n\r\n       &lt;/tr&gt;\r\n\r\n    &lt;/thead&gt;\r\n\r\n\r\n\r\n    &lt;tbody&gt;\r\n\r\n       &lt;?php \r\n\r\n            while (  $row =  mysql_fetch_assoc($records)    )\r\n\r\n            {\r\n\r\n                $projects[] = $row;\r\n\r\n                foreach ($projects as $project):\r\n\r\n      ?&gt;\r\n\r\n        &lt;tr&gt;\r\n\r\n            &lt;td&gt;&lt;?echo $project[&#039;proj_name&#039;]; ?&gt;&lt;/td&gt;\r\n\r\n            &lt;td&gt;&amp;am                       \r\n', '7', '2021-09-25 07:23:05'),
(21, 4, '\"How do I modify the URL without reloading the page?\"', '\"Also, as others have suggested, you may find it useful/easier to step up a layer of abstraction with something like PDO.\r\n\r\nPlease note that the case you asked about is a fairly simple one and that more complex cases may require more complex approaches. In particular:\r\n\r\nIf you want to alter the structure of the SQL based on user input, parameterized queries are not going to help, and the escaping required is not covered by mysql_real_escape_string. In this kind of case, you would be better off passing the user&#039;s input through a whitelist to ensure only &#039;safe&#039; values are allowed through.\r\nIf you use integers from user input in a condition\"', '                       &lt;?php\r\n\r\n     $projects = array();\r\n\r\n     // fetch data from the database\r\n\r\n     $records = mysql_query(&#039;select project_num, project_status, project_name from tblprojects&#039;) or die(&quot;Query fail: &quot; . mysqli_error());\r\n\r\n?&gt;\r\n\r\n\r\n\r\n\r\n\r\n&lt;table  class=&quot;table table-striped table-condensed&quot; id=&quot;tblData&quot;&gt;\r\n\r\n    &lt;thead&gt;\r\n\r\n        &lt;tr&gt;\r\n\r\n            &lt;th&gt;Project Name&lt;/th&gt;\r\n\r\n            &lt;th&gt;Project Number&lt;/th&gt;\r\n\r\n            &lt;th&gt;Project Status&lt;/th&gt;\r\n\r\n       &lt;/tr&gt;\r\n\r\n    &lt;/thead&gt;\r\n\r\n\r\n\r\n    &lt;tbody&gt;\r\n\r\n       &lt;?php \r\n\r\n            while (  $row =  mysql_fetch_assoc($records)    )\r\n\r\n            {\r\n\r\n                $projects[] = $row;\r\n\r\n                foreach ($projects as $project):\r\n\r\n      ?&gt;\r\n\r\n        &lt;tr&gt;\r\n\r\n            &lt;td&gt;&lt;?echo $project[&#039;proj_name&#039;]; ?&gt;&lt;/td&gt;\r\n\r\n            &lt;td&gt;&amp;am                       \r', '7', '2021-09-25 07:25:49'),
(22, 4, '\"How does PHP &#039;foreach&#039; actually work?\"', '\"Let me prefix this by saying that I know what foreach is, does and how to use it. This question concerns how it works under the bonnet, and I don&#039;t want any answers along the lines of &quot;this is how you loop an array with foreach&quot;.\"', '\"foreach ($it as $k =&gt; $v) { /* ... */ }\r\n\r\n/* translates to: */\r\n\r\nif ($it instanceof IteratorAggregate) {\r\n    $it = $it-&gt;getIterator();\r\n}\r\nfor ($it-&gt;rewind(); $it-&gt;valid(); $it-&gt;next()) {\r\n    $v = $it-&gt;current();\r\n    $k = $it-&gt;key();\r\n    /* ... */\r\n}\"', '7', '2021-09-25 07:37:45'),
(23, 4, '\"How does PHP &#039;foreach&#039; actually work?\"', '\"Let me prefix this by saying that I know what foreach is, does and how to use it. This question concerns how it works under the bonnet, and I don&#039;t want any answers along the lines of &quot;this is how you loop an array with foreach&quot;.\"', '\"foreach ($it as $k =&gt; $v) { /* ... */ }\r\n\r\n/* translates to: */\r\n\r\nif ($it instanceof IteratorAggregate) {\r\n    $it = $it-&gt;getIterator();\r\n}\r\nfor ($it-&gt;rewind(); $it-&gt;valid(); $it-&gt;next()) {\r\n    $v = $it-&gt;current();\r\n    $k = $it-&gt;key();\r\n    /* ... */\r\n}\"', '7', '2021-09-25 07:39:24'),
(24, 4, '\"How does PHP &#039;foreach&#039; actually work?\"', '\"Let me prefix this by saying that I know what foreach is, does and how to use it. This question concerns how it works under the bonnet, and I don&#039;t want any answers along the lines of &quot;this is how you loop an array with foreach&quot;.\"', 'foreach ($it as $k =&gt; $v) { /* ... */ }\r\n\r\n/* translates to: */\r\n\r\nif ($it instanceof IteratorAggregate) {\r\n    $it = $it-&gt;getIterator();\r\n}\r\nfor ($it-&gt;rewind(); $it-&gt;valid(); $it-&gt;next()) {\r\n    $v = $it-&gt;current();\r\n    $k = $it-&gt;key();\r\n    /* ... */\r\n}', '7', '2021-09-25 07:40:33'),
(25, 4, '\"How does PHP &#039;foreach&#039; actually work?\"', '\"Let me prefix this by saying that I know what foreach is, does and how to use it. This question concerns how it works under the bonnet, and I don&#039;t want any answers along the lines of &quot;this is how you loop an array with foreach&quot;.\"', 'foreach ($it as $k =&gt; $v) { /* ... */ }\r\n\r\n/* translates to: */\r\n\r\nif ($it instanceof IteratorAggregate) {\r\n    $it = $it-&gt;getIterator();\r\n}\r\nfor ($it-&gt;rewind(); $it-&gt;valid(); $it-&gt;next()) {\r\n    $v = $it-&gt;current();\r\n    $k = $it-&gt;key();\r\n    /* ... */\r\n}', '7', '2021-09-25 07:51:41'),
(26, 4, '\"nodejs express.js cannot get /1.jpg error\"', '\"json worked (https://virus.has-no-bra.in/5aZ8fM0k5.png) but cannot get image (https://virus.has-no-bra.in/5aZ90HlbO.png) and i have 37.jpg file (https://virus.has-no-bra.in/5aZ9l_gt7.png)\"', 'app.get(&#039;/&#039;, function(req, res) {\r\n\r\n  list(`./img`,(images)=&gt;{\r\n  if(images.error) throw images.error;\r\n  var floppa = images.files\r\n  let random = Math.floor((Math.random() * floppa.length))\r\n\r\n  var file = `domain${floppa[random]}`\r\n  res.json(\r\n    {\r\n      image: file\r\n    }\r\n    )\r\n});\r\n})', '7', '2021-09-25 18:39:30'),
(27, 4, '\"How to take Inputs of Dynamically Created Textbox on php and store them in MySQL using loop?\"', '\"My problems:\r\n\r\nMy aim is to receive all the value of textbox0, textbox1,..etc. by using loop in page.php.\r\n\r\nBut I am not able to get the desired result. Actually after submitting, Pape.php appears empty. After receiving all, I also want them to store in MySQL Database.\r\nWhenever I delete a textbox the sequence of the textboxes&#039; id doesn&#039;t change.\r\nPlease tell me what to do.\"', '&lt;html&gt;\r\n&lt;head&gt;\r\n&lt;title&gt;Test&lt;/title&gt;\r\n&lt;/head&gt;\r\n\r\n&lt;script language=&quot;javascript&quot;&gt;\r\n    var count = 1;\r\n\r\nfunction addRow(divId) {\r\n\r\n\r\n\r\n    var parentDiv = document.getElementById(divId);\r\n\r\n    var eleDiv = document.createElement(&quot;div&quot;);\r\n    eleDiv.setAttribute(&quot;name&quot;, &quot;olddiv&quot;);\r\n    eleDiv.setAttribute(&quot;id&quot;, &quot;olddiv&quot;);\r\n\r\n    var eleText = document.createElement(&quot;input&quot;);\r\n    eleText.setAttribute(&quot;type&quot;, &quot;text&quot;);\r\n    eleText.setAttribute(&quot;name&quot;, &#039;textbox&#039; + count);\r\n    eleText.setAttribute(&quot;id&quot;, &quot;textbox&quot; + count);\r\n\r\n    var eleBtn = document.createElement(&quot;input&quot;);\r\n    eleBtn.setAttribute(&quot;type&quot;, &quot;button&quot;);\r\n    eleBtn.setAttribute(&quot;value&quot;, &quot;delete&quot;);\r\n    eleBtn.setAttribute(&quot;name&quot;, &quot;button&quot;);\r\n    eleBtn.setAttribute(&quot;id&quot;, &quot;button&quot;);\r\n    eleBtn.setAttribute(&quot;onclick&quot;, &quot;deleteRow(&#039;button&#039;)&quot;);\r\n\r\n    parentDiv.appendChild(eleDiv);\r\n\r\n    eleDiv.appendChild(eleText);\r\n    eleDiv.appendChild(eleBtn);\r\n\r\n    var golu=count.toString();\r\n    document.getElementById(&quot;h&quot;).value= golu;\r\n    count++;\r\n\r\n}\r\n\r\nfunction deleteRow(tableID) {\r\n        var div = document.getElementById(&#039;olddiv&#039;);\r\n        if (div) {\r\n            div.parentNode.removeChild(div);\r\n        }\r\n        var golu=count.toString();\r\n    document.getElementById(&quot;h&quot;).value= golu;\r\n}\r\n\r\nvar golu=count.toString();\r\n    document.getElementById(&quot;h&quot;).value= golu;\r\n\r\n\r\n\r\n&lt;/script&gt;\r\n&lt;body&gt;\r\n&lt;form action=&quot;Page.php&quot; method=&quot;post&quot;&gt;\r\n&lt;input type=&quot;button&quot; value=&quot;Add Row&quot; onclick=&quot;addRow(&#039;dataTable&#039;)&quot; /&gt;\r\n&lt;div id=&quot;dataTable&quot;&gt;&lt;INPUT type=&quot;text&quot; name=&quot;textbox0&quot; id=&quot;te', '10', '2021-09-27 10:02:07'),
(28, 4, '\"JS content not working after a page transition using Barba.JS\"', '\"am using Barba.js and GSAP to create page transitions for my website. After watching a few tutorials and fiddling around a bit, I managed to create a slide-transition between two pages. Thing is I&#039;ve also got other javascript content which is for other functionality elements on each page. On the first page load, everything seems to work fine.\r\n\r\nI then click on a link to transition to the next page, the transition goes well but suddenly none of the elements I had coded in the very same JS file work anymore.\r\n\r\nI can still transition perfectly between each page but none of the other JS content seems to be working. I&#039;m not getting any errors in the console so I have no idea what&#039;s exactly happening here.\"', 'barba.init({\r\n    sync: true,\r\n\r\n    transitions: [{\r\n        async leave(data) {\r\n            const done = this.async();\r\n            animationLeave();\r\n            await delay(1000);\r\n            done();\r\n        },\r\n        enter(data) {\r\n            animationEnter();\r\n        },\r\n        once(data) {\r\n            animationEnter();\r\n        }\r\n\r\n    }, {\r\n        name: &#039;home-transition&#039;,\r\n        to: {\r\n            namespace: [&#039;home&#039;]\r\n        },\r\n\r\n        async once(data) {\r\n            homeAnimation();\r\n        }\r\n\r\n    }]\r\n});', 'mahfuz@123gmail.com', '2021-10-04 08:16:29'),
(29, 4, '\"Javascript error: Uncaught (in promise) TypeError: Failed to execute &#039;appendChild&#039; on &#039;Node&#039;: parameter 1 is not of type &#039;Node&#039;\"', '\"I&#039;ve been struggling with this error for a day or so now. I looked at other stackoverflow questions and a lot of them were people trying to drag an image/list over. I am just trying to get my update function to work, but this error kept happening. From what I&#039;ve seen, it seems like it is an issue with how it is grabbing the child? I am not sure what steps to take to solve this. Any help would be appreciated. It starts with attachDOM and appending the child.\"', '}\r\n\r\n    deleteMovie = (e) =&gt; {\r\n        this.element.remove() // remove it before the fetch request \r\n        movieAdapter.deleteMovie(this.id)\r\n    }\r\n\r\n    saveUpdatedMovie = () =&gt; {\r\n        this.title = this.element.querySelector(&quot;.edit-title&quot;).value\r\n        this.year = this.element.querySelector(&quot;.edit-year&quot;).value\r\n        this.rating = this.element.querySelector(&quot;.edit-rating&quot;).value\r\n        this.length = this.element.querySelector(&quot;.edit-length&quot;).value\r\n        this.description = this.element.querySelector(&quot;.edit-description&quot;).value\r\n        this.watch = this.element.querySelector(&quot;.edit-watch&quot;).value\r\n    \r\n       movieAdapter.sendPatch(this)\r\n    }\r\n\r\n    render(){\r\n        this.li.innerHTML = `\r\n            &lt;div data-id=&quot;${this.id}&quot;&gt;\r\n                &lt;strong class=&quot;title&quot;&gt;${this.title}&lt;/strong&gt;\r\n            \r\n                &lt;span class=&quot;year&quot;&gt;${this.year}&lt;/span&gt;,\r\n                &lt;span class=&quot;rating&quot;&gt;${this.rating}&lt;/span&gt;,\r\n                &lt;span class=&quot;length&quot;&gt;${this.length}&lt;/span&gt;.\r\n                \r\n                &lt;span class=&quot;description&quot;&gt;${this.description}&lt;/span&gt;\r\n                &lt;br&gt;&lt;br&gt;\r\n                &lt;span class=&quot;watch&quot;&gt;Watch it here: ${this.watch}&lt;/span&gt; \r\n            &lt;/div&gt;\r\n            &lt;button class=&quot;edit&quot; data-id=&quot;${this.id}&quot;&gt;Edit&lt;/button&gt;\r\n            &lt;button class=&quot;delete&quot; data-id=&quot;${this.id}&quot;&gt;Delete&lt;/button&gt;\r\n        `\r\n        return this.element\r\n    }\r\n\r\n    attachDOM(){\r\n        Movie.movieContainer.appendChild(this.render())\r\n    }\r\n    // responsibility is to attach everything to the DOM\r\n}\r\n', 'mahfuz@123gmail.com', '2021-10-04 09:12:13');

-- --------------------------------------------------------

--
-- Table structure for table `event_details`
--

CREATE TABLE `event_details` (
  `Event_id` int(11) NOT NULL,
  `Event_title` varchar(200) NOT NULL,
  `Event_details` varchar(1000) NOT NULL,
  `event_front_page` varchar(30) NOT NULL,
  `event_type_id` int(11) NOT NULL,
  `Totall_guest` int(11) NOT NULL,
  `Start_time` datetime NOT NULL,
  `End_time` datetime NOT NULL,
  `Ticket_price` float NOT NULL,
  `venue_id` int(11) NOT NULL,
  `Organizer_name` varchar(100) NOT NULL,
  `Status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event_details`
--

INSERT INTO `event_details` (`Event_id`, `Event_title`, `Event_details`, `event_front_page`, `event_type_id`, `Totall_guest`, `Start_time`, `End_time`, `Ticket_price`, `venue_id`, `Organizer_name`, `Status`) VALUES
(1, ' Intra IIT programming contest', 'The International Collegiate Programming Contest is an algorithmic programming contest for college students. Teams of three, representing their university, work to solve the most real-world problems, fostering collaboration, creativity, innovation, and the ability to perform under pressure. Through training and competition, teams challenge each other to raise the bar on the possible. Quite simply, it is the oldest, largest, and most prestigious programming contest in the world', '', 1, 100, '2021-09-02 01:25:57', '2021-10-02 21:25:57', 200, 1, 'IT_CLUB', 1),
(2, 'ALADIN', 'Aladdin is a lovable street urchin who meets Princess Jasmine, the beautiful daughter of the sultan of Agrabah. While visiting her exotic palace, Aladdin stumbles upon a magic oil lamp that unleashes a powerful, wisecracking, larger-than-life genie. As Aladdin and the genie start to become friends, they must soon embark on a dangerous mission to stop the evil sorcerer Jafar from overthrowing young Jasmine\'s kingdom.', '', 3, 100, '2021-08-01 01:25:57', '2021-10-02 21:25:57', 500, 5, 'IIT_INSTRITUTE', 0),
(3, 'Intra University sports ', '', '', 5, 30, '2021-10-29 21:35:04', '2021-10-02 21:35:04', 600, 3, 'admin', 1),
(4, 'Halt-prize', 'The Hult Prize is an annual, year-long competition that crowd-sources ideas from university level students after challenging them to solve a pressing social issue around topics such as food security, water access, energy, and education.It was founded by Ahmad Ashkar and is funded by Bertil Hult,the latter of whom, along with his family – founders of EF Education First – donates US$1 million in seed capital to help the winning team launch a social enterprise. The Prize is a partnership between Hult International Business School and the United Nations Foundation. Former U.S. president Bill Clinton selects the challenge topic and announces the winner each September; he mentioned it in a 2012 Time article about \"the top 5 ideas that are changing the world for the better\".The Hult Prize has been referred to as the \"Nobel Prize for students\" by Nobel laureate Muhammad Yunus', '', 2, 50, '2021-09-20 01:35:04', '2021-10-02 21:35:04', 500, 1, 'IIS_CLUB', 1),
(5, 'IIT Freshers Reception and Farewell - 2021', 'On 15th october, the fresher\'s reception of 5th batch and the farewell of 1st batch was held in Hazi Iddriss Auditorium. Brainstation-23 was the title sponsor of the event which was organised by the 2nd batch of IIT.\r\n\r\nThe Chief Guest ProVC (Administration) Abdus Samad Sir along with the special guest Mr.Bahadur Sir, Co-founder and CEO of Brainstation-23 and chair Prof. Md. Auhidur Rahman Sumon was present on the program.\r\n\r\nThe program started with the announcement of SPL Project showcasing winners by honarable Eftekhar Alam Efat sir. Shuvo Saha represented 1st batch and shared their experience of four years with IIT and Md Siam from 2nd batch shared his experience which they had gained in these 8 month. The chief guest gave his final speech. And then the students of 1st batch were rewarded crest at the end of the first part of the program.\r\n\r\nThe second part was filled with joyous activities. From songs to dance, from ramps to drama. IITians conquered it all. Batch 3rd led the event', '', 3, 200, '2021-10-15 16:07:24', '2021-10-15 16:07:24', 400, 2, '2nd Batch student', 1),
(16, 'SPL 2 SUBMISSION', 'SPL 2 SUBMISSION', '', 4, 27, '2021-10-05 21:17:00', '2021-10-05 15:17:00', 0, 1, 'IIT', 1),
(17, 'abcd', 'abcd', '', 4, 12, '2021-10-15 02:02:00', '2021-10-23 04:01:00', 0, 1, 'IT CLUB', 1);

-- --------------------------------------------------------

--
-- Table structure for table `event_request`
--

CREATE TABLE `event_request` (
  `id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `request_by` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `event_type`
--

CREATE TABLE `event_type` (
  `event_type_id` int(11) NOT NULL,
  `Type_name` varchar(100) NOT NULL,
  `Type_details` varchar(1000) NOT NULL,
  `Type_Image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event_type`
--

INSERT INTO `event_type` (`event_type_id`, `Type_name`, `Type_details`, `Type_Image`) VALUES
(1, 'Programming contest', 'The ICPC traces its roots to 1970 when the first competition was hosted by pioneers of the Alpha Chapter of the UPE Computer Science Honor Society. The initiative spread quickly within the United States and Canada as an innovative program to raise increase ambition, problem-solving aptitude, and opportunities of the strongest students in the field of computing.\r\n\r\nOver time, the contest evolved into a multi-tier competition with the first championship round conducted in 1977. Since then, the contest has expanded into a worldwide collaborative of universities hosting regional competitions that advance teams to the annual global championship round, the ICPC World Finals.\r\n\r\nThe International Collegiate Programming Contest (ICPC) is the premier global programming competition conducted by and for the world’s universities. The ICPC is affiliated with the ICPC Foundation and is headquartered at Baylor University.', 'programming.png'),
(2, 'Workshop', 'A workshop on DevOps has been organized by the DSSE (Distributed Systems & Software Engineering) Student Research Group on 3rd and 4th August. The workshop consisted of 6 sessions covering topics such as Git, CI-CD, build systems like Jenkins, Unit and integration testing, deployment tools like Docker, and demonstration of a complete industry pipeline.\r\n\r\nThe sessions were conducted by four industry experts: Mohammad Mizanur Rahman (Brainstation-23), Syedur Rahman (The Jaxara It Ltd.), Ratul Basak (Secure Link Services Ltd.) and Bazlur Rahman Rokon (bKash Limited and IIT alumnus).\r\n\r\n50 participants joined the workshop, which included students of IIT-DU as well as 13 software engineering students from universities across the country and 12 young industry professionals.\r\n\r\nThe event was live-streamed via Zoom, supported by Bangladesh Research and Education Network (BdRen). Secure Link Services Ltd. also assisted in organizing the event. The workshop was free to participate in.', 'workshop.png'),
(3, 'Cultural program', 'Cultural programmes play a major part in a school student’s life. By taking part in the programmes, right from an early age, children come to know about the rich culture and traditions being followed which also develops their interpersonal skills. They learn the values imparted and would respect all the cultures, alike, when they grow up!\r\n\r\nWhen the cultural programmes are spread across the academic year, student find it exciting and enjoy going to University. As we all know,university play a major role in organizing such events and we at Reeds World University, one of the top CBSE University in Coimbatore, meticulously plan and execute such programmes with the help of our amazing and dedicated teachers!', 'cultural.png'),
(4, 'Meeting', 'if you are inexperienced in chairing formal meetings, such as the club Annual General Meeting or the monthly club meetings, this resource provides some helpful hints.\r\n\r\nThe chairperson and/or president ’s role is to control the meetings, accept motions and amendments, rule on points of order and see that the wishes of the meeting are carried out correctly and expediently. In this document, the president is referred to as the chairperson.', 'club.png'),
(5, 'Sports', 'The sports day a happy occasion for the students, teachers, and guardians. The last annual sports day at our school was held on 20th March 2012. It was a very pleasant occasion. We spent almost the whole day with joy and pleasure. It is the memorable event for me.', 'sports.png');

-- --------------------------------------------------------

--
-- Table structure for table `extra_class`
--

CREATE TABLE `extra_class` (
  `id` int(11) NOT NULL,
  `routine_id` int(11) NOT NULL,
  `slot_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `extra_class`
--

INSERT INTO `extra_class` (`id`, `routine_id`, `slot_id`) VALUES
(24, 52, 4);

-- --------------------------------------------------------

--
-- Table structure for table `issued_books`
--

CREATE TABLE `issued_books` (
  `issued_id` int(11) NOT NULL,
  `bk_id` int(11) NOT NULL,
  `bk_name` varchar(255) NOT NULL,
  `issued_to` varchar(255) NOT NULL,
  `issue_date` date NOT NULL,
  `return_date` date NOT NULL,
  `u_type` varchar(255) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issued_books`
--

INSERT INTO `issued_books` (`issued_id`, `bk_id`, `bk_name`, `issued_to`, `issue_date`, `return_date`, `u_type`, `status`) VALUES
(54, 20, 'Computer Science Distilled\r\nLearn the Art of Solving Computational Problems', 'Auhidur@gmail.com', '2021-10-03', '2021-11-02', '1', '1'),
(58, 7, 'Design Patterns: Elements of Reusable objects Oriented Software', 'a@gmail.com', '2021-10-03', '2021-11-02', '3', '1'),
(59, 1, 'Algorithms to Live By: The Computer Science of Human Decisions', 'abcd@gmail.com', '2021-10-03', '2021-11-02', '3', '1'),
(60, 15, 'Barron&amp;#039;s AP Computer Science A, 8th Edition\r\nwith Bonus Online Tests', 'abcd@gmail.com', '2021-10-04', '2021-10-19', '3', '0');

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` int(11) NOT NULL,
  `notice_title` varchar(200) NOT NULL,
  `notice_content` varchar(2000) NOT NULL,
  `notice_pdf` varchar(20) NOT NULL,
  `notice_img` varchar(20) NOT NULL,
  `notice_category` int(11) NOT NULL,
  `post_date` datetime DEFAULT current_timestamp(),
  `post_by` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`id`, `notice_title`, `notice_content`, `notice_pdf`, `notice_img`, `notice_category`, `post_date`, `post_by`) VALUES
(1, 'Exam Date Announced', 'Exam date has been announced for 1st year,2nd year and 3rd year BSSE students. They are being told to prepare required documents and clear fees in order to participate the exam.', '1.pdf', 'num_one.jpg', 3, '2021-10-03 20:51:25', 'mahfuz@123gmail.com'),
(2, 'New Course will arrive', 'Chance for general people to grab the experience from IIT and make themselves competitive in the job market by gaining different skills', '2.pdf', 'num_two.jpg', 4, '2021-10-03 20:51:25', 'mahfuz@123gmail.com'),
(3, 'Convocation to be held', 'Convocation of 2021 in NSTU will be held soon. All undergraduate, post graduate students are told to contact with register office', '3.pdf', 'num_three.jpg', 1, '2021-10-03 20:55:49', 'mahfuz@123gmail.com'),
(4, 'Project Submission', '2nd and 3rd year students of BSSE program are told submit their respective project within this month', '4.pdf', 'num_four.jpg', 3, '2021-10-03 20:55:49', 'mahfuz@123gmail.com'),
(5, 'Seminar on Cyber Security', 'A day long seminar will be held in IIT lab-01 on \"Cyber Security: Challenges and future\". All students and teachers are told to participate. ', '5.pdf', 'num_five.jpg', 1, '2021-10-03 21:00:35', 'mahfuz@123gmail.com'),
(6, 'Fresher Reception', 'Freshers of BSSE new batch will be welcomed next Sunday. Everyone are being told to attend.', '6.pdf', 'num_six.jpg', 1, '2021-10-03 21:00:35', 'mahfuz@123gmail.com'),
(7, 'Essay Writing Competition', 'NSTU Essay Writing competition 2021 will be held next week. Interested persons are told contact with Director of IIT.', '7.pdf', 'num_seven.jpg', 3, '2021-10-03 21:05:27', 'mahfuz@123gmail.com'),
(9, 'IIT participated in Football league', 'Team from IIT participated in INTRA UNIVERSITY FOOTBALL LAEGUE. ', '9.pdf', 'num_nine.jpg', 1, '2021-10-03 21:09:29', 'mahfuz@123gmail.com'),
(10, 'Workshop on Android apps Development', 'A workshop on Android apps development will be held on IIT lab-02. All BSSE students and teachers are told to participate', '10.pdf', 'num_ten.jpg', 3, '2021-10-03 21:09:29', 'mahfuz@123gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `notice_category`
--

CREATE TABLE `notice_category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notice_category`
--

INSERT INTO `notice_category` (`id`, `category_name`, `date`) VALUES
(1, 'General', '0000-00-00 00:00:00'),
(2, 'Projects', '0000-00-00 00:00:00'),
(3, 'BSSE', '0000-00-00 00:00:00'),
(4, 'Training Program', '0000-00-00 00:00:00'),
(5, 'PGDIT', '2021-10-03 10:26:03'),
(6, 'Academic', '2021-10-03 10:26:03');

-- --------------------------------------------------------

--
-- Table structure for table `return_books`
--

CREATE TABLE `return_books` (
  `return_id` int(11) NOT NULL,
  `issue_id` int(11) NOT NULL,
  `return_date` date NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `return_books`
--

INSERT INTO `return_books` (`return_id`, `issue_id`, `return_date`, `status`) VALUES
(31, 54, '2021-10-03', 'On Time'),
(32, 59, '2021-10-03', 'On Time'),
(33, 58, '2021-10-04', 'On Time');

-- --------------------------------------------------------

--
-- Table structure for table `routine`
--

CREATE TABLE `routine` (
  `id` int(11) NOT NULL,
  `row` int(11) NOT NULL,
  `subrow` int(11) NOT NULL,
  `col` int(11) NOT NULL,
  `slot_id` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `routine`
--

INSERT INTO `routine` (`id`, `row`, `subrow`, `col`, `slot_id`, `status`) VALUES
(40, 2, 2, 2, 1, 1),
(43, 1, 2, 5, 1, 1),
(49, 2, 2, 6, 4, 1),
(50, 1, 3, 2, 2, 1),
(51, 2, 3, 2, 3, 1),
(52, 1, 2, 2, 3, 0),
(61, 2, 1, 5, 6, 1),
(65, 5, 1, 6, 2, 1),
(66, 3, 2, 6, 3, 1),
(68, 1, 2, 6, 1, 1),
(70, 1, 2, 4, 6, 1),
(76, 1, 1, 3, 1, 1),
(77, 1, 1, 4, 4, 1),
(78, 1, 2, 3, 5, 1),
(79, 1, 3, 3, 8, 1),
(80, 1, 3, 4, 3, 1),
(81, 2, 3, 4, 8, 1),
(82, 2, 3, 3, 6, 1),
(83, 2, 3, 7, 8, 1),
(84, 2, 3, 6, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `staff_info`
--

CREATE TABLE `staff_info` (
  `id` int(11) NOT NULL,
  `firstname` varchar(25) NOT NULL,
  `lastname` varchar(25) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_info`
--

INSERT INTO `staff_info` (`id`, `firstname`, `lastname`, `mobile`, `username`, `password`, `designation`, `status`) VALUES
(1, 'Mahfuz', 'Ahmed', '0170234567', 'mahfuz@123gmail.com', '1234', 'Officer', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

CREATE TABLE `student_info` (
  `id` int(11) NOT NULL,
  `student_roll` varchar(16) NOT NULL,
  `student_name` varchar(48) NOT NULL,
  `student_session` varchar(12) NOT NULL,
  `student_mobile` varchar(14) NOT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) NOT NULL,
  `student_current_batch` enum('11','12','13','14','15','16') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_info`
--

INSERT INTO `student_info` (`id`, `student_roll`, `student_name`, `student_session`, `student_mobile`, `username`, `password`, `student_current_batch`) VALUES
(1, 'ASH001M', 'Abdullah An Noor', '2017-18', '0171100000001', 'a@gmail.com', '1234', '13'),
(2, 'ASH002M', 'Emran Hossain', '2017-18', '0170000000002', 'ab@gmail.com', '1234', '13'),
(3, 'ASH003M', 'Mahbub Alam', '2017-18', '0170000000003', 'abc@gmail.com', '1234', '13'),
(4, 'ASH004M', 'Fazle Rabbi', '2017-18', '017000000004', 'abcd@gmail.com', '1234', '13'),
(5, 'ASH005M', 'Abrar Hossain ', '2017-18', '0171100000005', 'abcde@gmail.com', '1234', '13');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_info`
--

CREATE TABLE `teacher_info` (
  `id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `shortform` varchar(10) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_info`
--

INSERT INTO `teacher_info` (`id`, `firstname`, `lastname`, `designation`, `mobile`, `username`, `password`, `shortform`, `status`) VALUES
(1, 'Auhidur', 'Rahman', 'Director', '1700000012', 'Auhidur@gmail.com', '1234', 'ARS', 'Active'),
(2, 'Iftekhar', 'Iftee', 'Assistant Professor', '1700000013', 'Iftekhar@gmail.com', '1234', 'IAE', 'Active'),
(3, 'Dipok ', 'Chnadra Das', 'Lecturer', '1700000014', 'Dipok@gmail.com', '1234', 'DCD', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `venue`
--

CREATE TABLE `venue` (
  `venue_id` int(11) NOT NULL,
  `Venue_name` varchar(100) NOT NULL,
  `Venue_capacity` int(11) NOT NULL,
  `Venue_location` varchar(1000) NOT NULL,
  `Venue_pic` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `venue`
--

INSERT INTO `venue` (`venue_id`, `Venue_name`, `Venue_capacity`, `Venue_location`, `Venue_pic`) VALUES
(1, 'liabrary Building', 500, 'Behind the central mosque', 'Library.png'),
(2, 'Hazi idris auditorium', 1000, 'main gate right side', 'auditorium.png'),
(3, 'Central field', 2000, 'left side of campus', 'Centralfield.png'),
(4, 'Abus salam hall', 100, 'part of the pocket gate', 'salamhall.png'),
(5, 'Malek Ukil Hall', 500, '2nd hall of university beside the salam hall', 'malekukil.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assign_course_routine`
--
ALTER TABLE `assign_course_routine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `batch`
--
ALTER TABLE `batch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books_catalog`
--
ALTER TABLE `books_catalog`
  ADD PRIMARY KEY (`bk_id`);

--
-- Indexes for table `book_requests`
--
ALTER TABLE `book_requests`
  ADD PRIMARY KEY (`reques_id`);

--
-- Indexes for table `catagories`
--
ALTER TABLE `catagories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discussion_answers`
--
ALTER TABLE `discussion_answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discussion_category`
--
ALTER TABLE `discussion_category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `discussion_questions`
--
ALTER TABLE `discussion_questions`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `discussion_questions` ADD FULLTEXT KEY `title` (`title`,`description`);

--
-- Indexes for table `event_details`
--
ALTER TABLE `event_details`
  ADD PRIMARY KEY (`Event_id`);

--
-- Indexes for table `event_request`
--
ALTER TABLE `event_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_type`
--
ALTER TABLE `event_type`
  ADD PRIMARY KEY (`event_type_id`);

--
-- Indexes for table `extra_class`
--
ALTER TABLE `extra_class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issued_books`
--
ALTER TABLE `issued_books`
  ADD PRIMARY KEY (`issued_id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `notices` ADD FULLTEXT KEY `notice_title` (`notice_title`,`notice_content`);

--
-- Indexes for table `notice_category`
--
ALTER TABLE `notice_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `return_books`
--
ALTER TABLE `return_books`
  ADD PRIMARY KEY (`return_id`);

--
-- Indexes for table `routine`
--
ALTER TABLE `routine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_info`
--
ALTER TABLE `staff_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_info`
--
ALTER TABLE `student_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_info`
--
ALTER TABLE `teacher_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `venue`
--
ALTER TABLE `venue`
  ADD PRIMARY KEY (`venue_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assign_course_routine`
--
ALTER TABLE `assign_course_routine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `batch`
--
ALTER TABLE `batch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `books_catalog`
--
ALTER TABLE `books_catalog`
  MODIFY `bk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `book_requests`
--
ALTER TABLE `book_requests`
  MODIFY `reques_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `catagories`
--
ALTER TABLE `catagories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `discussion_answers`
--
ALTER TABLE `discussion_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `discussion_category`
--
ALTER TABLE `discussion_category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `discussion_questions`
--
ALTER TABLE `discussion_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `event_details`
--
ALTER TABLE `event_details`
  MODIFY `Event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `event_request`
--
ALTER TABLE `event_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `event_type`
--
ALTER TABLE `event_type`
  MODIFY `event_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `extra_class`
--
ALTER TABLE `extra_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `issued_books`
--
ALTER TABLE `issued_books`
  MODIFY `issued_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `notice_category`
--
ALTER TABLE `notice_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `return_books`
--
ALTER TABLE `return_books`
  MODIFY `return_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `routine`
--
ALTER TABLE `routine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `staff_info`
--
ALTER TABLE `staff_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student_info`
--
ALTER TABLE `student_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `teacher_info`
--
ALTER TABLE `teacher_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `venue`
--
ALTER TABLE `venue`
  MODIFY `venue_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
