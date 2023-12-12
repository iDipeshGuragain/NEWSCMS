-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2023 at 06:30 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news-site`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `post` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `post`) VALUES
(34, 'Sports', 0),
(31, 'Entertainment', 0),
(32, 'Politics', 0),
(33, 'Health', 1),
(36, 'Tech', 10),
(37, 'BUSINESS', 3);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `category` varchar(100) NOT NULL,
  `post_date` varchar(50) NOT NULL,
  `author` int(11) NOT NULL,
  `post_img` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `title`, `description`, `category`, `post_date`, `author`, `post_img`) VALUES
(45, 'What Does DEI Mean? Why Its Important For Organization ?', 'Diversity Refers To The Presence Of A Wide Range Of Human Qualities And Attributes Within A Group, Organization, Or Community Or We Can Simply Say Diversity IS Having A Variety Of People With Different Backgrounds And Characteristics.\r\n\r\nEquity Involves Ensuring That Everyone Has Access To The Same Opportunities And Resources, Regardless Of Their Background Or Characteristics, To Address Historical And Systemic Inequalities.\r\n\r\nInclusion Involves Creating An Environment Where Individuals From Diverse Backgrounds Feel Valued, Respected, And Empowered To Fully Participate.\r\n\r\n\r\nHaving A Diverse Group Of People Brings A Range Of Perspectives And Ideas. This Diversity Can Lead To Innovation, Better Problem-Solving, And A Richer, More Dynamic Community. Equity Ensuring Fairness And Justice By Addressing Historical And Systemic Inequalities. Equity Promotes Equal Opportunities For Everyone, Acknowledging That Different Individuals May Need Different Levels Of Support To Reach The Same Goals. Inclusion Create An Environment Where Everyone Feels Welcome, Respected, And Able To Contribute. Inclusive Environments Foster Collaboration, Employee Satisfaction, And A Sense Of Belonging, Which Can Enhance Productivity And Well-Being.', '33', '02 Dec, 2023', 41, '1701514940-1.jpg'),
(46, 'What is A/B Testing? ', 'A/B Testing IS A Methodology For Comparing Two Versions Of A Webpage OR App Against Each Other To Determine Which One Performs Better. A/B Testing IS Essentially An Experiment Where Two Or More Variants Of A Page Are Shown To Users At Random, And Statistical Analysis IS Used To Determine Which Variation Performs Better For A Given Conversion Goal. Running An A/B Test That Directly Compares A Variation Against A Current Experience Lets You Ask Focused Questions About Changes To Your Website Or App And Then Collect Data About The Impact Of That Change. ', '36', '02 Dec, 2023', 40, '1701515083-2.jpg'),
(47, 'DIFFERENCE BETWEEN MANAGEMENT AND BOARD OF DIRECTORS', 'The Board Of Directors IS Directly Hired By The Stockholders. The Chairman IS The Head Of The Board Of Directors, Which Includes Inside Directors And Outside Directors. It Is The Board Of Directors Job To Head The Company And Ensure That The Company IS Headed In The Right Department. The Board Of Directors Is Also Responsible For Hiring The Upper Management, And For Overseeing The Organization And Its Management. The Upper Management Usually Involves The CEO, CFO, And The CIO. The Board IS Basically Responsible For The Company, But It Delegates The Day-To-Day Organization And Tasks Of The Company To The Management. \r\n\r\n\r\nThe Management Team IS Responsible For The Day-To-Day Operations Of The Company. Their Primary Focus IS On Executing The Company\'s Strategies, Achieving Operational Goals, And Running The Business Efficiently.\r\n\r\n\r\n\r\nTypes of Directors In A Company \r\n\r\nDirectors Refer To The Part Of The Collective Body Known As The Board Of Directors, That IS Responsible For Controlling, Managing And Directing The Affairs Of A Company. Directors Are Considered The Trustees Of The Company’s Property And Money\r\n\r\n\r\nManaging Director\r\nA Managing Director Means A Director Entrusted With The Substantial Powers Of Management Of The Company By Virtue Of The Articles Of A Company, Agreement With The Company, Resolution Passed In The Company General Meeting Or By The Board Of Directors \r\n\r\nExecutive Director\r\nAn Executive Director IS The Full-Time Working Director Of The Company. They Look After The Affairs Of The Company And Have A Higher Responsibility Towards The Company\r\n\r\nNon-Executive Director\r\nA Non-Executive Director IS A Non-Working Director And IS Not Involved In The Everyday Working Of The Company. They Might Participate In The Planning Or Policy-Making Process And Challenge The Executive Directors To Come Up With Decisions That Are In The Best Interest Of The Company \r\n\r\nIndependent Director — \r\nIndependent Directors Are Non-Executive Directors Of A Company And Help The Company To Improve Corporate Credibility And Enhance The Governance Standards \r\n\r\nEvery Listed Public Company Must Have At Least One-Third Of A Total Number Of Directors As Independent Directors. Following Unlisted Public Companies Need To Appoint At The Least Two Independent Directors \r\n\r\n\r\nKey Differences Between Chief Executive Officer VS Managing Director \r\n\r\nCEO Leads The Management Of The Company, While MD IS Led By The Chairman Of The Board\r\n\r\nCEO IS Focused On Future-Oriented Goals, Whereas MD Handles Day To Day Operations Of The Company\r\n\r\nAs A Firm Representative, The CEO Handles The Outside World, Like Media And Other Public Events, Whereas MD Plays The Main Role Inside The Firm\r\n\r\nBoth Chief Executive Officer Vs Managing Director Reports To The Chairman. On The Other Hand, In Many Cases, MD Reports To The CEO As Well\r\n', '37', '02 Dec, 2023', 40, '1701515691-3.jpg'),
(48, 'A Copywriter Sells, While A Content Writer Informs ', 'Content Writing IS Engagement Driven Where Copywriting IS Sales Driven \r\n\r\n\r\nContent Writing Has A Long Form Strategy Where Copywriting Has Short Term Goals \r\n\r\n\r\nContent Writers Are Generally More Focused On SEO, On The Other Hand, Copywriters Develop Advertising Copy With A Focus On Short Term Goals And Since A Lot Of Their Work Consists Of Ads, Taglines, And Slogans, Copywriters Don’t Focus As Much On SEO ', '36', '02 Dec, 2023', 41, '1701515804-4.jpg'),
(49, 'What IS Consulting ?', 'Consulting IS A Term For Providing Business Advice On Various Topics Including, Corporate Strategy, Product Development, Marketing, Information Technology, And Operational Improvement. \r\n\r\n\r\n\r\nWho IS A Management Consultant? \r\n\r\nAs Part Of The Consulting Industry, Management Consultants Help Businesses Improve Their Operations. They Work With Managers And Leadership — Including C-Suite Executives — To Analyze Team Performance And Recommend Steps For Improvement. \r\n\r\n\r\nWhat Does A Management Consultant Do? \r\n\r\n1. Providing Information To A Client\r\n\r\n2. Solving A Client\'s Problem \r\n\r\n3. Making A Diagnosis, Which May Necessitate Redefinition Of The Problem\r\n\r\n\r\n4. Making Recommendations Based On The Diagnosis \r\n\r\n5. Assisting With Implementation Of Recommended Solutions \r\n\r\n6. Building A Consensus And Commitment Around Corrective Action\r\n\r\n7. Facilitating Client Learning— That IS, Teaching Clients How To Resolve Similar Problems In The Future \r\n\r\n8. Permanently Improving Organizational Effectiveness ', '37', '02 Dec, 2023', 42, '1701515952-5.jpg'),
(50, '5 Reasons Why Linux IS Better Than Windows For Developers ', '5 Reasons Why Linux IS Better Than Windows For Developers \r\n\r\nOpen Source - Linux IS Open Source, Meaning Developers Can Access And Modify Its Source Code, Making It Highly Customizable To Their Needs. \r\n\r\nLinux Design Is Highly Secured - Linux IS Developed And Deployed With Higher Security Aspects, By Which The Programmers May Easily Avoid OR Eliminate Viruses And Other Harmful Malware. \r\n\r\nPerformance - Linux IS More Powerful Than Windows. It Is Light Weight, Which Makes Linux Faster Than Windows. You Will Notice A Significant Improvement In Speed On A Linux Distro When You Start Working On This OS.\r\n\r\nCost Effectiveness - Linux IS Generally Free, Making It An Economical Choice For Developers And Teams. \r\n\r\nCustomization And Flexibility - Linux Allows Users To Customize Every Aspect Of Their Environment To Suit Their Preferences.', '36', '02 Dec, 2023', 42, '1701515996-6.jpg'),
(51, 'Project IDX VS Visual Studio Code: The War Of Code Editors ', 'Project IDX, An Experiment From Google To Improve Full-Stack, Multiplatform App Development.Its A AI Enabled Browser Based Development Environment Run On Google Cloud.\r\n\r\n\r\nVS Code: \r\n1) Developed By Microsoft\r\n\r\n2) VS Code IS A Mature Ecosystem With Numerous Extensions, Themes, And Integrations\r\n\r\n3) Regular Updates And Robust Debugging Tools\r\n\r\n4) Widely Used In Web Development, Data Science, And More\r\n\r\n\r\n\r\nProject IDX: \r\n\r\n1) Prioritizes Performance With A Focus On Speed And Responsiveness.\r\n\r\n\r\n2) Community Driven And Open Source, Benefiting From Developers From Around The Globe ? \r\n\r\n\r\n3) Extensive Theming And UI Customization Options\r\n\r\n\r\n4) Built In Collaboration Tools For Teamwork And Real Time Code Sharing\r\n\r\n\r\n5) IDX Maintains An Agile Development Approach, Quickly Responding To User Feedback And Feature Requests\r\n', '36', '02 Dec, 2023', 42, '1701516042-00.jpg'),
(52, 'How Quantum Computing Impact Artificial Intelligence ? ', '\r\nArtificial Intelligence (AI) And Quantum Computing Are Both Transformational Technologies That Have The Potential To Change The World In Significant Ways.\r\n\r\n\r\n\r\nQuantum Computing Can Provide A Computation Boost To Artificial Intelligence, Enabling It To Tackle More Complex Problems In Many Fields In Business And Science.\r\n\r\n\r\nFor Instance, Quantum Computing Can Help Improve Machine Learning Algorithms By Enabling Them To Process Large Amounts Of Data More Quickly And Accurately.\r\n\r\n\r\nQuantum Computing Can Also Help Optimize Supply Chain Management By Analyzing Vast Amounts Of Data And Identifying Patterns That Would Be Difficult Or Impossible To Detect Using Classical Computing Methods.\r\n\r\n\r\nIn Conclusion, Quantum Computing Has The Potential To Revolutionize Artificial Intelligence By Providing A New Tool For Specific Applications And Enabling It To Tackle More Complex Problems.\r\n\r\n', '36', '02 Dec, 2023', 42, '1701516086-AB.jpg'),
(53, 'Google Search Algorithms Major Update Over The Years — ', 'Google Panda Update Was Introduced In 2011 And Was Designed To Punish Thin Or Poor Content. Google Said Panda Was Designed To Reduce The Rankings For Low Quality Sites (Sites Which Are Low Value Add For Users, Copy Content From Other Websites Or Sites That Are Just Not Very Useful) And Reward Better Rankings To High Quality Sites (Sites With Original Content And Information Such As Research, In-Depth Reports, Thoughtful Analysis And So On).\r\n\r\n\r\nPenguin IS A Google Algorithm Introduced In 2012 Intended To Reduce Spamming Practices. The Search Engine Penalizes Websites With Links Of Low Quality As This IS Considered A Form Of Spam. The Penguin Algorithm Rewards Websites Which Have Backlinks From Verified Sources And Non Keyword Stuffed Content.\r\n\r\nRankbrain IS A Machine Learning Based Search Engine Algorithm, The Use Of Which Was Confirmed By Google On October 2015. It Helps Google To Process Search Results And Provide More Relevant Search Results For Users. \r\n\r\n\r\nOn June 2021, Google Began To Roll Out A Broad Core Algorithm Update Called The Page Experience Update. This Update IS Intended To Bring A Better Experience To Users By Prioritizing Pages That Offer A Quality Page Performance — Fast Load Times, Stable Page. ', '36', '02 Dec, 2023', 42, '1701516132-XYZ.jpg'),
(54, 'What IS Drop Servicing?', 'Drop Servicing IS A Business Model Where You Sell Digital Services To Clients And Outsource The Work To Freelancers, Agencies, Or Contractors Rather Than Doing It Yourself.\r\n\r\nStarting A Drop Service Business Means Dealing With Services Rather Than Physical Products. As A Drop Service Business Owner, You’ll Profit From What Remains After Paying The Service Provider.\r\n\r\nLet’s Say You Start A Website Development Drop Service. You’ll Meet With The Customer To Identify Their Needs And Hire Developers To Build The Website.\r\n\r\nWhen The Developers Complete The Project, You’ll Make Sure It Meets The Customer’s Requirements, Pay The Contractors As Agreed, And Deliver The Final Product To The Client. \r\n\r\nHow Does Drop Servicing Work?\r\n\r\n1. Identify A Digital Service. You First Identify The Digital Service You’re Willing To Provide. From Content Production To Software Development, The List Of Drop Service Ideas You Can Start IS Vast. \r\n\r\n2. Find Freelancers To Work With You. Once You’ve Identified Your Target Service, Start Looking For Freelancers Who Will Collaborate With You To Provide The Service. Among The Top Places You Can Find Freelancers Are Upwork And Fiverr.\r\n\r\n3.Find Customers. The Next Step IS To Market Your Digital Service And Find Customers. You Can Use A Variety Of Promotional Tactics, Including Social Media Marketing.\r\n\r\n4. Set Prices And Receive Payment. Remember To Set Prices For Your Services. You Don’t Want To Put A High Price Tag That Will Scare Away Clients Or Go Too Low Where You Make No Profit. Most Drop-Service Businesses Receive Payment Upfront, Allowing Them To Hire Freelancers And Get Started With The Work.\r\n\r\n5. Collaborate With The Service Provider Or Contractor. At This Stage, You’ll Communicate The Client’s Requirements To The Service Provider Doing The Project. Once The Service Provider Completes The Work, You’ll Review It And Ensure It’s High Quality Before Delivering It To The Customer. You’ll Also Pay The Contractor For The Service Rendered.\r\n\r\n6. Engage In Customer Service. After Sending The Final Work To The Client, Get Overall Sentiment From Them And Provide Feedback To The Service Provider. If The Customer Asks For Revisions, Work With The Service Provider To Address The Client’s Concerns. Make Sure Your Service Provider Contract Lists The Number Of Changes Covered To Avoid Misunderstandings.\r\n\r\nHow To Set Up A Drop Service Business\r\n1. Choose A Service \r\n2. Create A Website \r\n3. Advertise Your Business \r\n4. Find Freelancers To Deliver Services For A Lower Price \r\n5. Price Your Services For Clients', '36', '02 Dec, 2023', 42, '1701516238-0000.jpg'),
(55, 'Here\'s A Comparison Of CRM Vs. CMS:', 'CRM (Customer Relationship Management) And CMS (Content Management System) Are Two Distinct Types Of Software Used For Different Purposes In Business Operations. Here\'s A Comparison Of CRM Vs. CMS:\r\n\r\nPurpose:\r\n\r\nCRM (Customer Relationship Management): CRM Software IS Designed To Help Businesses Manage Their Interactions And Relationships With Customers And Potential Customers. It Focuses On Sales, Marketing, And Customer Service Processes, Allowing Organizations To Store Customer Data, Track Interactions, And Streamline Communication To Improve Customer Satisfaction And Drive Sales.\r\n\r\nCMS (Content Management System): CMS Software, On The Other Hand, IS Primarily Used To Create, Manage, And Organize Digital Content, Such As Websites, Blogs, And Online Publications. It Provides Tools For Content Creation, Editing, And Publication, Making It Easier For Users To Manage Their Online Content.\r\n\r\nMain Features:\r\n\r\nCRM:\r\n\r\nContact Management: Store And Organize Customer Information.\r\nSales Automation: Manage Leads, Opportunities, And Sales Pipelines.\r\nMarketing Automation: Create And Track Marketing Campaigns.\r\nCustomer Support: Track Customer Inquiries And Support Requests.\r\nAnalytics And Reporting: Analyze Customer Data And Sales Performance.\r\n\r\nCMS:\r\n\r\nContent Creation: Easily Create And Edit Digital Content.\r\nContent Organization: Organize Content Into Categories And Hierarchies.\r\nUser Management: Control Access And Permissions For Content Creators.\r\nSEO Optimization: Tools For Optimizing Content For Search Engines.\r\nTemplates And Themes: Customize The Design And Layout Of Websites.\r\n\r\nUsers:\r\n\r\nCRM: Typically Used By Sales, Marketing, And Customer Service Teams Within A Business To Manage Customer Relationships And Improve Sales Processes.\r\n\r\nCMS: Used By Content Creators, Web Developers, And Marketers To Create And Manage Digital Content On Websites And Online Platforms.\r\n\r\nIntegration:\r\n\r\nCRM: Often Integrates With Various Other Business Tools, Such As Email Marketing Software, Social Media Platforms, And E-Commerce Systems, To Streamline Sales And Marketing Processes.\r\n\r\nCMS: Can Integrate With Third-Party Plugins And Extensions For Additional Functionality, Such As E-Commerce, SEO, And Analytics Tools.\r\n\r\nExamples:\r\n\r\nCRM Examples: Salesforce, Hubspot, Microsoft Dynamics, Zoho CRM.\r\n\r\nCMS Examples: Wordpress, Drupal, Joomla, Wix, Squarespace.\r\n\r\nUse Case:\r\n\r\nUse A CRM When You Need To Manage Customer Interactions, Sales Leads, And Marketing Campaigns To Improve Customer Relationships And Drive Revenue.\r\n\r\nUse A CMS When You Need To Create And Manage Digital Content, Such As Websites, Blogs, Or Online Stores, And Maintain An Online Presence.\r\n\r\nIn Summary, CRM And CMS Serve Different Purposes Within A Business, With CRM Focusing On Customer Relationship Management And Sales Processes, While CMS IS Used For Content Creation And Management. Depending On Your Business Needs, You May Use One Or Both Types Of Software To Support Your Operations. ', '37', '02 Dec, 2023', 41, '1701516348-ABAB.jpg'),
(56, 'People Get Confuse Basic Data Science Terminologies ', 'Machine Learning IS A Broad Field That Involves The Use Of Algorithms To Learn From Data And Improve Automatically Without Being Explicitly Programmed.? Deep Learning IS A Subfield Of Machine Learning That Involves The Use Of Neural Networks To Learn From Data.? Computer Vision IS A Subfield Of AI That Involves The Development Of Algorithms And Systems That Can Analyze And Understand Visual Data.? Natural Language Processing IS A Subfield Of AI That Involves The Development Of Algorithms And Systems That Can Understand And Generate Human Language ', '36', '02 Dec, 2023', 41, '1701516419-AI.jpg'),
(57, 'Why Multimodal Language Models ? ', 'Large Language Models (LLMS) Are Computer Models Capable Of Analyzing And Generating Text. They Are Trained On A Vast Amount Of Textual Data To Enhance Their Performance In Tasks Like Text Generation And Even Coding.\r\n\r\nMost Current LLMS Are Text Only, I.e., They Excel Only At Text Based Applications And Have Limited Ability To Understand Other Types Of Data.\r\n\r\n\r\n\r\nMultimodal LLMS Combine Other Data Types, Such As Images, Videos, Audio, And Other Sensory Inputs, Along With The Text. \r\n\r\nThe Integration Of Multimodality Into LLMS Addresses Some Of The Limitations Of Current Text Only Models And Opens Up Possibilities For New Applications That Were Previously Impossible.\r\n\r\nThe Recently Released GPT-4 By OpenAI IS An Example Of Multimodal LLM. It Can Accept Image And Text Inputs And Has Shown Human Level Performance.\r\n\r\n\r\nText Only Language Models (LLMS) Are Powered By The Transformer Model, Which Helps Them Understand And Generate Language. This Model Takes Input Text And Converts It Into A Numerical Representation Called Word Embeddings. These Embeddings Help The Model Understand The Meaning And Context Of The Text.\r\n\r\nThe Transformer Model Then Uses Something Called Attention Layers To Process The Text And Determine How Different Words In The Input Text Are Related To Each Other. This Information Helps The Model Predict The Most Likely Next Word In The Output.\r\n\r\n\r\n\r\nOn The Other Hand, Multimodal LLMS Work With Not Only Text But Also Other Forms Of Data, Such As Images, Audio, And Video. These Models Convert Text And Other Data Types Into A Common Encoding Space, Which Means They Can Process All Types Of Data Using The Same Mechanism. ', '36', '02 Dec, 2023', 40, '1701516494-LLM.jpg'),
(58, 'Do You Know The Architecture Of The Linux Operating System ? ', 'An Operating System Can Be Described As An Interface Among The Computer Hardware And The User Of Any Computer. It Is A Group Of Software That Handles The Resources Of The Computer Hardware And Facilitates Basic Services For Computer Programs.\r\n\r\nAn Operating System IS An Essential Component Of System Software Within A Computer System. The Primary Aim Of An Operating System IS To Provide A Platform Where A User Can Run Any Program Conveniently OR Efficiently.\r\n\r\n\r\nThe Linux Operating System\'s Architecture Mainly Contains Some Of The Components: The Kernel, System Library, Hardware Layer, System, And Shell Utility.\r\n\r\nWhat Is Kernel?\r\n\r\nThe Kernel IS A Computer Program That IS The Core Of A Computer’s Operating System, With Complete Control Over Everything In The System. It Manages The Following Resources Of The Linux System – File Management, Process Management, I/O Management, Memory Management, Device Management Etcetera. \r\n\r\nWhat Is Shell?\r\n\r\nA Shell IS A Special User Program That Provides An Interface For The User To Use Operating System Services. Shell Accepts Human-Readable Commands From Users And Converts Them Into Something Which The Kernel Can Understand. It Is A Command Language Interpreter That Executes Commands Read From Input Devices Such As Keyboards OR From Files. The Shell Gets Started When The User Logs In OR Starts The Terminal.\r\n\r\nShell IS Broadly Classified Into Two Categories – Command Line Shell, Graphical Shell. \r\n\r\nCommand Line Shell Can Be Accessed By Users Using A Command Line Interface. A Special Program Called Terminal In Linux/MacOs, OR Command Prompt In Windows OS IS Provided To Type In The Human-Readable Commands Such As “Cat”, “ls” Etc. And Then It Is Being Executed.\r\n\r\nGraphical Shells Provide Means For Manipulating Programs Based On The Graphical User Interface (GUI), By Allowing For Operations Such As Opening, Closing, Moving, And Resizing Windows, As Well As Switching Focus Between Windows. Window OS Or Ubuntu OS Can Be Considered As A Good Example Which Provides GUI To The User For Interacting With The Program. Users Do Not Need To Type In Commands For Every Action. \r\n\r\nThere Are Several Shells Are Available For Linux Systems Like – BASH, CSH And KSH (Korn Shell) .\r\n\r\nBASH (Bourne Again Shell) – It Is The Most Widely Used Shell In Linux Systems. It Is Used As Default Login Shell In Linux Systems And In MacOs. It Can Also Be Installed On Windows OS.\r\nCSH (C Shell) – The C Shell’s Syntax And Its Usage Are Very Similar To The C Programming Language.\r\n\r\n\r\nWhat IS A Terminal?\r\n\r\nA Program Which IS Responsible For Providing An Interface To A User So That He/She Can Access The Shell. It Basically Allows Users To Enter Commands And See The Output Of Those Commands In A Text-Based Interface. Large Scripts That Are Written To Automate And Perform Complex Tasks Are Executed In The Terminal.', '36', '07 Dec, 2023', 40, '1701926910-0.png');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `websitename` varchar(60) NOT NULL,
  `logo` varchar(50) NOT NULL,
  `footerdesc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `websitename`, `logo`, `footerdesc`) VALUES
(1, 'NEWS CMS', 'NEWS.jpg', '© Copyright 2020 News | Powered by <a href=\"https://iPrasanjitRoy.github.io/\">Prasanjit Roy</a>');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `role` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `username`, `password`, `role`) VALUES
(42, 'Kiran', 'Kumari', 'KiranKumari', '827ccb0eea8a706c4c34a16891f84e7b', 0),
(41, 'Dipesh', 'Guragain', 'DipeshGuragain', '827ccb0eea8a706c4c34a16891f84e7b', 0),
(40, 'PRASANJIT', 'ROY', 'PrasanjitRoy', '827ccb0eea8a706c4c34a16891f84e7b', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`),
  ADD UNIQUE KEY `post_id` (`post_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
