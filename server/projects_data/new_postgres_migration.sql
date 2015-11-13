-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 13, 2015 at 04:17 PM
-- Server version: 5.7.9
-- PHP Version: 5.5.29

-- SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
-- SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: "projects"
--

--
-- Truncate table before insert "calendaryears"
--

TRUNCATE TABLE "calendaryears" CASCADE;
TRUNCATE TABLE "child" CASCADE;
TRUNCATE TABLE "comment" CASCADE;
TRUNCATE TABLE "complexitylist" CASCADE;
TRUNCATE TABLE "costlevellist" CASCADE;
TRUNCATE TABLE "description" CASCADE;
TRUNCATE TABLE "disposition" CASCADE;
TRUNCATE TABLE "dispositionlist" CASCADE;
TRUNCATE TABLE "driver" CASCADE;
TRUNCATE TABLE "driverlist" CASCADE;
TRUNCATE TABLE "edit_log" CASCADE;
TRUNCATE TABLE "finallist" CASCADE;
TRUNCATE TABLE "fiscalyears" CASCADE;
TRUNCATE TABLE "flavorlist" CASCADE;
TRUNCATE TABLE "fundingsourcelist" CASCADE;
TRUNCATE TABLE "history" CASCADE;
TRUNCATE TABLE "hostlist" CASCADE;
TRUNCATE TABLE "initiativelist" CASCADE;
TRUNCATE TABLE "maturitylist" CASCADE;
TRUNCATE TABLE "migrate_version" CASCADE;
TRUNCATE TABLE "months" CASCADE;
TRUNCATE TABLE "portfolio" CASCADE;
TRUNCATE TABLE "progresslist" CASCADE;
TRUNCATE TABLE "project" CASCADE;
TRUNCATE TABLE "proj_visibilitylist" CASCADE;
TRUNCATE TABLE "quarters" CASCADE;
TRUNCATE TABLE "risklevellist" CASCADE;
TRUNCATE TABLE "scopelist" CASCADE;
TRUNCATE TABLE "sponsorlist" CASCADE;
TRUNCATE TABLE "stakeholder" CASCADE;
TRUNCATE TABLE "stakeholderlist" CASCADE;
TRUNCATE TABLE "strategy" CASCADE;
TRUNCATE TABLE "strategylist" CASCADE;
TRUNCATE TABLE "technologylist" CASCADE;
TRUNCATE TABLE "typelist" CASCADE;
TRUNCATE TABLE "upload" CASCADE;
TRUNCATE TABLE "visibilitylist" CASCADE;
TRUNCATE TABLE "years" CASCADE;

--
-- Dumping data for table "calendaryears"
--

INSERT INTO "calendaryears" ("calendaryearID", "calendaryearDesc") VALUES
(0, ''),
(2004, '2004'),
(2005, '2005'),
(2006, '2006'),
(2007, '2007'),
(2008, '2008'),
(2009, '2009'),
(2010, '2010'),
(2011, '2011'),
(2012, '2012'),
(2013, '2013'),
(2014, '2014'),
(2015, '2015'),
(2016, '2016'),
(2017, '2017');

--
-- Truncate table before insert "child"
--

--
-- Dumping data for table "child"
--

ALTER TABLE "child" DISABLE TRIGGER ALL;
INSERT INTO "child" ("projectID", "childID") VALUES
(288, 1),
(46, 16),
(23, 26),
(138, 44),
(49, 48),
(9, 65),
(40, 65),
(1, 86),
(22, 86),
(54, 86),
(162, 87),
(66, 88),
(81, 89),
(81, 90),
(28, 93),
(172, 127),
(132, 130),
(43, 138),
(62, 153),
(120, 161),
(36, 162),
(87, 167),
(106, 189),
(198, 190),
(106, 200),
(127, 212),
(171, 212);

--
-- Truncate table before insert "comment"
--

--
-- Dumping data for table "comment"
--

ALTER TABLE "comment" DISABLE TRIGGER ALL;
INSERT INTO "comment" ("commentID", "projectID", "comment", "commentAuthor", "commentAuthored", "commentEditor", "commentEdited") VALUES
(1, 98, 'Added on 6/1/04 after charter was discussed at MSW.', 'huizinga', '2004-06-02 14:19:00', NULL, NULL),
(3, 27, 'It was decided that this is an ongoing baseline type of activity and not a
    discrete project.', 'HUIZINGA', '2004-06-23 09:07:02', NULL, NULL),
(4, 118, 'MSW Meeting 7/14/04: Rodger asked Edwin and Tim to follow up to make sure that if we pursue this short term solution it could fit in to or be reused for the larger HST Legacy Archive project, which is looking for on the order
    of 100TB of storage over the next 2-3 years.', 'HUIZINGA', '2004-07-14 13:51:16', NULL, NULL),
(5, 119, 'MSW meeting 7/14/04: Do additional work to see what we can do by reallocating existing over capacity to a new domain. This would still require some new capital investments, but much less.
    ', 'HUIZINGA', '2004-07-14 13:53:07', NULL, NULL),
(6, 108, 'This idea was discussed with Rodger at the MSW (7/14/04).
    Additional work is required to:

    - understand where and how we can recover costs, (e.g. re-deploy tape library);

    - how much this will aleviate the load on the EMC/Symetrix
    during backups

    - how much space this will free up on the EMC (we keep copies of databases to facilitate backups)
    ', 'HUIZINGA', '2004-07-15 10:16:55', NULL, NULL),
(7, 75, 'this project does NOT include PRD', 'SINGER', '2004-07-20 09:54:19', NULL, NULL),
(8, 106, 'TC meeting: this project may be moved back to FY05 depending on NASA requirements. ', 'HUIZINGA', '2004-07-20 11:34:23', NULL, NULL),
(9, 106, 'Plan is to put in order Oct 1st - NASA will provide labor to do physical installation of Video system', 'HUIZINGA', '2004-07-20 11:35:25', NULL, NULL),
(10, 125, 'This is also relevant for the Gigabit network needs for the OPO AVL team.', 'HUIZINGA', '2004-07-20 11:49:14', NULL, NULL),
(11, 125, 'This project should also consider the needs of the ODM CASB team...this is an ED05 request for 2005

    "The ongoing DSS and GSC maintenance requires data transfers of large (> 1 GB) files between servers and large database operations between servers and desktops.  Often, the network bandwidth is a limitation which could be alleviated by upgrading to gigabit."', 'JSCOTT', '2004-07-26 12:29:45', NULL, NULL),
(12, 118, 'This project was identified as an ED05 spending priority
    for ODM in 2005.', 'JSCOTT', '2004-07-26 16:40:14', NULL, NULL),
(13, 108, 'This project was identified as an ED05 spending priority
    for ODM in 2005.', 'JSCOTT', '2004-07-26 16:41:16', NULL, NULL),
(14, 107, 'This project was identified as an ED05 spending priority
    for ODM in 2005.  Replacement technology for the MO jukeboxes
    was identified in the 2004 ED05 report, at $70K - although this was for an estimate for acquisition of replacement UDO jukeboxes, rather than content addressed storage.', 'JSCOTT', '2004-07-26 16:44:18', NULL, NULL),
(15, 118, 'MSW Meeting 7/21/04: Rodger decided that because we still have spare capacity on the EMC, the medium term needs for STDATU would be met by allocating additional storage on the EMC. Details, such as whether this requires an additional QFS license need to be worked out.

    Rodger added: I do recognize that we will want to provide disk space
    for a bunch of things, including STDATU type things, and that the EMC might
    not be the right end place for these functions.  It seemed in the
    discussions today that the EMC would cover us for quite a few months, so
    that seemed like the short term way to go.  We will need to develop a plan
    over the next few months for expanding the space considerably.  This should
    been done taking into consideration things like the proposal that is being
    written, the desire to have various levels of robustness/cost, how to attach
    them (SAN vs direct connect), and various lifecycle costs (system
    management, licenses, etc.).', 'HUIZINGA', '2004-07-27 10:40:12', NULL, NULL),
(16, 116, 'TC meeting 7/27: ESS (Steve Lubow, Joe Pollizzi) point out that if wireless was more widely available this could help in providing people access during the moves planned for August. However, the timescale for this project is too
    long to make a difference for the moves. In the move project itself, additional systemswill be made available during the move in e.g. the cafeteria (Danny Golombek)', 'HUIZINGA', '2004-07-27 11:29:37', NULL, NULL),
(17, 125, 'This project should also consider the Gigabit network needs
    of the ODM SMSB team...this is an ED05 request for 2005

    The addition of a small, 8-port gigabit ethernet switch
    to connect the replacement aussie file server and the PASS unix machine would greatly improve performance since these
    processes involve high disk IO.   All the host servers involved are already gigE capable, only the switch and cabling would be needed.', 'JSCOTT', '2004-07-27 12:07:27', NULL, NULL),
(18, 119, 'My understanding through a conversation with Rodger is that he does not intend to purchase any additional hardware for this project, consistent with Edwin''s comment. The idea would be to use/borrow CPUs as needed by GOs for short term use (about a month), primarily for data processing of large programs.  The idea is to save GOs the costs of purchasing a high performance system, if they need it for this purpose. The assumption is that there is some spare capacity available on the SunFire. The challenge will be to find the resources, as needs arise, and provide external access in a secure way. We don''t know how many people would actually request this service, but it will be announced in the HST Call for Proposals (it''s on p 18 of the draft version).', 'LUBOW', '2004-07-27 17:11:31', NULL, NULL),
(19, 16, 'CPT Input: For the next half year, we only foresee using LDAP to authenticate
    for new services  such as the JWST DMS. As long as we continue to use LDAP for such basic services, and there is no need to integrate LDAP with our HR systems, we propose deferring this idea to the next planning cycle.
    ', 'HUIZINGA', '2004-07-29 15:30:44', NULL, NULL),
(20, 23, 'CPT Input: with the Firewall rules project ongoing, we do not see an urgent need to further scope out this project at this time.
    It may be consolidated with other security related projects such as #26.', 'HUIZINGA', '2004-07-29 15:35:13', NULL, NULL),
(21, 26, 'CPT Input: With the firewall project underway, we do not see a need to scope out this project any further at this time. It may be consolidated with project #23.
    ', 'HUIZINGA', '2004-07-29 15:36:13', NULL, NULL),
(22, 34, 'CPT Input: we now have the capability to monitor our external bandwidth consumption. We do not see an urgent need to scope out this project at this time. ', 'HUIZINGA', '2004-07-29 15:37:44', NULL, NULL),
(24, 44, 'CPT Input: we recommend that this project be implemented as soon as possible, and should be scoped out in this cycle. We have already deployed a beta version of the web interface to the SSB branch in ESS.
    ', 'HUIZINGA', '2004-07-29 15:42:33', NULL, NULL),
(25, 48, 'CPT Input: we recommend that this project be implemented in this cycle, and that it also addresses the remainder of project #49 (software maintenance review)', 'HUIZINGA', '2004-07-29 15:43:59', NULL, NULL),
(26, 49, 'CPT Input: part of this work was done as part of the HST  cost savings strategy for FY05. We recommend that the remainder of this project becomes part of the Software Licensing Strategy project, or of any follow on projects to that.', 'HUIZINGA', '2004-07-29 15:45:54', NULL, NULL),
(27, 52, 'CPT Input: this project should follow the mission systems CM/CC project, and can be deferred until the next cycle.', 'HUIZINGA', '2004-07-29 15:47:26', NULL, NULL),
(28, 53, 'CPT Input: recommend to defer until next cycle.', 'HUIZINGA', '2004-07-29 15:48:06', NULL, NULL),
(29, 57, 'CPT Input: We have addressed the immediate security requirements through curator training and process in the "Review Web Content" project in FY04.
    We do not see a need to scope this project for this cycle.', 'HUIZINGA', '2004-07-29 15:50:18', NULL, NULL),
(30, 62, 'CPT Input: we consider this project critical and it should be scoped and executed in this cycle.', 'HUIZINGA', '2004-07-29 15:51:21', NULL, NULL),
(31, 64, 'CPT Input: since the precursor to this project (#65 IT Supplier Interface Setup) is still in full swing, and we want to establish a baseline routine first, we propose that this project be deferred to the next cycle.', 'HUIZINGA', '2004-07-29 15:55:35', NULL, NULL),
(32, 84, 'CPT Input: this project should be scoped for this cycle so it can start once the Firewall Rules Implementation project (#68) is finished.', 'HUIZINGA', '2004-07-29 15:57:19', NULL, NULL),
(33, 86, 'CPT Input: since we continue to deploy one-off webservers (GALEX, MyTime) and Java/Tomcat based tools (Event Manager) we need to take this step back and plan rather sooner than later. We propose scoping this out now for execution in FY05 Q1/Q2.', 'HUIZINGA', '2004-07-29 16:08:54', NULL, NULL),
(34, 93, 'CPT Input: this project should be considered after completion of the Firewall Rules Implementation and the Web Services Strategy (#86) projects. ', 'HUIZINGA', '2004-07-29 16:12:03', NULL, NULL),
(35, 101, 'CPT Input: we propose that this project be scoped to clarify the risk of not doing this work now. ', 'HUIZINGA', '2004-07-29 16:13:52', NULL, NULL),
(36, 102, 'CPT Input: Since Solaris 10 has not yet been released, and we do not plan to deploy the very first release, we propose postponing any further scoping until the next cycle.', 'HUIZINGA', '2004-07-29 16:14:50', NULL, NULL),
(37, 105, 'CPT Input: we recommend this project for immediate scoping and to be implemented early in the next cycle. Though not 100% clear at this moment this may be a trivial project that could immediately simplify our network environment.', 'HUIZINGA', '2004-07-29 16:17:42', NULL, NULL),
(38, 123, 'CPT Input: no  immediate need to scope. We may talk to mirapoint to understand what functionality can be provided today, or what they plan to provide in the near future.', 'HUIZINGA', '2004-07-29 16:20:17', NULL, NULL),
(39, 115, 'CPT Input: we agree that this would be a good thing. In the past we have budgetted solutions such as a Google appliance, but at low priority. If this is important to the institute we should scope this now so it can be considered for ED05 planning.
    ', 'HUIZINGA', '2004-07-29 16:23:04', NULL, NULL),
(40, 121, 'CPT Input: The copycenter contract will be recompeted regardless. to make the best use of this, we recommend doing this project as soon as possible.', 'HUIZINGA', '2004-07-29 16:24:17', NULL, NULL),
(41, 129, 'CPT Input: we recommend this be scoped for execution in this planning cycle.', 'HUIZINGA', '2004-07-29 16:25:54', NULL, NULL),
(42, 8, 'Lisa wants regular status on this project', 'SINGER', '2004-07-30 15:39:42', NULL, NULL),
(43, 21, 'Lisa wants regular status on this project', 'SINGER', '2004-07-30 15:40:34', NULL, NULL),
(44, 60, 'Lisa wants regular status on this project
    ', 'SINGER', '2004-07-30 15:41:27', NULL, NULL),
(45, 79, 'Lisa wants regular status on this project', 'SINGER', '2004-07-30 15:44:46', NULL, NULL),
(46, 89, 'Lisa wants regular status on this project', 'SINGER', '2004-07-30 15:45:25', NULL, NULL),
(47, 94, 'Lisa wants regular status on this project', 'SINGER', '2004-07-30 15:46:01', NULL, NULL),
(48, 16, 'Agree, but this project should be redefined to be more than just the peoplesoft integration.', 'wolffl', '2004-08-02 11:03:00', NULL, NULL),
(49, 23, 'Consolidate this project with 26. ', 'wolffl', '2004-08-02 11:17:00', NULL, NULL),
(50, 26, 'Assuming 23 is absorbed into this project, I need to know whether either of these capabilities have been committed to by STScI as part of our security scheme.  Doris should know this.  If not, then this “23/26” project can be deferred as Doris determines.', 'wolffl', '2004-08-02 11:19:00', NULL, NULL),
(51, 34, 'Agreed.', 'wolffl', '2004-08-02 11:20:00', NULL, NULL),
(52, 44, 'I’ve been told that the Remedy system is unstable, why is this project put before a stabilization project?', 'wolffl', '2004-08-02 11:29:00', NULL, NULL),
(53, 49, 'Combine 48/49 and scope and develop the business case.  CPT should expect to commit to this project.', 'wolffl', '2004-08-02 11:34:00', NULL, NULL),
(54, 48, 'Agreed, see 49 (which says, in part, scope and develop the business case;  CPT should expect to commit to this project).', 'wolffl', '2004-08-02 11:37:00', NULL, NULL),
(55, 48, 'Maturity was changed to business case, to fast track development of both scope and business case.', 'PAYNE', '2004-08-02 11:42:28', NULL, NULL),
(56, 52, 'Agreed.', 'wolffl', '2004-08-02 11:46:00', NULL, NULL),
(57, 53, 'Defer for two cycles.', 'wolffl', '2004-08-02 11:48:00', NULL, NULL),
(58, 57, 'Agreed.', 'wolffl', '2004-08-02 11:53:00', NULL, NULL),
(59, 62, 'Agreed.', 'wolffl', '2004-08-02 11:54:00', NULL, NULL),
(60, 62, 'Maturity was changed to business case, to fast track development of both scope and business case.', 'PAYNE', '2004-08-02 11:56:37', NULL, NULL),
(61, 64, 'Although #65 is in progress, there is significant preparation that is necessary to shift to an offsite imaging approach.  If the projects are run serially, as suggested above, it will be more than 18 months before system delivery times are shortened and the burden of this work is removed from STScI-direct staff.  This project should be scoped with sufficient technical detail for the imaging capability only (i.e. there are many services that can be offered, I am interested in imaging only).  A business case should also be developed.  Based on scoping, we can revisit a project breakdown that will allow for progress that is in step with project #65.', 'wolffl', '2004-08-02 12:00:00', NULL, NULL),
(62, 64, 'Maturity was changed to business case, to fast track development of both scope and business case.', 'PAYNE', '2004-08-02 12:02:23', NULL, NULL),
(63, 84, 'Agreed.', 'wolffl', '2004-08-02 12:05:00', NULL, NULL),
(64, 86, 'Agreed.', 'wolffl', '2004-08-02 12:07:00', NULL, NULL),
(65, 93, 'Agreed.', 'wolffl', '2004-08-02 12:10:00', NULL, NULL),
(66, 101, 'This should be scoped and a business case developed.  The business case should quantify in dollars the risks identified.', 'wolffl', '2004-08-02 12:31:00', NULL, NULL),
(67, 101, 'Maturity was changed to business case, to fast track development of both scope and business case.', 'PAYNE', '2004-08-02 12:32:25', NULL, NULL),
(68, 102, 'Agreed.', 'wolffl', '2004-08-02 12:33:00', NULL, NULL),
(69, 105, 'Scope, business case and commit if the project is trivial.', 'wolffl', '2004-08-02 12:36:00', NULL, NULL),
(70, 115, 'Agreed.', 'wolffl', '2004-08-02 12:38:00', NULL, NULL),
(71, 121, 'Isn’t someone from CPT on the selection team?  Some room should be reserved in the pipe for when this contract is placed and the vendor is looking for IT support.  I’m just not quite sure what project we would be scoping until the vendor is selected.  I do believe that the architecture proposed by the vendor needs to be vetted and approved by CPT before the vendor is selected and brought under contract.  Likewise a security review of the vendor’s systems should also take place prior to contract award.', 'wolffl', '2004-08-02 12:41:00', NULL, NULL),
(72, 123, 'Agreed.', 'wolffl', '2004-08-02 12:50:00', NULL, NULL),
(73, 129, 'There is a task in the GMR interface setup that calls for a memo on the GMR property system.  One of the possibilities mentioned by GMR was that they could ingest the data into their system, clean it up (with standard descriptions).  Why not complete that task as planned?', 'wolffl', '2004-08-02 12:53:00', NULL, NULL),
(74, 118, 'Updated detailed description.', 'HUIZINGA', '2004-08-03 10:52:51', NULL, NULL),
(75, 117, 'This idea pertains to desktop systems. The migration of a few INS calibration
    tasks to the sunfire has a very minor impact on reducing the need for larger
    backup quotas in the ins division.', 'BOHLIN', '2004-08-04 22:16:19', NULL, NULL),
(76, 125, 'Gigabit connections are a high priority for INS functional work and may be required for larger backup quotas (idea #117) . Higher speed to selected desktops can help in the analysis
    of large (eg ACS/WFC) data sets, that do not reside on local workstation
    disks.', 'BOHLIN', '2004-08-04 22:31:06', NULL, NULL),
(77, 112, 'Unless this is solved, switching to a MAC has a big deficiency in the ease
    of file sharing with internal collaborators. Mailing of often big file attachments is
    probably the easiest workaround.', 'BOHLIN', '2004-08-04 22:41:08', NULL, NULL),
(78, 126, 'Stefano clarified project description.', 'HUIZINGA', '2004-08-05 09:08:47', NULL, NULL),
(79, 135, 'this project is duplicate to #133 and should not have been added', 'SINGER', '2004-08-16 10:41:30', NULL, NULL),
(80, 62, 'Updated description and rationale with scoping information.', 'HUIZINGA', '2004-08-18 15:59:55', NULL, NULL),
(81, 84, 'updated description and rationale with scoping information', 'HUIZINGA', '2004-08-18 16:01:28', NULL, NULL),
(82, 129, 'Updated description and rationale with scoping info.', 'HUIZINGA', '2004-08-19 18:37:24', NULL, NULL),
(83, 48, 'updated description and rationale with scoping information.', 'HUIZINGA', '2004-08-20 09:18:28', NULL, NULL),
(84, 44, 'Updated description and rationale. Removed "Master Project" from project
    name.', 'HUIZINGA', '2004-08-23 10:36:16', NULL, NULL),
(85, 115, 'SCW/Paul: external users cannot find HST and Instrument documentation and contact the HST helpdesk, which advices them to use Google ...', 'HUIZINGA', '2004-08-26 11:39:00', NULL, NULL),
(86, 86, 'In ODM, we are currently looking for upgrades to the STDATU and COMPASS web servers which are aging and seeing increased user loading. See projects #130 and #131. In addition, DPAS operations tools have been deployed to an Apache JSERV engine since early 2000 and would be more easily maintained and more robust in a standard environment.  These ODM groups should be consulted for their requirements as part of this project. ', 'JSCOTT', '2004-08-27 15:16:09', NULL, NULL),
(87, 52, 'Terminated on 8/29/04 by CIO.  The change management processes developed for the mission systems will be adapted to handle non-mission systems.  This project is not necessary.', 'WOLFFL', '2004-08-29 22:09:40', NULL, NULL),
(88, 34, 'This project was terminated by the CIO on 8/29/04.  A status of network monitoring capability must be prepared before considering a project.  The ability to monitor network performance for the external bandwidth consumption has been accomplished, so dropping this project until a capability assessment is completed does not pose additional risks to the Institute.', 'WOLFFL', '2004-08-29 22:15:26', NULL, NULL),
(89, 115, 'Here is more information generated by the TS branch of CPT:

    Here''s what we know so far:

    I think it''s agreed by all that our search can be improved.

    Google:

    As you point out in the portfolio''s rationale discussion, a number of other institutions do use it.

    We''ve identified a few ways to use Google to do your searching. The simplest is a low overhead, low impact, free approach where we can simply link to Google to search our publicly accessible sites. As noted, this can be tested by a user at any time using the "site:" syntax in Google and we see that it is indeed effective. In fact the MAST people are using Google in this way. (<a href="http://archive.stsci.edu/">http://archive.stsci.edu
    </a>)
    This seems to be the same thing NOAO is doing,
    <a href="http://www.noao.edu/">http://www.noao.edu/</a>.

    There are two problems immediately identified with this approach.

      1. It appears that internal pages cannot be accessed by Google using this scheme.

      2. As Molly Brandt from MAST points out, Google''s terms of agreement call for any referencing sites to "conspicuously display a graphic indicating that the service is provided by Google". We have not spent more time looking into the exactly what is required to comply with this, but an initial guess would indicate that both we and NOAO are probably out of compliance.

    From Google: <a href="http://www.google.com/services/websearch.html">
    http://www.google.com/services/websearch.html</a>
    See the "Free Websearch" option there.
    We should also research the "Custom Websearch" option.
    It looks like we''ll want to better understand the various levels of search solutions offered by Google on this page.

    Google''s more costly and complete approach is to purchase their  appliance (HW/SW solution), which allows you to incorporate Google searches on your intranet or public website, and integrate that with your site branding etc. Prices for the appliance solutions are in the tens of thousands of dollars.
    <a href="http://www.google.com/appliance/">
    http://www.google.com/appliance/</a>
    Also available on that page are a number of whitepapers addressing the ROI case for intranet search, the value of site search, and other related documents.

    In contrast to MAST or NOAO, ESO appears to be using Google in a way that would indicate  one of the custom websearch options mentioned. Following their web search link reveals Google branding on their site along with ESO livery.  The search results themselves have a google URL, which probably means they are not using a locally hosted (appliance) solution. I''ve contacted their webmaster for some further information.

    Webinator:

    Our Production web server runs Webinator version 2.5 which is 6 years old, rendering it virtually useless compared with most anything current.

    Upgrading Webinator to version 5.0 (current) would  provide vastly improved search results internal and external and at $5,800 for the upgrade may offer a price advantage over the Google internal/external locally-hosted solutions, which may all involve the appliance (to be investigated further). It also offers a more integrated, less commercially branded solution, with a number of useful features.
    See: <a href="http://www.thunderstone.com/texis/site/pages/webinator.html">
    http://www.thunderstone.com/texis/site/pages/webinator.html</a>

    Where to go from here?

     1. CPT (probably TS) will direct some level of effort into researching and establishing a matrix of available webinator & google solutions to enumerate and compare the benefits, risks, and up-front costs.

     2. The results could then be presented for review by the web domain and a set of stakeholders who could refine, focus in, or suggest a broader range of solutions.

     3. The group thinking about this should also determine the pros & cons of quickly implementing an expeditious low-effort interim modification (e.g. free, uncustomized Google link)  to improve search performance to the community while finalizing and implementing whatever more complete solution is agreed upon.

    Effort to generate the final analysis of options is estimated at 1 FTE week, including the domain involvement.
    ', 'PAYNE', '2004-09-02 10:25:31', NULL, NULL),
(90, 105, 'This project was discussed at a network/security domain meeting.

    The components to be removed are the LS1010 ATM switch, an OC12 module from one of the Catalyst 6500 switches, an OC3 module from one of the Catalyst 5500 switches, and ATM interfaces from four of the routers.  That is, one major switch and 6 subcomponents.  The ATM connections will be replaced with 100Mbps connections, to keep the redundancy we have now.  In fact this will make the replaced connections the same as their redundant partner.

    Because of redundancy in the system, and by doing one circuit at a time, disruptions of 15-20 minutes are possible, but no extended outtages will be required.  Only traffic between the 130.167 domain and other domains could be affected.

    Gary estimates it would take 4 hours of effort to implement the changes.  Because of the redundancy in place, and because the changes would make these connections just like the rest of our LAN, the risk is low.  There are no hardware costs associated with the changes.  We did not know how much the maintenance savings would be, but the cost is so low that doing the project has to save money.', 'payne', '2004-09-03 14:28:17', NULL, NULL),
(91, 56, 'this project was committed in Q3/4 FY04, but was never started.  disposition re-set by singer on 10/27/04.', 'SINGER', '2004-10-27 10:51:24', NULL, NULL),
(92, 149, 'The scope of this project is limited to the software changes necessary to decouple the jukeboxes from ingest and distribution as described. Part of the assumptions of this project are that separate, parallel efforts to this one will adress the need to acquire, install, and configure the disk space required for the spinning disk primary archive and its initial population with data from the existing primary archive. The scope of this project will include developing the tools necessary to assist with the initial population of the spinning disk primary archive.', 'WMILLER', '2004-10-29 09:40:21', NULL, NULL),
(93, 62, 'This project was de-scoped to only cover the DADS UPS. The SOGS portion of this project will be considered later under a different project.', 'SINGER', '2004-11-18 11:48:21', NULL, NULL),
(94, 117, 'This project was discussed extensively at the TC meeting of December 14 to clarify the drivers of this project and to understand if other instances where "bits are falling on the floor" (e.g. some Windows development systems in ESS) can be included. It is agreed that for Solaris, Linux and Mac systems this project is to implement a stop-gap type solution based on cheap disks, recognizing that the real solution will be developed in the Staff Computing Strategy project.

    ', 'HUIZINGA', '2004-12-14 11:41:10', NULL, NULL),
(95, 134, 'An order of magnitude increase in SPIKE processing times caused by new 2-Gyro mode constraints forced a short term solution. It was decided to upgrade 11 existing workstations to provide additonal CPU power. See these <a href="http://www.stsci.edu/institute/org/ot/Governance/GovResources/p134/Minutes20041220">meeting minutes</a> for details.', 'HUIZINGA', '2004-12-30 12:12:53', NULL, NULL),
(97, 162, 'Will this project be dependent on completing
     87: PeopleSoft Development and Test environment?', 'JSCOTT', '2005-01-25 12:16:10', NULL, NULL),
(98, 133, 'The drivers for this project were discussed at an MSW meeting on 1/28/05.
    (See the <a href="http://www.stsci.edu/institute/org/ot/Governance/Workgroups/MissionSysGroup">MSW meeting minutes</a> for details).

    It was decided to start with the classification of existing and upcoming data w.r.t. both backup and storage needs as soon as possible.', 'HUIZINGA', '2005-02-02 09:39:39', NULL, NULL),
(99, 163, 'Although it may complicate testing requirements for the project, ODM wants to tie the deployment of new servers with an upgrade of the replication software to 12.6', 'JSCOTT', '2005-02-14 11:36:19', NULL, NULL),
(100, 106, 'From Stratis: The current status of moving content to the NASA one portal is that OPO is much lower on the NASA priority list than expected initially, and it may take a year or more to see any movement on this.
    ', 'HUIZINGA', '2005-02-14 12:35:40', NULL, NULL),
(101, 131, 'This project came up in discussions at the
    <a href="http://www.stsci.edu/institute/org/ot/Governance/Workgroups/MissionSysGroup/Minutes/Minutes_20050209">MSW meeting on 2/9/05</a>. ', 'HUIZINGA', '2005-02-14 12:39:45', NULL, NULL),
(102, 162, 'This project was discussed in a meeting between BRC, OT and CPT, where it was
    decided to merge it with project proposal #87.
    ', 'HUIZINGA', '2005-02-15 09:19:33', NULL, NULL),
(103, 106, 'per email from Matt S. on 2/14/05, project is closed. funding to purchase equipment was denied.', 'SINGER', '2005-03-15 15:09:08', NULL, NULL),
(104, 169, 'This project was discussed at the SCW meeting on 2005/03/23, where
    it was decided to add this proposal to the PPT. (Edwin H).', 'HUIZINGA', '2005-03-24 11:33:58', NULL, NULL),
(105, 48, 'per miller, durkin, et al, this project cannot start until the software acquisition project is completed.  disposition is changed from committed to short-list until that time.', 'SINGER', '2005-03-28 10:54:31', NULL, NULL),
(106, 166, 'the subject of this project is being handled by an evaluation of Office 2003/XP', 'SINGER', '2005-03-31 11:38:00', NULL, NULL),
(107, 116, 'the issues addressed by this project have largely been completed, or are being addressed in other projects', 'SINGER', '2005-03-31 11:49:51', NULL, NULL),
(108, 112, 'the issues addressed by this project will naturally fall out as a by-product of #10.  there are a few things that can be done immediately via help desk calls; doris will communicate the proper procedure(s) for science staff to the SCW for dissemination.', 'SINGER', '2005-03-31 11:56:12', NULL, NULL),
(109, 129, 'per doris, the resources required to manage this project are occupied for the foreseeable future with more important issues.  the timeframe for this project must be re-planned, so it is changed from committed to short-list.', 'SINGER', '2005-03-31 12:00:41', NULL, NULL),
(110, 173, 'ESS has asked me to add the following -
    WebET needs to be made more user-friendly in general for
    both managers and staff. This includes but is not limited to
    items like enabling the Leave link to show the leave status
    of the employee, and examining WBS percentage splits (as
    described above).', 'NAGEL', '2005-04-04 11:46:19', NULL, NULL),
(111, 53, 'As discussed at the TC meeting on 3/29/05, the proposed scope of the project should be expanded to included voice and data communications.  The goal of the project is to reduce the overall cost to the Institute.  ', 'BEASER', '2005-04-04 15:07:08', NULL, NULL),
(112, 167, 'The Peoplesoft tiger team met several times to discuss the process of upgrading peoplesoft or contracting with a vendor which hosts Peoplesoft.

    Current concerns with Peoplesoft include:
        - High cost of upgrading
        - In-house resources are limited
        - The future of Peoplesoft
        - Difficulty extracting data from Peoplesoft due to complicated report writer
        - Lack of integration with Deltek

    3 options were identified for Peoplesoft
        - Upgrade Peoplesoft and continue to host in-house.
        - Host Peoplesoft offsite.
        - Migrate to another HR product.

    The Conclusions of the Committee were:
        - We should not upgrade Peoplesoft.
        - We should do an analysis of other applications that would support HR''s needs.  Deltek is a viable option since we already have the financial side
    of this product.
        - We should obtain costs for hosting Peoplesoft offsite.


     Therefore, the description of the project above should be modified.  The project should look at alternatives to Peoplesoft with the goal of replacing the HRIS as quickly as possible or having Peoplesoft hosted offsite.  ', 'BEASER', '2005-04-04 15:18:59', NULL, NULL),
(113, 178, 'While this is helpful to ESS, particularly as we support external users who will promptly upgrade to 10.4, it is likely to be wanted by other Institute users.', 'TCOMEAU', '2005-04-12 11:49:48', NULL, NULL),
(114, 179, 'While we should consider all platforms, Windows is not a viable option because of the extremly poor performance of synphot on that platform.  This is an insurmountable technical obstacle for Windows.', 'TCOMEAU', '2005-04-12 13:30:53', NULL, NULL),
(115, 178, 'Apple has indicated that Java 5.0 will not be available on Panther -- Tiger will be required.', 'TCOMEAU', '2005-04-12 23:21:51', NULL, NULL),
(116, 104, 'this effort was accomplished outside the "normal" CPT project process, and was marked completed on 4/26/05.', 'SINGER', '2005-04-26 11:24:25', NULL, NULL),
(117, 121, 'BRC updated the business case on 4/28/05.
    BRC-CPT held a preliminary meeting in March 2005.', 'PANTALONE', '2005-04-28 17:26:14', NULL, NULL),
(119, 65, 'The wiki for this project is
    <a href="http://www.stsci.edu/wiki/cisd/ItRfpsupplierInterfaceSetup/WikiHome">here</a>.
    ', 'TCOMEAU', '2005-05-06 11:25:45', NULL, NULL),
(120, 121, 'This project should be run as an integrated schedule project.', 'WOLFFL', '2005-05-06 12:41:13', NULL, NULL),
(121, 56, 'If work is occurring for this project, it should be stopped until a business case is developed and accepted.', 'WOLFFL', '2005-05-06 14:07:28', NULL, NULL),
(122, 173, 'The BRC and PM are working together to improve the WBS structure and management.  The development and adoption of a plan that integrates the business and PM functions should be completed before attempting to enhance the reporting from WebET.  This idea can be raised to PM directly.', 'WOLFFL', '2005-05-06 16:42:03', NULL, NULL),
(123, 164, 'Based on a 5/18/05 meeting with Wolff, Gonnella, Durkin and Singer; the information management aspect of this project has been de-emphasized.', 'SINGER', '2005-05-18 10:16:18', NULL, NULL),
(124, 180, 'The CIO asked that this be "upgraded" to a project.', 'TCOMEAU', '2005-06-03 13:40:58', NULL, NULL),
(125, 180, 'The original suggestion to move to an stsci.org domain was made in 2003.  The stsci.org domain registration was registered and used for some testing in 2003.

    The last attempt to address this issue was in September of 2004, when it was deferred by CPT until after the Firewall Rules project.  Here is how the requirements were captured at that time:


    Requirements from ESS:
    Connection for 20 machines at this time, 32 should suffice for future growth.

    Machines are not like Institute machines, some need (for testing) to act as if they''re infected.  Windows systems may actually be infected at times.

    These machines will need connection to port 9992 Sybase to a couple machines, hal9000 and c3po. Only the Solaris systems need access to 9992.  None of the Linux/Windows/MacOS systems need database access.

    Machines need Internet access, along w/ access to STScI (can be defined in further detail). The non-Solaris systems need the same kind of STScI access that, for example, University of Texas systems need.

    Types of o/ses include Solaris, SunOS, Windows NT, 98, ME, XP, Mac 10.1 and 10.2. And several variants/distros of Linux.

    Possible Solutions:

    Cider block of addressess on visitor network. For non-Solaris boxes
    Static IP addresses for these machines.


    The suggestion I had was that the Solaris systems stay on the stsci.edu network, and the rest move outside, perhaps to the stsci.org domain.  DHCP is okay, but NAT is not.
    ', 'TCOMEAU', '2005-06-03 13:55:22', NULL, NULL),
(126, 183, 'Tom Comeau is the project lead, Mark Abernathy is the Chief Engineer for this system.', 'TCOMEAU', '2005-07-15 17:56:47', NULL, NULL),
(127, 106, 'this project has been resurrected', 'SINGER', '2005-08-17 16:12:36', NULL, NULL),
(128, 187, 'The ESS Test Center needs to be in an office, not a computer room, environment.

    A key element of the test center is GUI testing, often involving discussions between a tester and developer.  A noisy environment will make the Test Center much less effective.
    ', 'TCOMEAU', '2005-08-18 14:24:11', NULL, NULL),
(129, 102, 'This project has to be discussed in the context of the mission systems (e.g SunFire 15K) at an upcoming MSW meeting separately from any workgroup compute resources as proposed by the Staff Computing Strategy project.
    ', 'HUIZINGA', '2005-09-27 11:39:41', NULL, NULL),
(130, 57, 'terminated per D. McClure 9/27/05', 'SINGER', '2005-10-04 10:39:45', NULL, NULL),
(131, 168, 'completed per D. McClure 9/27/05
    ', 'SINGER', '2005-10-04 10:44:28', NULL, NULL),
(132, 172, 'this project has been absorbed into project #127', 'SINGER', '2005-10-11 14:16:58', NULL, NULL),
(133, 127, 'this project has absorbed project #172', 'SINGER', '2005-10-11 14:25:09', NULL, NULL),
(134, 203, 'After talking to Glenn about the Copy and Print Services project, we agree that this can be terminated and the work rolled into PPT entry 121.
    ', 'TCOMEAU', '2005-10-25 11:15:37', NULL, NULL),
(135, 102, 'This project is not simply to update the 15K, but rather to upgrade all of our remaining Solaris systems.  This includes both the servers used by the planning systems and the desktops used to develop and support those systems.

    ', 'TCOMEAU', '2005-10-25 11:46:29', NULL, NULL),
(136, 210, 'Original proposal submitted by Edwin based on discussion with Rusty.', 'HUIZINGA', '2005-11-04 14:38:33', NULL, NULL),
(137, 205, '
    Developing a draft detailed WBS.', 'KAYLOR', '2005-11-08 14:40:03', NULL, NULL),
(138, 177, 'Feb. 2006 - Received notification from Deltek that Costpoint 4.0 support is planned to end effective December 31, 2006; however 2006 year-end updates will be availabe.  Per Accounting Manager (Lisa Kleinwort) BRC/Finance will consider starting the upgrade in approximately early Spring of 2007.', 'PANTALONE', '2006-02-27 13:19:45', NULL, NULL),
(139, 167, 'Project is in Scoping Jan-Feb 2006.
    ', 'PANTALONE', '2006-02-27 13:28:08', NULL, NULL),
(140, 224, 'It would be nice if PPT #128 also was done in concert with this work.', 'WMILLER', '2006-03-07 08:53:21', NULL, NULL),
(141, 227, 'Initial rationale based on sections of the project plan
    for the OPO Storage project. Edwin.

    ', 'HUIZINGA', '2006-03-13 09:08:14', NULL, NULL),
(142, 102, 'The Proposal Planning systems need an update to Java3D that requires Solaris 10.  We need to upgrade both the operational PPS systems and their development desktop counterparts.
    ', 'TCOMEAU', '2006-04-25 14:14:24', NULL, NULL),
(143, 237, 'Operations Concept Document and Systems Requirements Document have already been developed and are available from Judy Ashwell.  Please refer to these documents for Scoping.
    ', 'PANTALONE', '2006-05-01 17:59:08', NULL, NULL),
(144, 102, 'My comment.', 'payne', '2006-11-08 11:24:06', NULL, NULL),
(145, 1, 'Revised comment.  Well, really an old comment.', 'payne', '2006-11-24 17:14:32', NULL, NULL),
(146, 1, 'Another comment.', 'payne', '2006-11-24 17:15:46', NULL, NULL),
(178, 25, 'First comment.

    Updated at 21:48:00
    Updated again.', 'payne', '2006-11-27 21:42:44', NULL, NULL),
(188, 25, 'New comment.

    Modified.  And again. And a third time.

    Modified a fourth time. Again. Again.

    Yet again. And again.', 'payne', '2009-08-09 16:47:24', NULL, NULL),
(190, 289, 'Just a test comment. Revised again.', 'payne', '2009-08-13 23:26:44', 'payne', '2015-07-29 21:35:10'),
(194, 288, 'First added comment.', 'payne', '2015-06-10 16:26:05', NULL, NULL),
(195, 288, 'Second added comment.', 'payne', '2015-06-10 16:37:27', NULL, NULL),
(196, 288, 'Third comment. Revised. Again.', 'payne', '2015-06-10 16:42:52', 'payne', '2015-06-18 16:45:46'),
(197, 303, 'Just a comment. Revised.', 'payne', '2015-06-15 14:53:51', 'payne', '2015-06-18 21:58:12'),
(198, 288, 'Fourth comment. Revised again.', 'payne', '2015-06-18 15:24:29', 'payne', '2015-08-01 17:57:33'),
(199, 304, 'First comment.', 'payne', '2015-06-19 17:26:22', NULL, NULL),
(200, 304, 'Second comment. Revised.', 'payne', '2015-06-19 17:55:36', 'payne', '2015-06-19 19:17:21'),
(201, 288, 'Fifth comment.', 'payne', '2015-07-15 09:06:03', NULL, NULL),
(202, 289, 'A second comment.', 'payne', '2015-07-29 21:55:12', NULL, NULL),
(203, 288, 'Sixth comment.', 'payne', '2015-08-06 16:38:35', NULL, NULL);

--
-- Truncate table before insert "complexitylist"
--

--
-- Dumping data for table "complexitylist"
--

INSERT INTO "complexitylist" ("complexityID", "complexityDesc", "complexityText") VALUES
(0, '', ''),
(1, 'high', ''),
(2, 'medium', ''),
(3, 'low', '');

--
-- Truncate table before insert "costlevellist"
--

--
-- Dumping data for table "costlevellist"
--

INSERT INTO "costlevellist" ("costlevelID", "costlevelDesc", "costlevelText") VALUES
(0, '', ''),
(1, 'high', ''),
(2, 'medium', ''),
(3, 'low', '');

--
-- Truncate table before insert "description"
--

--
-- Dumping data for table "description"
--

ALTER TABLE "description" DISABLE TRIGGER ALL;
INSERT INTO "description" ("projectID", "name", "description", "rationale", "businesscase", "dependencies", "maturityID", "proposer", "customer", "sponsorID", "fundingsourceID", "hostID", "technologyID", "typeID", "created", "ended", "finalID", "lastModified", "lastModifiedBy") VALUES
(1, 'Apache Webfarm', 'Upgrade Apache server hardware, consolidate desktop implementations', '', '', '', 2, 'CPT', '', 0, 0, 0, 10, 1, '2004-01-01', NULL, 4, '2004-07-08 00:17:00', 'PAYNE'),
(2, 'Comprehensive System Backups Plan and Implementation', 'Define a comprehensive backup strategy including policies, procedures, processes.  Implement a backup infrastructure.', '4/29/05: We continue to be at risk of data loss due to current limitations within
    the infrastructure to "protect" all data.  Current infrastructure
    limitations include 50GB limit on Solaris desktop, limits of what is
    backed up on the Windows desktop, no centralized backups for either
    Linux or MacX desktops.  Although this fact has been communicated to
    users and their managers, we continue to encounter users who lose data
    on disks that neither they nor CPT are backing up.  A limited project to
    provide USB devices for Solaris desktop backups is in progress.  This is an
    interim solution to allow users to backup their own critical data that
    is currently not being backed up but is not a long-term solution.  This
    project needs to begin as soon as the outcome of the SCS is known.


    August 27, 2004: this project was originally driven by problems encountered in making backups of our email server, comet. These used to take up to a full week,
    spilling over in to the work-week and significantly impacting the performance
    on comet as experienced by users.
    In 2004, comet was upgraded with a more powerful server and additional storage. As a result, backups now complete in 2-2.5 days. They still spill over
    in to the work-week, but no longer result in a noticeable performance impact.
    2-2.5 days is still not optimum. Comet''s vendor, Mirapoint, offers two solutions that may improve performance to bring backups cycles to a period of one night. One is to use a dedicated backup device directly attached to comet. The other is to use something called NMDP go to from a file-based to a block-level based backup. Comet is one of the servers that needs attention with respect to backups.  Minimizing the impact the backups have on the network during working hours will help alleviate network slow-downs for the staff.', 'The business case for this project will be developed as part of the SCS', 'Staff Computing Strategy Project', 6, 'CPT', 'CIO', 6, 1, 4, 12, 7, '2004-01-01', NULL, 0, '2006-01-27 17:12:08', 'HUIZINGA'),
(4, 'Calendaring Tool', 'This project will select and deploy
    an STScI-wide calendaring tool, which allows staff and groups to share schedule
    information in order to more efficiently schedule meetings and support facilities
    such as conference rooms.

    This project should consider the requested changes for an enhanced leave request system which
    addresses the limitations of the current system. The most notable
    limitations ares that the system does not recognize partial days,
    telecommuting nor matrix assignments.  A number of user interface
    enhancements have been suggested including improvements to the display
    and using cookies to remember default values.  Error checking and
    recovery is poor in the current system.


    ', 'A robust calendaring tool, that could be adopted by the Institute, would make it possible to end the support and maintenance of the Conference Room Scheduler and the Leave Notification System because a robust tool supports room scheduling and would make it possible to publish one''s leave schedule.  A calendaring tool would dramatically decrease the time involved in setting up meetings.

    MiraPoint sells a calendaring product, WebCal, as an add on to our email server software. Here is a link to the support site of Kettering University,
    where they explain the possibilities and limitations to their staff and student.
    (<a href="http://netman.kettering.edu/help/welcome/mira/miracal1.htm">kettering</a>)

    Justification for the leave request portion:
    The STScI Leave Notification System is widely used to communicate
    times when staff are not at the STScI. The system was developed over 5
    years ago and has exceeded the goals for which it was designed.  This
    success has bred requests for the system to do more. We have carefully
    kept a record of all these requests.

    ', 'The entire document made be found at

    "http://www.stsci.edu/institute/org/ot/Governance/GovResources/p4/business_case.doc
    ":http://www.stsci.edu/institute/org/ot/Governance/GovResources/p4/business_case.doc

    ', '', 4, 'ESS', 'CIO', 6, 254, 9, 14, 7, '2004-01-01', NULL, 0, '2005-11-08 23:48:17', 'payne'),
(5, 'Citrix Upgrade', 'Upgrade the OS, Citrix and application software on our Citrix servers', 'Resolve issues with existing Citrix clients, connection time, and performance.', '', '', 5, 'CPT', '', 0, 0, 4, 6, 7, '2004-01-01', '2004-07-22', 1, '2004-07-22 13:57:37', 'HUIZINGA'),
(6, 'Collaboration Tools', 'Investigate the use of collaboration tools to improve Institute processes.', 'The project will identify Institute processes that
    may benefit from new methods to improve communication and reduce costs. The
    project will then identify and test existing technologies to improve conditions for
    sharing information and working together.', '', '', 3, 'CIO/Lisa Wolff', '', 0, 0, 0, 14, 6, '2004-01-01', '2005-04-23', 3, '2005-04-24 00:41:57', 'WOLFFL'),
(8, 'Credit Card Acceptance for Workshops', 'Develop and deploy a general support framework for accepting online payments for Institute-sponsored events. This framework should
    (at a minimum) allow secure acceptance of credit and debit cards for payment, support multiple currencies, and provide a verifiable record of transactions.', 'The Institute is host to a number of conferences and workshops throughout the year. Many of these events require registration and an accompanying registration fee. The current system for handling these transactions presents serious reliability and security issues. By utilizing one of the transaction processing methods which are now widely available for Internet e-commerce, we can deliver a much more reliable and secure "web experience" for conference/workshop attendees and reduce legal liability exposure for the Institute. This functionality can also be packaged as a standard feature available to any Institute web site customer. ', 'The Credit Card Acceptance Project will provide a number of process improvements that can be quantified by various metrics.


    Metric 1 - Improved Security

    Introduction of a secure system for processing credit cards has eliminated the need for STScI personnel to  handle/transmit/store sensitive credit card information. This results in the elimination of liability risk to the
    Institute with respect to potential card and identity theft. Sensitive information is handled by the payment gateway using secure protocols to transmit and process this data.

    Metric 2 - BRC Time Savings

    Introduction of the payment gateway for processing credit cards eliminates the need for BRC personnel to perform credit card processing manually, and provides reports and data on processed transactions that reduce time required to track and record transactions.

    Given a hypothetical conference with 80 participants, and an average of 20 minutes/participant to process and record the transaction, 80 participants X 0.33hours processing/participant = 26.4 man-hours/conference

    Assuming 10 conferences and/or workshops per year, this means

    10 conferences X 26.4 man-hours/conference time savings = 264 man-hours/year

    Metric 3 - CPT Time Savings

    The creation of a single system for conference registration and standardization of conference site developemnt will realize substantial savings in the use of CPT resources for development of conference support mechanisms.

    Using the Mini-Workshop on Nearby Resolved Debris Disks as a model, the following CPT resources were utilized to create conference support mechanisms (web site, conference registration, abstract submittal) and provide support leading up to the conference:

    Development of support mechanisms:

    160 man/hours

    Ongoing support during registration period and conference:

    72 man/hours (8 manhours/week X 9 weeks)

    ', '', 6, 'CPT', 'Lisa Wolff, Val Schnader', 6, 254, 3, 4, 4, '2004-01-01', '2006-02-14', 1, '2006-02-14 11:30:04', 'HUIZINGA'),
(9, 'Desktop Procurement Implementation', 'Consolidate our desktop, laptop and IT purchases with a single vendor.', '', '', '', 2, '', '', 1, 0, 0, 6, 1, '2004-01-01', NULL, 4, '2004-07-08 00:17:00', 'PAYNE'),
(10, 'Staff Computing Strategy', 'Develop a 3-year strategy for our staff computing infrastructure (desktops, laptops, backups, etc.). ', 'The Staff Computing Strategy Project is an effort to design a strategy for staff computing that will reduce costs. In response to budget pressures, STScI is forced to look for cheaper ways to do work. This project has a high priority, and is especially urgent in light of the FY05/06 HST budgets cuts. This work is in line with the OT Technology Strategy for conducting long term planning for supplying and supporting Staff Systems.

    The drivers for this project are:

    • Near- and long-term, recoverable cost savings through rationalizing and consolidating our centrally supported desktop environments.

    • An eye to the future, which demands a staff computing solution that is flexible, scaleable, and modular and that will enable STScI to remain competitive in an uncertain funding landscape.', '', '', 6, 'CIO & Head CPT', 'CIO', 5, 0, 8, 6, 5, '2004-01-01', '2005-10-05', 1, '2005-10-05 18:57:18', 'SINGER'),
(11, 'Compute Solutions', 'This project will study whether to continue to harness
    desktop CPU power in distributed GRIDs or if compute resources
    can be consolidated in the backroom. It could be one of the possible
    implementation projects out of the Staff Computing Strategy project.
    ', 'This project was originally proposed as the "Distributed Processing
    Solutions" project. The idea is to harness the idle CPU cycles which
    are distributed across our desktop systems. Even with "Frank''s"
    Wulf cluster, the SunFire and the GOODS and COSMOS clusters, most of the
    CPU power at the Institute is still sitting on or under our desks.

    Over the past few years, we have deployed Sun''s GridEngine (formerly
    CODINE) on four groups of Solaris workstations for ODM (SMS,
    SPIKE), ESS (TRANS testing, SPIKE testing) and SD (research).
    These Grids are good
    for CPU intensive processes. I/O intensive processes are limited
    by the network and distributed data storage. The long range plan
    (SPIKE) and weekly schedules (SMS) are build mainly on ODM staff
    workstations behind the SOGS firewall. For TRANS, we use the GRID
    to run regression tests against all HST proposals. For research,
    scientists can use the GRID for CPU intensive applications.

    One of the outcomes of the staff computing strategy project may
    be to remove Solaris workstations from the desktop. Since all
    our grids today only run on Solaris, we would have to find
    alternative solutions. If TRANS continues to run on Solaris
    servers in the mission environment and we to continue the
    current extensive testing method, we have to provide a Solaris
    test environment. For SMS and SPIKE we would have to provide
    a centralized server. For research applications we may have
    to create Linux or Mac based grids, or move these applications
    to the central compute servers.

    All of the current GRID applications can also run on centralized
    compute servers. If necessary, we could install GRID software on
    the GOODS cluster, or any future backroom CPU farm. If there is
    enough spare capacity and scheduling flexibility on these compute
    servers there would be no need for distributed computing.
    Conversely, if all our workstations were
    interconnected over gigabit and shared centralized storage, there
    would be no need for centralized compute farms. The question is
    whether it makes sense to have both, and if so, which applications
    to support on desktops and which on servers.

    Sun has opensourced the GridEngine, and it currently runs on
    Solaris, Linux and MacOS-X.
    (see: <a href="http://gridengine.sunsource.net/">http://gridengine.sunsource.net/</a>)

    Check CPT''s BigBrother service to check the configuration
    and state of existing GRIDs: click on the symbols in the
    "sge" column in the
    <a href="http://bb/unix_servers/unix_servers.html">list of Unix Servers</a> and the
    <a href="http://bb/critical/L1/L1.html">list of critical systems</a>

    ', '', '', 1, 'OT/Edwin Huizinga', 'CIO', 6, 0, 5, 7, 6, '2004-01-01', '2005-04-27', 3, '2005-05-10 22:44:06', 'HUIZINGA'),
(12, 'Email Archive/Discussion Forums', 'Investigate functionality, and what it takes to set up and manage MHonArc.', 'Some time ago we disabled the MacOSX
    and Linux discussion boards. Since then, CPT has been looking for a solution
    to involve users in supporting specialized science software packages for which
    there is no expertise within CPT. The Office of Technology has requested similar
    functionality as a means of communication and archiving of discussions for the
    various workgroups and the TC. This project is a pilot project to deploy MhonArc
    for a very well defined set of majordomo groups, and with a very well defined
    level of support to evaluate its effectiveness and support costs.', '', '', 5, '', '', 0, 0, 0, 9, 4, '2004-01-01', NULL, 1, '2004-07-08 00:17:00', 'payne'),
(13, 'Email Consolidation', 'Complete the move of Institute email services to the enterprise email architecture.', 'This project is the final phase of the long-term project
    to move Institute email services to the enterprise email architecture (i.e., comet).
    A major portion of this still remains and involves removing legacy Unix email
    services.  The legacy email services complicate the support and administration of the email service and contributes to a greater coordination effort to execute a change to the email services.', '', 'Labor conflicts between this project and the Staff Computing Strategy project', 5, 'CPT', 'Doris McClure', 6, 1, 9, 9, 7, '2004-01-01', NULL, 0, '2005-10-21 14:32:01', 'WOLFFL'),
(14, 'Email Hardware Upgrade (Comet)', 'Add disk space, and increase processing power and sysstore.', 'The mail store on comet is currently
    77% full! With email accumulating at an unprecedented (and unexpected) rate,
    the enterprise mail server will be upgraded. Mirapoint is now offering trade-in
    upgrade paths that could provide up with bigger and better hardware to meet our
    critical and growing email needs.', '', '', 6, 'CPT', '', 0, 0, 2, 9, 7, '2004-01-01', '2004-07-21', 1, '2004-07-21 20:40:28', 'SINGER'),
(15, 'EMC/Sunfire Tuning', 'Revisit punchlist items for tuning h/w and s/w.', 'This project is intended to optimize the performance of
    the Sunfire 15K/EMC, balancing the needs of ingest, distribution, testing, and
    development. This process is driven by the need to mitigate the risk of running
    out of cycles for ingest due to other demands.', '', '', 6, 'HST-MO', '', 1, 0, 4, 5, 3, '2004-01-01', '2005-04-07', 1, '2005-04-07 18:46:27', 'SINGER'),
(16, 'Enterprise Directory Strategy', 'Develop the strategy and implementation plan for growing our directory services infrastructure into a true Enterprise Directory Service. Incorporate clear data ownership and governance processes to ensure direction and wide-adoption.', 'The value of a true Enterprise Directory comes from allowing authoritative information to be shared by a variety of processes and applications. It allows information to be managed centrally, eliminating duplication of effort and inconsistencies between data from different sources. These properties have the potential to achieve cost savings that will be important in the future.  In particular, the Staff Computing Strategy project expected to achieve savings in the area of account management by using an Enterprise Directory for identity management.

    The current Enterprise Directory has had some modest successes integrating with applications: staff lookups (ext), E-mail, Event Manager, phone book, and PPT.  However, it falls short of being an Enterprise Directory ready to handle a task like authenticating all user logins at the desktop.  There are technical and non-technical issues that must first be addressed:

    * The LDAP infrastructure is not governed at the Institute level.  It was set up in response to some technical requirements, but there has been no guidance from the Institute as a whole about what data should or should not be in the directory, or how it could help the Institute manage its relationships with people and processes at other institutions and agencies.  There must be business overview of levels of access to the directory, and the attributes made accessible to each level.  Are we tracking the right attributes (e.g., the numbers stamped on our keys)?

    * Data are not authoritative.  Even information about staff members is still maintained in a variety of directories.  There is no clear ownership of data in LDAP or their connection to authoritative sources (e.g., PeopleSoft).

    * Data are not accurate.  There are few procedures for updating the data in LDAP in response to people coming, going, or moving around within the Institute.

    * There are technical security issues.  Is it technically possible to enforce a policy that would prevent cleartext passwords from being sent over the network?  Should LDAP authentication be integrated with Kerberos or PKI (digital certificates)?

    * There are technical infrastructure issues.  The current architecture has two, redundant production LDAP servers.  However, there is no failover or load balancing between them.  The ability to handle the load of desktop logins has not been demonstrated.  The production servers should have more memory.

    * There are technical data issues.  There are namespace issues involving how people and non-people (mail aliases, test accounts, shared accounts) entries are arranged.  All of the e-mail addresses left in /etc/aliases (e.g., mailing lists) should be migrated into LDAP to simplify mail routing.

    The potential labor savings in information management, application integration, and process engineering are not being achieved by the current LDAP infrastructure.  A strategy and implementation plan for growing this infrastructure into an Enterprise Directory is called for.', '', '', 5, 'CIO', 'CIO', 6, 0, 5, 11, 5, '2004-01-01', NULL, 0, '2005-10-25 01:11:56', 'WOLFFL'),
(17, 'Event Manager', 'Test, integrate and customize the event manager web application.', 'The concept of the Event
    Manager application was conceived to assist in the process of administering
    Institute training programs. It will allow for the publication of available training
    opportunities and provide registration services for these events. Additionally, it will provide the ability to track attendance at these events. It will be flexible
    enough to allow its use for many other types of events.', '', '', 6, 'CIO', '', 0, 0, 4, 14, 4, '2004-01-01', '2004-11-23', 1, '2004-11-23 21:17:24', 'DURKIN'),
(18, 'Firewall/VPN', 'Implement a security perimeter to ensure the confidentiality, integrity, and availability of our computing environment by installing Firewall and VPN solutions.', 'This comprehensive project is designed to fulfill our
    commitments to staff, our funding agencies (i.e., NPG 2810), and the Internet
    community at large to ensure the confidentiality, integrity, and availability of our
    computing environment. Major deliverables include a perimeter firewall around
    the institute, an untrusted network for visitor machines and other machines with
    unsupported software or operating systems, a virtual private network (VPN) for
    secure off-site access, and documentation of the current environment, including
    security plans for all systems.', '', '', 5, 'CIO, Security Officer', '', 0, 0, 4, 1, 4, '2004-01-01', NULL, 1, '2004-07-08 00:17:00', 'payne'),
(19, 'FTP Services (Covalent Implementation)', 'Develop requirements and recommend strategies for STScI enterprise FTP services.', 'This project is driven by the needs of DADS 10.3 for delivery HST data to HST users (phase 1 and 2 of this project).
    This project will also implement a development and test environment as well as explore additional users of this software solution (phase 3).', '', '', 6, '', '', 0, 0, 4, 18, 4, '2004-01-01', '2004-11-23', 1, '2004-11-23 21:14:12', 'DURKIN'),
(20, 'Hardware Maintenance Recompete', 'Review strategy and competitively rebid the current hardware maintenance contract.', 'Cost reduction', '', '', 5, 'CPT', '', 0, 0, 0, 7, 9, '2004-01-01', NULL, 1, '2004-07-08 00:17:00', 'payne'),
(21, 'Housing Strategy', 'Develop a cost-effective process for moving IT equipment as staff move offices.', 'This project will develop a cost-effective process for
    moving IT equipment as staff move offices. This process needs to be in place to
    handle the move of the Rotunda staff to Muller, and the Bloomberg sixth floor
    move, as well as ongoing (and expensive) moves thereafter.', '', '', 6, '', '', 0, 0, 4, 7, 8, '2004-01-01', '2004-11-23', 1, '2004-11-23 21:20:20', 'DURKIN'),
(22, 'IIS Webfarm', 'Consolidate discrete IIS servers onto a cluster architecture.', '', '', '', 2, '', '', 3, 0, 0, 10, 1, '2004-01-01', NULL, 4, '2004-07-08 00:17:00', 'PAYNE'),
(23, 'Install Secure IDS', 'Install and deploy a network intrusion detection system.', 'A project was proposed in 2002 by CPT to improve our IT security by installing a network Intrusion Detection System (IDS). Providing a secure IT environment remains a high priority. (Q: Is this a NPG 2810.1 requirement?). Security threats continue to increase, and recovery from a security breach is expensive in FTE’s, impact on schedules, and our reputation with NASA.

    Today, we still re-connect laptops and other systems to our intranet after they have been exposed in the wild to worms and viruses. Our front door firewall does not provide any protection against these internal threats. The only protection we have internally is our host-based security, which includes virus checking on Windows, firewalls on Macs, TCP wrappers on Solaris, policies, etc.

    We want to provide maximum freedom for our staff while they are connected to our intranet. Such freedom makes us more susceptible to intrusions. This project would mitigate this risk.

    Best industry practice continues to be to provide multiple layers of protection, including front door firewalls, network intrusion detection and host-based security. Even if an external worm penetrates the firewall, IDS may detect the suspicious activity on the internal network, giving us an extra chance to catch a worm or virus before much damage is done. See e.g.:
    <a href="http://www.computerworld.com/securitytopics/security/story/0,10801,92580,00.html">computer world article</a>
    A possible tool considered was one of Cisco’s Secure Intrusion Detection Systems. This is a family of networked appliances and software agents that monitor network activity to identify possible attacks such as DoS (Denial of Service), worms, TCP hijacks etc.  Once a possible attack is identified, the originating system can be isolated from the network. See: <a href="http://www.cisco.com/warp/public/cc/pd/sqsw/sqidsz/">Cisco Website</a>.

    Cost estimates: TBD', '', '', 1, 'CPT/Security Manager', 'OT/Security Officer', 6, 1, 9, 1, 4, '2004-01-01', '2004-08-02', 4, '2004-08-02 15:16:35', 'PAYNE'),
(24, 'Internal DNS Server', 'Create an internal DNS server to reside inside the firewall that allows Dynamic DNS requests and keeps the public DNS servers in sync.', 'This is a project to install an internal DNS server inside
    the firewall that allow Dynamic DNS requests and keep the public DNS servers in
    sync. This process-improvement project is driven by the potential savings
    associated with improved network uptime.', '', '', 6, 'CPT', 'Doris McClure', 6, 1, 4, 2, 4, '2004-01-01', '2005-10-05', 1, '2005-10-05 19:01:14', 'SINGER'),
(25, 'Project Name here', 'None', '', '', '', 4, '', '', 0, 0, 0, 0, 0, '2004-01-01', '2006-12-03', 0, '2006-12-03 20:38:45', 'payne'),
(26, 'Host-based Intrusion Detection', 'Install and implement security software to ensure the integrity of STScI Unix Servers.  Install and deploy a network intrusion detection system.  On Aug 2, 2004 project 23, <a href="?projectID=23">Install Secure IDS</a>, was absorbed into this project.', 'Products such as ISS RealSecure Server Sensor perform network attack recognition, incident response, and intrusion prevention in real time. Agents running on the server machines monitor network traffic, system logs, and key system files, and can react to suspicious activity. Agents report suspicious activity to a central management console (running under Windows), which manages the reports, and raises alerts.', '', '', 5, 'CPT/Security Manager', 'OT/Security Officer', 6, 0, 9, 1, 4, '2004-01-01', NULL, 0, '2005-10-25 01:08:16', 'WOLFFL'),
(27, 'IT Security Risk Mitigation', 'Address all risks identified in NPG2810 Security Plans.', 'contractual obligation under NPG 2810.1', '', '', 1, '', '', 0, 0, 0, 1, 1, '2004-01-01', NULL, 3, '2004-07-08 00:17:00', 'HUIZINGA'),
(28, 'Library Journal Access Alternatives', 'Provide remote access to the library journal(s) for all Institute staff.', 'Science Staff on travel or observing would like to have access to the journals that STScI has electronic subscriptions to. The publishers authenticate users though the IP address of the client, so if you are not connected through the VPN, you cannot access these journals directly from your remote system. Work arounds such as running a browser on a STScI Solaris system and displaying it back to the remote system are slow and cumbersome.', '', '', 2, '', '', 0, 0, 0, 3, 1, '2004-01-01', NULL, 4, '2004-07-08 00:17:00', 'PAYNE'),
(31, 'MacOS Upgrade to Panther', 'Upgrade Macs to Panther.', 'Stay current', '', '', 5, '', '', 0, 0, 0, 6, 7, '2004-01-01', NULL, 1, '2004-07-08 00:17:00', 'payne'),
(33, 'Move Critical Servers to Power Generator', 'Review equipment connected to the backup electrical generator and move the
    most critical systems to a UPS connection.', 'Prevent unplanned downtime. HST flight operations has first priority, while enterprise-wide systems (network, email, etc.) should come next.', 'Unplanned downtimes due to power loss or surges has caused damage to equipment and caused server crashes.  Placing the systems on an UPS provides increased reliability and reduces the expenditure of staff labor to deal with power related problems.', '', 5, 'CPT/TIM', 'OT/Security Officer', 1, 1, 9, 5, 3, '2004-01-01', '2005-03-30', 3, '2005-03-30 20:33:48', 'HUIZINGA'),
(34, 'Network Monitoring Strategy', 'Define monitoring requirements to address day-to-day issues as well as provide information for longer-term strategies.', 'Today we do not have the capability to do
    basic monitoring, troubleshooting and debugging of network issues or to
    do capacity planning. ', '', '', 1, 'Head CPT', 'CIO, Head CPT', 6, 0, 9, 2, 4, '2004-01-01', '2004-08-29', 3, '2004-08-30 02:15:26', 'WOLFFL'),
(35, 'Network Upgrade', 'Increase available bandwidth between switches and routers by using Gigabit interfaces.', 'This is a process improvement project driven by the potential cost savings associated with improved performance. The project will increase the number of 100 Mbps ports per switch, increase the bandwidth that switches and routers can use, migrate the STScI backbone from ATM to Gigabit, reduce the use of LANE (Local Area Network Emulation) on the STScI network and provide the capability to do layer 3 switching in the core network.', '', '', 5, '', '', 0, 0, 0, 2, 7, '2004-01-01', NULL, 1, '2004-07-08 00:17:00', 'payne'),
(36, 'PeopleSoft Stabilization', 'Upgrade to latest patch level.', 'We stay current with our critical business applications because it gives us the best support and latest enhancements. ', '', '', 3, 'CIO', 'BRC/Ray Beaser', 6, 254, 9, 4, 7, '2004-01-01', '2005-01-27', 4, '2005-01-28 18:34:57', 'HUIZINGA'),
(37, 'Performance and Quality Monitoring', 'Automate posting of current performance metrics and provide on-demand function for testers.', 'The purpose of this project is to cleanup the Performance Monitoring of the Sun Fire Enterprise 15000 (15K) by automating the display of PQM charts on the Web, defining what other parameters need to be pulled from the current System Activity Report (SAR), creating a GUI Web Page to show testing results for software tuning purposes, and creating a FAQ web page to explain the data shown by the graphs.  ', '', '', 6, '', '', 1, 0, 4, 5, 4, '2004-01-01', '2005-02-25', 1, '2005-02-25 18:30:56', 'SINGER'),
(38, 'P&S File Server Replacement', 'Replace the planning and scheduling file server (aussie)', 'This maintenance project is
    to replace the planning and scheduling file server (aussie), which is approaching
    predicted failure, to avoid an interruption in our contractual requirement for
    planning and scheduling services.', '', '', 6, '', '', 1, 0, 4, 5, 7, '2004-01-01', '2005-02-25', 1, '2005-02-25 18:31:58', 'SINGER'),
(39, 'Portal Infrastructure', 'Beta implementation of Sun portal technology', '', '', '', 1, '', '', 3, 0, 0, 10, 1, '2004-01-01', NULL, 3, '2004-07-08 00:17:00', 'HUIZINGA'),
(40, 'Property Strategy', 'Determine what property information we need for purposes of planning and modify the property database accordingly.', '', '', '', 2, '', '', 0, 0, 0, 7, 5, '2004-01-01', NULL, 4, '2004-07-08 00:17:00', 'PAYNE'),
(42, 'Red Hat Systems Upgrade to Red Hat 9', 'Upgrade Red Hat Linux systems to Red Hat 9.', 'Stay current.', '', '', 5, '', '', 0, 0, 0, 6, 7, '2004-01-01', '2004-06-29', 3, '2004-07-08 00:17:00', 'HUIZINGA'),
(43, 'Remedy Stability Improvement', 'Improve the performance and stability of the system, as well as provide procedures and training for ongoing maintenance.', 'The current system has unacceptably slow
    performance and frequent problems or downtime. The system has grown
    organically over many years and contains many customizations and little-used
    features. Troubleshooting and recovery procedures are not well documented and
    very few staff have the training to investigate problems. This project would
    establish performance criteria and improve the performance and stability of the
    system, as well as provide procedures and training for ongoing maintenance. It is
    envisioned that a code refactoring would be an important part of this.', '', '', 3, 'CPT/ITS', 'John Kaylor; Sandy McCarthy', 6, 0, 4, 17, 7, '2004-01-01', '2004-08-18', 4, '2004-08-18 20:23:04', 'HUIZINGA'),
(44, 'Remedy Web Interface', 'An investigation of the feasibility of replacing all of the existing
    user clients with one Java-based Remedy client will
    be undertaken.  This will require significant prototyping and testing to
    ensure that the investigation''s conclusions
    are sound.  The outcome of the investigation will be used to develop a detailed business case for implementing the recommendations of the study.', 'We currently support Remedy user tools for Solaris and Windows operating
    systems, Citrix support for Mac OS users,
    and two web interfaces.  It may be possible to replace all of these
    client tools with a single web interface using
    the Java implementation of the Remedy client provided by Remedy
    Corporation.  The reduction in client-side interfaces and tools will provide
    significant maintenance and support savings.', '', '', 5, 'CPT/Greg McLeskey', 'Sandy McCarthy', 6, 254, 4, 17, 6, '2004-01-01', NULL, 0, '2005-10-25 01:13:58', 'WOLFFL'),
(45, 'Review Web Content', 'Review all STScI web sites to ensure compliance with NASA requirements.', 'As a contractual obligation, all web content must be reviewed for compliance with the “NASA Internet Publishing Content Guidelines,” dated November 2001.', '', '', 5, '', '', 0, 0, 0, 1, 2, '2004-01-01', NULL, 1, '2004-07-08 00:17:00', 'payne'),
(46, 'Single Sign On ROI Analysis', 'Conduct cost/benefit analysis to implement an SSO environment for DBs.', 'Risk mitigation', '', '', 5, '', '', 1, 0, 0, 5, 8, '2004-01-01', '2004-06-30', 4, '2005-09-27 13:41:31', 'PAYNE'),
(47, 'Software Acquisition', 'Define and implement processes and tools necessary to support implementation of the software acquisition policy.', '', '', '', 6, 'CPT/OT', 'Lisa Wolff', 5, 254, 4, 7, 1, '2004-01-01', '2006-02-14', 1, '2006-02-14 11:43:20', 'HUIZINGA'),
(48, 'Software Licensing Strategy', 'Develop a process and implement any tools required to manage the
    end-to-end software
    license process including proactively planning what software to
    acquire, making software available to users, license management,
    software maintenance management and retirement of software.', 'The overall goals of this project are to ensure legal
    software usage, provide STScI staff with the software tools needed to
    do the job, minimize software costs and minimize administration costs.
    <br>
    Currently software administration and license maintenance practice
    varies from platform to platform and from application to application.
    STScI staff and system administrators do not have a clear process to
    follow, nor is there sufficient CPT staff allocated to oversee the
    current process. A number of long-standing problems will be addressed
    in this project including: who pays for software, when to purchase a
    multiple user license, when to consolidate licenses to multiple user
    or site licenses, the process for maintenance renewal (including when
    maintenance will not be renewed), who gets the software media and
    documentation and if copies are archived, the level of CPT support, etc.

    This project is of some urgency for several reasons. First, to ensure
    that we are legal and not violating software licenses.  Second,
    because our process is not documented and not well-known, CPT staff
    and management are faced with extra work in trying to handle requests
    and to recall historical precedents. Third, STScI staff are not sure
    of the process so they may acquire software at higher cost or use
    software in violation of a license.

    The proposed scope of this project is limited to CPT processes and their interactions with users, BRC, etc. but excludes internal processes in other divisions such as the procurement branch in BRC.

    Note: On Aug 2, 2004, project #49, Software Maintenance Review, was
    absorbed into this project.', '', 'Software Acquisition: Staff working the software acquisition project would also work this the software licensing strategy project.
    <br>
    Staff Computing Strategy (SCS): The software licensing strategy should not be created until an end-to-end staff computing strategy is selected (approx. July 2005).  Then the implementation plan for that end-to-end strategy will be developed and the Software Licensing project will use information from the SCS to develop the licensing strategy.', 5, 'Head CPT, CIO', 'Doris McClure, Lisa Wolff', 5, 254, 9, 7, 1, '2004-01-01', NULL, 0, '2005-10-25 01:16:48', 'WOLFFL'),
(49, 'Software Maintenance Review', 'Review all software currently under maintenance contract to validate requirements. Remove products from maintenance that are no longer required and consolidate licenses where it makes sense (e.g. individual
    licenses for Adobe for a site license).', 'cost reduction', '', '', 1, 'Head CPT, CIO', '', 0, 0, 2, 7, 9, '2004-01-01', '2004-08-02', 4, '2004-08-02 15:35:32', 'PAYNE'),
(50, 'Solaris 9 Upgrade', 'Install and upgrade Sun systems to Solaris 9.', 'Stay current', '', '', 1, '', '', 0, 0, 0, 6, 2, '2004-01-01', NULL, 3, '2004-07-08 00:17:00', 'HUIZINGA'),
(51, 'Sybase Database Migration to EMC', 'Migrate the storage for the operational Planning & Scheduling database, HAL9000, and the operational ST-GMS (Grants System) database, GATOR to the EMC. Since HAL9000 lives behind the SOGS firewall, this also requires a change to the EMC security model and an additional EMC console behind the SOGS firewall. As part of this project, the database server systems themselves will also be upgraded: HAL9000 from a Sun Ultra 2 to a Sun 280R, and GATOR to another Sun Ultra 60 with more memory.', 'Currently, we use MTI Disk Raid Arrays for storage. For HAL9000 in particular, the MTIs have exceeded their expected lifetime and have become a liability.This project mitigates this risk by completing the consolidation of all Sybase database server storage directly involved in HST operations on to the EMC. All development servers were already consolidated in to C3PO, which was migrated to the EMC earlier in 2004.
    CATLOG, ZEPPO and ROBBIE were already migrated last year as part
    of the rearchitecting of the HST-DMS.
    The only Sybase servers not on the EMC are Remedy, which supports the HST Help desk, and Sebastian which is a test system used by the DBAs in CPT. The Sybase replication servers, LAL and TYRELL have no significant storage needs and will not be migrated at this time.

    The new servers are in-house already. Not clear if any additional hardware (EMC Console, HBAs, Switch extension) or licences are required?', '', '', 6, '', '', 1, 1, 4, 5, 3, '2004-01-01', '2005-02-25', 1, '2005-02-25 18:34:18', 'SINGER'),
(52, 'Non Mission Systems CM/CC', 'Create and implement a process for defining the system configuration for each "important system" in all but mission systems.', 'The purpose of this project is to create and
    implement a process for defining the system configuration for each "important
    system" in business systems or IT infrastructure (NOT mission systems),
    documenting the system configuration (config files, system settings, etc.),
    archiving the documentation, and placing it under some sort of CM control.', '', '', 1, 'CIO', '', 0, 0, 9, 7, 1, '2004-01-01', '2004-08-29', 3, '2004-08-30 02:09:40', 'WOLFFL'),
(53, 'Voice over IP Study', 'A study to assess our voice and data network technology state in terms of current and 5 year forecasted needs. Create an IT strategy for voice and data networks.', 'This project is a study of the possibility of integrating
    voice and data networking architectures by deploying VoIP. It is driven by the
    potential of significant cost savings. Decisions on whether, when and how to
    proceed depend on many factors, including age of the voice system, size, and
    required functionality. This study will assess our situation, determine
    whether such technology would provide recoverable costs savings, and if so,
    recommend a strategy for moving forward.

    We need to complete this study in time to provide input for FY06 (Q3 and Q4) funding.
    Our current phone system is expected to reach end-of-life in FY06/FY07.  Considering the enterprise architecture considerations VoIP, the study must be accomplished under the leadership of CPT, with support from BRC facilities staff who currently support the phone system.', 'This project would develop the business case.', '', 5, 'CIO', 'CIO', 5, 254, 9, 2, 5, '2004-01-01', NULL, 0, '2005-10-25 01:20:48', 'WOLFFL'),
(54, 'TomCat Webfarm', 'Formulate a cohesive TomCat strategy for the Institute, determine on which platforms to provide solution(s) for TomCat support and implement these.', '', '', '', 2, '', '', 0, 0, 0, 10, 1, '2004-01-01', NULL, 4, '2004-07-08 00:17:00', 'PAYNE'),
(56, 'Desktop Video Conferencing', 'Identify Institute users, needs, equipment, technical support and scheduling.', 'Telecommuters have expressed a desire for low tech (desktop) video conferencing as well. The capabilities include audio, video, and simultaneous data/audio/video. This project will investigate desktop conferencing solutions for STScI.', '', '', 4, 'CPT/Steve Dignan', 'Lisa Wolff, Doris McClure', 6, 254, 3, 14, 4, '2004-01-01', NULL, 0, '2005-10-25 01:23:04', 'WOLFFL'),
(57, 'Web Defacement Detection', 'Implement security software to protect STScI''s front door web page from defacement.', 'Entercept is security software that will be
    installed to ensure the integrity of STScI''s front door web page from defacement.
    Entercept identifies attacks and prevents unauthorized access to Web server
    resources before any unauthorized transactions occur.', '', '', 1, 'CPT/Security Manager', 'OT/Security Officer', 6, 0, 9, 1, 4, '2004-01-01', '2005-10-04', 3, '2005-10-04 14:39:45', 'SINGER'),
(58, 'WebET Upgrade to Time Collection 5.x', 'Upgrade to Deltek Time Collection 5.1', '', '', '', 6, '', '', 0, 0, 4, 4, 7, '2004-01-01', '2004-11-23', 1, '2004-11-23 21:18:44', 'DURKIN'),
(60, 'Windows Server 2003 Migration', 'Develop a strategy to upgrade the OS on Windows server machines.', 'Staying current', '', '', 6, '', '', 0, 0, 4, 6, 7, '2004-01-01', '2004-11-23', 1, '2004-11-23 21:19:34', 'DURKIN'),
(61, 'Update Expert Upgrade', 'Implement the new version of Update Expert (UE) into the Stsci domain.', 'Staying current.', '', '', 5, '', '', 0, 0, 0, 6, 7, '2004-01-01', NULL, 1, '2004-07-08 00:17:00', 'payne'),
(62, 'DADS UPS Replacement', 'This project covers the replacement of the "DADS" UPS, which
    covers computer rooms
    S101, N112, and the CCS strings in 128. The DADS UPS is a 150 kva unit
    that is over 12 years old.
    The project will need to consider current and projected
    power needs in the computer rooms in order to properly size the
    replacement UPS.  The project covers the work involved in
    de-installation of the old UPS and battery system, design, and
    installation of the new system.', 'The DADS UPS is becoming more difficult to
    maintain. The original manufacturer providing maintenance of the DADS
    UPS discontinued the full service coverage in FY2004 and this service is
    now being provided by another vendor.   Replacement parts are
    becoming
    more difficult to obtain given the age of the UPS.  We are currently
    somewhat at risk and will become more so with time if the unit is not
    replaced.  For security reasons, it is imperative that we continue to
    cover all computing rooms by UPS.', '', '', 4, 'Head CPT', '', 1, 0, 2, 5, 2, '2004-01-01', '2005-02-25', 1, '2005-02-25 18:35:00', 'SINGER'),
(63, 'ZOPE Web Farm OS Upgrade', 'Develop, test and execute procedure for upgrading OS on Zope webfarm machines.', '', '', '', 6, '', '', 0, 0, 4, 10, 7, '2004-01-01', '2005-02-25', 1, '2005-02-25 18:35:29', 'SINGER'),
(64, 'IT Extended Supplier Services', 'Identify and implement any additional value-added IT services desired by STScI such as imaging, tagging, etc.', 'Realize additional efficiencies and savings though e.g. the delivery of preimaged systems.', '', '', 5, 'CIO', 'Head CPT', 6, 0, 9, 7, 4, '2004-01-01', NULL, 0, '2005-10-25 01:25:46', 'WOLFFL'),
(65, 'IT Supplier Interface Setup', 'Design and implement the interface between STScI and the supplier', 'This project''s execution stems directly from the Office of Technology''s RFP and selection of vendor for the Unified Procurement initiative. The project will realize savings and efficiencies to STScI by streamlining IT equipment purchasing, from the end-user through to purchasing. It is a necessary follow-on to the vendor selection and has been approved at the DO level for work at a high priority.', '', '', 6, 'OT/Lisa Wolff', 'Lisa Wolff, Tom Lutterbie, Val Schnader', 6, 255, 4, 4, 1, '2004-01-01', NULL, 0, '2005-09-22 21:02:07', 'SINGER'),
(66, 'Sybase 12.5.1 Upgrade', 'Plan and implement the 12.5.1 upgrade to Sybase', '', '', '', 2, '', '', 3, 0, 0, 5, 7, '2004-01-01', NULL, 4, '2004-07-08 00:17:00', 'PAYNE'),
(67, 'Eliminate VMS', 'Schedule and implement the phaseout of VMS from the computing environment.', 'This maintenance project to complete the migration of
    mission systems to the Solaris platform is driven by the cost reduction associated
    with reducing the number of operating systems under maintenance.', '', '', 6, '', '', 1, 0, 2, 5, 3, '2004-01-01', '2005-10-04', 1, '2005-10-04 14:37:17', 'SINGER'),
(68, 'Firewall Rules Implementation', 'Implement rulebase on Institute firewall systems to protect Institute systems.', 'The firewall will initially be implemented to
    pass much of the traffic currently allowed onto the STScI network. This project
    will implement firewall rules to restrict traffic through the firewall, in accordance
    with our contractual obligation under NPG 2810.', '', '', 6, '', '', 0, 0, 4, 1, 7, '2004-01-01', '2005-02-25', 1, '2005-02-25 18:36:02', 'SINGER'),
(69, 'VPN Extended Implementation', 'Provide remote access via VPN to systems other than Institute-owned  Windows systems.', '', '', '', 5, '', '', 0, 0, 0, 1, 4, '2004-01-01', '2004-06-30', 3, '2004-07-08 00:17:00', 'HUIZINGA'),
(70, 'Patching Automation', 'Evaluate and implement a more automated means to distribute security patches on Windows systems.', 'This process improvement project would automate the installation of operating system patches, with a significant potential for labor savings.', '', '', 5, '', '', 0, 0, 0, 1, 7, '2004-01-01', '2004-06-30', 3, '2004-07-08 00:17:00', 'HUIZINGA'),
(73, 'Cosmos', 'Install and configure Linux cluster for the COSMOS project.', 'COSMOS is the largest HST observing project ever attempted, and it will acquire a large amount of data (12 TB for the entire project) with the Advanced Camera for Surveys (ACS).  Also as a Treasury project, it will acquire a small amount of matched ground-based data, specifically deep U-band imaging and multi-object spectroscopy, in support of the released HST data. These ancillary data are an integral part of COSMOS.  The bulk of the ground-based data will be retrieved directly by the external Customers to their institutions, where they will make the data available to their fellow Survey Scientists.

    Sufficient computing power and data storage capabilities are necessary to reduce the ACS data (clean them from cosmic ray events, register them onto a reference astrometric grid, and stack them using multidrizzle techniques), make the ACS mosaics, extract the source catalogs, and analyze them in conjunction with the ground-based data.', '', '', 6, '', '', 0, 0, 4, 3, 7, '2004-01-01', '2004-07-21', 1, '2004-07-21 20:42:02', 'SINGER'),
(74, 'Galex', 'Provide the necessary infrastructure that allows MAST to develop the user interface to GALEX data.', 'The Galaxy Evolution Explorer (GALEX) is a small explorer class NASA mission led by the California Institute of Technology aimed at investigating how star formation in galaxies evolved from the early Universe up to the present.

    The Multimission Archive at Space Telescope (MAST) will deliver GALEX data to the public and the scientific community using web tools, ftp, and physical media.  The Database Engineering and Systems Infrastructure (DESI) branch of the Engineering and Software Services (ESS) division at STScI is responsible for developing the GALEX data delivery tools.  The data delivery system will require high performance database servers, web servers, and high-speed network hardware, and terabyte-sized data storage.

    The purpose of this project is to install and test the underlying hardware, operating systems and server software of the GALEX data delivery systems.', '', '', 6, '', 'Alberto Conti', 3, 0, 4, 5, 7, '2004-01-01', '2005-03-02', 1, '2005-03-02 15:17:52', 'SINGER'),
(75, 'JWST DMS', 'Select, install, and implement a document management system for the JWST S&OC.', 'The JWST Document Management System (DMS) is a requirement placed upon the JWST S&OC. The DMS will house all JWST S&OC data in a searchable and archiveable format, maintain version control and history, allow for web access by the users, and include a “workflow” process.  This system will be used for the JWST S&OC Configuration Management document process. ', '', '', 6, 'JWST-MO', 'Judy Ashwell', 2, 2, 4, 5, 4, '2004-01-01', '2005-07-11', 1, '2005-07-11 21:06:04', 'SINGER'),
(76, 'Kepler Options', 'Proposals for data processing and network infrastructure to support Kepler mission.', '', '', '', 5, '', '', 0, 0, 4, 5, 8, '2004-01-01', NULL, 1, '2004-07-08 00:17:00', 'payne');
INSERT INTO "description" ("projectID", "name", "description", "rationale", "businesscase", "dependencies", "maturityID", "proposer", "customer", "sponsorID", "fundingsourceID", "hostID", "technologyID", "typeID", "created", "ended", "finalID", "lastModified", "lastModifiedBy") VALUES
(77, 'Mission Systems CM/CC', 'Create and implement a process for defining the system configuration for each "important system" in mission systems.', 'Assuming competitiveness is a critical success factor for STScI, it''s likely that discrete IT systems and infrastructure will be minimized to hold down indirect rates.  Getting the most of our technology investments in a multi-mission environment will require a well managed change process and the reliance on re-use of system capabilities when possible.  This means that many missions could be sharing a specialized system (like the DMS) or a part of the STScI IT infrastructure (like FTP services). To ensure that changes are not made without the knowledge of stakeholders, a high-level procedure linking key decision-making bodies, program management and tactical technical decisions must be developed.  The process must encompass impact analysis of proposed changes be performed and define the relationship of this process to any other in the organization used to manage the change of technology systems.', '', '', 5, 'CIO', '', 5, 254, 5, 5, 1, '2004-01-01', '2005-04-23', 3, '2005-04-23 05:34:12', 'WOLFFL'),
(78, 'Relocate Laurel IT Infrastructure to STScI', 'Create and implement a plan to move the IT infrastructure and people from the Laurel office to the Muller building', ' The Science Commanding and Scheduling Branch (SCSB) in ESS is currently located at a facility in Laurel, Md. These are the folks who take care of the PASS software for HST. To eliminate the separate facility cost, the Hubble Mission Office has directed that the SCSB staff move to the STScI.', '', '', 6, '', '', 0, 0, 4, 5, 3, '2004-01-01', '2005-02-25', 1, '2005-02-25 18:36:31', 'SINGER'),
(79, 'P&S backup/offsite server', 'Install P&S server(s) at GSFC as backup to Institute servers', 'Contractual obligation', '', '', 6, '', '', 0, 0, 4, 5, 7, '2004-01-01', '2005-04-27', 1, '2005-04-27 14:26:39', 'SINGER'),
(80, 'NVO Twiki', 'Implement a twiki to enable world-wide collaboration with NVO development contributors', 'We propose to establish a TWiki (http://twiki.org) web site at STScI
    for the purpose of web based collaboration for both local and national contributors to the National Virtual Observatory development initiative.   The TWiki technology is currently established in the international Virtual Observatory community with several projects (IVOA, Astrogrid, AVO, and AUS-VO; URLs are given below).  The TWiki is a natural choice for  projects such as the VO given the distributed nature of the development activities and the reliance of the VO on the web. The Virtual Observatory leverages the ability to perform multiparameter analysis and visualization of astronomical data by using web technology and services to gather information across institutional and international networks.

    While the IVOA TWiki site is well established and centralizes many development efforts, a local NVO TWiki will serve to coordinate local VO development and provide the first national collaborative web site that will integrate more efficiently with the international community development.  The usefulness of the TWiki  web is enhanced by the ability to edit documents.  It is advantageous over the conventional Wiki sites with the feature of preserving revisions of documents much like standard source code control.  It is simple to learn and deploy and provides user access features which allow security to be established on the site.  The conventional static Web site is not as conducive to remote and distributed software development where multiple individuals and groups need to make frequent changes to the content and structure of VO software.   It is also extremely helpful for coordinating meetings and posting of meeting presentations.

    The intention is for STScI to setup an evaluative TWiki site with the local NVO group and also provide areas where other groups at STScI and JHU could post information about their web services and software.  With this capability,  STScI will move forward in the direction of providing a valuable service to the astronomical software development community and continue to contribute technical expertise to the VO projects.  The site can ultimately serve a larger group and position STScI to be a central location for NVO technical coordination and innovation.', '', '', 5, 'CMO/NVO - Gretchen Greene, Bob Hanisch', '', 3, 0, 4, 14, 4, '2004-01-01', NULL, 1, '2004-07-08 00:17:00', 'payne'),
(81, 'ISP Selection and Integration', 'Select an ISP and integrate services with STScI network and users', '', '', '', 2, '', '', 0, 0, 0, 2, 0, '2004-01-01', NULL, 5, '2004-07-08 00:17:00', 'PAYNE'),
(82, 'Multi-drizzle DMS Resource Utilization Assessment', 'Support multi-drizzle project with analyses of statistical data and specialized performance testing of 15K/EMC/Apps', 'Multi-drizzle functionality in the HST pipeline has been identified as a high priority item to provide added scienc value to the archive data products.', '', '', 5, '', '', 0, 0, 4, 5, 8, '2004-01-01', NULL, 3, '2004-07-08 00:17:00', 'PAYNE'),
(83, 'Network Training', 'Cross train CPT staff for network support', 'Resource demands among the three network-supportive branches are at a premium; moreover, a disproportionate burden has befallen TSD, where the preponderance of network expertise currently resides.  This project seeks to formalize a process whereby network "operational" and "developmental" tasks are differentiated so that key TIM and ITS staff may be trained with the requisite operational tasking skills, supported by project-generated procedural documentation  and troubleshooting guides.    TSD staff will then be relieved of operational tasking and allowed to pursue developmental issues, conducive to their branch’s core focus.  ', '', '', 5, '', '', 0, 0, 4, 2, 2, '2004-01-01', NULL, 1, '2004-07-08 00:17:00', 'payne'),
(84, 'SOGS firewall', 'This project will replace the current SOGS firewall -
    SPARCstation 5 running TIS Toolkit firewall with a pair of Sun Blade
    1000s running the Checkpoint-1 firewall software.  This is an upgrade to
    existing hardware and software that will not change access restrictions
    in or out of the SOGS network.  The SOGS routers will be removed and the
    new SOGS firewall will take over network routing for the SOGS network.', 'The SOGS firewall needs to be replaced with newer technology
    in order to comply with NASA Policies and Regulations (NPR) 2810.  The
    existing hardware (Sun SPARCstation 5) and software (Sun OS 4 and TIS
    Toolkit) that comprise the SOGS firewall are old technology.  The
    firewall software is no longer supported and we are at risk should any
    problems arise.  The hardware is also over 5 years old and should be
    replaced with newer hardware running a current version of the Sun OS.
    The hardware, version of OS, and firewall software all place the system
    at risk.   The replacement system (Sun Blade 1000 running Checkpoint-1)
    is the same configuration as the frontdoor firewall.  The replacement
    system has built-in redundancy and removes the single point of failure
    that exists on the current system.

    This project was initially part of the Firewall project.  That project
    was modified to cover only installation of the frontdoor firewall and
    implementing a VPN solution.  NASA-GSFC has indicated this work should
    be completed as soon as possible.', 'The hardware for this project is aleady in house.', '', 6, 'Jamie Lipinski, Security Manager', 'OT/Security Officer', 1, 1, 4, 1, 7, '2004-01-01', '2005-10-05', 1, '2005-10-05 19:03:24', 'SINGER'),
(85, 'Business Continuity Assessment for servers', 'Examine all servers for failover and recovery capabilities', 'Risk mitigation', '', '', 1, 'CIO', 'CIO', 15, 254, 9, 7, 8, '2004-01-01', '2005-04-23', 1, '2005-04-23 04:13:54', 'WOLFFL'),
(86, 'Web Services Strategy', 'This project will examine our web services as a whole.  It will
    consider current problems and needs, future trends, and industry
    best practices. For each of a set of standard services (e.g.,
    Apache, IIS, Zope, Tomcat), architectures (standard solutions) will
    be defined.  These architectures must provide a higher level of
    service (performance, availability, security, capacity, flexibility,
    ...) at a lower total cost than current solutions. A framework for
    non-standard services, which require customized solutions, and for
    incorporating new technologies, will be established.  Finally, the
    project will produce a roadmap for projects that implement the
    standard solutions and migrate critical services onto them.', 'The Web is a primary channel of communication between the Institute
    and the communities it serves.  But the infrastructure to support
    this critical service remains largely fractured and unstructured.
    The large number of individual, customized web servers imposes a
    high cost to the Institute for support, without providing any of the benefits
    of reliability and responsiveness that redundant servers should
    provide.  We have arrived at this situation partly out of a desire
    to give content providers exactly what they want, but also because
    of a lack of standards and a failure to plan.

    This project was created in April ''04. At that time, there were four separate projects identified to build "farms" for the various web-related services: apache, tomcat, iis. These projects were CPT initiatives to centralize these services onto scalable and flexible architectures. ', '', '', 6, 'SIPE', 'CIO', 15, 254, 5, 10, 5, '2004-01-01', NULL, 0, '2006-04-20 17:18:14', 'HUIZINGA'),
(87, 'PeopleSoft Development and Test environment', 'This project will clarify the status of a development/test environment for our PeopleSoft installation, and if necessary create one. Next, we will use this environment to apply any outstanding patches and upgrades to PeopleSoft.', 'We are paying for PeopleSoft functionality that we cannot use without
    upgrading with the latest patches. Before upgrading we need to understand
    the state of our development/test environment, and if there is risk to the
    production environment provide a stand-alone development/test environment.', '', '', 5, 'BRC/HR: Sheryl Bruff; CIO', 'BRC/Sheryl Bruff', 6, 254, 4, 4, 7, '2004-01-01', '2005-03-30', 4, '2005-03-30 15:38:25', 'HUIZINGA'),
(88, 'Sybase 12.5.2 Upgrade', 'Plan and the 12.5.2 upgrade to Sybase, develop the checklist for implementation. Implementation itself is not part of this project.', 'Sybase ASE 12.5.2 introduces features in four key areas to make the system easier to manage and ensure even greater system availability under variable workloads', '', '', 6, 'CPT', 'Doris McClure', 1, 1, 4, 5, 7, '2004-01-01', '2005-05-09', 1, '2005-05-09 15:23:17', 'SINGER'),
(89, 'ISP Selection', ' Select a new Internet Service Provider for STScI, to augment the service currently being provided by HSTNET', 'Limited bandwith to the internet has been a known issue for quite sometime.  The problem further exacerbates during major press releases.  This is the worst time for the problem to get worse.
    Two of the clear results from the Internet Bandwith Project is that bandwith utilization is constantly growing and that we are have a severe shortage during press releases.
    Receiving additional bandwith from the HST Project and NASA has been a constant struggle.   ', '', '', 6, '', '', 0, 0, 4, 2, 9, '2004-01-01', '2004-11-23', 1, '2004-11-23 21:20:48', 'DURKIN'),
(90, 'ISP Integration', 'Integrate a new ISP with STScI network and users', 'This is the natural follow-on to project 89. Once we select a second ISP provider, we have to integrate it into our existing network infrastructure.', '', 'OPO web remote hosting decision that is expected in July 2005.', 5, 'Doris McClure', 'Doris McClure, Lisa Wolff', 13, 1, 4, 2, 7, '2004-01-01', NULL, 0, '2005-10-25 01:36:31', 'WOLFFL'),
(92, 'Microtech CD/DVD Writer Replacement', 'Replace HW used to burn CD/DVDs in the HST-DMS systems.', 'Currently the HST Data Management System has 4 PC operated CD and DVD writers.  STSCI was able to work out a contract where we upgrade the systems and get a reduction to our overall yearly maintenance cost for these systems (Maintenance cost on the old technology was very high).  The new systems (1 for development and 1 for operations) will have to be integrated in the environment.  The vendor will also be sending on site support to setup the 2 systems.

    The work involved is minimal:  The install will need about 15% - 20% of a PC staff''s time since the vendor will be doing most of the initial setup, 10 % network staff''s time.  Dave Wolf from ESS will also actively participate in all activities.  The moves and installation should take about 1 week.', '', '', 6, 'ODM', '', 0, 1, 2, 5, 7, '2004-01-01', '2005-02-25', 1, '2005-02-25 18:37:57', 'SINGER'),
(93, 'Web Proxy Server - Limited Implementation', 'Use existing solution for web proxy server to provide remote access to library journals, CRSS, STScI Leave System, and possibly other information available only on internal web sites.

    We will need to determine if we will use an existing web proxy server or if we need a new one.  If we need a new one, we will need to determine if we have hardware in house or if we need to procure additional hardware.  We should also poll the TC one last time to determine if there is additional information that should be made available as part of this project.  Once these decisions are made, the web server will need to be configured, and tested for access to this information.

    This implementation is not intended to provide full access to all internal STScI web sites.  It is only a stop-gap measure to provide access to the most commonly requested information that STScI staff need while offsite.  VPN, once available for Macs and Linux, should provide this full access to internal sites.

    Additional background on proxy servers is given <a href="http://www.stsci.edu/institute/org/ot/Governance/GovResources/p93">here</a>

    ', 'The present configuration of the web infrastructure at Space Telescope, is such that most web servers, static or front end to application servers, are accessible directly from the world wide web via http.  We realize this has multiple disadvantages, especially when it comes to security of our business and mission systems.
    A proxy server would also be able to cache frequently used pages, off-loading the webservers themselves.

    This project will focus on providing those internal web pages that are most frequently used by staff while offsite.  Access to this information will enable staff to be more effective at their job while offsite.

    ', '', '', 6, 'CIO/Security Officer; SCW', 'Edwin Huizinga', 6, 255, 4, 10, 6, '2004-01-01', '2006-01-11', 1, '2006-01-11 15:26:25', 'HUIZINGA'),
(94, '2-Gyro Mode Web Site', 'Set up a 2-Gyro mode web site that will provide the necessary information to users on setting up programs that will be compatible with 2 Gyro Mode HST operations. This information  will include the latest simulations and on-orbit test results (when available), what can be or not be done, scheduling tables, and possibly an interactive tool telling an observer his target availability throughout the cycle for 2 Gyro mode operation.', 'Since the cancellation of SM4  by NASA Management, the Institute must begin preparations for eventually operating the telescope with fewer than three gyroscopes. Operating HST in a "Two Gyro Mode" will have significant effects on how the Institute schedules the telescope, and consequently on the quality and quantity of science. It is imperative that there be a central location on the STScI web site (both internal and external) that can serve as a source of information for scientists interested in proposing observations on HST, and for STScI scientists, engineers and developers who are involved getting the telescope and ground system ready for Two Gyro operations. This site will also provide on-line tools to assist the potential HST observer in deciding on the feasibility of his or her proposal, and possibly on how to modify a program to make it compatible with Two Gyro operations.', '', '', 6, 'HST-MO; Rodger Doxsey', '', 1, 1, 3, 5, 10, '2004-01-01', '2004-11-23', 1, '2004-11-23 21:15:07', 'DURKIN'),
(95, 'Cycle 14 Phase II Proposal Instruction Updates', 'Update the Engineering version of the Phase II Proposal Instructions (cycle 14) quarterly. The initial release for this cycle was April 2, 2004.', 'Mission requirement', '', '', 6, 'HST-MO;', 'Rodger Doxsey', 1, 1, 3, 5, 10, '2004-01-01', '2005-09-22', 1, '2005-09-22 21:06:59', 'SINGER'),
(96, 'Massive Galaxies over Cosmic Time Workshop', 'A STScI workshop entitled "Massive Galaxies Over Cosmic Time" is being planned by the Science Division for September 27th through the 29th.  Support is to  include the usual items, i.e. website creation/support (workshop description and information, registration, travel/lodging information, etc), webcasting, presentation support, site maintenance training, etc.  It should be noted that credit card registration is a requirement. It should also be noted that there will be no printed Proceedings document.', 'Activities of this nature are extremely vital to STScI in that they afford the opportunity to promote and share science with the astronomical community.  The support that TS provides ensures a consistent and professional product for all aspects involved with the event.', '', '', 6, 'SD/Lexi Moustakas', '', 0, 254, 3, 0, 10, '2004-01-01', '2004-11-23', 1, '2005-01-28 18:36:29', 'DURKIN'),
(97, 'Women''s Science Forum Web Site', 'Development of a web site to support current and ongoing activities of the Women''s Science Forum.', 'Diversity.', '', '', 6, 'DO; Lisa Wolff', '', 0, 254, 3, 0, 10, '2004-01-01', '2004-07-21', 1, '2005-01-28 18:36:29', 'SINGER'),
(98, 'DMS Performance Modeling', 'The purpose of this project is to develop a means of supporting the
    decision making process associated with the HST Data Management
    Systems (DMS) by offering a quantitative approach to understanding how
    changes (both planned and unplanned) would affect system performance.
    This understanding should be applicable over a wide range of change
    scopes—from OPR-level requests to large projects to sustaining the longterm
    capacity of the system—and the costs and effort required to assess
    performance impacts should be commensurate with the scope of the
    change request.', 'This project is undertaken consistent with the FY04 Performance
    Evaluation Elements against which STScI will be assessed, which include:
    <ul>
    <li>“I.D. Effectiveness in science calibration, data processing, archiving distribution to the user community.”
    </ul>
    And
    <ul>
    <li>“II.D. Effectiveness in implementing ground system upgrades, especially replacement of the backend data processing system.”
    </ul>

    Understanding and affecting performance tuning of the DMS benefits the
    user community by affording more timely access to higher-quality science
    products. Performance tuning also makes the most of limited resources
    and reduces costs associated with inefficient operations. Fundamental to
    any performance tuning effort is an understanding of the current system
    behavior in response to load and the ability to project performance
    impacts associated with un/planned changes to the system.', '', '', 6, 'HST-MO, Rodger Doxsey', 'Lisa Wolff, Rodger Doxsey, Warren Miller', 1, 1, 10, 5, 4, '2004-06-01', '2005-10-26', 1, '2005-10-26 14:12:20', 'SINGER'),
(101, 'Oracle storage migration plan', 'There are 2 Oracle deployments that use aging MTI raid arrays for storage. The goal of this project is to replace current storage for the Oracle databases with a more cost effective and supportable solution.

    As a part of the recommendation for implementation the project should address the issue of how this storage fits into the total environment.

    <p><a href="http://www.stsci.edu/institute/org/ot/Governance/GovResources/p101">Supporting Architecture documentation</a></p>', 'Oracle databases support the business critical CostPoint (Finance) and
    PeopleSoft (HR) systems in addition to a few less critical applications
    such as the Event Manager. Both the development/test and production
    database servers use MTI RAID arrays for storage.  The raid arrays are nearing end of life most and are costly to maintain.

    Similar RAID arrays are used for HAL9000 and GATOR, where we have already experienced failures. This is why we are currently migrating these to use the EMC Symmetrix. The MTI RAIDS used by the Oracle databases are only ~1 year younger than those used by HAL9000 and GATOR, and are therefore expected to exhibit failures within the next few months.

    All MTI RAIDS are still under maintenance contract.', '', 'We plan to use the recommendations from the
    <a href="/institute/org/ot/Governance/ppt/projectByID?projectID=133">Mission Storage Planning project (#133)</a> in deciding how to replace the MTI RAIDS. The final recommendations for
    #133 are due July 1. ', 4, 'CPT/TIM', 'HST,CMO', 1, 1, 4, 15, 3, '2004-06-17', NULL, 0, '2005-10-17 12:56:39', 'SINGER'),
(102, 'Plan upgrade to Solaris 10', 'This effort involves investigating the need to upgrade to Solaris 10 on mission systems. The project will coordinate discussions between the CIO, CEs, CPT management and mission managers to consider the upgrade (and timing if determined an upgrade is called for).  The plan for upgrade will be documented for each domain (data management, proposal&planning, etc.)

    The project will not directly consider the upgrade of desktop systems and servers used for staff computing, as these systems'' upgrade paths are under consideration within the staff computing activities. ', 'We need to stay current on OS platforms to ensure that they are fully supported by vendors from a security perspective, and to be able to make efficient use of our computing infrastructure and new features. ', '', '', 5, 'CPT', '', 1, 1, 4, 7, 8, '2004-06-23', NULL, 0, '2005-10-25 02:03:11', 'WOLFFL'),
(103, 'Common OS patching tool implementation', 'This project will replace the various OS specific processes and tools we use to keep our OS''s patched with a product call PatchLink.', 'This project and the solution (PatchLink) are new NASA requirements that have to be implemented before the end of  the FY04 Q4 planning cycle
    (October 1). Therefore this project has been fast tracked to be worked by CPT.', 'This is a contractual requirement from NASA/GSFC.

    GSFC has a license for PatchLink which allows STScI to use this for free. Currently we use a different tool for each OS and this increases the complexity of our patching process, so we may recover some labor
    costs over time.', '', 6, 'CPT/Glenn Miller', 'OT/Security Officer', 6, 0, 4, 1, 4, '2004-06-23', '2005-01-20', 1, '2005-01-20 17:24:46', 'HUIZINGA'),
(104, 'Automate TAC-comments management process', 'This project may be limited to optimizing the process using existing features in FileMakerPro or developing a solution using standard features in Zope.', 'Currently it takes 12 people 3 days each to support this process. Parts of this process are supported using FileMaker pro. The Institute management has made it clear that we must look for lower-cost ways to complete tasks.  Tasks that involve many people or involve multiple/redundant software technologies, should be reviewed to determine whether a simplified approach could be taken. Since this task involves many people and has the potential for occurring more often due to 2-gyro mini-TACs, there could be an even higher level of costs savings achieveable. ', '', '', 1, 'SPD/Brett Blacker', 'SPD/Brett Blacker', 1, 1, 3, 5, 1, '2004-06-23', '2005-04-26', 1, '2005-04-26 15:24:24', 'SINGER'),
(105, 'ATM Protocol Removal from STScI Network', 'This project will plan and implement the elimination of ATM network components from the stsci.edu network. Removing the connection to the Rotunda has greatly reduced our dependencies on ATM. The remaining ATM connections will be replaced with 100Mbps connections.', 'ATM is no longer needed to provide the high speed connectivity within our network.  The ATM switch we use today is no longer available from Cisco. Removing ATM components from our network decreases the level of complexity in the network, and reduces the overall cost of our maintenance contract.  Removing the ATM switch and other ATM components reduces the number of "single point of failure" equipment out of network. We can replace existing ATM connections today with 100Mbps interface on the screening routers and use a virtual interface on Gigabit interface on the core routers..', '', '', 6, 'CPT/Glenn Miller', 'Doris McClure, Lisa Wolff', 6, 254, 4, 2, 3, '2004-06-24', '2005-07-11', 1, '2005-07-11 21:09:41', 'SINGER'),
(106, 'OPO/AVL News Digital TV Transition', 'Implement a solution to meet the new NASA requirements on the OPO/AVL News team to transition away from analog video production to digital television (DTV).  This project will implement a solution for production and transmission to NASA HQ.  Reception of DTV video from NASA HQ will be implemented in a future project (FY05 Q1 or Q2).', 'The NASA Digital Television Transition Plan (June 14, 2001) describes a strategy for converting to Standard DTV (SDTV, which is not HDTV) by December 2004, with highest priority given to NASA''s ability to acquire video in digital format from its centers.  This project will address that highest priority item.

    The AVL/News group (Lisa Frattare, Zolt Levay, Lynn Barranger and Greg Bacon) have a need for high speed (Gb) access to a large amount (3TB) of Raid 5 storage space for work-in-progress video files, which require no backups. The storage space should appear local to their systems, which will require each system to have a Gb interface for access. These systems are 2 PCs of which one is the Avid, 1 Sun, 1 Mac all of which will be in close proximity to this storage device, i.e., in the same office or adjacent offices.  Video delivery to NASA HQ requires a specific NASA-chosen device for encoding and delivery.  This device needs direct access to the storage device, and needs to be able to reach the Internet.  All of the hardware will reside in the AVL.

    The final components required to complete the transition are a satellite receiver for a dish on the roof, and a decoder in the AVL.  NASA is expected to announce sometime in FY05 Q1 the specific devices that we will have to install.

    Funding for this project has been approved.', 'This project has high visibility with NASA. While details are being worked out, it has been fast tracked and committed to by CPT to start project definition.', '', 6, 'OPO/Greg Bacon', 'OPO/Greg Bacon', 13, 1, 4, 0, 4, '2004-06-29', '2005-09-29', 5, '2005-09-29 20:46:22', 'HUIZINGA'),
(107, 'Content Addressed Storage for HST Archive', 'Part 1: Study the applicability of Content Addressable Storage devices as a means to: 1) free up space on higher priced storage (Symmetrix) and 2) replace jukeboxes with spinning disk.

    Part 2: Migrate all read-only data from the Data Depot and the MO deep archive to a Content Addressed Storage solution. ', ' The 10 TB EMC Centera  is a Content Addressed Storage (CAS)
     product from EMC that we would like to use for data that is currently
     on the Depot area of the Symmetrix.  What makes CAS storage
     well fitted for our raw data is its unique properties that are
     specifically designed to securely and safely store data that will
     never be changed.  When data is presented to the CAS storage
     system it generates a unique content address of that data that is a
     unique signature of that data (similar to a fingerprint).  This address
     is completely unique for every piece of data, if you had a Word document
     and only changed one character, the
     content address would be completely changed.  This unique
     address is checked on retrieval and gives assurance that nothing in
     this data has changed in any way from when it was first placed
     in the system.  In addition, the system is self-configuring,
    self-diagnosing
     and self-healing.  It constantly monitors the data to make sure there
     is no corruption by verifying those unique addresses and will
     replicate the data from a good copy if corruption is found and
     will take the corrupted disk offline.  If a disk failure occurs it copies
     the failed drive objects to new disks.  It constantly checks to make sure
     there are 2 valid copies of the data in case a disk fails.

    CAS storage is also the first spinning disk storage array that is so
     well protected it is considered by some as WORM (write once media)
     data storage.  Previously, the only types of WORM storage were optical
     disks (like the MOs we currently use) and some special
     forms of tape.  WORM storage is required for many types
     of storage compliance to make sure you cannot delete
     the data either by mistake or by malicious means.  This is policy based,
     and if the policies are that the data should never be deleted, once the
     data is burned to this media it cannot be deleted, the retention periods
     cannot be turned off or modified at any level.  (Personally I''d still like
    the
     security of knowing the data is on a disk stored off-site somewhere
    on shelf and wouldn''t completely trust this system 100%.) For disaster recovery, if we do decide to replace the MO platter with such a solution, we would need a geographically remote twin.

     In addition, if another site has a Centera, there are mirroring products
     available to send them a copy of the data securely over the internet.  It
     might be cost effective to have our mirror sites invest in them and
    transfer
     data that way.

     EMC estimates the cost of the hardware and software of this system
     to be around $10k per TB, so a unit big enough for our POD files and
     other ancillary data (OMS, calibration files, etc) for the next few years
     should be around $100k.  This also gives room for the test and development
     systems to have a small piece each of it.  We would need some work
     by ESS developers to get software written that will configure it into our
     system, but this would be similar to how our current jukeboxes are fitted
    into DADS so it''s not a completely new concept, just a different type of
    media.  We would also probably want professional services to set this up,
    I would estimate that  it would be around $10k for that, but that''s a guess
    on my part.', '', 'This is one of the aspects of our storage infrastructure that is being considered by the <a href="/institute/org/ot/Governance/ppt/projectByID?projectID=133">Mission Storage Planning project (#133)</a>.

    If that project recommends such a solution, it will also provide an updated
    rationale and the business case. At that time (Nov-Dec 2005), the information here will be updated and this proposal will become one of several in the implementation plan to realize our mission storage strategy.
    ', 4, 'ODM/Faith Abney', 'Lisa Wolff, Rodger Doxsey, Warren Miller', 1, 1, 4, 5, 4, '2004-06-30', NULL, 0, '2005-10-25 02:20:27', 'WOLFFL'),
(108, 'Replace EMC Backup DLT library with spinning disk', 'Replace the current EMC DTL tape backup library that is used to
    backup the EMC SAN with a fast spinning disk solution.

    <a href="/institute/org/ot/Governance/GovResources/p108">Supporting Architecture documentation</a>', 'We currently back up parts of our SAN onto DLT tapes and this is very time consuming and we are fast approaching our
     limit to what can be backed up within the time available by the number of
     tape drives we have.  EMC has a couple of products that do this, one is
    called
     Clariion Disk Library and it works like a tape library but is actually spinning disk. It uses fast, cheap ATA drives.

    Since data is backed up to disk, you don''t have to back it up to tape, but
    it comes with that option if you prefer, so we may be able hang our current
    tape
    library off of it.  We would like to get this system running Legato backup.

    EMC
    recently bought Legato and we have Legato on other systems within the
     Institute.  The SAN is now backed up with EMC''s other backup solution
     called EDM.  We prefer Legato to EDM.
     Ballpark cost for a 12TB system would be about $140k for the hardware, then
    there''s more costs for the software and setup, but we don''t have estimates
    for
    those.  And we''d need more than 12 TB.  It would take some more work to
    scope out the complete solution we need.

    Because our current backups are so slow, we have to dump copies of the Sybase databases and back these up. In July ''04, we had to allocate a total of 700GB of additional space accross the database domains to support this. This space could be freed if we went with a fast, spinning disk based solution.', '', 'This is one of the aspects of our storage infrastructure that is being considered by the <a href="/institute/org/ot/Governance/ppt/projectByID?projectID=133">Mission Storage Planning project (#133)</a>.

    If that project recommends such a solution, it will also provide an updated
    rationale and the business case. At that time (July 2005), the information here will be updated and this proposal will become one of several in the implementation plan to realize our mission storage strategy.
    ', 4, 'ODM/Faith Abney', 'Lisa Wolff, Rodger Doxsey, Vera Gibbs', 1, 1, 9, 12, 7, '2004-06-30', NULL, 0, '2005-10-25 02:26:23', 'WOLFFL'),
(109, 'Fix Zope POSKEY errors', 'This project will fix the persistent "POSKEY errors" that keep corrupting our Zope-based websites by upgrading Zope to its latest release and implementing other recommendations from the CPT POSKEY Tiger Team.', 'A bug in our current version of Zope generates so-called POSKEY errors which can cause webpages or entire folders to become inaccessible or uneditable. Our websites are a critical part of the Institute''s external face, and play an important role in our internal communication as well.
    This problem was diagnosed by a CPT Tiger team, and the recommendations were to upgrade to the latest version of Zope, and to fix current POSKEY errors using a tool developed in house.
    Upgrading Zope also gives us access to new features and may improve performance and security.', '', '', 6, 'CPT-POSKEY Tigerteam', '', 6, 0, 4, 10, 7, '2004-06-30', '2004-11-23', 1, '2004-11-23 21:16:47', 'DURKIN'),
(110, 'Automate Functional Software Testing Management and Process', 'Evaluate and select a functional test tool and test management solution such as Mercury Interactive''s TestDirector server and WinRunner/XRunner and QuickTest Professional tools. (http://www.mercury.com)', 'A professional test suite will help improve efficiency, quality and consistency in our software testing activities.', '', '', 2, 'CIO', '', 8, 1, 10, 5, 4, '2004-07-07', '2005-02-21', 3, '2005-02-21 19:43:54', 'WOLFFL'),
(111, 'Sybase Migration to MS-SQL Server', 'This project will deploy a mission quality Microsoft SQL Server infrastructure and migrate all databases currently managed with Sybase
    on Solaris to MS SQL Server on Windows and port all affected applications
    to use the MS SQL Server APIs.', 'This project would implement the recommendations from the Sybase Alternatives project. This research project assessed the viability of Sybase as the long term mission database for HST. The conclusion was that, as Sybase''s
    market share continues to shrink, Sybase feature development slows, and Sybase skills are harder to find, the HST mission should consider migrating
    off of Sybase.

    Based on Database related licensing and porting costs and performance and functionality criteria, the recommendation was to migrate to MS SQL Server if a 5th servicing mission appears likely. Additional work, taking into account the non-database specific cost factors and the Institute''s technology strategy may be required.

    The full report of the Sybase Alternatives project will be posted on the
    <a href="http://www.stsci.edu/institute/org/ot/InProgress/currentResearch">OT Research website</a>
    ', '', '', 1, 'ESS/DESI', 'Rodger Doxsey', 1, 1, 4, 5, 4, '2004-07-12', '2005-02-21', 3, '2005-02-21 19:39:17', 'WOLFFL'),
(112, 'Develop NFS cross-mount policies and implementation', 'Part 1: Develop comprehensive NFS cross-mount policies.
    <br>
    Part 2: Implement NFS/OS combinations identified in an SCW meeting.
    <br>
    Note: Data sharing that is handled more effectively via a workgroup storage approach will not be addressed in this effort.', 'Part 1:
    <br>Establishing clear policies on what NFS/OS combinations will be supported is necessary to operate the multiple OS platforms within the budgetary limits set by NASA. The budget is pressured in two areas, user support and security compliance.  <br><br>
    MAC and Linux users prefer access to data by means other than FTP.  Some data sharing access/sharing is supported, but more could facillitate a higher level of productivity, especially for the ESS, DAs and scientists.
    <br><br>
    Supporting more access for MAC users poses an ITAR and security risk because the MAC systems allow the owner to become root. A solution that keeps this fact in mind, yet  provids enhanced functionality, will yield better support of missions.
    <br><br>
    Part 2: <br>Provides basic enhancements to cross-mounts so some requests can be fulfilled while the enterprise storage planning is accomplished. (See Disposition explanations for further information.)', '', 'Part 1:  Staff Computing Project', 6, 'CPT/Glenn Miller', 'Doris McClure, Lisa Wolff', 6, 1, 9, 6, 7, '2004-07-13', NULL, 0, '2005-10-17 13:08:59', 'SINGER'),
(113, 'Inform Public During Websites Outages', 'Spurred on by the power outage, what are the options for having some way to notify the outside user community that the Institute is unavailable?  Need to define requirements as to what is needed by OPO and what is capable on CPT''s side. Ideally, whenever OPO (or other STScI) websites
    are down (either planned or unplanned), the user would be given a notice that the system is down, or redirected to a mirror or backup site.', '', '', '', 5, 'OPO', 'Stratis', 13, 1, 3, 10, 4, '2004-07-13', NULL, 0, '2005-10-17 13:12:13', 'SINGER'),
(114, 'Adopt a Standard for Electronic Documentation Signatures', 'Adopt a standard for electronic documentation signatures.', 'The Institute should adopt an electronic signature
    standard for documentation and implement this standard
    for paperwork, especially those documents which
    currently require multiple signatures and handoffs
    (introducing a long and unnecessary delay in many processes).', '', '', 1, 'ODM', '', 0, 0, 0, 1, 0, '2004-07-13', NULL, 0, '2005-10-17 13:12:49', 'SINGER'),
(115, 'Web Index and Searching Capability Improvement', 'Improve STScI web index and searching capability.

    This project may be phased to provide short and long term solutions for both our external
    websites and our intranet. We can use
    <a href="http://www.google.com/searchcode.html">Google Free web search with site search</a>  to immediately improve searching capability for our external users. This
    would require making minor changes to the current search pages, while making sure our we adhere to Google''s Terms of Service. The project will
    identify any drawbacks and risks with this approach (e.g. not being able
    to re-index on demand when new handbooks are published).

    Google cannot index our internal pages. To improve the internal searching
    capability using Google would require installing their Google Appliance (several $10k''s), or one of their other commercial solutions. This could then also serve the external users.
    Alternatively, we can upgrade our 6 year old Webinator installation to its
    latest improved 5.0 release for about $5800,-. ', 'STScI has a prominent web presence.  External users come to the site trying to discover if we have information regarding a specific topic.  Conversely, internal users know that a document exists, somewhere on our site, but do not know its current URL.

    To serve both groups of users, the STScI web server employs the Webinator search engine.   While users of our site expect our search engine to correctly catalog and search our site, this software does not.

    As an example, search for "Kepler requirements". You  get 70 documents returned, sorted by relevance. The top two "most relevant" are an MSR presentation for CMO,  the other is minutes from an OPUS branch meeting. There is no hit for any Kepler requirements document on the first
    page.

    A second example: a search for "PPT" returns 200 documents. Each one is named "PPT Slide".  There is no link to the Portfolio Planning Tool home page anywhere on the first page of results.

    Since the documents we need to do our job cannot be located quickly,  we suffer in productivity.  Further, we are seeing a smaller return on our investment of publishing our documents on the web, and maintaining the web infrastructure.  To external users, including the public and our customers, our web site looks disorganized and unprofessional.

    MAST has replaced the Institute''s standard search tool with a link to Google.

    The NOAO site
    (<a href="http://www.noao.edu">http://www.noao.edu</a>), by comparison, when searched for "Gemini requirements", brings up a page whose first link  loads a document  containing a link to a requirements document, as well as several interesting, and related systems engineering documents for that observatory.

    The NOAO site runs Google. The search results are much more relevant.   In addition, it is probably true that most users are already familiar, no doubt, with a Google search
    syntax, making them comfortable with the NOAO site.

    ESO also makes use of Google, and adds the ESO logo as extra branding to
    the Google result pages
    (<a href="http://www.eso.org/search">http://www.eso.org/search</a>).', '', '', 6, 'ODM', 'Doris McClure', 6, 254, 9, 10, 7, '2004-07-13', '2005-10-24', 1, '2005-10-24 14:41:38', 'SINGER'),
(116, 'Expand Wireless, DHCP and Multimedia Services', 'Expand wireless, DHCP and multimedia services.', 'All conference rooms should have wireless access
    for laptops.  Failing that, there should be some
    clearly marked and easily accessible DHCP ports
    for meeting attendees to use.

    Every conference room should have a permanently mounted
    projector with easy-to-use hook-ups to the laptops.
    (Note: this implies proximity to the DHCP ports, above).

    Demos of online material are increasingly a part of
    working meetings.  The CafeCon was singled out as
    a particularly ill-equipped conference room.
    ', '', '', 1, 'ODM', '', 6, 254, 9, 2, 7, '2004-07-13', '2005-03-31', 3, '2005-03-31 16:49:51', 'SINGER'),
(117, 'Expand Backup Capability for Scientists', 'Develop stop-gap solution to allow more than the current limit of 50GB per workstation to be backed up.

    The last parts of this project are implemented under the "Solaris USB Lacie" project.', 'Additional input from INS/Ralph Bohlin and SD/Stefano Casertano (9/20/04):

    This project cannot be implemented
    via expanded centralized and automated backup capacity beyond the normal 50GB
    limit per person, because of the currently limited network bandwidth and the
    unwieldy quantities of tape media that are already generated. Solutions to
    these two limitations require more money than we might expect to get from NASA
    for such upgrades over the next 2-3 years. In addition, centralized backups of
    Linux and Mac systems are not currently done at all. Thus, additional study of
    augmented backup capacity for FY05 will be confined to the stop-gap method of
    attaching additional "cheap" disk storage units to the individual machines that
    require large backup volume.

    In addition to the INS/ACS team, the Science Division has similar requirements
    for a number of individual users, so that the scope of this project is now
    larger and may be in the neighborhood of 50 machines for the SD+INS combined.

    An example of one satisfactory solution for Mac systems is the purchase of
    0.5-1.0 TB firewire disks that cost ~$500 for the 0.5TB model from LaCie.
    Scripts are in use by a few employees that do automated daily backups to
    their plug-in LaCie disks.

    A large volume of user data at the Institute, both scientific and functional, is
    currently not backed up and is at risk. To move quickly toward a short term
    solution of this urgent problem, expert CPT advise is needed on the following
    specifics:

    a) What is the best choice recommended "cheap" disk for Solaris and Linux?
    	Is the LaCie vendor the best choice for Macs? Do we want to include
    	Window systems in this study?

    b) What is the labor cost to provide scripts for automated daily
    	backups for each type solution? Can this software be provided to
    	the user in a cookbook, semi-idiot proof format, so that the
    	average user can order the hardware, plug it in, and set up the
    	backup script without labor support cost to CPT or long delays in
    	the CPT setup queue? The latter scenario is close to the case for
    	Mac users, where there is some help available via the mac-users
    	forum.

    If a backup solution based on local disks is to become a de facto standard,
    even for the short term, such a solution would be best coordinated,
    recommended, and supported to some extent by CPT.  A CPT assessment of the
    long term resource impact on an Institute-wide basis would be important.

    Original proposal for this project (July 2004)

    The recent failure of a number of Solaris systems has again
    raised concern with the small 50GB backup limit, especially
    for those in the ACS/INS group that routinely work with large
    numbers of the huge ACS/WFC images. Details of the problem are
    provided in the memo from Richard Hook below. Either Richard or
    Paul Lee can present details of this issue to the TC.

    In particular, I suggest that a supplemental backup quota be
    assigned to each division based on need. If our current backup system
    will not totally break with the addition of a few terabytes, this
    supplemental quota could be the most cost effective means to
    solve the problem of loss of crucial data and many person weeks
    of labor due to current strict limits of 50GB/machine. Furthermore,
    the backup frequency for the supplemental quota could be less
    frequent: for example weekly, rather than daily.

    Hopefully, we can deal with this suggestion on a short fuse basis
    without waiting for the start of FY05.

    thanks
    ralph

    Notes on Backup Requirements of the ACS Branch

    Richard Hook, July 2004

    <ul>
    <li>The ACS Branch works on a daily basis with very large volumes
      of ACS data to fulfil its responsibilities.
    <p>
    <li>Most data processing is done on personal workstations although
      plans are advancing to move some work to the Sunfire 15k/EMC
      machines.
    <p>
    <li>The branch''s workstations are mostly Solaris machines, although
      there are a small number of Linux and Mac machines, and the majority
      have more than 100GB of disk storage.
    <p>
    <li>Although some of the recent disks are in RAID configuration most of
      the older ones are not.
    <p>
    <li> The current limit on the space which can be backed up, per workstation,
      is 50GB. For most ACS users this is a lot less than their active disk usage.
    <p>
    <li>Steps were taken to make sure the branch staff were well aware of these
      limitations.
    <p>
    <li>The branch had played an active role in discussions with CPT of options
      to improve the situation. The favoured short-term option was the addition
      of large, cheap disks to the workstations as local backup media. This
      hasn''t been implemented yet.
    <p>
    <li>In the last month a major disk problem occurred to John Biretta''s machine,
      due to a known, but un-patched Solaris operating system flaw which managed
      to affect multiple disks and simultaneously destroy multiple copies of
      files. This incident led to significant loss of important information.
    <p>
    <li>Clearly steps need to be taken rapidly to implement some improvement,
      perhaps as an interim measure.
    <p>
    <li>The ACS group is very keen to assist in any way it can to get something in
      place rapidly to avoid the repetition of the Biretta incident, or more
      likely something completely different but with similar results.
    </ul>', '', 'Project #10, Staff Computing Strategy', 6, 'INS', 'Doris McClure', 6, 1, 2, 6, 7, '2004-07-13', '2005-05-18', 1, '2005-05-18 14:03:17', 'SINGER');
INSERT INTO "description" ("projectID", "name", "description", "rationale", "businesscase", "dependencies", "maturityID", "proposer", "customer", "sponsorID", "fundingsourceID", "hostID", "technologyID", "typeID", "created", "ended", "finalID", "lastModified", "lastModifiedBy") VALUES
(118, 'Consolidate and add Storage to STDATU', 'Provide a storage solution for STDATU to be able to host ~1.5TB of
    HST HLSP data and HST Previews and consolidate the old Raidtec
    storage for HST distribution staging and various SCSI disks.

    After considering new direct attached storage, we are now pursuing expanding STDATU storage on the EMC from 1 to 3.5TB. This will likely require additonal QFS licenses and PowerPath. Also, we are currently NFS mounting the 1TB EMC partition to ARCHDEV, the development and I&T equivalent of STDATU, and may need another solution there.

    Note that this project depends on <a href="https://www.stsci.edu/institute/org/ot/Governance/ppt/projectByID?projectID=131">project #131</a> which proposes to upgrade STDATU and ARCHDEV themselves.

    <b>Details - August 2, 2004</b>
    Working meeting: Faith, Tim, Randy, Tom, Phil, Karen, John S., Edwin.

    Stdatu needs to have 3.5TB of space allocated to it:

    - 1 TB will be for the DADS staging area and only needs
    to be accessed by Stdatu (not Archdev).  Tom will
    use the current 1 TB disk on Boris - 2F6.

    - 1 TB will be the current partition already allocated
    to Stdatu, and will be used for miscellaneous data.
    It will be NSF mounted to Archdev.

    - 1 TB will be the one currently slated for Galex (2A2)
    (Faith to verify with Alberto how much he needs when)
    and will be used for HLSPs.  It will be NSF mounted to
    Archdev.  (If we can''t use that space, we will need
    to get a bin file change to either combine 2 500''s
    or remove the 1TB BCV space.)

    - 500 GB will be used for preview (browse) files.  This
    will come from the extra pool of 500''s we have - 0DE.
    It will be NSF mounted to Archdev.

    To attempt to improve performance of the NFS disks
    mounted to Archdev, CPT will move Archdev into the same
    subnet as Stdatu and will make sure both are at 100Mbit.
    If this performance is not satisfactory, we can consider
    using the volume management software that comes with
    PowerPath.  To do that, we''ll need to test the volume
    management of powerpath on two other test machines since
    we don''t have any experience with it.  We would also need
    to find out if it requires powerpath to be running on
    both machines or just one.

    We will purchase a powerpath license and add another HBA
    to Stdatu for redundancy and failover since
    Stdatu will host > 1 TB of space and is a mission critical
    system.  We are not planning to do that to Archdev.
    This will be done after the migration of data is complete,
    so the order is:
    	1.  Connect new EMC partitions as described above
    	2.  Give Tim/Randy/Karen time to move data from
    the RaidTec and Sun disk packs to the new EMC partitions
    	3.  Disconnect the RaidTec/Sun disk packs
    	4.  Add another HBA to Stdatu

    We decided not to purchase or use a QFS license for
    Stdatu or Archdev since there is no need to have the
    2.5 TB of disk space to be on the same partition and
    the platform for Stdatu may change in the next year or so.
    Once the upgrade to Stdatu is decided, if it is on Solaris
    we will then again consider getting QFS on it to be able
    to have volumes > 1TB.  If Stdatu becomes a Linux machine,
    there are many software managements options that should
    be considered.', 'Our short-term forecast had us running out of space when a new round
    of High Level Science Products (HLSPs) are delivered sometime in the
    next few months. HLSP that are coming in August/September, include (From Karen Levay):
    GOODS v2 (~60GB); GEMS (70GB); COSMOS (~50GB) WFPC2 Archive Parallel Program, APPP (150GB); HST Previews which are extracted from the DB and need to be stored online and new ACS previews which were not in the DB (~70GB + additional growth); CoolCats (only 1GB); Additional data are expected to arrive in the next 6 months. As of July 20, 2004 MAST has only 260GB available of the 1TB partition on the EMC. As an aside, this partition is not being backed up, and there is currently no capacity in the EMC backup system to add this to the backup schedule. Backups for disaster recovery are done piecemeal on DVDs and CDs.

    In the longer term, we projected a need for 5 to 7 TB
    of total storage, mostly for HLSPs and online distribution of legacy
    instrument data (FOS which is already on the EMC; GHRS, FOC and non proprietary FUSE data). Also, we are currently proxying the WFPC2 associations from CADC, and we plan to host the next release
    locally (??GB) but this is still one to maybe two years out. However, over
    this time period we have to take a look at the big picture, including the proposal for the HST Legacy Archive.

    7/28/04 [TK]: After a detailed analysis of what we have and what we''re
    expecting, it looks like we will need about 2.5 additional
    terabytes. The breakdown is: 1TB to replace existing
    fragmented storage (RaidTec & several separate SCSI disks),
    and *at least* 1.5TB for what we''re expecting for high level
    science products (HLSPs), HST previews (which are moving out
    of the database), and bringing more data online. The number
    for HLSPs is our best guess; we''re still waiting to hear from
    some of the PIs as to an estimate of what they will be
    delivering in the coming months.



    We originally priced some direct attached storage:
    The system we have a quote for is Excel Meridian, a brand with which
    the Institute already has experience (including on Solaris), and for
    which Phil and Brian have a positive feeling. We considered two
    fiber channel boxes, 3.5TB each at RAID 5 with two hot spares,
    redundant power supplies and fans. This would serve as the Archive
    FTP public and staging areas, and also our Web area, which requires
    considerable space due to the preview images. It would replace an
    aging RaidTec device, several 18GB SCSI disks (which are too small
    for us to use), and would release a 1TB EMC partition. However,
    Rodger decided that instead of spending HST funds on new storage we would use the spare capacity on the EMC first.', '', '', 5, 'ODM/Tim Kimball', '', 1, 254, 9, 5, 7, '2004-07-14', '2006-03-15', 3, '2006-03-15 19:02:40', 'HUIZINGA'),
(119, 'Add SunFire Domain to Support GO''s', 'This project would procure the necessary hardware to add a new
    domain to the SunFire, maxing out the number of CPU boards,
    adding HBA''s and I/O board(s).', 'After the successful use of the Sunfire/EMC by the UDF team to complete
    their final processing, we are considering making compute resources available to internal and exernal General Observers. If feasible, this would have to
    be coordinated with the Cycle 14 call for proposals, for which the
    editorial deadline is in September.

    One way to implement this service would be to augment the SunFire/EMC
    solution. Alternatives could include solutions similar to the
    current STScI General Observer compute clusters for the COSMOS
    and GOODS projects.

    The capital cost estimate to expand the SunFire/EMC (ballpark!)
    is on order of $150k:

    $90k one CPU board (which would max it out);
    $22k one additional I/O Board;
    $  7k Gigabit/Ethernet/SCSI adapters
    $  3k Additional Sun Storedge unit for the Operating System
    $20k  Upgrading disks in EMC to double density to provide 2TB of additional
              storage or e.g. a CLARiiON type solution', '', '', 2, 'HST-MO/Rodger Doxsey', '', 1, 1, 9, 5, 7, '2004-07-14', '2005-04-23', 3, '2005-04-23 05:07:54', 'WOLFFL'),
(120, 'Rationalize and augment Audio/Visual Capabilities', 'In coordination with the organizations involved in providing Audio/Visual services, mainly CPT/TS and OPO, this project will identify the current and future needs for Audio/Visual services and functionality at the Institute and rationalize support and expand or augment these services and the
    underlying infrastructure where necessary.', 'A detailed description of our current capabilities, issues and a rationale
    for this project are provided in a separate document
    (<a href="http://www.stsci.edu/institute/org/ot/Governance/GovResources/p120/AVdocRev2.pdf">PDF</a>).

    Capital investments to augment our capabilities in the Auditorium, the
    Boardroom and the underlying infrastructure total $45k. A detailed breakdown of these items is provided in a separate document
    (<a href="http://www.stsci.edu/institute/org/ot/Governance/GovResources/p120/AV-Wishlist-End-Of-2004.pdf">PDF</a>).

    The
    <a href="projectByID?projectID=161">Streaming Infrastructure Upgrade</a> project is part of this
    implemention plan and spends money out of this $45k budget.', '', '', 3, 'CPT/TS', '', 6, 254, 9, 13, 7, '2004-07-14', '2005-03-28', 4, '2005-03-28 16:53:50', 'HUIZINGA'),
(121, 'Copy and Print Services Consolidation', 'This project would determine if combining copy and print services would be beneficial. CPT''s contribution would include analyzing our current printing needs, understanding
    modern capabilities, recommend potential improvements and
    participate in the evaluation of bids.', 'The BRC is recompeting the Copy Center contract. In the time
    since the current contract was let, the technology has matured
    considerably and the distinction between "printers" and "copiers"
    has blurred. At STScI, printers are used for over half of all
    duplication (52%), yet printers have a higher per page cost
    than copiers.

    There exists the potential for significant savings in labor and
    supplies, as well as the ability to provide faster and higher
    quality printing.

    <b>Timing</b>
    We confirmed at the 9/9/04 BRC/CPT meeting that Glenn Miller is
    on the selection team. The current vendor has been extended
    (for a few months, or month-to-month - it wasn''t clear)
    while BRC develops its plans. The strategy put forward at that meeting
    was that any new or extended services would be phased in, and only
    then if there was a clear cost savings. If so, then this project
    will probably not be needed for this planning cycle (FY05 Q1-Q2),
    but for the subsequent one (Q3-Q4).
    ', 'The Consolidate Copy & Print Services project will involve a recompetition for the copying contract and will also include a study of the cost savings to be gained by utilizing multi-function machines both for standard photocopy tasks and for printing from Institute computers.

    The project will issue an RFP to obtain and evaluate various vendors'' proposals for reprographic and printing services.  The vendors considered will include the existing copy services vendor (Xerox).  A preliminary list of vendors has identified two other vendors for consideration, Ikon Office Solutions and Canon Business Services.

    This project must be started by July-August 2005 in order to complete the study and select a vendor in time for implementation in January 2006.  One driver is that the existing copy services contract will expire in at the end of January 2006.

    The project will benefit the Institute as a whole by providing enhanced services, while achieving cost savings for the both the BRC and CPT centers.  Preliminary data shows that this can likely be accomplished by having staff send their printouts to a multi-function copier/printer that is less expensive to maintain than a laser printer.  Additional savings are anticipated by utilizing color photocopies to replace some of the color printing currently done by staff.

    For existing photocopying alone, data collected by BRC show that the total number of copies made during the recent one-year period was 1,784,599 (including 250,815 color copies and 1,533,784 black & white copies).  The total monthly average was 148,717 copies.

    Analogous data collected for printer output, to be provided by CPT during the project, is expected to show the potential for a large cost savings by transferring much of the printer function to the multi-function copy machines.  Preliminary data provided by Glenn Miller indicates a monthly average for shared printers of >200,000 pages printed including >20,000 color pages.  In addition, there are several individual office printers.  Glenn will provide additional information shortly, related to number of pages printed for individual office printers, maintenance costs, and costs of supplies.

    Users should also experience some increased efficiency with the ability to send multiple copies to print directly from their desktops, rather than having to print a single copy then walk to the photocopier to make additional sets.

    ', '', 6, 'BRC, CPT/Glenn Miller', 'Val Schnader, Lisa Wolff', 6, 254, 9, 16, 7, '2004-07-14', NULL, 0, '2005-11-28 14:43:13', 'HUIZINGA'),
(122, 'Migrate OPO content to One NASA Web Portal', 'This project would migrate all OPO content intended for the general public in
    to the One NASA Web Portal, and provide the procedures and tools necessary to remotely manage that content.', 'In a letter dated July 1, 2004, the Assistant Administrator for Public Affairs and the NASA CIO announced that they have been directed by the
    Administrator to bring all public web content  and sites into the portal structure. This includes content of NASA funded contracts such as OPO.

    NASA has expressed interest in making OPO one of the first web sites to be migrated because of its high public profile.

    This clearly has consequences for our own infrastructure needs and our bandwidth requirements to the Internet at large.', '', '', 1, 'OPO/Peg Stanley', '', 13, 1, 0, 10, 4, '2004-07-14', '2005-03-22', 3, '2005-03-22 16:53:17', 'HUIZINGA'),
(123, 'Email list service alternatives', 'Evaluate email list services alternatives, including updated version of majordomo. Develop a plan for selecting and implementing email list services to replace old version of majordomo currently in use at STScI.', 'Majordomo is used, among other things, to manage the all_staff email list.  The old version of majordomo we currently use is awkward and inefficient. A tool needs to be found that allows a more manageable process.

    (2/17/05) In addition. OPO is experiencing performance issues with large distribution
    lists running on our majordomo server (to be quantified). This project may also consider external alternatives, such as the Yahoo service, which is e.g. used by NASA to announce their research opportunities.', '', '', 1, 'CPT/Doris and Glenn', '', 6, 254, 2, 9, 7, '2004-07-15', NULL, 0, '2005-10-17 13:13:24', 'SINGER'),
(124, 'Evaluate new Computing Hardware', 'Support the evaluation of emerging computing technologies
    for science and functional purposes by providing configured instances
    that can be used for science testing purposes.  Similar to the opportunity
    offered to the HUDF team to test data processing on the Sunfire.
    Recent examples: Mac G5, AMD Opteron with 64-bit operating system.', 'Many science and functional studies are limited
    by the capabilities of the computational hardware.  Individuals
    often are not in a position to test new hardware that might overcome
    such barriers, because of security considerations, time required
    to obtain and configure the hardware, lack of expertise, or inability
    to support the effort (often due to regulations rather than
    lack of funding).  An ongoing program to test and configure
    substantially new hardware would enable many individuals to test
    their capabilities for their specific project without the
    investment of resources that would otherwise be necessary.  As a result,
    the Institute would remain at the technological forefront in this
    area and increase the effectiveness and functional productivity of
    its staff; for research projects, the staff might obtain a competitive
    vs. other institutions.', '', '', 4, 'SD/SCW', 'Antonella Nota', 12, 255, 9, 7, 10, '2004-07-15', NULL, 0, '2005-10-17 13:14:09', 'SINGER'),
(125, 'Evaluate Gigabit Networking for Selected Systems', 'Investigate the feasibility, cost and impacts of gigabit
    networking for selected systems.  Assess requirements, benefits,
    and potential selection criteria.  Determine appropriate break points
    where implementation costs change drastically.

    Though this is a planning type project, the potential follow on implementation projects may require network investments. Therefore this project has been tagged for consideration in ED05.', 'Collaborations between scientists at STScI on large data sets is
    becoming increasingly common.  Network speed of 100 Mb/s (nominal)
    has been critical in making such collaborations, however the network speed
    remains the main limitation to sharing of very large data sets.  The project
    would evaluate the cost and infrastructure implications (e.g.,
    backbone requirements) of a limited number of Gigabit connections, as
    well as clarify the limitations (e.g., geographical placement) that
    such connections must satisfy.  A clear assessment of the cost vs. the
    number of such connections is needed, in order to identify the
    optimal number of connections that could be provided without excessive
    infrastructure work and without adverse impact on the rest of the
    network.', '', 'Staff Computing Strategy project', 3, 'SD/SCW', 'Lisa Wolff', 12, 255, 9, 2, 7, '2004-07-15', NULL, 0, '2005-10-17 13:15:08', 'SINGER'),
(126, 'Upgrade Shared Science Computing Facilities', 'Support the beowulf cluster (wulf) established and managed by Frank Summers by upgrading and possibly expanding the hardware (CPU, RAM, storage) as feasible.  Sponsor the GRID computing project or equivalent.', 'The wulf cluster is a unique scientific computing resource at the
    Institute which benefits many users at the same time.  Most wulf users
    are part-timers; wulf enables them to carry out simulations and calculations
    that would not be feasible on even the most powerful individual workstations.
    Upgrading the hardware regularly ensures that wulf remains cutting-edge
    at a moderate hardware and support cost.', '', 'Staff Computing Strategy project', 1, 'SD/SCW', '', 0, 0, 0, 3, 7, '2004-07-15', NULL, 0, '2005-10-17 13:15:38', 'SINGER'),
(127, 'Redundant Main Network Switch', 'To purchase and install a second Cisco Catalyst 6500 to provide redundant switching capability', 'Our current network switch has no backup gear.  If this switch fails, the majority of the Institute would be without network services.', '', '', 6, 'Doris McClure', 'Doris McClure, Lisa Wolff', 6, 254, 9, 2, 7, '2004-07-15', '2005-12-05', 4, '2005-12-05 20:00:50', 'HUIZINGA'),
(128, 'Adopt people-friendly e-mail addresses', 'Change from the current ad hoc e-mail addressee convention to one of
    the form FirstName.LastName for the stsci.edu domain.', 'The present ad hoc e-mail addressee naming convention makes it difficult for STScI domain users to communicate their e-mail addresses to other parties and have them remembered reliably. Moreover, there are numerous instances of e-mail addresses in use today that are ambiguous (e.g., common last name without an identifying initial) or that differ by the first character only (e.g., common last name with an identifying initial) that result in incorrectly addressed e-mail messages. This impedes communication flow within and external to the organization. Given the importance of both communications and e-mail to the business of STScI, an approach that reduces ambiguity and one that facilitates the e-mail address discovery process is warranted. Many organization, including NASA, employ an e-mail address naming convention of the form FirstName.LastName@domain that maps to the ubiquitous, non-electronic means of addressing an individual.', '', '', 1, 'ESS/Warren Miller', '', 0, 0, 0, 9, 0, '2004-07-19', NULL, 0, '2005-10-17 16:00:41', 'SINGER'),
(129, 'Property Database', 'This project would correct and normalize data in the WiseTrack property
    database. Normalizing data includes developing a standard set of
    descriptions for data fields, modifying existing data to conform to
    these standards and developing a procedure to ensure future entries
    conform to the standards.  This would involve reviewing every piece of
    equipment in every office and computer room to verify the data, making
    any necessary corrections. It would also involve entering data into the
    hardware maintenance field for those items to be covered under the
    maintenance contract. A second part of this project would be to develop
    any procedures identified for maintaining the database, and developing a
    report capability to support the maintenance contracts.', 'The current property database is fraught with errors and we
    are at continued risk of failing a government audit.  We recently
    uncovered an item marked as "lost" that resulted in that workstation not
    being covered under the maintenance contract.  This was only uncovered
    when the equipment failed and we had to pay additional money for
    repair.  We are continually finding errors in the data and it appears
    that data is still not being entered in any standard way.  As indicated,
    the second risk is that we do not have accurate information for the
    hardware maintenance contract.  We also do not have an efficient means
    of collecting adds and deletes for updates to the contract.  All of the
    above is costing time and money.  The added benefit of doing this
    project is having a means of generating reports from the data on how
    many systems of what type by division, etc. that would be extremely
    useful for planning of hardware upgrades.', '', '', 6, 'CPT/Doris McClure', 'Doris McClure', 6, 254, 9, 4, 2, '2004-07-21', '2006-02-14', 1, '2006-02-14 11:42:41', 'HUIZINGA'),
(130, 'COMPASS server and storage upgrade', 'The COMPASS server runs the Objectivity database in support of GSC-II production.  The current platform is aging and should be upgraded to ensure reliable HST catalog operations.  The upgraded system should be sized as a 4-way Dell PowerEdge 6650 with 16 GB memory (or better).  4 TB of disk space are needed to hold the GSC-II database.

    This project will also include replacing the Raidtec storage array and the
    aging SnapServers originally proposed in project
    <a href="http://www.stsci.edu/institute/org/ot/Governance/ppt/projectByID?projectID=132">#132</a>.

    Additional information:

    * Supporting Architecture diagram (<a href="http://www.stsci.edu/institute/org/ot/Governance/GovResources/p130/catalogs_and_surveys_ed05.pdf">PDF</a>)

    * <i>Computing Strategy for Catalogs and Surveys Group (FY05-FY09) - HST Operations</i>, Brian McLean  (<a href="http://www.stsci.edu/institute/org/ot/Governance/GovResources/p130/CASBComputingPlanFY05-FY09.pdf">PDF</a>)', 'Originally purchased in March 2000, the server is approaching end-of-life and should be replaced.  The storage arrays are starting to show increasing drive failures.  This equipment is used for HST operations and 2005 ED05 money is requested for the technology refresh.', '', '', 6, 'ODM/ASB: Brian McLean', 'Brian Mclean', 1, 1, 9, 5, 0, '2004-07-26', '2005-10-26', 1, '2005-10-26 14:11:06', 'SINGER'),
(131, 'Upgrade Stdatu/Archdev architecture', 'The STDATU system supports MAST and HST web-based and starview-based
    archive searches and retrievals via FTP.  The Archdev system is the
    corresponding machine in the testing environment.  The Sun Ultra 60
    workstations currently in use should be replaced by a scalable and highly available solution.

    The services supported by this hardware will be evaluated from an enterprise architecture perspective and relocated to other resources as required.  Sizing of new equipment should be done only after an assessment of services is completed.

    <p><a href="http://www.stsci.edu/institute/org/ot/Governance/GovResources/p131">Supporting Architecture documentation</a></p>', 'ED05 funding was originally requested for this upgrade in
    2004 ($20K for each system).  Stdatu serves (along with the Zeppo database) as the primary interface between the scientific community and the HST archive.  Having high public visiblility, any downtime for this system is quickly noticed.  It should be able to scale easily and inexpensively to any increase in user demand in order to maintain low data retrieval response time.
    ', '', '', 6, 'ODM/Tim Kimball', 'Lisa Wolff, Rodger Doxsey, Warren Miller', 1, 1, 9, 5, 7, '2004-07-27', NULL, 0, '2006-03-15 19:03:39', 'HUIZINGA'),
(132, 'Replace CASB Network Attached Storage (NAS) devices', 'CASB currently makes use of Raidtec and SnapServer NAS devices which can no longer be upgraded to patch a NAS security vulnerability.  As requested by GSFC, these devices (which amount to 2 TB of space) should be replaced with a shared storage solution that is secure.

    <p><a href="http://www.stsci.edu/institute/org/ot/Governance/GovResources/p130">Supporting Architecture documentation</a></p>

    This project has been absorbed in #130,
    <a href="https://www.stsci.edu/institute/org/ot/Governance/ppt/projectByID?projectID=130">Upgrade Compass Server and Storage</a>.', 'This equipment is used for HST operations and 2005 ED05 money is requested for the transition being mandated by security concerns.', '', '', 4, 'ODM/CASB (Brian)', '', 10, 1, 4, 5, 7, '2004-07-27', '2005-02-08', 4, '2005-02-08 18:12:49', 'HUIZINGA'),
(133, 'Mission Storage Planning', 'This project will determine the projected storage and backup needs in our mission environments, including HST, Kepler, MAST and JWST.
    First, we will perform an inventory of all existing storage and backup infrastructure, existing and expected data holdings
    and storage needs and current storage and backup practices. We will
    use an industry standard approach to classify our data with respect to
    "value", performance, retention and availability criteria. These will be used
    to design a tiered storage architecture and 3 year strategy. In the short term we will use the results of this study to tune existing processes and storage allocations.
    We will make recommendations on any FY05 and FY06 investments and
    projects.

    Any detailed design and implementation work will be part of follow on projects. ', 'Disk space on the EMC Symmetrix that was acquired to
    provide some growing space for the online archive of HST datasets for
    distribution through DADS (the "Data Depot") has been used in the short
    term to provide disk space upgrades for various smaller projects, most
    recently to consolidate and enhance storage for STDATU
    (see project #118).

    In many cases, projects may have requirements that
    could be accommodated  by less expensive SAN storage solutions
    than the Symmetrix.  Similarly, there may be applications within the HST-DMS that currently use the Symmetrix that could be satisfied with cheaper storage.
    In the short term, this would allow us to recoup high RAS storage on the Symmetrix to give back to the Data Depot.

    Today, our storage area network is synonymous with the EMC Symmetrix. This project would plan for a true SAN that can meet diverse storage needs within a flexible, scalable and manageable environment. This will be the bases for much larger future projects such as the HST Legacy Archive, JWST, etc. This project is also related to the proposal to use Content Addressable Storage for the HST Core archive (#107), and to replace the EMC Tape backup library with a spinning disk solution (#108).', '', '', 6, 'ODM/Faith Abney; OT/Edwin Huizinga', 'Lisa Wolff', 1, 1, 9, 5, 7, '2004-08-04', NULL, 0, '2005-09-22 20:56:30', 'SINGER'),
(134, 'Consolidate HST Planning and Scheduling Processing', 'This project will gather requirements for, acquire, and deploy a centralized Sun Solaris enterprise class computing platform to consolidate the planning and schedule-building tasks currently performed on about 11+  rapidly aging Sun Blade 100 desktops.  Acquired in 2001, these desktops have 500 MHz Ultra II processors and are currently struggling to adequately provide both desktop services ( text editing, mail, etc) in addition to calendar building and planning services for their users.  They are scheduled to be upgraded in the FY05 ODM M&E budget.


    <p><a href="http://www.stsci.edu/institute/org/ot/Governance/GovResources/p134">Supporting Architecture documentation</a></p>', 'The computing strategy for HST planning and scheduling is to use desktop Solaris platforms so that the failure of any one desktop will not prevent mission critical work from being completed on time.  Further, the acquisition of a separate workstation for each ODM user ensures that there is never contention for resources between users at a critical moment (e.g. an HST spacecraft emergency).

    This strategy has several deficiencies (see project 10).

    - The array of desktops is more costly from a management and maintenance standpoint than a centralized server.

    - As the planning and scheduling software evolves, the workstation capabilities cannot be scaled.  While each user
    need not worry about competition from other users, everyone
    suffers a degradation in performance over time.

    - Eventually, the solution to this decreasing performance is the wholesale replacement of the entire complement of machines with the next generation of Solaris desktop machine in order to maintain flight command load production schedules.

    - At this time, Sun does not have a sufficiently evolved,
    low-end replacement desktop for the 500 MHz Blade 100.

    - Desktop functionality on the Blade 100''s must be augmented by Citrix or other means, for example, a secondary desktop system running Mac OS X or Windows, thus
    further increasing the cost of the Solaris desktop model.

    ODM has added the cost of 11 Blade upgrades to its M&E budget for FY05  for planning and scheduling computation for HST.   These funds could just as easily be used to acquire a centralized server that, together with savings in management and maintenance, and the ability to scale inexpensively to future computing demands, will be less expensive in the long run.

    One way to provide centralized compute services for planning and scheduling is to acquire a possibly refurbished standalone Sun Fire platform (a V880, or 6800).  The new centralized server would need fast access to centralized storage  to connect (see project 125 and 38).', '', '', 1, 'ODM/Tony Roman CPT/SIPE Edwin Huizinga', '', 1, 1, 9, 5, 7, '2004-08-09', '2005-01-14', 3, '2005-01-14 18:52:35', 'HUIZINGA'),
(135, 'Acquire SAN storage to recover loans of Data Depot space', 'Disk space on the EMC Symmetrix that was acquired to provide some growing space for the online archive of HST datasets for distribution through DADS (the "Data Depot") has been used in the short term to provide disk space upgrades for various smaller projects, most recently to consolidate and enhance storage for STDATU (see project 118).

    In many cases, these smaller projects have requirements that
    could be accommodated  by less expensive SAN storage solutions than the Symmetrix.  This project will determine the extent of the projected need for low-cost SAN storage that can be virtualized and served to SAN clients, acquire it and deploy it to recover EMC space for applications requiring the additional RAS it provides.', 'Applying in-house EMC space to various applications can
    stave off ad hoc purchases of heterogeneous host-based storage. Ultimately,however, using Symmetrix space in every case where centralized,SAN-based storage is needed is an expensive alternative to expanding the SAN with storage from the appropriate tier of devices.', '', '', 6, 'ODM/Faith Abney', '', 0, 0, 0, 0, 0, '2004-08-16', '2004-08-16', 3, '2004-08-18 16:32:55', 'HUIZINGA'),
(136, 'Upgrade to Red Hat Enterprise Linux', 'This project will upgrade Institute Linux systems from
    from Red Hat Linux (versions 7, 8 or 9) to RHEL (Red Hat Enterprise
    Linux). The scope includes desktop, laptop and server systems.  This
    project will develop and test upgrade procedures, develop a migration
    schedule, train CPT staff, write procedures and user documentation,
    and keep users informed.

    CPT has performed several OS upgrade projects in the past, but a
    persistent source of confusion is in knowing when the "project" is
    complete and when upgrades are a part of "routine" operations. Some OS
    upgrades appear to languish on the last few systems as other work is
    assigned to operations staff.  This project should consider this issue
    and present a recommendation to management on the scope of the project
    and how to best accomplish the ultimate goal of upgrading all Linux
    systems.', 'Red Hat, Inc. changed their business model and discontinued the
    Red Hat Linux product line - Red Hat Linux ended with version 9 and
    updates are no longer available from Red Hat.

    A CPT study team carefully examined the successors to Red Hat Linux as
    well as the possibility of migrating to other Linuxes and recommended
    that we migrate to the commercially supported successor to Red Hat
    Linux, namely, Red Hat Enterprise Linux.  CPT management adopted this
    recommendation in consultation with the CIO, ESS, the SCWG and the
    Technology Committee.

    This project is of some urgency in order to keep our Linux systems
    secure. Additionally, many Linux users want to migrate to the newer
    version in order to take advantage of operating system enhancements
    and new application software.', '120 RedHat Enterprise licences (workstation) have already been purchased.', '', 6, 'CPT/Glenn Miller', '', 6, 254, 2, 6, 7, '2004-08-18', '2005-03-02', 1, '2005-03-02 15:37:25', 'SINGER'),
(137, 'Remedy Development and Test Environment', 'Our current configuration consists of one server system.  This system
    provides the resources for the Remedy server and the underlying Sybase
    server.
    The resulting configuration at the conclusion of this project would
    include separate server systems for the production Remedy
    server and the production Sybase server along with recycled hardware
    providing development/test Remedy server and Sybase
    server environments.  The required hardware for this project is in house
    and awaiting configuration and installation. ', 'The current Remedy configuration does not provide a development/test
    environment comparable to our production remdy environment.
    As a result, modifications to the remedy environment cannot be properly
    tested before being introduced into the production environment.
    In fact, in some cases, changes cannot be tested at all, but must be
    made in the production environment.  This puts us
    at great risk of making changes that have unanticipated negative impacts
    which could negatively impact the operations of the
    helpdesks(CPT,SSG,OPO,HELP,APST,ADMIN,ARCHIVE)
    using the Remedy system.  Installation of a true pipeline, separating
    development/test environments from the production environment would
    allow for testing that would significantly reduce the risk of
    introducing costly errors into the production environment.', '', '', 6, 'CPT/Matt Sienkiewicz', 'Doris McClure', 6, 254, 4, 17, 7, '2004-08-18', '2006-01-12', 1, '2006-01-12 17:52:37', 'HUIZINGA'),
(138, 'Remedy Interface Refactoring', 'This project will consolidate the useful features from the two existing Remedy interfaces in to a single interface.
    A description of the feature set of the two remedy interfaces would be created.
    Discussions with the user community would be conducted
    to determine the features in use today.  A design for a single interface
    incorporating the required features would be fabricated.
    The design would be implemented, tested and released to production.

    This project absorbed the refactoring aspects of the Remedy Stability Impovement project (#43). The performance and downtime issues mentioned in that project have already been resolved.', 'We currently support two graphical user interfaces to the Remedy system.
    Supporting two interfaces (the two interfaces are the STScI Requests and
    Prototype Launch Pad) increases maintenance and support costs
    significantly.  Integrating the two into a single interface would reduce
    maintenance and support costs.  In addition, the current user interfaces
    were desgined to support the business practices in effect at the time.
    Changes in our organization and its operating practices necessitates a
    review of the applicability of the current interfaces to the way we
    operate today.

    This project is closely related to the Remedy Web Interface project (#44).', '', '', 2, 'CPT/Matt Sienkiewicz', '', 0, 0, 0, 17, 0, '2004-08-18', '2005-04-23', 4, '2005-04-23 05:10:25', 'WOLFFL'),
(139, 'Windows XP Transition and Infrastructure', 'This project will develop and implement the infrastructure - as in hardware, software, policies and procedures - required to support Windows XP on desktop and laptop (staff computing) systems. The project will also determine the optimum transition plan from 2000 to XP. For example, one option is to not upgrade any existing Windows 2000 systems, but support XP and 2000 in a ~3 year transition period during which 2000 systems are replaced on the regular upgrade cycle with new XP systems.', 'The Windows OS Migration (Desktop) project (#59, deleted in the last planning cycle before the PPT was created) was a planning project to develop the infrastructure and plan for desktop migration from Windows 2000 to Windows XP.  It is expected that independent of what the overall desktop strategy is, the existing systems must be migrated to XP until they cycle out of the Institute.

    Today, we are not aware of any projects requiring Windows XP support. However, there is a risk that if such a requirement shows up, we do not have sufficient time to plan for this transition.

    As far as costs go, we can point out that there is a cost of not taking advantage of XP''s improved robustness and functionality.  The extra robustness would translate into fewer Help Desk calls.  One nice bit of new functionality is the ability to run a host based firewall, as we do on Linux machines, which could reduce our security risk.

    Also, we already have a few exceptions in place for XP users. They are not getting the quality of support we could provide, and the lack of a support infrastructure may increase our security risk. ', '1) Today, we are not aware of any projects requiring Windows XP support. However, there is a risk that if such a requirement shows up, we do not have sufficient time to plan for this transition.  If a quick response is driven by a sudden loss of support for Win2K or a sudden need for XP, unplanned consulting assistance would be required to ensure a smooth transition.
    2) There is a cost of not taking advantage of XP''s improved robustness and functionality.  The extra robustness would translate into fewer Help Desk calls.  One nice bit of new functionality is the ability to run a host based firewall, as we do on Linux machines, which could reduce our security risk.
    3) There are a few exceptions in place for XP users. They are not getting the quality of support we could provide, and the lack of a support infrastructure increases our security risk. ', '', 6, 'CPT/Ron Russell', 'Doris McClure', 6, 254, 4, 6, 7, '2004-08-19', '2006-01-12', 1, '2006-01-12 17:51:56', 'HUIZINGA'),
(140, 'Offsite Storage of Backups', 'Plan and implement offsite storage for system
    backups and archive safe stores.  The project will identify
    data/media and the process for storing our backups at an
    offsite location TBD.  The project will include a review of
    storage of all current backups, assessment of what should be
    stored offsite at Bloomberg vs. offsite at a more remote
    location TBD, procedures for moving media between locations,
    including retrievals, RFP for remote offsite storage (> X
    distance from Institute), and implementation.

    As part of this project, we will have to:

    - review our backup process in terms of when and how we will
    send tapes (and other media) offsite, what we keep on site

    - develop procedures for sending and retrieving media to/from
    the offsite location

    - review and make any necessary modifications to current
    backup and restore procedures

    - coordinate with ODM to develop strategy and procedures for the
    archive safe stores', 'The Institute currently uses the Bloomberg
    Building as its offsite storage facility.  This facility is
    used for storing recent backups of all critical systems and
    other user data that is regularly backed up, as well as the
    archive''s "safe store" magneto-optical disks.  GSFC has
    recently mandated that we choose another location that is more
    remote (distance not specified) than Bloomberg.  GSFC''s
    rationale is that if an event affects the Muller Building,
    there is a possibility it could also affect the Bloomberg
    Building due to its proximity.  The current procedures for
    transporting offsite backups between Bloomberg and Muller will
    need a major revision with the increased distance and
    inability to immediately retrieve tapes or disks.  ', '', '', 6, 'CPT/Doris McClure', 'Doris McClure', 6, 1, 2, 12, 9, '2004-08-23', '2005-09-22', 1, '2005-09-22 20:31:34', 'SINGER'),
(141, 'Kepler Architecture', 'This planning and systems engineering project will determine how to integrate the Kepler DMC within the existing Institute data management system environment. This project will consider the predicted data volumes, processing loads and I/O requirements for Kepler, HST and other missions currently using or planning to use the DMS, and performance metrics and capacity planning information on the DMS itself. If not available, this information will be developed within this project or in related projects such as the Performance and Quality Monitoring project (#37) and the DMS Performance Modeling project (#98). The project will also have to consider the impact of sharing resources, build and testing cycles, etc. between an operational mission such as HST and a mission in full development such as Kepler. Possible outcomes may range from Kepler and HST sharing identical resources, similar to FUSE and HST today, to Kepler having dedicated processing, storage and/or database resources.', 'STScI is a partner in the Kepler Mission, and responsible for the design, development, implementation and operations of the Kepler Data Management Center (DMC). In a nutshell, the DMC receives, processes and ingests telescope data from the Mission Operations Center (MOC at Honeywell, Columbia, MD), and distributes calibrated science data to the Science Operations Center (SOC at NASA/Ames) and eventually to the astronomical community at large. The DMC also receives science products from the SOC for archiving. Kepler launch is planned for summer/fall 2007. The Kepler DMC will complete Phase B of the NASA mission-planning schedule in October 2004, which includes the detailed requirements, ICDs and preliminary design and then enters Phase C/D. As part of the detailed system design and in preparation for the critical design review, this project will determine the details of how to best support the Kepler DMC within our existing data management systems to maximize the synergy between multiple missions while continuing to meet each mission’s requirements. ', '', '', 6, 'CMO/Kepler/Dave Taylor; OT/Edwin Huizinga', 'HSTMO/Rodger Doxsey', 1, 1, 5, 5, 8, '2004-08-27', '2005-05-12', 1, '2005-05-12 19:13:22', 'SINGER'),
(142, 'Not a real project', '', '', '', '', 1, 'CPT', '', 0, 0, 9, 12, 7, '2004-08-27', '2004-08-27', 3, '2004-08-27 17:00:18', 'HUIZINGA'),
(143, 'Zope Web Farm Dev/Test Environment Setup', 'Set up the hardware and software for the Zope Dev/Test system to emulate the production system, i.e. Squid frontend, ZEO Client(s), ZEO Server backend.', 'The Rationale are twofold:

    0. the discrepancy between the dev/test environments and the production environment could lead to unforseen and untestable bugs during development. The current dev/test setups are standalone Zope instances.

    0. the discrepancy can and has led to problems when updating/upgrading the Zope software itself, as was seen in the Zope 2.6.4 update project.

    It should be noted that the hardware has been ordered and 1 of 2 of the servers are in-house. Delivery for the rest of the system should be 9-7-04 to 9-28-04.', '', '', 1, 'Jim Grice, TSD', '', 0, 0, 0, 0, 0, '2004-09-01', '2004-09-01', 3, '2004-09-01 20:33:25', 'HUIZINGA'),
(144, 'Update Apache Servers to 2.x', 'Update all Apache (web) servers in-house to version 2.x.', 'Apache 2 has been out for some time and is stable. Even though version 1.3.x in Apache is still supported and patches provided, development has slowed and support from the Apache Software Foundation will eventually cease in lieu of version 2.x.

    Also, there are new features of Apache and better threading which we may be able to use/exploit on our systems.', '', '', 1, 'Jim Grice, TSD', '', 0, 0, 0, 0, 0, '2004-09-01', '2004-09-01', 3, '2004-09-01 20:33:06', 'HUIZINGA'),
(145, 'Upgrade Zope Software to v. 2.7.x', 'Upgrade all dev/test/production Zope instances to v 2.7.x (currently 2.7.2).', 'Now that we have a framework in place for updating/upgrading Zope instances, it would be conducive to keep our current version of Zope updated at all times. Zope is not an especially mature software, meaning that even minor revision changes have a slew of bug fixes, additional features, and performance enhancements associated with them.

    Additionally, as we have found historically and is common sense, keeping up with the updates makes for easier, smaller update steps instead of far-reaching, trying updates (such as our update from 2.3.0 to 2.6.0 in the original Zope Web Farm project).', '', '', 1, 'Jim Grice, TSD', '', 0, 0, 0, 0, 0, '2004-09-01', '2004-09-01', 3, '2004-09-01 20:32:45', 'HUIZINGA'),
(146, 'Automate Windows Maintenance Tasks', 'This project will implement standard, automated procedures for these
    Windows maintenance tasks: software updates, system configuration
    changes, proactive monitoring, and system audits.  It will also implement an
    automated system for security patching to supplement the PatchLink system.
    ', 'We are not maintaining Windows platforms in a systematic way.  We are not pushing application updates and configuration changes out to clients.  We are not auditing system configurations.  We are falling behind on system patches since PatchLink does not do everything, and there is no automated system for doing the rest.  We visit servers to install software on them instead of pushing updates out to them.  We do some things, but in a piecemeal way:  some maintenance is done on some machines, using some of the maintenance tools that are available.  A lack of maintenance results in slower systems and more downtime for users, more calls to the CPT Help Desk, and more security vulnerability.

    The current situation is worse than it used to be.  A maintenance solution built around a script run periodically on all Windows systems became unwieldy as more and more things were added over time.  In the past, we also used  "remote control" management tools (i.e., Microsoft SMS), but were
    not successful in establishing  this as an institute wide standard with end users.  Without standard solutions, admins are using different tools in different ways to accomplish similar tasks, without the benefit of automation.

    The way out of this situation is to look at the Windows maintenance tasks and evaluate the tools we have (or could get), decide on standard solutions, and automate them. This will result in improved security, efficiencies, and saving time. ', '', '', 1, 'CPT/Ron Russell', '', 0, 0, 0, 7, 4, '2004-09-02', NULL, 0, '2005-10-17 16:09:56', 'SINGER');
INSERT INTO "description" ("projectID", "name", "description", "rationale", "businesscase", "dependencies", "maturityID", "proposer", "customer", "sponsorID", "fundingsourceID", "hostID", "technologyID", "typeID", "created", "ended", "finalID", "lastModified", "lastModifiedBy") VALUES
(147, 'New STScI Front Door', 'Implement a new top-level "front door" for www.stsci.edu. The page would
    be evolutionary and consistent with our present design vocabulary.
    It would sit above our main "portal" pages and is envisioned to contain
    4 key elements,

    <ol>
    <li> a compelling mission statement for STScI
    <li>an attractive and obvious way into OPO for pretty pictures
    <li>a news box for announcements.
    <li>and for the first time, links to our 7 major portals with clear succinct descriptions of what can be found there.
    </ol>', 'A few years ago, STScI rolled out a major new infrastructure (Zope) and associated templates and objects which integrated many graphical design considerations organically into the structure itself, resulting in standardization and reduction of effort put into decoration. This redesign featured the notion of 6 original main pages or "portals" (HST, JWST, The Institute, Partners, Data Archives, and Astronomy Resources), and a choice was made at that time to have www.stsci.edu resolve to one of these portals (Astronomy Resources). This choice remains in place today.

    The benefits of calling out 1 of 6 parallel portals as the front door to represent the whole of STScI to the world has been under questioning that has persisted since its introduction. We have a wealth of feedback from HST users and the public, who are confused when they follow www.stsci.edu and land on a page that doesn''t obviously address the HST mission, or even the JWST mission. Information about the Institute itself isn''t readily presented on this page either. The reason being that this is just one of a few other equivalent portals, all of which together comprise the STScI, but none of which alone represent STScI. In fact it seems impossible to identify today anyone who believes it is logical to represent STScI to the global community as "Astronomy Resources". Most importantly, visitor traffic analysis shows that our visitors also appear confused by the information presented to them at our internet''s front door.', 'Projecting a strong and clear presence and understandable mission to the astronomical community and the public-at-large is very important to the well-being of STScI. This proposed front door will more directly promote what we do and what we are about, leaving both new arrivals and return visitors less uncertain about us, less likely to give-up and leave the site, more likely to explore the main portals.

    This translates to:
    <ol>
    <li> Potential customers more readily considering us for new business.
    <li> Public-at-large more clearly understanding our importance and function as a source of inspiration and as trustees of important endeavors.
    <li> Astronomical community''s perception of us as a cohesive institution that is multimissioned while operating under clearly communicated over-arching principles.

    </ol>

    And that translates to:
    <ol>
    <li>Expansion of customer base, more business, more money.
    <li> Further solidified and broadened public support and dedication.
    <li> More effective use of the site by the astronomical community, leading to greater perceived value of us.
    </ol>

    Additionally, as with periodic minor stylistic updates ("facelifts") to popular motor vehicles, a change to the front door of an already well-known website sends a positive message of vitality and activity, and has the effect of rekindling interest and interaction.', '', 5, 'CPT/Matt Lallo', 'Lisa Wolff', 0, 0, 3, 10, 10, '2004-09-22', '2009-07-11', 0, '2009-07-11 04:59:24', 'payne'),
(148, 'JWST PRD Central Facility - Hardware', 'This project will deploy the development, test and operational systems to
    host the JWST Project Reference Database Subsystem (PRDS) by the end of
    July 2005.
    In collaboration with the JWST PRD engineering team in ESS (Andy Groebner, PM) we will finalize the detailed systems requirements, design, and procurement of any required hardware and software items, including service agreements and maintenance contracts. Based on the preliminary architecture, the project will install, configure and integrate a combined development/test and
    equivalent operational system, consisting of the following major components: database server (Sybase); web application and CVS
    server (Tomcat) and possibly a web server (Apache) and associated storage.
    Systems, processes and procedures will ensure data access security (ITAR) and critical data protection (backups). ', 'The JWST Project Reference Database is a contract deliverable.
    In 2004, a COTS solution building on the JWST Document Management System using Agile was excluded, and it was decided to build the
    PRD on the code base of the ESS/HST OPR system.

    The PRD is an early deliverable since it has to be used during Instrument
    development and testing by the various Instrument teams, and has
    to be delivered in September 2005. The development environment has to be
    available by the end of May, and the operational environment for
    readiness and acceptance testing by the end of July. ', 'The JWST Project Reference Database is a funded contract deliverable.', '', 6, 'ESS/Andy Groebner; CPT/Edwin Huizinga', 'JWST/Pete Stockman', 2, 2, 4, 5, 4, '2004-10-26', '2006-02-14', 1, '2006-02-14 11:47:47', 'HUIZINGA'),
(149, 'Jukebox Decoupling', 'This is a software engineering project to remove access to the magneto-optical disc jukeboxes from the sequence of processing steps required to signal ingest completion and to distribute data from the HST Archive.', 'The MO jukeboxes are central to the DADS system in that they both serve as the primary source for data retrievals and as the long-term archival medium. A direct consequence of this usage is that the jukebox systems are exercised to such an extent that the mean time between failures is much less than the one year informally quoted by the vendor. Hardware failures often result in the need for a complete inventory of the 500 platters in each jukebox, which can  take more than 24 hours to finish. During this time, archive operations are not possible. As a mitigating approach to this problem, a cache of often-accessed data are kept on spinning disk, which both reduces wear and tear on the jukeboxes and permits distribution to continue during an inventory. The data cache does not contain all of the archive contents nor does it permit ingest to continue during an inventory, however. By taking the next step of removing the jukeboxes from the synchronous processing of ingest and distribution requests, access to the archive can continue unabated even when no jukebox systems are present. Such an architecture also will facilitate changes to the type of permanent archive media employed-- a need that is anticipated in the near-term-- by decreasing the impact to archive operations during an upgrade of this portion of the DADS system.', '', '', 6, 'ESS/Warren Miller', 'HST-MO/Rodger Doxsey', 1, 1, 10, 5, 7, '2004-10-28', '2005-10-10', 1, '2005-10-10 15:07:23', 'WMILLER'),
(150, 'DMS Build Cycle Reengineering', 'This is a process improvement project to reduce the life cycle time and increase content agility for DMS subsystem builds.', 'The time it takes to conceive, develop, test, and deliver a nominal DADS and/or OPUS build has become a concern for the HST Mission Office. There is a strong desire to reduce the total build life cycle time and increase the flexibility of the process to accommodate rapid deployment of key Mission enhancements to the DMS. Efficiency also is of importance to the Mission, particularly in regards to not duplicating quality control efforts when no accompanying reduction of operations risk ensues. The build release schedule for the DMS has been dominated by major system enhancements (e.g., Distribution and Ingest redesign) of late, yet it is unclear that the underlying process employed by DMS engineering is optimized to meet the needs expressed by the HST MO. This project shall encompass the analysis, planning, implementation, and verification of engineering process improvements over the build life cycle of DMS subsystems that better meet the frequency and agility expectations of the HST MO.', '', '', 6, 'ESS/Warren Miller', 'HST-MO/Rodger Doxsey', 1, 1, 10, 5, 1, '2004-10-29', '2005-10-10', 1, '2005-10-10 15:06:19', 'WMILLER'),
(151, 'JWST I&T FITSWriter Tool', 'The purpose of this project is to define, develop, test and deploy a Flexible Image Transport System (FITS) Writer tool to depacketize and format JWST encoded data output according to instrument, instrument mode, detectors used and other parameters that describe the nature of the data being presented to the tool.  As output, the FITS Writer tool will produce a standardized FITS file, in the appropriate format and with the appropriate header information, as defined for the source instrument, mode, and other characteristics of the device under test.', 'The FITSWriter tool will be a component of the JWST IGSS (Integrated Ground System Simulator) for the explicit purpose of assisting the Science Instrument (SI) development teams to receive their instrument test data in the standard FITS format. Representing the test science telemetry in FITS format will be of great utility to the SI teams given the familiarity and abundance of tools on hand to work with FITS data relative to packetized telemetry. STScI involvement in developing this tool emphasizes our expertise in defining and working with FITS files and it also affords us the opportunity to jump start discussions with the SI teams on how best to organize science data once JWST is in science operations.', 'Contractual deliverable.', '', 6, 'NASA-GSFC/Alan Johns', 'JWST-MO/David Hunter', 2, 2, 10, 5, 4, '2004-10-29', NULL, 0, '2005-05-06 21:50:42', 'WOLFFL'),
(152, 'EMC Switch', 'This project will plan, schedule and implement the installation of a second switch in our storage area network. The installation will be performed by EMC personnel, under supervision of CPT. Downtime and reboots will be coordinated with the SAN users. ', 'One of the recommendations from EMC after evaluating our storage area network was to improve redundancy and performance by installing a second fiber channel switch in the EMC Connectrix. This would also allow us to grow our SAN by adding additional storage devices as proposed for e.g. the HST Legacy and Kepler projects.

    The switch was purchased with end of year funds in FY04. ', '', '', 6, 'CPT/Vera Gibbs', 'Lisa Wolff, Rodger Doxsey, Vera Gibbs', 1, 254, 2, 5, 7, '2004-11-18', '2005-05-09', 1, '2005-05-09 15:32:03', 'SINGER'),
(153, 'SOGS UPS Replacement', 'This project covers the replacement of the SOGS UPS, which covers computer rooms 128, 330, and the addition of rooms N301A and N301B.  The SOGS UPS is a 300  kva unit that is over 12 years old.  The project will need to consider current and projected power needs in the computer rooms in order to properly size the replacement UPS.  The project covers the worked involved in de-installation of the old UPS and battery system, design, and installation of the new system.', 'The SOGS UPS is obsolete and becoming more difficult to maintain.  The original manufacturer no longer provides maintenance. Replacement parts are becoming more difficult to obtain because of the age of the UPS.  For security reasons, it is imperative that we continue to cover all computing rooms by UPS.

    ', 'An uninterruptible power supply (UPS) is required for mission critical systems.  The SOGS UPS fulfills this requirement.   As stated in the rationale, it is becoming increasingly difficult to maintain this system.  We are currently at risk of being able to replace a part, should a failure occur.  Due to the age of the unit, the chances of equipment failing is greater.  The existing unit has been in service for 12 years and many of its critical components are obsolete and technical support limited.  If we do have a failure of a component that cannot be replaced, we would be without an UPS for the SOGS systems until a new unit is procured.  ', '', 6, 'CPT/Doris McClure', 'Doris McClure', 1, 1, 4, 5, 7, '2004-11-18', '2006-01-12', 1, '2015-02-13 20:52:55', 'HUIZINGA'),
(154, 'Kepler Initial Storage', 'The project will finalize the detailed storage requirements, design, product selection and procurement, including service agreements and maintenance contracts. Prepare the environment (power, floor space, cooling), install and configure the hardware, and integrate the storage in to our SAN management and backup systems. Support procedures, security plans, architecture updates and all other deliverables required for operational mission systems will be developed. At the end of this project, the SAN will be ready to be used by the Kepler development and I&T environments.', 'This is the first of 7 projects in the Implementation Plan to build the Development, Integration and Test and Operational Kepler DMS over
    the next 3 years.

    This project will expand our existing storage area network (SAN) infrastructure with a storage solution that can support the Kepler mission''s data requirements through the end of mission. The initial deployment will provide 4TB of usable storage, and the solution has to be scalable to provide 13TB by the end of mission. There is a possibility that the mission will be extended by up to two years, and require a total of 19TB usable storage. This option is not included in this proposal.

    Dependencies:

     This project is a prerequisite for the Kepler Integration and Test Domain project, which has a hard deadline of May 12, 2006

     There may be SAN projects driven by HST needs during the same time period. If so, these projects need to be coordinated and there may be
    synergies identified to realize cost savings accross both missions.', 'The Kepler Data Management System is a contract requirement. Funding is
    expected to be available for the estimated
    labor and non-labor costs to implement this project at
    0.28FTEs and $205k respectively.  Further information is available in the <a href="http://www.stsci.edu/institute/org/ot/Strategy/ImplementationPlans/Kepler/">Kepler implementation plan.</a>
    ', 'This project has a hard deadline of May 12, 2006, and needs to be coordinated with projects <a href="/institute/org/ot/Governance/ppt/projectByID?projectID=155">#155</a> and
     <a href="/institute/org/ot/Governance/ppt/projectByID?projectID=156">#156</a>.

    Kepler storage requirements are also considered in the
    <a href="/institute/org/ot/Governance/ppt/projectByID?projectID=133">Mission Storage Planning project (#133)</a>.', 6, 'Kepler/Dave Taylor; CPT/Edwin Huizinga', 'Dave Taylor, Lisa Wolff', 3, 6, 4, 5, 4, '2005-01-18', NULL, 0, '2015-02-13 23:03:04', 'HUIZINGA'),
(155, 'Kepler Integration and Test Domain', 'The project will finalize the detailed systems requirements, design, and procurement of any required hardware and software items, including service agreements and maintenance contracts. The project will reallocate an existing UNIboard from the HST I&T domain (smalls), install all other required hardware (IOBoard, HBAs, SCSI/Ethernet interfaces, Storage array, etc.) required to instantiate a new domain, integrate it with the existing network and attach it to a 2TB volume on the Kepler SAN using redundant HBAs and switches. The new domain will be configured (OS, software) and institutionalized. Final configuration will be tested and verified. Support procedures, security plans, architecture updates and all other deliverables required for operational mission systems will be developed. At the end of this project, there will be a functional I&T domain to receive the first K1 build from the Kepler development environment. ', 'This is the second of 7 projects in the Implementation Plan to build the Development, Integration and Test and Operational Kepler DMS over
    the next 3 years.

    This project will provide an Integration and Test domain for Kepler pipeline processing to support the functional end-to-end testing of the Kepler ground systems K1 build by May 12, 2006.
    ', 'The business case is a core component of the technical implementation plans.  The business case, and design trades made, are available in the <a href="http://www.stsci.edu/institute/org/ot/Strategy/ImplementationPlans/Kepler/">Kepler implementation plan.</a>', 'This project has a hard deadline of May 12, 2006, and needs to be coordinated with projects
    <a href="/institute/org/ot/Governance/ppt/projectByID?projectID=154">#154</a> and
    <a href="/institute/org/ot/Governance/ppt/projectByID?projectID=155">#156</a>.', 6, 'Kepler/Dave Taylor; CPT/Edwin Huizinga', 'Dave Taylor, Lisa Wolff', 3, 6, 4, 5, 4, '2005-01-18', NULL, 0, '2005-11-28 14:48:48', 'HUIZINGA'),
(156, 'Kepler Development and I&T Archive Server', 'The project will finalize the detailed systems requirements, design, and procurement of any required hardware and software items, including service agreements and maintenance contracts. Since the I&T environment has to be similar to the final operational system, the project will explicitly consider the requirements for the final operational system in designing the development and I&T solution. The project will install, configure and integrate a stand-alone Solaris server with a UDO drive, and integrate it with Kepler SAN storage, network and backup services. The system will be configured (OS, PowerPath, 3rd party software) and institutionalized. Final configuration will be tested and verified. Support procedures, security plans, architecture updates and all other deliverables required for operational mission systems will be developed. At the end of this project, there will be a functional development and I&T environment to support the Kepler Archive development and testing activities.', 'This is the third of 7 projects in the Implementation Plan to build the Development, Integration and Test and Operational Kepler DMS over
    the next 3 years.

    This project will provide a development environment for the Kepler Archive system, including the NSA server, Data Depot and the permanent offline archive by May 12, 2006. This infrastructure will also be used as the Integration and Test environment for this system. In addition, this project will integrate the Archive Distribution development systems (archdev, tygra) in to the Kepler DMS to support Kepler Distribution development.

    - The HST project to decouple the MO jukeboxes from the real-time ingest and distribution process may allow a redistribution of the NSA services from the dedicated NSA server to the operational domain on the Sunfire. Since Kepler is expected to mirror HST, this is expected to influence the final Kepler implementation. The decoupling project may also decrease the risks of sharing the NSA server across missions. In either scenario, total project costs for Kepler are expected to decrease.', 'This work is a deliverable for and funded by the Kepler mission.
    Details can be found in the <a href="http://www.stsci.edu/institute/org/ot/Strategy/ImplementationPlans/Kepler/">Kepler implementation plan</a>
    ', 'This project has a hard deadline of May 16, 2006
    ', 5, 'Kepler/Dave Taylor; CPT/Edwin Huizinga', 'Dave Taylor, Lisa Wolff', 3, 6, 4, 5, 4, '2005-01-18', NULL, 0, '2005-11-28 14:49:08', 'HUIZINGA'),
(157, 'Kepler Operational Storage', 'The project will finalize the detailed storage requirements and handle procurement of any required hardware and software items, including service agreements and maintenance contracts. The storage array will be expanded to support the installation of the additional drives and disk space will be configured as necessary. The Data Depot and workspace storage will not be backed up, but software areas will be. Support procedures, security plans, architecture updates and all other deliverables required for operational mission systems will be developed. At the end of this project, the new storage will be ready to be mounted by the Kepler operations environment. ', 'This is the fourth of 7 projects in the Implementation Plan to build the Development, Integration and Test and Operational Kepler DMS over
    the next 3 years.

    This project will augment the available storage in the Kepler SAN by 8TB to support the Data Depot through first year of mission operations, and provide additional software and workspace storage for the operational systems.
    ', 'This project is a requirement for, and funded by the Kepler mission.
    See the <a href="http://www.stsci.edu/institute/org/ot/Strategy/ImplementationPlans/Kepler/">Kepler implementation plan</a> for details.', '', 5, 'Kepler/Dave Taylor; CPT/Edwin Huizinga', 'Dave Taylor, Lisa Wolff', 0, 6, 0, 5, 0, '2005-01-18', NULL, 0, '2005-11-18 14:43:17', 'HUIZINGA'),
(158, 'Kepler Operational Domain', 'The project will finalize the detailed systems requirements, design, and procurement of any required hardware and software items, including service agreements and maintenance contracts. The project will install all required hardware (UNIBoard, IOBoard, HBAs, SCSI/Ethernet interfaces, Storage array, etc.) required to instantiate a new domain, integrate it with the existing network and backup services, and attach it to a 2TB partition on the Kepler SAN using redundant HBAs and switches. The new domain will be configured (OS, PowerPath, 3rd party software) and institutionalized. Final configuration will be tested and verified. Support procedures, security plans, architecture updates and all other deliverables required for operational mission systems will be developed. At the end of this project, there will be a functional operations domain ready to receive the system deployment from I&T.', 'This is the fifth of 7 projects in the Implementation Plan to build the Development, Integration and Test and Operational Kepler DMS over
    the next 3 years.

    This project will provide the Operations domain for Kepler pipeline ingest and distribution processing to support the start of operational readiness testing by May 7, 2007. ', 'This project is a requirement for, and funded by the Kepler mission.
    See the <a href="http://www.stsci.edu/institute/org/ot/Strategy/ImplementationPlans/Kepler/">Kepler implementation plan</a> for details.', '', 5, 'Kepler/Dave Taylor; CPT/Edwin Huizinga', 'Dave Taylor, Lisa Wolff', 3, 6, 4, 5, 4, '2005-01-18', NULL, 0, '2005-10-17 17:36:16', 'SINGER'),
(159, 'Kepler Operations Archive Server', 'Building on the I&T NSA environment, the project will finalize the detailed systems requirements, design, and procurement of any required hardware and software items, including service agreements and maintenance contracts. The project will install, configure and integrate a stand-alone Solaris server with 3 UDO drives, and integrate it with Kepler SAN storage, network and backup services. The system will be configured (OS, PowerPath, QFS, 3rd party software) and institutionalized. Final configuration will be tested and verified. Support procedures, security plans, architecture updates and all other deliverables required for operational mission systems will be developed. At the end of this project, there will be a functional operations environment ready to receive the system deployment from the I&T environment.', 'This is the sixth of 7 projects in the Implementation Plan to build the Development, Integration and Test and Operational Kepler DMS over
    the period of May 2005 through October 2007.

    This project will provide the operations environment for the Kepler Archive system, including the NSA server, Data Depot and the permanent offline archive by May 7, 2007. ', 'This project is a requirement for, and funded by the Kepler mission.
    See the <a href="http://www.stsci.edu/institute/org/ot/Strategy/ImplementationPlans/Kepler/">Kepler implementation plan</a> for details.', '', 5, 'Kepler/Dave Taylor; CPT/Edwin Huizinga', 'Dave Taylor, Lisa Wolff', 3, 6, 4, 5, 4, '2005-01-18', NULL, 0, '2005-10-17 17:48:43', 'SINGER'),
(160, 'Kepler Network', 'This project will provide the guaranteed bandwidth between STScI and the Kepler Mission and Science Operation Centers by June 27, 2006.
    Work for this project is already underway in ongoing discussions with the MOC, SOC and Kepler-MO to develop a common strategy. Providing the guaranteed bandwidth between geographically remote sites can currently only be provided by leasing dedicated lines such as a T3, this is different from our current "direct" connection to GSFC for HST. In this case the ISP will have to bring a new cable in to the building and depending on the protocol some additional hardware may be required to tie it in to the STScI backbone. The work involved in configuring our routers and switches is largely independent of the final solution. The time estimate for this project is dominated by the upfront planning and negotiations within the Kepler Project.', 'This project is part of the Implementation Plan for the Development, I&T and Operational Kepler DMS.

    This project will provide the network connections and bandwidth between STScI and the Mission Operations Center, MOC and Science Operations Center, SOC, in time for the 3rd ground systems integration test.

    Dependencies:

    - ISP Strategy and Integration Projects.
    ', 'Providing a dedicated network for the datalink is a contractual requirement.', '', 6, 'Kepler/Dave Taylor; CPT/Edwin Huizinga', 'Dave Taylor, Doris McClure', 3, 6, 4, 5, 4, '2005-01-18', NULL, 0, '2015-02-13 23:05:14', 'HUIZINGA'),
(161, 'Streaming Video Infrastructure Upgrade', 'This project will improve the reliability, performance, functionality and
    availability of the STScI Video Streaming service.
    The project will finalize the software, hardware and streaming services requirements, design the overall system, evaluate vendor products if applicable and procure and deploy the final solution, including
    any relevant documentation and procedures. ', 'Video Streaming or Webcasting is carried out by two computers: Real Producer(encoder) runs on a PC equipped with a video capture card which creates the video stream. This machine has a special connection from the auditorium to tap into the A/V infrastructure that is located in OPO. Real Server(streaming) runs on a second PC and supports the 100 concurrent streams that we are licensed to distribute.

    This hardware has become unreliable, and has exceeded its expected lifetime. Failures result in lost and unrecoverable data. This project will
    replace the existing hardware and provide an automatic failover capability.
    In addition, we want to make use of this opportunity to consider extending the streaming formats from only RealMedia to e.g. Quicktime and/or Windows Media to serve a wider audience, and to provide a separate
    development/test environment. ', 'Capital investments for this project were budgetted as part of the
    project to <a href="projectByID?projectID=120">Rationalize and augment Audio/Visual Capabilities</a>, which was approved for FY05.', '', 6, 'CPT/Steve Dignan', 'Doris McClure', 6, 254, 4, 13, 7, '2005-01-21', '2006-02-14', 1, '2006-02-14 11:40:25', 'HUIZINGA'),
(162, 'PeopleSoft Patching and Upgrade to v?.?', 'This project will upgrade the HR PeopleSoft system to its latest release to
    provide addtional functionality. 2/15/05: this proposal was merged with project proposal #87, which is to create or document a development/test environment for PeopleSoft.', 'We are lacking functionality that we need.

    The availability of a development/test environment for our PeopleSoft installation is a requirement for this project. The creation of such an environment was proposed in project #87:
    <a href="projectByID?projectID=87">PeopleSoft Development and Test environment</a>. Additional information is needed to decide whether
    these projects have to run sequentially, or can be merged in to one.', '', '', 1, 'BRC/Ray Beaser', 'BRC/HR: Sheryl Bruff', 0, 0, 9, 4, 0, '2005-01-25', '2005-02-15', 4, '2005-02-15 14:19:33', 'HUIZINGA'),
(163, 'Sybase Replication Server Systems Upgrade', 'This project will upgrade the two Sybase replication servers, LAL and TYRELL to SunFire V240 systems. This includes installing, configuring and integrating the systems in to the Solaris networks inside and outside the SOGS firewall, installing the Sybase replication software; testing and deploying the servers in to the operational Database environment; updating procedures and documentation; etc.

    This project may be coordinated with the planned software upgrade of the
    Sybase replication servers themselves to v12.6?', 'Our Sybase replication servers are a critical component in the planning and scheduling for HST and data archiving and distribution for HST and FUSE, and for replicating data to our partners&#039; mirror sites at ST-ECF, CADC and NOAJ. The Kepler DMS is also expected to share the HST database infrastructure, including the replication servers.

    The Sybase replications servers are used to synchronize data between database servers. LAL is an old Ultra 10 system located inside the SOGS firewall, and is used to replicate data from the Planning and Scheduling database server, HAL9000, to databases outside the SOGS firewall (CATLOG, ZEPPO), and to remote mirror sites. TYRELL was upgraded some time ago using a trickle down SunBlade 1000. It is used to replicate data from the operational DMS database server, CATLOG, to remote mirror sites and to the read-only database server, ZEPPO, which is used to support external searches on our archive through Starview and the MAST webinterfaces.

    Consult the "DMS - Operations":http://www.stsci.edu/institute/org/ot/Strategy/Architectures/hst/dms and "Database - Operations":http://www.stsci.edu/institute/org/ot/Strategy/Architectures/it/db architecture diagrams for details.

    Both replication servers are bottlenecks in keeping data current. This problem was identified in early 2004, and replacement systems were ordered and received last summer. ', '', '', 6, 'CPT/Vera Gibbs', 'Lisa Wolff, Rodger Doxsey, Vera Gibbs', 6, 1, 4, 15, 7, '2005-02-01', '2006-01-27', 1, '2006-01-27 17:16:17', 'HUIZINGA'),
(164, 'STScI Information Management/Agile Study', 'This project has a twofold purpose: 1) To conduct a high-level assessment of major institute information repositories to determine whether the information they contain are candidates for being managed using Agile, and 2) To conduct proof-of-concept implementations of representative use cases in Agile to assess the value and feasibility using Agile to address the Institute’s information management issues.

    There are a number of methods for managing information repositories at STScI, including custom database implementations, websites created and managed with Zope, and "websites" managed through the STScI WikiWeb.  Agile has recently been implemented at STScI as the technology platform to address JWST document management needs.  An obvious question then follows; "What existing repositories of STScI information might be better managed with Agile?"

    To answer that question, this project will examine existing STScI information repositories.  Consideration will be given to the types of information being stored, how and by whom it is used, and what STScI processes make use of the information.

    A second purpose of this project is to study how the use of Agile might be expanded to address other information management needs in the Institute. Based on the results of the assessment of existing information repositories, the project develop a manageable list of use cases that are considered to collectively represent the majority of the Institute''s needs in this area.  The project would then develop a preliminary data model for each use case.  Finally, the data model for each use case would be implemented in a development Agile environment (It is a fundamental requirement of the project that this Agile work will be physically isolated from the JWST SOCCER implementation of Agile).  Such implementations would be limited, but would contain sufficient fidelity to demonstrate the utility of Agile to address the needs represented by that use case.

    Metrics used to compare and evaluate results of the test cases will include full cost assessment, and will take into account whether or not a given functionality is available (or could be created and maintained cost effectively) in the current system(s).

    Goals of the project include:

    -  Assess current information repositories

    -  Educate stakeholders about Agile

       -  Demonstration of JWST SOCCER

       -  Demonstration of all relevant Agile products

    -  Define and implement use cases in Agile

    -  Identify the number of licenses (modules, user licenses) needed for proposed uses of Agile

    -  Identify costs and risks/mitigations to migrate information repositories to Agile


    Results of the project are expected to include:

    -  High-level roadmap (3 yr horizon; implementation proposal and hardware/software costs) of migrating information repositories to Agile

    -  Recommended FY05 purchases (hardware and software)

    -  Recommended FY06 budgeting (labor, hardware and software)

    -  Proposal for sharing costs among organizations.', 'Until recently, a primary platform for managing STScI information repositories has been websites that are created and maintained with Zope.  This includes the STScI WikiWeb.  Another platform for managing STScI information repositories has been software applications connected to database implementations that were/are designed and maintained by STScI staff.

    STScI requires information management functions that are not provided by (what are examples?) by these platforms.  These unmet functions are of particular concern considering the impending need to extend information management functions to a multi-mission environment.  To accommodate this, functionality will have to be extended or created.  Recent attempts to provide needed functionality with Zope has proven to be costly.  Customizations of Zope are resulting in systems that are increasingly fragile; that is, they are difficult to modify without breaking, and the resulting system(s) are unreliable.  Based on this, it is expected that future attempts to provide these functions using the existing STScI platforms will result in systems that are costly to create and maintain.  Furthermore, in some cases it is not practical and/or possible to provide need functionality in a Zope implementation.  Even in cases where we successfully provide the required functions in Zope or by developing custom applications in-house, the full cost of the labor to develop and maintain these systems would fall on STScI.

    STScI has selected a COTS PLM platform (Agile), and implemented it for JWST document management.  In many cases, the information management functions we are attempting to acquire through Zope customization or in-house application development are provided by Agile.   Therefore, acquiring missing information management functions via Agile allows STScI to trade license costs for labor and non-labor costs of employees (developers) to create the required functions.   Furthermore, the maintenance costs of the Agile systems over time are both quantified (via a support contract) and certainly lower than the cost of employees over the same period of time.

    Agile is not considered a replacement for Zope.  It is a fine platform for content management, and we will continue to use it for those functions to which it is both well suited and cost-effective.  It is clear that Zope is well suited to managing information that does not have a lifecycle (e.g. static information such as a list of names of people in a department).  However, Zope is not well suited to managing information that does have a life cycle (e.g. documents under CM, documents that require some level of approval, etc).  Given the recently adopted strategy of becoming cost competitive (see STScI Strategic Plan), STScI must rely on technology that will increase efficiency, reduce redundancy of data stores, and be capable of handling the increased complexity of managing information and processes within the context of multiple missions.', '', '', 6, 'OT/Rick Singer', 'Lisa Wolff', 5, 0, 8, 14, 6, '2005-02-17', '2005-09-22', 3, '2005-09-22 21:05:55', 'SINGER'),
(165, 'Telemate project', 'The upgrade to the Telemate software which BRC purchased some time ago needs to be installed on a PC running Windows XP and connected to our phone system to monitor personal long distance telephone calls. CPT informed BRC that a consultant will be needed to help with the installation.  BRC feels that this is a priority project and requests that it be completed as soon as possible.', 'All costs incurred for the HST & JWST contracts and the other grants and contracts awarded to ST ScI must be directly related to the SOWs for each activity.  Personal long distance telephone calls are unallowable costs.  KPMG, our internal audit firm, performs an annual A-133 compliance audit.  Once aspect of the audit is to look for internal controls.  They are certain to look at our telephone bills and will expect the Institute to have controls in place to prevent personal long distance calls or to obtain reimbursement for such calls.  In performing the audit, they will sample the long distance bills and audit them for allowability.  If we do not have controls in place, the A-133 audit report for ST ScI will will have a finding.  This report is provided to NASA and must be provided to any institution that requests it for monitoring their sub-recipients.  An A-133 audit finding will jeopardize future awards to ST ScI.

    Facilities was monitoring telephone calls but has been unable to do so for the past few years.  An upgrade to the telemate software was purchased but has not been installed on a Facilities PC.  BRC submitted a request to CPT to help with the installation.  CPT indicated that a consultant would be needed to help with the installation of the software.

    We obtain our long distance telephone service via the the Federal Telecommunications System (FTS).  Greg Pabst confirmed with GSFC that ST ScI does pay for each long distance call made at the rate of $ .04 minute.  The individual at Goddard indicated to Greg that the Institute
    should be checking to insure that all personal long distance calls are reimbursed by the staff.  Therefore, BRC has determined that we must monitor long distance calls and we must have employees reimburse ST ScI for any personal long distance calls that they make.  This is not optional and we  request that we go forward with the project.', '', '', 2, 'BRC/Ray Beaser', '', 0, 0, 0, 0, 0, '2005-02-17', '2005-04-23', 1, '2005-04-28 13:17:56', 'HUIZINGA'),
(166, 'upgrade  to Office 2003', 'Upgrade all MS Windows users that access and use the reports generated by PM''s Budgets group to Office 2003.', 'Users should be using the latest version of the supported software.', 'The benefits for the users are:

    1.  Excel:  Greater pivot table functionality - more "row" fields can be
    pulled into the pivot table and the ability to filter the data in the fields
    is greatly enhanced.  This is a huge benefit to our group as we do a lot of
    analysis using pivot tables.  In addition, 4 of the 6 budget reports we post
    to the PM web page on a monthly basis are pivot tables and our users who
    know how to change the pivot table views will benefit from the upgrade.  We
    did do testing that shows that if we keep the pivot tables with the same
    organization we use now, users that do not have the upgrade will not be
    affected - they can still use the reports as they always have.

    2.  Access/Excel:  Ability to download larger chunks of data from Access
    into Excel.  This is a big benefit for our group.  Many of the Access tables
    and queries that we may want to analyze with Excel are too large to bring
    directly into Excel which hampers our analysis and accuracy checking
    capabilities.

    3. Enhanced security - Excel and Access. This will be of use when we make the enhancements to the budget tool.

    4. Backing Up database - Access - the new version of Access will allow us to
    backup a database with the touch of a button.

    5. New database engine - Access - the new version of Access allows the user
    to change the database engine which might be an issue down the road to help increase the speed of the database.

    6. Importing data - Excel - the new version of Excel will allow us to import
    data from more sources and types. Example ODBC connectivity (Costpoint
    tables) OLAP  data sources and the web.

    7. Formulas - Excel - Some small changes enhances formula debugger, expanded auto sum functionality. Nothing new but some enhancements that could help on a daily basis.

    8. Insert and Delete columns while filtering - Excel - A nice feature that
    can come in handy when analyzing data.

    9. Enhanced Pivot Table - Excel and Access - You mentioned the Excel pivot
    tables, but Access pivot tables may come in handy when we make enhancements
    to the budget tool.

    The package has been evaluated by PM''s budget group with the following comments:

    When a pivot table is saved in Excel 2003 we are able to open it in the
    current version of Excel. The problem is that if you save a pivot table in
    Excel 2003 that is more complex (more columns heading and row headings)than
    the current version of Excel can handle you get an error message when you
    try to slightly modify the pivot table. This error occurs until you get to a
    size that the current version can handle. So if you remove several column
    headings from the pivot table it works fine, you can not remove 1 column
    without getting the error message. I think we are able to upgrade our
    machines to Office 2003 at this time. We will not be able to enhance the
    pivot tables used in the web load. If we keep the pivot tables the same the
    upgrade should be seamless to the users of the web load files. Keep in mind
    when we upgrade and send files to users that are not on Office 2003 they
    could get the error message if a complex pivot table is used.
    ', '', 5, 'PM/Danny Golombek', '', 15, 255, 0, 4, 7, '2005-02-17', '2005-03-31', 3, '2005-03-31 16:38:00', 'SINGER'),
(167, 'HRIS Strategy', 'PeopleSoft, which is the HRIS of the BRC Human Resources Branch, either needs to be upgraded to the latest release or replaced.  This project will study the costs of upgrading Peoplesoft to the latest release, enabling new functionality, maintaining the system, and the costs of future upgrades of the software.  The project will also consider whether Peoplesoft should be replaced be by a different HRIS.', 'The Peoplesoft software needs to be upgraded since the version we are currently running will only be supported by the vendor through 11/2/05. The cost of upgrading the software to the current release will be significant as will future upgrades which need to be installed every 18 months.  Sheryl Bruff is interested in looking at other Human Resource information systems and considering whether the current system should be replaced.  Sheryl feels that the current system is built for a much larger organization and is difficult to use and maintain. She would like to compare the current system to other systems on the market.  She would also like to look at whether the HRIS could be linked to Costpoint to decrease the duplicate keying of information into the two systems.', 'Business Case for the Human Resources Information System (HRIS) strategy:
    <br><br>
    The currently used HRIS software (PeopleSoft) is urgently in need of replacement, due to support ending in early November 2005 and loss of functionality and productivity for the Human Resources Branch staff.  Functionality problems have already been experienced, due to technical difficulties in installing a new service pack.  A functioning system is required for maintaining the Institute''s services provided by the Human Resources Branch, including employee benefits, recruitment, and maintenance of employee data.  Postponing this project would result in a high risk to the Institute''s operation.
    <br><br>
    A Tiger Team, led by Marty Durkin, was formed in February of 2005 to investigate
    several known bugs with Peoplesoft.  The Tiger Team worked with a consultant that
    was hired to evaluate and resolve these problems.   The Team  also held several meetings to determine a course of action for the future..  Three options were identified for this project:
    <ul>
    <li>Upgrade the existing Peoplesoft product and continuing to host in-house.
    <li>Obtain offsite hosting services for the PeopleSoft system.
    <li>Migrating to a different human resources information system (HRIS) or human resources management system (HRMS) product.
    </ul>
    <br>
    The Tiger Team thinks that the first option (upgrading the existing product) would not be realistic, due to:  high costs, time constraints, a long project period as a result of the complexity of the upgrade, some risk of the PeopleSoft product eventually being discontinued by its new parent corporation (Oracle), anticipation of continual frequent upgrades/patches in the future, and the necessity to continually send in-house CPT and HR staff to several training courses in order to continue to provide support as well as to use the software.
    <br><br>
    Several concerns with Peoplesoft that do not make it a desireable HRIS include:
    <br><br>
    1) Upgrading is a significant cost/effort for which we do not currently have
    in-house resources.  A consultant could cost anywhere from $100-200K to
    implement the upgrade.  Our experience has shown that upgrades are required
    approximately every two to three years to remain on a supported version.  We
    currently have several bugs that are impacting HR''s ability to effectively
    do their job.  Fixing these bugs requires patching or upgrading, so freezing
    the system is not a viable option.<br>
    2) HR is unable to generate several of the required reports for the
    government due to the bugs mentioned above.<br>
    3) The future of Peoplesoft is uncertain (purchase by Oracle).<br>
    4) It is difficult to extract data from Peoplesoft due to the complicated
    report writer.<br>
    5) Lack of integration with Deltek''s project accounting/payroll software, which can result in inaccurate and inconsistent data.<br>
    6) Security issues exist with our current implementation of Peoplesoft because
    it is extremely difficult to change some of the key passwords.

    <br><br>
    Therefore, the project work should focus on evaluating various replacement products and researching the feasibility of offsite hosting of PeopleSoft.
    <br><br>
    In addition, we will keep abreast of developments in the AURA corporate initiative to examine business services across all centers.
    <br><br>
    It will be critical to begin this project within the next period, as loss of functionality continues to be a problem for the HR staff.  The risk of additional problems with functionality is anticipated to continue to increase until the project is completed.
    <br><br>
    Anticipated benefits from this project would include a cost savings, reduced technical support requirements, and additional functionality such as a web-enabled system, new functionality for recruitment and benefits, and an easier method of managing/processing employee compensation.
    <br><br>
    Additional desired benefits also include facilitating a potential future integration with the Accounting/Payroll system, obtaining a more user-friendly report writer interface for extracting data from the system, and using an automated process for yearly appraisals.  All of these additional benefits would help improve efficiency for the HR staff.


    ', 'This project has an external dependency on a possible AURA Corporate initiative to leverage and consolidate business services accross the AURA centers.', 2, 'BRC/Ray Beaser', 'Sheryl Bruff BRC HR Branch Chief', 4, 254, 5, 4, 5, '2005-03-01', NULL, 0, '2006-04-20 17:15:42', 'HUIZINGA');
INSERT INTO "description" ("projectID", "name", "description", "rationale", "businesscase", "dependencies", "maturityID", "proposer", "customer", "sponsorID", "fundingsourceID", "hostID", "technologyID", "typeID", "created", "ended", "finalID", "lastModified", "lastModifiedBy") VALUES
(168, 'Aperture software upgrade and installation on a shared drive', 'Facilities currently runs a software package called Aperture.  Facilities uses it to create floor plans and updates it with the location of all staff.  The software needs to be upgraded since it is no longer supported by the vendor.  When the upgrade is performed, BRC requests that the software be installed on our shared "H" drive.  Currently the software is installed only Greg Pabst''s computer.  BRC would like to have the software available so that administrative staff could help with entering changes when staff move to a different location. The software should require a zope login to access the software.', 'BRC needs to maintain floor plans and uses a software package called Aperture.  The software is no longer supported by the vendor and needs to be upgraded.  Installing the upgraded software on a shared drive will enable the software to be accessed by administrative staff who will help with updating the floor plans when individuals move.', '', '', 1, 'BRC/Ray Beaser', 'Greg Pabst', 6, 254, 4, 4, 4, '2005-03-01', '2005-10-04', 1, '2005-10-04 14:44:28', 'SINGER'),
(169, 'Linux Loaner Laptop', 'This project will convert a windows loaner laptop to linux. This may require setting up a "captive" account similar to the current public linux box in the library.', 'Users have requested Linux OS on the laptops loaned to staff and visitors. Providing such a service could contribute to the productivity of a staff member if a hardware problem is addressed by such a loan.', '', '#10 Staff Computing Project:  Fulfilling the request is complicated by security policy.   What the laptop loaner program provides will be considered within the effort to document an implementation plan for the end-to-end environment selected via the Staff Computing Project.', 3, 'SCW/Sarah Stevens-Rayburn', 'Lisa Wolff', 6, 254, 9, 6, 4, '2005-03-24', NULL, 0, '2005-05-06 20:39:31', 'WOLFFL'),
(170, 'GOODS Linux Cluster Expansion', 'This project will expand the GOODS Linux cluster with 6 new nodes.
    The project will install 6 new SunFire x86 servers (dual CPU),
    a 4.8TB (raw) 2Gbit Fiber Channel
    RAID system (Sun StoreEdge 3511; 12x400GB 7200RPM SATA) and any network or power equipment. This may involve
    rearranging existing hardware in the existing racks to optimize floorspace
    usage. Integration in the existing GOODS cluster involves installing
    RedHat, institutionalizing the systems, deploying 3rd party software and
    integration and testing by both IT staff and end-users.  The project
    also has to consider the if, when and how of upgrading the cluster to
    RHEL3.  ', 'Over the past year, Harry Ferguson has coordinated the planning effort
    to bundle funds from 3 grants and contracts in to an investment to
    expand the capacity of the GOODS cluster. After several years of
    experience with the existing hardware implementation, CPT
    had concerns about the reliability, maintenance and support costs,
    and proposed to switch to Sun hardware.

    Sun worked with us to configure a comparable SunFire V20 server
    connected to an identical storage solution in their iForce center in
    McLean, VA and Sun installed and ran the benchmark software system provided
    by Harry Ferguson. The results compared favorably to the
    baseline runs on our existing GOODS cluster.

    The hardware for this project has been ordered, and is expected to
    arrive by mid-May 2005.

    The installation and integration is now being driven by the following
    factors (May 2, 2005):

    the GOODs group is now spending a large fraction of its time
    moving data around because we do not have machines
    with a lot of clear disk space & because we have a NFS problem with our raid5&6 controller that is giving us 1 Mb/s throughput.

    This affects the day-to-day efficiency of six astronomers, four postdocs,
    four DA''s, two programmers, four grad students, and a research assistant,
    all of whom are using the GOODS cluster for much of their work.

    On top of that, there is more and more pressure to upgrade to
    RH enterprise, both on general principles and because some of
    the software people want to use is not compiling with our
    out-of-date libraries (e.g. pylab). The sensible path here is
    to get the new system installed and running, *then* upgrade
    the existing system. But if it''s going to be another month or two,
    it might make more sense to bite the bullet and do the RHE upgrade
    earlier.', '', '', 6, 'SD/Harry Ferguson', 'SD/Harry Ferguson', 14, 255, 4, 3, 7, '2005-04-01', '2005-12-07', 1, '2005-12-07 15:30:59', 'SINGER'),
(171, 'Network Switch Upgrade', 'This project will replace some or all of our old Catalyst 5500/5505
    network switches.
    This project would be contingent upon the availability of FY05 end of
    year funds.
    Given the amount of funding available, the project will determine which
    of the current 10 switches to replace, and with what to replace them with.
    This prioritization will be based on e.g. risks to the infrastructure and
    future needs for bandwidth growth.', 'Switches are the network equipment that provide connections between
    all staff systems, servers, printers, the internet, etc. Of the 20 switches
    in the main Institute network, 10 are of the older Catalyst 5500/5505 type.
    These include all 3 SOGS switches, 3 switches in the north, south and
    central Muller building, and 4 switches in the backbone.

    The 5500/5505 line has already reached end of life with the
    vendor.  This means that:

    - we can no longer purchase any new switch modules or any other type of
       components for this switch.  Cisco is still offering maintenance on this
       product line but will eventually drop the product line from maintenance.

    - We will not be able to load newer versions of the operating system or
       take advantage of new features.

    - the older switches can can only move data at a maximum rate
      of 3.2Gbps.  Newer switches can move data through the switch at
      speeds of 32Gbps to 256Gbps.  Upgrading our existing 5500 and 5505
      switches to newer switches we would mean we will be able to provide
      greater throughput through our network.

    - As these switches get older, the reliability of hardware is less and
      less and potentially could mean more unplanned outages as we
      experience a greater number of failures.

    New switches range in price from $50k to $100k a piece depending
    on the bandwidth and number of ports.

    In addition to the main Institute network switches, we also have
    5-10 workgroup level switches for e.g. the GOODS cluster;
    Guidestar systems and the Beowulf cluster. These are not affected.', '', '', 5, 'CPT/Gary Gladney', 'Doris McClure', 1, 254, 4, 2, 7, '2005-04-01', '2005-12-05', 4, '2005-12-05 20:03:56', 'HUIZINGA'),
(172, 'Core Router Upgrade', 'This project will replace one or both of our core routers. This project
    would be contingent upon FY05 end of year funds. ', 'The STScI core routers (Cisco 7507) direct data between all 130.167.* subnets, and sit logically between the internal 130.167.* network and the front door firewall.
    Additional filtering routers sit between the 130.167.* network and the
    SOGS nework, and between the frontdoor firewall and HST Net.


    The 7507 product line has reached end of life with Cisco.  This means that:

    - there are no hardware improvements and as the operating system
     changes, we may not be able to take advantage of the newer features.

    - We can only purchase refurbished or used hardware and it depends on
     the vendor if a warranty period is offered.  Also, Cisco will eventually
     stop support of all adapters and components for the 7500 class router.

    - Since Cisco is no longer manufacturing replacement parts for the 7500
      class routers, the parts that are on the used market will become scarcer,
      potentially driving up the cost to maintain this type of router.

    In addition:

    - Our current core routers typically run at 40 to 60 percent
      utilization.  This is a performance issue with these routers.  As we add
      more network services and require greater throughput through our internal
      network, this issue will become more acute.

    - The 7500 class routers will not fit into a network backbone
      architecture consisting of 10Gbps interconnections.', '', '', 6, 'CPT/Gary Gladney', 'Doris McClure', 1, 254, 4, 2, 7, '2005-04-01', '2005-10-11', 4, '2005-10-11 18:16:58', 'SINGER'),
(173, 'Expand the WebET to provide WBS percentages by employee', 'The idea is for an individual to be able to query WebET for the time
    ratios spent on their various WBSes. Perhaps on a weekly, bi-weekly,
    monthly, or quarterly basis. Note that the individual is not necessarily
    a manager.', 'Staff members are assigned to increasingly large numbers of WBSes and
    Missions, especially as HST ramps down and JWST and Kepler ramp up.
    They are required to split their time in a specific way on an average
    basis, e.g. weekly,monthly, quarterly. This would enable the staff to
    montior and help correct over-charging one WBS against another.
    ', '', '', 1, 'ESS/Lauretta Nagel', '', 4, 254, 0, 4, 4, '2005-04-01', '2005-05-06', 3, '2005-05-06 20:42:03', 'WOLFFL'),
(174, 'Upgrade Long Range Planning Server', 'This project will determine the system requirements for supporting the
    SPIKE LRP processing; design and spec a solution; procure, install and deploy
    the new system without impacting LRP processing.
    ', 'Under 2-gyro operations, Spike will take about 10 times longer (on the same
    hardware) to process an observing program.  In FY-05, we upgraded all of the
    desktop systems that run Spike to generate the input for the long range plan.
    To actually make the plan from the input, Spike is run on the LRP server machine  (ringworld.sogs.stsci.edu).

    (EH:) ringworld is already one of the newer Sun Blade 2000 servers, with
    dual 900MHZ CPU''s. It was installed exactly 2 years ago (May 2003).
    Even upgrading to the latest greatest 1.5GHz
    chips would only result in at most a 50% performance boost. It is not
    clear if it is worthwhile to make the capital (~$10k) and labor investments required
    to upgrade this server in FY06 without having insight in to how such
    a small performance increase would help the planning and scheduling
    staff. If we do not upgrade, will we need more staff? Will we create
    less efficient schedules? Will we run risk on HST? Or can we absorb
    this by tuning the LRP build process? Can we improve performance by
    adding memory to ringworld or another server?

    At the same time, the CE, Tony Krueger has proposed to improve SPIKE performance
    for building the LRP by a factor of 8. Even if this performance
    increase only realizes a 2-3 times improvement, this is several factors
    more than can be realized with a hardware upgrade. ', '', '', 4, 'ODM/A. Roman', 'ODM/Roman and Rodger Doxsey', 1, 1, 4, 5, 7, '2005-04-05', NULL, 0, '2005-10-17 17:50:27', 'SINGER'),
(175, 'Mac and LINUX VPN', 'This project will expand VPN functionality to Mac and LINUX systems. This project will consider alternatives to the Integrity Server software we currently use for Windows.', 'Remote access through VPN for Mac and LINUX users provides a secure method to access STScI internal network resources.
    ', '', '', 5, 'CPT/Doris McClure', 'Doris McClure', 1, 1, 4, 1, 4, '2005-04-07', '2006-04-20', 1, '2006-04-20 17:09:11', 'HUIZINGA'),
(176, 'Upgrade Oracle to version 9i', 'This project will upgrade our Oracle database servers from 8.* to a newer
    Oracle version.', 'Some of our Oracle servers are running version 8.*, and Oracle has notified STSCI that it is phasing out support for Version 8.1.7.x as follows:
    	Error Correction Support	December 31, 2004
    	Extended Maint. Support	        December 31, 2006
    	Extended Support		December 31, 2007

    This project will require an upgrade to our CostPoint financial system (Costpoint 4.0)
    because the current version is not certified under
    Oracle 8.*

    Oracle is also used by our PeopleSoft human resources software.

    Our Agile document management system (SOCCER) also uses Oracle,
    but that version is already at 9i.', '', 'This project can only happen after the <a href="/institute/org/ot/Governance/ppt/projectByID?projectID=177">Upgrade CostPoint project (#177)</a>. At least if we plan to also upgrade the Oracle
    instance used by CostPoint.
    ', 1, 'CPT/Sandy McCarthy', '', 0, 0, 0, 4, 0, '2005-04-07', NULL, 0, '2005-11-18 14:44:48', 'HUIZINGA'),
(177, 'Upgrade Costpoint', 'This project will upgrade Costpoint from version 4.0 to version 5.1.

    As part of the rationale, we have determined that upgrading to a new version of Costpoint
    will allow us to upgrade our Oracle database servers to 9i (the Oracle upgrade, required due to support ending for the current Oracle version, is covered in a separate project).
    Deltek has confirmed that their Costpoint 5.1 product is compatible with Oracle 9i.

    The Costpoint upgrade project will determine which functionality we need/like to make
    available in this new version of Costpoint, plan it, and implement it.
    ', 'The immediate driver for this project is that our current Costpoint installation only supports Oracle 8, and Oracle has announced that they will drop Oracle 8 support sometime in the next year.

    Costpoint support will be ending in December 2006; however, Deltek will still provide us with year-end updates.  BRC/Finance will consider starting an upgrade in approximately early Spring 2007.

    Costpoint has announced another new version (Costpoint Smart Business Applications) that is web-enabled, but it
    is not clear today whether we can/want to deploy that functionality.

    Moving from windows client software to a Web interface, as we did for PeopleSoft, also gives us more options in determining our optimal desktop environment.

    We plan to upgrade to Costpoint 5.1 and consider Costpoint Smart Business Applications (Costpoint Web) for a future upgrade.  The Costpoint Web version also requires v. 5.1, so upgrading to Costpoint 5.1 should be the next step whether or not we stay with the client-server system.  Upgrading from Costpoint 4.0 to Costpoint 5.1 will still allow us to consider the option of another upgrade to Costpoint Web, as the web version sits on top of version 5.1.
    ', 'Costpoint is a NASA-approved enterprise system that is used for the business processes in several business areas of the Institute, including Accounting, Contracts, Payroll, Procurement, and Program Management.

    The Costpoint upgrade would be required in order to facilitate an upgrade of the underlying Oracle 8 database (the Oracle upgrade to Oracle 9i is required due to a change in the supported database version).

    After December 2006, Deltek would require a Costpoint upgrade in order to continue receiving support.  The support end date for Costpoint 4.0 is December 31, 2006.

    Benefits of upgrading Costpoint include improved reporting capability and the potential for additional functionality.

    Risks of not doing the upgrade include inability to maintain the normal business operations of the Institute.

    ', 'Depends upon and must be coordinated with the
    <a href="/institute/org/ot/Governance/ppt/projectByID?projectID=176">Oracle 9i upgrade project (#176)</a>, as the Deltek Costpoint software runs on the Oracle database.  The current Costpoint 4.0 runs only on the current Oracle 8, and the upgraded version of Costpoint 5.1 will require Oracle 9i.
    ', 1, 'BRC/Cindy Pantalone', 'Lisa Klienwort', 0, 0, 0, 4, 7, '2005-04-07', NULL, 0, '2006-02-27 18:19:44', 'PANTALONE'),
(178, 'Mac OS X Upgrade to Tiger', 'This project will evaluate Mac OS X 10.4 and (assuming positive outcomes) plan the rollout of 10.4 to STScI Desktops.', '10.4 includes significant new features, including improved development tools, RSS and PDF integration with Safari, Open GL 1.5 compliance, and improved native support for XML parsers and editors.

    There are also a number of desktop  productivity improvements.

    <b>APT, GMS</b><br>
    Tony Krueger: Java 1.5 only runs on Tiger.  Currently GMS
    and APT run under Java 1.4 something.  This version
    of Java (1.4 something) runs under Tiger on the Mac,
    so we can support APT and GMS on Tiger.  Java 1.5
    was released in Sept 2004 (8 months ago).  At some point
    we will have to upgrade APT and GMS to run under Java
    1.5, because 1.4 will no longer be supported.   At that point all
    our external users and STScI users
    will have to be using Tiger on the Mac if they want to
    use APT and GMS, because 1.5 only runs under Tiger.

    The decision to go to Java 1.5 GMS and APT is not imminent
    but is something that should be talked about because it
    has community impacts since about 40% of our external community
    are using Macs.

    For the near term, we will be requesting a Tiger machine
    in our test center so that we can support our community.', '', 'Staff Computing Project', 3, 'ESS / Tom Comeau', 'Lisa Wolff, Doris McClure', 6, 0, 4, 7, 7, '2005-04-12', NULL, 0, '2006-01-27 17:09:19', 'HUIZINGA'),
(179, 'Upgrade Exposure Time Calculator servers', 'This project will design, spec, acquire and deploy upgrades or
    augmentations to the Dell/Linux based ETC cluster.  The project should include a review of the server options (Linux, Solaris and Mac OS X) to determine the best total cost/performance tradeoff.

    Any hardware funding should be secured in the relevant fiscal year''s ED05 budget.
    ', 'On a regular bases, we need to assess the loading and health of the
    systems supporting development, test and operations of the Exposure
    Time Calculators (ETCs), taking in to account any plans for the upcoming
    year to augment or add new ETCs. These ETC servers support ACS,
    NICMOS and STIS.
    WFPC2''s ETC is implemented through CGI scripts on Solaris.

    <b>May 2005:</b>
    The current ETC cluster consists of 4 rack mounted Dell systems
    located in N112A running RedHat linux. The ETCs are implemented as server-side java applications running on TomCat. Users can access these through APT or through the web (apache server = apt.stsci.edu = aten.stsci.edu = 130.167.101.17).
    These systems were originally installed as windows systems in May 2002,
    and later converted to Linux. The cluster consists of
    one development system (snarf); one test system (panthro)
    and two production systems (cheetara, liono).
    See: <a href="http://cheetara.stsci.edu:8080/aptServer/index.jsp">
    http://cheetara.stsci.edu:8080/aptServer/index.jsp</a>.

    The systems are monitored by BigBrother (<a href="http://bb.stsci.edu/tomcat/tomcat.html">http://bb.stsci.edu/tomcat/tomcat.html</a>).


    ', '', '', 4, 'ESS/Tony Krueger', 'Tony Krueger', 1, 1, 10, 5, 7, '2005-04-12', NULL, 0, '2005-10-17 17:52:16', 'SINGER'),
(180, 'Isolate the ESS Test Center in non-stsci.edu domain', 'Our desire is to treat the ESS Test Center as a separate environment, protecting the Institute networks as if Test Center systems were part of the Internet at large.

    The Test Center should be moved to a separate domain, with an IP space not in the 130.167.*.* block.

    Previous attempts to handle this as part of other projects have foundered on the shoals of too much work.', 'The ESS Test Center includes a number of systems that are older, unpatched, and not regularly attended to.  The Test Center is used for a number of experiments, and systems are occasionally configured in ways that leave them vulnerable to external attack.  Additionally, attacks from outside the Institute occur on a regular, almost daily basis.

    Because the Test Center is part of our internal, trusted network, it represents a potential major threat to network security.  Isolating it from the internal network would reduce the risk to overall security.

    It would also simplify administration, since a separate set of firewall rules would apply to the entire (stsci.org?) domain, rather than to an ever-changing list of stsci.edu systems.', '', '', 1, 'ESS/Tom Comeau', '', 0, 0, 0, 6, 0, '2005-06-03', NULL, 0, '2005-11-18 14:47:14', 'HUIZINGA'),
(181, 'UDF Compute Resource', 'Design and implement a multiple-CPU compute cluster, somewhat like the GOODS(3) cluster.

    This cluster will be used for a Cycle 14 project which observes some UDF fields in order to reach even deeper.  The data are primarily being taken in 2 epochs. The first starts 20 Sep 2005 and goes for about a month. The second epoch will occur in June or July 2006.

    The data has to be reprocessed multiple times and the team must also run a lot of simulations to go with the data analysis.


    The cluster must be up and functioning by early September (ideally, before the data come in), or late September
    (not ideal but acceptable, since the results depend on having almost all the data in hand).', 'This project provides the computing infrastructure for a Hubble grant and clearly helps progress the Institute''s strategic goal of optimizing the Hubble science by providing an infrastructure than enables the computer-based aspects of the research.', 'Not applicable since this is personal research.', 'This project requires many of the same staff involved with the GOODS cluster augmentation.', 6, 'Massimo Stiavelli', 'Massimi Stiavelli', 14, 255, 4, 3, 4, '2005-06-23', '2005-10-26', 1, '2005-10-26 14:52:52', 'SINGER'),
(182, 'Workgroup Storage for INS Installation and Integration', 'This project will install, configure and deploy a new Network
    Attached Storage (NAS) server for INS. The project will develop the basic
    information management plan to ensure the storage is used for appropriate
    data (at this time the array will not be backed up) and any support
    procedures and releted SLA''s.

    As this is also the first area where we are deploying a (limited)
    workgroup level shared storage solution, the project will also be a
    pilot feeding in to any decisions required for developing fully integrated
    workgroup storage and computing solutions in line with
    preliminary recommendations out of the
    Staff Computing Strategy (#10) and Mission Storage Planning (#133) projects.
    ', 'Today, a subset of shared data within INS is stored on 7 old
    NAS servers (200-400 GB Snap Servers). These systems are past
    their planned lifetime. The objective of this project is to expand and
    consolidate this storage on a scalable solution.

    At the same time, the Staff Computing Strategy project is developing the
    concept of workgroup storage to migrate data from the desktop to
    centralized, backed up NAS/SAN storage, and the Mission Storage Planning
    project is looking at our existing SAN environment. Unfortunately, it
    is too early to adopt specific implementation recommendations out of
    these projects, so the INS NAS solution is a compromise to provide
    as many TB/$ today, while keeping our future options open.
    The INLINE product selected could be integrated in a SAN solution,
    or expanded to a 44TB NAS. Alternatively, we can decide to rusty
    rail this particular NAS solution if the Institute decides to consolidate
    on another technology or vendor. Given the modest investment of
    $25k, this is an acceptable risk.

    This solution is not a workgroup solution in the SCS sense, in that
    today INS users are spread throughout Muller on several subnets,
    and the array is not collocated on a workgroup level switch.

    The storage solution was spec''ed in early July 2005, and will be ordered on remaining FY05 ED05 funds.
    The NAS (MorStor s30h from INLINE Corp) is expected to
    provide 4.2-4.6 TB of available storage out of 6.4TB raw,
    depending on how we balance storage capacity and the need for RAID 5 protection and hot standby disks.
    ', '', '', 3, 'INS/Paul Lee', 'Paul Lee', 1, 1, 9, 6, 7, '2005-07-06', '2006-02-14', 1, '2006-02-14 11:41:49', 'HUIZINGA'),
(183, 'Provide operational PR/DR System Servers', 'The current PR/DR system, which is effectively an operational system, needed to run the Institute, is hosted on a development web server and development database server.

    This project will identify and acquire/redeploy servers to provide a separate, operationally configured and managed PR/DR system.  The PRDS CR system repesents a good starting point for planning the configuration.', 'Repeated recent failures and extended downtime have created significant disruptions to ESS development and delivery efforts.

    The current servers are under new stresses as the result of consolidation and increased load from two-gyro-mode planning system testing.

    The current configuration increases the risks to both development and testing schedules, and reduces ESS development/test efficiency.', '', '', 1, 'ESS/Tom Comeau', '', 0, 0, 0, 0, 0, '2005-07-15', NULL, 0, '2005-10-17 18:01:05', 'SINGER'),
(184, 'Dual path EMC access for C3PO', 'Provide a second HBA and associated software licenses for a second, redundant path between the C3PO database server and the EMC storage.', 'The C3PO database server is under additional load as a result of changes to the planning systems for two-gyro science mode.  Recent outages suggest the joint CPT/ESS DO decision to accept a single-path configuration needs to be revisited as a result.  C3PO outages reduce the efficiency of ESS staff, particularly testers, and increase the risk to deliveries.', '', '', 1, 'Tom Comeau/ESS', '', 1, 1, 9, 5, 7, '2005-07-21', NULL, 0, '2005-10-17 18:01:40', 'SINGER'),
(185, 'Replace PQM with Industry Standard Solution', 'Evaluate, procure and integrate an industry standard performance
    monitoring and trending tool to replace the home-grown PQM system,
    with the intent to expand this solution to other environments such as
    the JWST PRDS and IT services (Web, etc.).

    Based on our experience with the Performance and Quality Monitoring
    (PQM) system in the Data Management Systems environment, we have
    refined the functional and operational requirements for a performance
    management and trending solution. This project will finalize these
    requirements, identify potential products, evaluate them and recommend
    a solution. It is likely that we can reuse existing hardware for the
    monitoring server, but if not the project will also have to design,
    spec and select a hardware solution.

    In the second phase we will deploy the hardware and software systems
    as required and integrate data collection and reporting in to the DMS
    systems, configure standard reports, support procedures etc. and plan
    and execute the transition from PQM to this new solution.

    The disposition or retention of historical PQM data for trending
    purposes also needs to be addressed.
    ', 'In order to do any capacity planning, performance testing, load analysis
    or resource utilization optimization you need to know how a system behaves
    under load and how it has behaved over time. System level performance
    monitoring and trending provides one half of the picture. The other half
    is determined by what the system is actually working on ("mission units").

    In the case of the HST Data Management Systems, we started to analyze
    and manually publish basic performance data with a COTS tool called
    SarCheck. In 2004, the PQM project automated this process and expanded
    the list of monitored and published metrics to nearly all system parameters.
    On the SunFire partitions, the PQM system captures performance data
    using commands such as iostat, vmstat and
    netstat, together with sar/sarcheck. Data is processed, and IDL routines
    produce weekly
    graphs and trending graphs which are published on the web
    (<a href="http://www.stsci.edu/institute/center/performance/pqm">institute/center/performance/pqm</a>).

    PQM can also be used to create graphs of the current load on the
    SunFire for a limited number of metrics to support real-time load
    analysis during performance testing or to support trouble shooting.

    As of now (July 26, 2005), we have accumulated over one year of
    system metrics. Based on this one year of experience we have
    refined our original requirements, identified new requirements,
    and assessed the viability of PQM itself.

    PQM has been very helpful and useful during performance
    testing, and has allowed us to characterize and trend the behaviors and
    loads on the HST-DMS. This information has been critical in the
    decision making process of how and where Kepler might share the HST
    infrastructure (Databases), and in identifying performance bottlenecks
    with ACS/MultiDrizzle.

    However, we have also identified the following issues and shortcomings:

    <ul>
     <li>The end-to-end PQM system is fragile, and has proven time consuming
    to maintain
     <li>We have experienced some data loss, which has turned out very
    time consuming to regenerate (FTE months)
     <li>We do not compress metrics, or store them in an efficient database.
    As a result, we are swamped with data, and it is difficult to scale PQM to
    other systems (such as the JWST-PRDCF).
     <li>We do not capture some metrics such as disk usage. Adding new metrics is
    time consuming, and will further exacerbate the data volume problem.
     <li>PQM does not provide easy access to the raw data in tabular format to
    support cross correlations or off-line analysis.
    </ul>

    Based on the above, we have decided it is time to replace PQM
    with a professional performance monitoring and analysis solution.

    A cursory survey of the field shows that there are many products
    with a wide range in features and price tags. Examples include
    up.time, TeamQuest, HP Openview, IBM Tivoli and
    CA Unicenter.
    ', 'Maintaining PQM today costs FTEs. Recovering lost data costs FTEs.
    PQM fragility impacts testing schedules. Adding functionality or
    improving PQM will be costly and have a high risk of failure,
    and be in conflict with most of our technology principles.

    Procurement costs of a COTS product to monitor the SunFire domains
    can range anywhere from $5k (up.time) to $50k+.

    Cost to implement 0.25-1FTE (WAG).

    Cost to expand and maintain PQM: priceless
    ', '', 6, 'CPT/Vera Gibbs', '', 1, 1, 9, 5, 4, '2005-07-26', NULL, 0, '2006-04-26 16:00:13', 'payne'),
(186, 'Project Planning and Tracking Tool', 'Investigate alternatives and decide upon one or more tool(s) to be used long-term to manage the portfolio of STScI technology projects, and to track the execution of such projects from planning to closure. Define a plan and implement the tool(s) into production systems.', 'Currently, a combination of the PPT, the STScI wiki, and MS Project are used in this capacity.  The wiki may be an acceptable tool for project tracking, but MS Project 2000 is generally acknowleged to be difficult to use in an enterprise setting.  Furthermore, the PPT is system that, while currently acceptable in performance, has the disadvantages of being (1) developed and supported in-house, and (2) not under the same level of documentation and support as other production systems.  One solution may be to keep the existing tools, in which case the PPT woul dbe migrated into a production system.', '', '', 1, 'Rick Singer/CPT Project Board', '', 0, 0, 0, 0, 0, '2005-08-17', NULL, 0, '2005-08-17 20:10:25', 'SINGER'),
(187, 'Staff Office Moves', 'Plan and execute the IT efforts associated with the upcoming staff office relocations.  Specifically included in the scope are the conversion of the Photo Lab to office space, and the relocation of the ESS test center.', '', '', '', 1, 'Rick Singer/ CPT Project Board', '', 0, 0, 0, 0, 0, '2005-08-17', '2005-09-29', 1, '2005-09-29 21:03:54', 'HUIZINGA'),
(188, 'Deploy a copy of the GSC2 in the DMS', 'Plan and execute the deployment of the GSC2 in the DMS to support, and in coordination with, efforts to improve the  absolute astrometry of HST science data.', 'Planned improvements to the HST DMS include better image registration algorithms that in turn rely on better absolute astrometry of the constituent images. The GSC2 can be used to achieve the desired astrometric accuracy, but it needs to be accessible to data processing and calibration processes in the DMS. By placing a copy of the GSC2 in the DMS, this access can be afforded without compromising system availability (i.e., the GSC2 server is less available than the DMS) or performance (i.e., competition for access to the GSC2 is eliminated). ', '', '', 1, 'Warren Miller/ESS', '', 0, 0, 0, 5, 0, '2005-09-02', NULL, 0, '2005-11-18 14:49:48', 'HUIZINGA'),
(189, 'Telestream Digital TV Encoder Implementation', 'STScI has been directed to implement a solution to meet the new NASA requirements on the OPO/AVL News team to transition away from analog video production to digital television (DTV).  This project will implement a device for encoding and delivery of video to NASA HQ.  Video delivery to NASA HQ requires a specific NASA-chosen device for encoding and delivery. This device needs direct access to the storage device, and needs to be able to reach the Internet.  The device slected by NASA is from Telestream.  This hardware will reside in the AVL.

    ', 'The transition of video production at STScI from analog to digital has been mandated by NASA.  ', '', '', 1, 'OPO', '', 0, 0, 0, 0, 0, '2005-09-02', '2005-11-18', 1, '2005-11-18 14:51:39', 'HUIZINGA'),
(190, 'Password Aging', 'Implement a process that requires users to change passwords after a pre-determined number of days. (ITSRB should determine the days).

    The original plan to implement this is outlined below, but we will
    now reconsider this approach in the light of a centralized account
    or identity management system as proposed by the SCS.

    Objectives:
    1.	Upgrade Nemesis to 5.8 to provide system resource to implement Password aging. (Nemesis is the server that pushes the password files to the majority of science net clients)

    2.	Identify all systems that have independent password files.

    3.	Deploy a modified version of the current SOGS password aging system to science net

    4.	Educate science net users on changes and requirements.

    5.	Investigate a tool that checks for strong passwords
    ', 'The NASA Procedural Requirements (NPR) document 2810.1, which applies to all STScI systems, defines minimum technical, physical and procedural IT security requirements. See NPR 2810.1; Appendix A: Baseline Information Technology Security Requirements:

    - ensuring that passwords are changed at least every 30 days to 1 year based on the sensitivity of the system.

    - ensuring that all passwords are at least 8 characters long

    - ensuring that all passwords are composed of at least one character each from at least three of the following sets of characters: uppercase letters, lowercase letters, numbers, special characters.

    - ensure that only non-trivial passwords are used.', '', '', 1, 'CPT/Vera Gibbs', '', 0, 0, 9, 0, 0, '2005-09-20', NULL, 0, '2005-12-22 18:14:46', 'HUIZINGA'),
(191, 'Removable disk DADS distribution option', 'Plan and implement a removable, spinning disk storage option for delivery of data from the HST archive through DADS. A growing number of archive proposals are being submitted and approved in HST cycles that call for substantial amounts of data to be delivered from the HST archive to the proposer''s site. It is impractical to deliver these quantities of data through the existing delivery mechanisms either because of time constraints (i.e., FTP throughput limitations) or excessive shippable media units (100''s of DVDs).

    This solution would make delivery of bulk data to authorized parties possible on removable, spinning disk media (e.g., 500GB IEEE 1394 drives) supplied by the proposer. This would reduce the shippable media units to a few, reducing handling costs relative to the current capabilities of the system.', 'STScI Strategic Plan:Goal 1:"Maintain HST as the world''s leading observatory at least until JWST operations begin."

       The increasing number of archive proposals accepted by the TAC that include bulk data requests is indicative of the value of the HST archive to the community. Satisfying such a demand in a timely and proposer-friendly manner should further increase the value of the HST archive.

    STScI Strategic Plan:Goal 5:"Decrease costs at STScI while preserving the scientific and technical excellence that gives us as competitive advantage for mission support."

       The effort to deliver bulk data on a few removable, spinning disks is much lower than the equivalent effort to supply the same data on 100''s of DVDs. Given that the TAC has approved these sorts of proposals and effort will be spent to provide them to the proposers, the solution afforded by running this project will reduce operating costs to the mission after the initial investment in H/W is recovered.', '', '', 1, 'Warren Miller/ESS', '', 0, 0, 0, 5, 0, '2005-09-22', NULL, 0, '2005-11-18 14:56:46', 'HUIZINGA'),
(192, 'Deploy Crystal Reports server', 'Deploy Crystal Reports Server to replace the current Excel driven Financial reporting system used by PM/Budgets. This change would allow Program Management to continue to deliver crucial financial reports to STScI management on an accurate and timely matter. Crystal Reports would also allow PM to create meaningful and dynamic end user reports.  This reporting system will be used for all projects and missions supported at STScI.', 'Our current reporting tool capabilities are currently reaching and in some cases exceeding their ability to handle the amount of data in the reports. FY06 and future reporting requirements will exceed our current capabilities, rendering our current reporting system inadequate.  The current system is also slow and time consuming to the end users. The current reporting mechanism is also limiting the type of information presented to management on a consistent basis.

    Crystal Reports was chosen because it seems to bethe most cost-efficient system that will work well with our current system (we will keep producing our budget data using the same Access database and we will get actual expense data directly from the Costpoint Oracle database). Crystal Reports would also be able to handle the large amounts of data from the various data sources. The upgrade to Crystal will not require a huge time commitment as would converting to a whole new planning system as it is currently used in-house.  Our vision is that we will have all reports on Crystal Server available for users to access via a link from our Internal web page.  The reason we need Crystal Server is that the reports must be interactive (ie - if we had reports from the standard Crystal Reports software we could post to the web but they would be static and not everyone wants to see the same view of the data).  We need to purchase the Crystal Server software ($7500 retail for every 5 concurrent users) and load it onto a server.
    ', '', '', 6, 'Program Management', '', 11, 0, 9, 4, 4, '2005-09-22', NULL, 0, '2006-01-12 18:26:01', 'HUIZINGA'),
(193, 'SAGE Database and Web Interface', 'The project objectives are to:

    + Setup a secure, password protected FTP site for the SAGE project on which all catalogs and images can be accessed and downloaded by SAGE team members, devise a file structure for the server that is efficient and appropriate for browsing the contents, and assess the ultimate file storage needs for the planned, final system by October 17, 2005.

    + Design, develop, test, deploy, and operate a scalable database by October 31, 2005 for the SAGE project that can: (1) ingest data catalogs in comma-separated, ASCII files; and (2) ingest images by recording file name and location in the file system as supplied by the SAGE IRAC and MIPS pipelines.

    + Design, develop, test, deploy, and operate a secure web interface by November 21, 2005 for the SAGE project that provides SAGE team members the ability to search the SAGE catalogs using forms and CASJobs (a full SQL query system that allows users to save their work in the own local database stored on a STScI server) and to download these catalogs and images from the database.

    + Design, develop, test, deploy, and operate a scalable, secure web interface by January 9, 2006 for the SAGE project that provides SAGE team members the ability to query sources based on color, flux, and position utilizing the SAGE IRAC and MIPS data catalogs as the source of information.
    ', 'STScI Strategic Plan:Goal 6: Apply STScI expertise and infrastructure to the data management systems lifecycle for the SAGE project as a means of supporting a community-led astronomy program that enhances a core competency and contribution (science data archives) of the STScI.', '', '', 1, 'Warren Miller/ESS', 'Margaret Meixner', 14, 255, 10, 5, 5, '2005-09-23', NULL, 0, '2005-09-23 16:47:56', 'WMILLER'),
(194, 'Tiger Pilot', 'This project will deploy a best practices MacOS-X Tiger environment to a limited number (25) of users across the Institute to validate and refine the support cost model for an Institute-wide MacOS-X deployment as proposed
    as one of the options in the Staff Computing Strategy project.

    Final deliverables have to be completed by November 16.

    ', 'One of the two options proposed by the Staff Computing Strategy (SCS)
    project is to standardize on an Apple MacOS-X environment for most of
    the functions at the Institute. MacOS-X has become very popular for
    individual users, but it is only recently that Apple has begun to
    provide the tools and support infrastructure to provide, manage and
    support the end-to-end lifecycle of the hardware, operating systems,
    applications and user data for hundreds of systems in a responsive,
    cost effective and secure way.

    In the case of Linux, which is the other option proposed by the SCS,
    there is much more experience in managing large environments.  This is
    in a large part because the model is very similar to a standard UNIX
    model such as Solaris. Several organizations comparable to STScI that
    decided to standardize their environments over the past 1-3 years have
    adopted Linux as their standard.

    After visiting the NASA/AMES Advanced Supercomputing (NAS) division and
    an executive briefing at Apple HQ we believe MacOS-X has become
    or will soon be a viable option. The NAS has been working very closely with
    Apple (just a few miles up the road) to develop and deploy a Tiger environment and feed back lessons learned in to future MacOS-X releases.
    To mitigate our risk we need to validate our cost estimates for supporting a MacOS-X environment, which is the objective of this project.
    ', '', '', 6, 'CPT/OT Edwin Huizinga', 'CIO/Lisa Wolff', 6, 254, 5, 6, 6, '2005-09-27', '2006-02-14', 1, '2006-02-14 11:38:53', 'HUIZINGA'),
(195, 'ACE2 Reinstallation', 'Reinstall ACE2.', 'ACE2 provides redundancy in the secureID authentication process.  Currently, ACE1 is the sole active secureID authentication system.  If ACE1 becomes unavailable (eg encounters hardware problems), no secureID authentication will be possible.  Some of more critical systems that use secureID authentication are GMS (gator), CWS (Web), the JWST PRDs systems, Sogs Firewall (both for accessing systems in the sogs subnet from systems outside of the sogs subnet and for accessing the actual firewall by the security team), and the front door firewall (for accessing by the security team).', 'Business Continuity', '', 1, 'John Kaylor', '', 0, 0, 9, 0, 0, '2005-09-28', NULL, 0, '2005-10-24 13:29:52', 'SINGER'),
(196, 'TOMM Server Upgrade', 'Upgrade tomm.stsci.edu.', 'TOMM is the Institute Usenet news server.  It also processes root and mailer-daemon email (due to the volume).  It is a Sparc4 (one of the very few Suns at STScI which is NOT a 64bit processor) purchased in Sep 1996. It is also running an older version of the OS (Solaris7) which just entered vintage support (no regular patches, if any).  ', '', '', 1, 'John Kaylor', '', 0, 0, 0, 0, 0, '2005-09-28', NULL, 0, '2005-10-07 14:36:22', 'SINGER'),
(197, 'Workmate and Sol Solaris Servers De-Install', 'De-install Workmate and Sol Solaris Servers.', 'Workmate (an Ultra5 (fully 64bit processor) purchased in Aug 98) and Sol (A 690MP purchased in Apr 1993) are both running Solaris 2.5.1. The only support available for that version of the OS is by special pay contract (no standard phone support or patches are available.  No regular patches have been available for past 3 years).  Though it still requires very little maintenance, the Sol hardware can not be upgraded to a non-vintage support OS (ie Solaris 8). It is a Solaris Science net server, but the small data areas and licenses can be moved or eliminated.  The workmate hardware can be upgraded, but it''s function is providing NFS access to common software (such as in /usr/local) for systems which are no yet Solaris 8 or above.  There are few of these systems.  They should be retired, upgraded (to Sol 8) or obtain an individual copy of the software. ', '', '', 1, 'CPT/John Kaylor', '', 0, 0, 0, 6, 0, '2005-09-28', NULL, 0, '2005-12-02 15:24:49', 'SINGER'),
(198, 'Nemesis Solaris Server Upgrade', 'Upgrade Nemesis Solaris Server (Absorbed into <a href="https://www.stsci.edu/institute/org/ot/Governance/ppt/projectByID?projectID=190">190:
    				Password Aging</a> project)', 'Placeholder - aging server, security risks.', '', '', 1, 'CPT/John Kaylor', '', 0, 0, 0, 0, 0, '2005-09-28', '2005-10-05', 4, '2005-10-06 16:10:43', 'MATTS'),
(199, 'Icarus Solaris Server Upgrade', 'Upgrade Icarus Solaris Server.', 'Icarus is an Ultra1E (fully 64bit Sparc Processor) purchased in May 1996.  It acts as a Solaris Science Network server.  It is running Solaris 8 (Sun still actively provides patches).  The data and services which it provides could fairly easily be moved to another system and this system shutdown.  While it requires nearly no maintenance, it is still covered under our support contract.  Shutting it off would fall into our overall direction of reducing the number of active systems.', '', '', 1, 'CPT/John Kaylor', '', 0, 0, 0, 6, 0, '2005-09-28', NULL, 0, '2005-11-18 14:52:17', 'HUIZINGA'),
(200, 'OPO Storage', 'This project will develop the requirements for, and design and implement a storage solution for the most data intensive workflows and processes within
    OPO.
    The project will document workflows and processes throughout OPO to
    sufficient detail to ensure that the proposed solution interfaces well with other workflows within OPO and that the solution can grow to meet other
    needs in OPO in the future.

    The design of the solution will take in to account the larger context of the early recommendations from the Staff Computing Strategy project: workgroup
    storage; separating storage management and bulk data flows from the
    network; storage appropriate to the value of the data; etc.

    Some process engineering to adapt existing workflow processes to standard storage solutions may be required to optimize the value of any solutions.
    ', 'As part of the NASA Digital Television Transition Plan
    (<a href="http://www1.msfc.nasa.gov/DTV/HOME.html">NASA DTV Initiative</a>) NASA recently switched to the Standard DTV format for the production and
    transmission of video data. OPO has already deployed the infrastructure
    to receive the NASA DTV signal, and to upload DTV video to NASA HQ
    using a telestream appliance.
    However, the current infrastructure cannot meet the new requirements
    to create, edit and share the large DTV files within the AVL. Other data intensive OPO workflows and processes can also benefit from an improved storage architecture.', '', '', 6, 'OPO/Greg Bacon', 'OPO/Stratis Kakadelis', 13, 1, 4, 6, 1, '2005-09-29', '2006-04-20', 1, '2006-04-20 17:13:17', 'HUIZINGA'),
(201, 'COSMOS Upgrade to RHWS4', 'Upgrade the COSMOS cluster operating system to RHWS4', 'As the recent root compromise on cosmos1 has so eloquently demonstrated, STScI simply cannot accept the risk of running unmaintained (and pretty much unmaintainable) operating systems.

    Furthermore, support from ESS for such tools as IRAF and MultiDRIZZLE is no longer easily obtainable on Redhat 7.3.

    The benefits of moving to RHWS4 include: vendor support for the next several years, including bug and security fixes; current support from ESS for software tools; a more advanced kernel which should provide better performance; and advanced support for NFS, which should increase both speed and reliability in their data transfers.
    ', '', '', 1, 'CPT/Jasen', 'Anton Koekemoer', 0, 0, 9, 3, 0, '2005-10-05', '2005-12-21', 1, '2005-12-21 19:32:24', 'HUIZINGA');
INSERT INTO "description" ("projectID", "name", "description", "rationale", "businesscase", "dependencies", "maturityID", "proposer", "customer", "sponsorID", "fundingsourceID", "hostID", "technologyID", "typeID", "created", "ended", "finalID", "lastModified", "lastModifiedBy") VALUES
(202, 'Rewrite STScI IT Security Plans', 'Under NASA Policies and Regulations (NPR) 2810.1, STScI is required to rewrite the IT Security Plans in the new format dictated by NASA.  The final plans are due by 1 October 2006 and this is a deliverable under the STScI Security Goal.  The first part of this effort would include categorizing our systems according to data stored on systems.  The IT Security Plans would map to the new categories, one plan per category.  There are currently 14 plans that we would expect to condense to fewer plans.  The effort will require technical/security experts from CPT as well as major subsystem (e.g. Archive) experts from outside CPT.', 'This is a deliverable under the STScI Annual Goals.  The final plans are due to GSFC 1 October 2006.', '', '', 1, 'CPT/McClure', 'Security Officer/Doris McClure', 0, 0, 0, 1, 0, '2005-10-12', NULL, 0, '2005-12-08 20:40:56', 'HUIZINGA'),
(203, 'Functional Printer Upgrades', 'The ESS Division Office has noticed that the printers available for functional work, particularly for software development work, are old and slow.

    This project should identify and execute an upgrade path for functional printers available to software developers.', 'The jam frequency and slowness of printers make development more difficult and more costly.  ', '', '', 1, 'Tom Comeau/ESS Division Office', '', 0, 0, 0, 0, 0, '2005-10-17', '2005-10-25', 4, '2005-10-25 15:17:16', 'TCOMEAU'),
(204, 'Windows Domain Servers Upgrade', 'This project will replace aging and failing hardware with new Dell PowerEdge servers while upgrading the underlying OS to Windows 2003, and consolidate
    windows services on to fewer systems.

    Project will follow existing procedures for upgrading servers and update those procedures to reflect changes that are specific to Windows 2003.

    The design of the new windows infrastructure will anticipate the roadmap for the Institute''s windows desktop/laptop environment as developed by the Staff Computing Strategy project:

    - Reduced install base of windows staff systems by early calendar year 2007 from the current ~400 to less than 100 systems of which ~50 in BRC

    - Centralized "My Documents" storage

    - Integration of windows Active Directory with other directory services to provide centralized authentication across all platforms
    ', 'The immediate driver for this project are several recent system failures on
    aging hardware, resulting in lost productivity for the Institute (freedom)
    and significant unplanned work for CPT to recover.

    In addition to one-on-one upgrades, this project will also consider the
    redistribution and consolidation of windows services on fewer servers,
    and phase out several other older servers.

    ', 'In general the cost of downtime and dealing with a failed system exceeds that of replacing systems in a planned fashion. This will help reduce the impact to other projects and schedules as lower the likelihood of H/W failures associated with these servers. Please keep in mind that some of these systems are more than 5 years old and have exceeded their useful and low cost life.

    By upgrading the OS to Windows 2003 we can further take advantage of the improvements made to the OS that increase system security, reduce reboots needed (improving uptime), and improve system responsiveness (generally 15% overall improvement as previously notes during the Galex Upgrades).

    The project will also reduce the total number of windows servers, leading to additional savings.

    Resources:
     1 1/2 FTE (Windows) 40 hrs per node.
     .20 of TSD expert time

    ', '', 6, 'Vera Gibbs', 'Doris McClure', 0, 254, 4, 6, 7, '2005-10-18', NULL, 0, '2005-11-30 21:51:22', 'HUIZINGA'),
(205, 'Employee Entry/Exit', 'Develop the processes and procedures to quickly and properly handle all computing related information and equipment associated with an individual upon notification of their arrival or departure from STScI.', 'Efficiently handling the computing needs of individuals upon their arrival and departure from STScI, increases the security of the STScI computing environment, increases the productivity of staff, reduces workload, and improves the maintainability of our systems.', '', '', 4, 'CPT', 'Doris McClure', 6, 0, 1, 0, 1, '2005-10-18', NULL, 0, '2005-10-24 18:54:01', 'SINGER'),
(206, 'Implementation Phase for Copy-Print Services', 'Upon completion of the related strategy project (PPT#121), this project will implement new copy/print recommendations for the Institute.
    This project follows PPT#121 (Copy and Print Services Consolidation), a strategy project to produce a set of recommendations for copying and printing services, along with a roadmap and transition plan.
    The goal of this implementation project is to efficiently implement the recommendations produced during the strategy project.
    ', 'When the Copy and Print Services Consolidation (PPT#121) project team completes its work, an implementation project will be needed to ensure timely implementation of the recommendations after management approval.
    This project is expected to result in a cost savings for the Institute.
    ', 'The project will benefit the Institute as a whole by providing enhanced services, while achieving cost savings for the both the BRC and CPT centers.

    Preliminary data shows that this can likely be accomplished by having staff send their printouts to a multi-function copier/printer that is less expensive to maintain than a laser printer. Additional savings are anticipated by utilizing color photocopies to replace some of the color printing currently done by staff.', 'This project depends upon, and must closely follow, the Copy and Print Services Consolidation Project (PPT #121).
    PPT121 is a strategy project that will provide recommendations for new copying/printing services for the Institute.
    After completion of that project, this implementation project (PPT#206) should begin shortly, in order to efficiently implement the recommendations resulting from PPT#121.
    ', 1, 'BRC, Ray Beaser/Glenn Miller', 'Val Schnader, Lisa Wolff', 6, 254, 9, 16, 7, '2005-10-20', NULL, 0, '2005-10-20 19:33:56', 'PANTALONE'),
(207, 'Generic Workshop Package', 'The purpose and goal of this project is to standardize the website and functionality for workshops so that it provides the needed robustness while minimizing/removing the costly customization.  Note that a required aspect of future workshop websites will be the designation of a content manager from the sponsoring organization.

    ', 'The Technical Services branch within CPT provides comprehensive support for various workshops throughout the year.  This support includes user and auditorium support during the event, live and archived video stream availability, before the fact guidance and high-level presentation guidance and comprehensive website support.  The latter of these areas is a full featured website that includes static event information, event registration, abstract submission as well as secure on-line payment.  The web aspect of supporting workshops has continued to evolve and mature over time to the point where it centrailizes/coordinates all aspects of the workshop from the attendees and the workshop coordinator standpoint.

    With this robust functionality comes the expected side affect of a significant increase in site and content management for each specific workshop.  In addition, there is some level of customization associated with each conference (ex. varied costing/charging scenarios due to attendee preferences, pre-registration, (??) etc.) as well as an increase in content and site management, either in the form of training to the assigned manager or in these duties falling to the TS project manager to complete.  This customization leads to a level of TS involvement that is simply too costly to perpetuate.

    The purpose and goal of this project is to standardize the website and functionality to that point that it provides the needed robustness while minimizing/removing the costly customization.  Note that a required aspect of future workshop websites will be the designation of a content manager from the sponsoring organization. ', 'The creation of a single system for conference registration and standardization of conference site developemnt will realize substantial savings in the use of CPT resources for development of conference support mechanisms.

    Using the Mini-Workshop on Nearby Resolved Debris Disks as a model, the following CPT resources were utilized to create conference support mechanisms (web site, conference registration, abstract submittal) and provide support leading up to the conference:

    Development of support mechanisms:

    160 man/hours

    Ongoing support during registration period and conference:

    72 man/hours (8 manhours/week X 9 weeks)

    for a total of 232 man/hours supporting this conference.

    Using a fully-realized central registration system incorporating conference registration, credit card payment acceptance, abstract submittal, and an administrative interface for conference info management should reduce
    man-hours required for conference support to roughly 30-40 hours per conference. This value is an estimate based on time required to deploy a standard conference web site and create a new event in the registration system.

    ', '', 1, 'Mike Watterson', 'Steve Dignan', 0, 0, 3, 10, 0, '2005-10-21', NULL, 0, '2005-12-08 20:42:48', 'HUIZINGA'),
(208, 'MASTDB Server and Storage Upgrade', 'Plan for, spec, order, install, configure & integrate a new Windows/SQLServer database development server and RAID array in the Archive environment for MAST/Galex by March 15, 2006.
    ', 'This hardware refresh replaces MASTDB-TEST and its old storage arrays with a dual CPU SunFire v40z (the standard architecture for this class of system), and a 5.2TB EMS RAID array. The new system, called MASTDB, will be used for database related development in the Institute’s archive environment, in particular for Galex, GSC2, and the HLA. Primary users are Alberto Conti and Brian McLean and their development teams. This system has a similar hardware architecture, OS and DB as the recently deployed SAGEDB server. Any lessons learned for SAGEDB can be applied here.
    Note: In planning for this server, we discovered that the latest “Release 2” version of Windows Server 2003 64Bit Standard supports up to 32GB of RAM, removing the need for WS2003 64bit Enterprise (and saving ~$1k). Ron Russell is coordinating procuring the license, paid for by MAST. The SQLServer 2005 license has been provided to Brian by Jim Gray of MicroSoft.
    ', '', '', 6, 'ODM/Rick White', 'ODM/Brian McClean', 14, 255, 4, 5, 7, '2005-11-01', NULL, 0, '2006-02-24 16:18:26', 'HUIZINGA'),
(209, 'Archive Data Proprietary Rights System Development', 'The purpose of this project is to develop a system by which the proprietary rights on data in the archive can be managed within the archive systems framework by the operations staff in a multimission environment. The number of missions requiring prioprietary rights management by archive operations is increasing, and it is not clear that the system in place reduces the risk of rights violations adequately nor is it likely as efficient as possible in terms of the manual effort required. This project must first establish the scope/requirements needed for managing proprietary rights in the archive systems, and then deliver an implementation.', 'This work spans multiple goals within the STScI Strategic Plan  in the context of managing data rights for the missions. It also is a risk mitigation project in terms of (1) preventing access to data by unauthorized parties due to a failure of the  proprietary rights management system; and (2) preventing repudiation of access to data to authorized parties due to a failure of the proprietary rights management system.', '', '', 1, 'ESS/Warren Miller', '', 0, 0, 0, 5, 0, '2005-11-03', NULL, 0, '2005-11-18 14:54:13', 'HUIZINGA'),
(210, 'Provide DOORS access to Mac Users', 'Determine how best to provide access to the DOORS client
    functionality to non-window, and particularly Mac users,
    and design and implement a solution.
    ', 'Telelogic DOORS is the Institute''s standard requirements management system. It is an integral and critical component in the ESS
    systems engineering and development process, supporting all Institute
    missions.

    The DOORS system consists of a central DOORS server and database, hosted on Solaris, and client software running on engineering staff''s Windows desktops or laptops. To support requirement reviews etc. DOORS generates
    MS-Word documents, that can be distributed as Word or PDF documents to stakeholders on any desktop platform.

    Our DOORS installation also includes a Web interface, called DOORSnet. This
    can provide basic, limited functionality to infrequent users through a
    web browser. While not currently in use the web access is a potentially desirable feature.

    Driven by JWST needs, ESS is considering expanding the use of DOORS
    to also provide action item tracking on requirements in DOORS. This will
    require providing non-Windows users access to DOORS.
    It is not clear how much of this functionality can be provided through the
    DOORSnet web interface (Rusty Whitman will be evaluating this in November). In the past, non-IE browser support was limited.
    If DOORSnet is not a valid solution, the standard approach to provide
    non-Windows users access to DOORS is through Citrix.

    Independent of this, Otto Wassenius is concerned that DOORS continues to be
    Windows-centric, and that though the server part runs on Solaris today,
    we should look in to the pro''s and con''s of migrating that aspect to Windows.
    Though implementing this may be a separate activity, if this project looks
    at how best to provide DOORS access, this can be included in the
    requirements and planning phase.

    Simultaneously, as part of the staff computing strategy, ESS is considering
    the possibility of standardizing desktops/laptops on Apple/Mac.
    This would require access to DOORS other than through the web interface, and will most likely require a Citrix service for a DOORS client.

    Verification that the DOORS client can be served through Citrix is desired by 11/30.  Implementation of an operational Citrix service for DOORS is required by Feb 2006.

    Related link:  <a href="http://www.ess.stsci.edu/mgse/services/doors/DOORS_index.html">STScI DOORS page</a><br>
    ', '', '', 1, 'ESS/Rusty Whitman', '', 0, 0, 0, 5, 4, '2005-11-04', NULL, 0, '2005-11-07 14:22:04', 'HUIZINGA'),
(211, 'Property Database Implementation', 'Implement recommendations that come out of the Property Database project (#129).', '', '', '', 1, '', '', 0, 0, 0, 0, 0, '2005-11-16', NULL, 0, '2005-11-16 20:28:20', 'SINGER'),
(212, 'Network Upgrade', 'This project will:

    1. Install a new core switch and refurbish our existing core switch with new power supplies and supervisor module and re-deploy it as an identical redundant switch.

    2. Replace our two end-of-life core routers with routing modules in the two core switches and upgrade our routing protocol from RIP to EIGRP

    3. Upgrade all closet switches in the SOGS network

    4. Upgrade the last three old closet switches outside the SOGS network.

    Except for (4), all equipment has been ordered and received.
    ', 'To streamline planning and execution, this project combines three separately approved project ideas, all of which have already received FY05 or FY06 funding:

    <a href="/institute/org/ot/Governance/ppt/projectByID?projectID=127">#127: Redundant Main Network Switch</a>

    <a href="/institute/org/ot/Governance/ppt/projectByID?projectID=171">#171: Network Switch Upgrade</a>

    <a href="/institute/org/ot/Governance/ppt/projectByID?projectID=172">#172: Core Router Upgrade</a>
    ', '', '', 6, 'Doris McClure', 'Doris McClure', 6, 1, 4, 2, 7, '2005-12-05', NULL, 0, '2005-12-08 20:43:52', 'HUIZINGA'),
(213, 'Network Backbone 10Gbit Upgrade', 'This project will upgrade the STScI network backbone from 1Gbit to 10Gbit.
    This work is part of the Centralized Storage and Network Infrastructure roadmap.
    ', 'To provide storage and protection for the continued, near-exponential growth of data in our desktop/laptop environment (currently 33-40TB)
    the Institute has proposed
    to implement a centralized storage architecture. To provide sufficiently fast user access to centralized storage for power data users requires
    gigabit connections to the desktop. However, before we can upgrade
    our desktop connections from 10/100Mbit to gigabit, we have to upgrade
    our backbone from gigabit to 10Gbit to avoid backbone saturation.

    The STScI network backbone provides connectivity (after completion of phase 1 of project  #212) from two redundant core switches (C65A128, C65B128) to the closet switches distributed over the 1st and 3rd floors and north, south and central wings of the Muller building and the Bloomberg building.

    To upgrade the entire backbone from 1 to 10Gbit requires installing 10Gbit modules in both core and all 11 closet switches.  The multi-mode fiber between the switches already supports 10Gbit/sec and does not need to be upgraded.

    The detailed design, possible phased approach and implementation sequence needs to be developed as part of this project within the context of the centralized storage and network infrastructure roadmap.
    ', 'To upgrade 11 closet switches and both core switches would require
    on order of $240k, which is part of the larger funding request to
    the HST Project at GSFC for our centralized storage and network
    infrastructure upgrade.', 'This project has to be coordinated with #212.
    ', 1, 'Edwin Huizinga', '', 0, 1, 9, 2, 7, '2005-12-05', NULL, 0, '2005-12-05 20:58:59', 'HUIZINGA'),
(214, 'Data Storage and Network', 'Deploy the data storage, backup, access infrastructure, policies and procedures required to move to a centralized storage architecture for the Institute''s staff computing environment.

    This project will develop the detailed requirements and design for our centralized storage infrastructure, building on the initial concept architecture developed as part of making the business case for this work.

    Any centralized storage environment has to include at a minimum the actual storage array(s) supporting multiple performance/availability/protection tiers; an integrated backup solution most likely involving both tape and spinning disk backups; storage management software; and the servers or gateways by which users can access and share the data. The design has to optimize
    sharing of data within workgroups, address performance requirements,
    and consider the pro''s and con''s of leveraging our existing mission
    storage infrastructure.

    The project will evaluate products and vendors; make vendor/product selections; develop a detailed roadmap to implement and roll out the solution. The roadmap may exist of a sequence of projects over
    about a 12 month timeframe to complete user data migration, tuning
    and optimization, etc. Storage projects have to be coordinated with
    any required network projects.
    The timeline has to take in to account significant events such as WFC3 thermal vac testing. The schedule is driven by the requirement to have been operating routinely (for how long?) within the new staff computing environment before SM4, currently projected for December 2007.
    ', 'This project is the core of the Centralized Storage and Network Infrastructure
    Roadmap. It is a prerequisite to further implementation of the Staff Computing Strategy, to consolidate our current heterogeneous, fragile and inefficient staff computing environment in to
    well managed enviromnent(s) that can be kept up to date, respond to changing requirements and make STScI staff more productive, within the current funding levels.

    For a detailed discussion of the rationale for this project, see here (link tbd).
    ', 'See Infrastructure Proposal to HST-P (link TBD).', '', 6, 'Edwin Huizinga', 'Lisa Wolff', 1, 1, 9, 6, 4, '2005-12-06', NULL, 0, '2006-02-24 16:24:47', 'HUIZINGA'),
(215, 'OPO Video Editing System Replacement', 'This project will complete the procurement of hardware and services required to replace of the existing Windows based AVID system with a Mac/Final Cut Pro based turnkey solution and the supporting laptop and/or desktop systems. We will work with the vendor to integrate the
    system in to STScI''s network, security and systems management
    environment, etc. etc. ', 'OPO''s existing AVID system does not support the new high definition
    movie format, so out with the old in with the new (well, it''s that time of year).

    NASA funding for the hardware has been secured, but it needs to be
    committed before the end of 12/2005.
    ', '', '', 6, 'OPO/Lynn Baranger', '', 13, 1, 4, 0, 7, '2005-12-06', NULL, 0, '2005-12-14 15:33:14', 'HUIZINGA'),
(216, 'Upgrade SAN Backup erver', 'This project will replace the hardware and upgrade the operating systems of our two front door apache web servers: kahuna and cws. ', '', '', '', 1, '', '', 0, 0, 0, 0, 0, '2005-12-15', '2005-12-15', 3, '2005-12-15 15:22:52', 'HUIZINGA'),
(217, 'Upgrade SAN Backup Server Software', 'This project will upgrade our Storage Area Network backup server software from "EDM" to Legato, and plan for and perform any hardware or other upgrades required.

    The project will have to determine the optimum way to address the
    immediate EDM issue while making progress towards our Institute Storage Roadmap (see rationale).', 'The Institute''s data management systems support the HST Archive, several MAST archives (Galex), and Kepler. Most data is stored and managed within
    a Storage Area Network (SAN). For operational and disaster recovery, all
    configuration, development (code), test and metrics data are backed up
    to tape using an EMC EDM server and tape library. Archive data itself,
    such as the HST Data Depot, is protected by writing it to MO platters,
    not to tape.

    Not too long ago, EMC acquired the major backup software vendor, Legato.
    Now, EMC is dropping support for its EDM system and providing free licenses to switch to Legato.

    Replacing the backup software is not a simple software installation. Because the tape indexes and formats are not compatible, and the need to recover data from the old EDM tapes for at least 6 months, this transition may also require the installation of a new tape library system.

    In July of 2005, we completed an analysis of our SAN infrastructure, including the backup capabilities (ref TBD). One of the conclusions of that study is that we are pushing direct tape backups beyond its capability, with some backups taking more than 24 hours to complete. For our databases (CATLOG, ZEPPO, etc), we have already adopted a two-stage scheme of database dumps and backups.

    Independently, we are also
    planning to implement a centralized storage solution with integrated backup
    services for our staff computing environments. In both our mission and staff computing environments, we are proposing to implement intermediate "spinning disk" or "virtual tape library" (VTL) backups to ease the performance requirements of any tape backup/restores. There are no technical reasons that
    both our mission and staff computing storage needs cannot be met within a single storage area network with a shared backup infrastructure, and this is the architecture proposed in the STScI Storage Roadmap (ref TBD).

    ', '', '', 3, 'CPT/Vera Gibbs', '', 1, 1, 4, 5, 7, '2005-12-15', NULL, 0, '2005-12-15 17:11:35', 'HUIZINGA'),
(218, 'Upgrade Institute Primary Web Servers', 'This project will upgrade the hardware, and operating system of our two
    primary front door Apache web servers, kahuna and cws.
    The OS upgrade will also move the application management environments on these servers from the old Solaris 2.5.1, 6 and 7 infrastructure to Solaris 8.
    Any impacts on CGI scripts and other services supported by kahuna and
    cws will be addressed in collaboration with the owners of these scripts and services.
    ', 'With the exception of OPO''s public outreach sites, the bulk of our web content and applications are served to the internet through apache web servers on kahuna and cws.

    The content of many of our internal and external websites has been
    migrated to Zope, but access to Zope is always through kahuna (internal, www-int), or cws (external, www). Also, kahuna and cws proxy access to
    many other web servers, and continue to publish static HTML pages
    directly from their own disks. The bulk of this local content (~40GB)
    are HST finder charts (6GB), and legacy information. A separate effort to
    clean up this data is already underway as a service activity
    (<a href="http://www.stsci.edu/wiki/cisd/KahunaCleanup/WikiHome">Kahuna Cleanup<a/>).

    All static content, CGI scripts, etc. are created and managed on kahuna.
    Its HTML directories are cross-mounted to all Solaris workstations and
    users can maintain content there directly, or login to kahuna. Content intended for external access is automatically synchronized from kahuna to cws on an hourly schedule. Content and applications intended for internal access only, are served directly from kahuna (e.g. majordomo and mhonarc archives).

    Kahuna and CWS are old solaris systems, and are among
    the last few servers not running Solaris 8. This project will upgrade the
    hardware to new rackmounted SunFire V120 servers and the OS to Solaris 8.
    ', '', '', 6, 'CPT/Vera Gibbs', '', 6, 254, 4, 10, 7, '2005-12-15', NULL, 0, '2005-12-15 17:51:25', 'HUIZINGA'),
(219, 'OPO Bandwidth Solution', 'This project will implement a solution to minimize the impact of
    OPO web traffic on the Institute''s internet connectivity.
    ', 'The Internet Bandwidth Project (April 2004), showed that OPO web traffic
    accounts for the bulk of the data transmitted over our internet network
    connection. The routine OPO web traffic volume of ~4.5TB/month
    is 3-5 times the volume of data retrieved from the Institute''s Archive,
    and together these account for more than 75% of the total volume.

    At the times of a popular press release, public demand far
    exceeds our bandwidth. In the past this has resulted in the
    Institute becoming inaccessible.
    More recently, e.g. in the case of the UDF, we have addressed these peak
    demands by mirroring data at other NASA sites to support a sustained
    download volume of 300Mbps over a two day period. Note that 4.5TB
    per months is the equivalent of only ~15Mbps, and that our total bandwidth
    to the Internet is 26Mbps plus an additional 50Mbps to Internet2.
    The Internet2 connection is mainly used by universities, and cannot be
    used to offload traffic to the general public. On average our Internet2
    connection only sees 5Mbps of traffic anyway.

    Of the various options proposed by the Internet Bandwidth Project,
    the most viable is to off-load OPO web traffic from our network.

    Initially, we believed that the only option was to remotely host the OPO
    websites. Through an RFI process, we have learned of at least
    one attractive alternative from akamai.com. Simply put, their service allows
    OPO to continue to manage and publish all content locally, but
    Akamai''s world-wide network of "EdgePlatforms" will cache and
    distribute that content based on popularity, volume etc.

    This would not only address the network problem, but also allow OPO
    to simplify their webservers infrastructure, while keeping all
    content management in house. The amount of freed up bandwidth
    (15Mbps) will allow us to continue to grow our existing Archive
    traffic, while we continue to monitor usage and plan for increasing
    and new demands (e.g. HLA).

    The final solution will have to be developed within the context of this
    project.
    ', '', '', 6, 'OPO/Stratis Kakadelis', 'OPO/Jim Manning', 13, 0, 9, 2, 4, '2005-12-15', NULL, 0, '2005-12-15 21:07:08', 'HUIZINGA'),
(220, 'Hubble Legacy Archive: Phase 1', 'The overall goals for the entire HLA project are to
    provide significantly enhanced archive functionality in
    a VO environment, and a repository for all HST data as
    well as many high-level products, as outlined in the
    STScI-internal position paper on the Hubble Legacy Archive
    (24 March 2005).

    The goals for Phase 1 of the HLA project, which extends
    through the end of FY2006, i.e., 30 September 2006, are as
    follows:

    •	Provide a core system that presents a significant
    fraction of the current HST archive to a select group of
    users with access times of seconds, demonstrating that the
    overall sys-tem concept and the chosen methodologies are
    sound.

    •	Data to be included in Phase 1 are ACS and WFPC2
    calibrated images plus a select number of high-level
    products (HDFs, UDF, GOODS, WFPC2 associations, ACS
    com-bined images). It should be noted in this context, that
    no attempt at completeness will be made; if certain data
    sets fail to process correctly, they will not be included
    in this phase.

    •	ACS image headers will contain improved astrometric
    information, based on corrections from calibrations with
    objects contained in the Guide Star Catalog II.

    •	Basic footprint services will generate an outline
    of a given HST aperture or archive file projected on the
    sky, and will provide basic intersection and union operations

    In addition, studies will be completed on the following topics, to allow implementation in later phases of the HLA project:

    •	Image cut-outs: a study on how to obtain and
    present to the user (both visually and as data) subsets
    of images and high-level products.

    •	Object catalogs: develop detailed algorithms to
    generate a catalog of objects in an HST image or high-level
    product with coordinates, morphological information, and
    possible classification.

    •	User interfaces: test and evaluate existing user
    interfaces, such as Aladin, and provide a concept for an
    advanced HLA user interface, based on access through web
    browsers.

    This is work will be executed as a level-of-effort
    driven, Integrated Project Team (IPT).
    ', 'The Hubble Space Telescope (HST) has the potential to provide excellent scientific data for sev-eral more years. But as the conclusion of the HST mission draws nearer, interest will turn increasingly to the analysis of archival data and to the establishment of the true legacy archive of this mission. The research community already retrieves three times more data from the HST archive than is put in, indicating that HST data are used for purposes beyond their original intent. Much information remains to be gleaned from the archive, especially as holdings grow and larger statis-tical and correlative studies can be carried out. Existing and diverse science cases, spanning all areas of astrophysics, could be accomplished and enabled by improvements to the existing system. This improved archive, the Hubble Legacy Archive, will be an essential research resource for many years, if not decades.

    (links to supporting documentation and the HLA team website
    TBD).', '', '', 6, 'HST-MO/Rodger Doxsey', 'Rodger Doxsey', 1, 1, 12, 5, 4, '2006-01-18', NULL, 0, '2006-01-30 15:15:11', 'HUIZINGA'),
(221, 'Improve Spam Filtering', 'Spam email is a continuing problem for the STScI. Approximately 50% of
    all mail received at the STScI is spam.  Although the Mirapoint spam
    filter does a good job at identifying spam, this junk still consumes
    bandwidth, CPU cycles and disk space. Additionally, users must still
    sift through the Junk mail folder for legitimate messages.  This costs
    us both time and money.

    There are at least two options which have the potential to improve
    spam filtering:

      - Mirapoint has a technology ("MailHurdle") which can prevent spam
        from entering the STScI mail server. MailHurdle works by only
        accepting email from RFC-compliant SMTP servers or gateways
        exhibiting standard SMTP behavior. Most spammers are not
        RFC-compliant. In particular, they do not try to resend a message.

      - The current configuration of the STScI mail servers allows only one
        spam filtering engine. With a reconfiguration it should be possible
        to run both the (current) Rapid Anti-Spam filter and the Spam
        Assassin-based expert system. These two approaches have
        complimentary strengths.

    The project should consider other strategies as well.  Any approach
    may require additional reconfiguration of the email servers,
    e.g. better integration with LDAP services, additional servers, etc. See the related projects <a href="https://www.stsci.edu/institute/org/ot/Governance/ppt/projectByID?projectID=224">
    Project 224: Load all stsci email aliases into LDAP </a> and
    <a href="https://www.stsci.edu/institute/org/ot/Governance/ppt/projectByID?projectID=13">
    Project 13: Email Consolidation </a>.



    Since MailHurdle is a based on a novel concept, it is described in
    more detail below. The attractive aspect of MailHurdle is that it
    prevents spam from entering the STScI network.  The major drawback is
    that a small percentage of legitimate email messages can be delayed in
    delivery by ~30 minutes.

    MailHurdle works by challenging the sending server to ensure it is
    RFC-compliance before accepting a connection.  With MailHurdle, the
    SMTP service looks at three pieces of information, called a triplet:
       1. The IP address of the host attempting the delivery
       2. The envelope sender address
       3. The envelope recipient address

    If this triplet has been seen before, the message is delivered with no
    delay.

    If the triplet has not been seen before, then a "Please try again
    later message" is returned to the sender.  An RFC-compliant sender
    will retry sending the message later and at that time the message is
    delivered and the triplet is recorded for future mail deliveries. (The
    triplet expires after 36 days.) Note that most servers handle this
    retry automatically without informing the sender - the typical sender
    will not be aware of the dialog between the email servers.

    The delay in delivering the first message depends on the sending mail
    system. Typically it is ~30 minutes. Note also that if the first
    message is followed by additional messages within the initial retry
    period, the messages may be received out of time order.

    Domains listed in our system whitelist are NOT subject to MailHurdle,
    so mail from NASA, NSF, JHU, TIAA-CREF, etc will be delivered without
    delay.

    Effort:

    The project will require a careful analysis of our current email
    server architecture and evaluation of alternatives.  There are a
    number of tunable parameters in MailHurdle which must be understood.
    Due to the importance of email to the STScI, comprehensive testing
    will be essential.  System Administrators must be trained. User
    training and documentation will also be needed, including explaining
    this to the IT governance groups such as the TC and SCWG.

    Policy Impact:

    It will be important to decide early in the project what behavior is
    acceptable in the STScI email system. For example, with spam filters,
    the user retains full control since spam mail is still delivered. With
    MailHurdle, or possibly other approaches, mail identified as spam is
    not delivered. Whether or not a delay in mail delivery is acceptable
    must also be considered.

    Benefits:

    This can reduce the amount of time staff spend in sifting through the
    Junk Mail folder for false positives and possibly reduce the amount of
    spam which isn''t caught by the spam filter and enters the Inbox. This
    will also reduce the number of Help Desk calls relating to general
    complaints about spam.

    This could reduce the amount of email traffic on our network, reduce
    the CPU usage on the email servers and reduce the amount of disk space
    used. (However an earlier analysis of email storage showed that Junk
    Mail folders are not a significant fraction of the total storage.)
    This will extend the useful life of this equipment.
    Risks:

    Support staff will have to handle calls about delayed messages.  In
    some cases this might affect important communications, e.g. to
    Directorate members. Handling such situations will consume effort,
    possibly more effort than was saved by using MailHurdle.

    ', '', '', '', 1, 'CPT/Miller', '', 0, 0, 0, 0, 0, '2006-01-18', NULL, 0, '2006-03-07 18:23:51', 'MATTS'),
(222, 'RedHat 4.0 Upgrade', 'Upgrade all RedHat Enterprise Level 3 (RHEL3) desktops and laptops to RedHat Workstation 4.0.

    ', 'Last year, we completed the project to upgrade all Linux desktops
    to RedHat Enterprise Level 3.0 (RHEL3). In December, we completed
    upgrading the COSMOS and GOODS clusters to RedHat Workstation 4.0
    (RHWS4), the UDF cluster was build on RHWS4 from the start.
    Last year, we also used exception agreements to deploy RHWS4 to
    4 64-bit Linux desktops because they were not supported by RedHat3.
    Recently, we deployed a new Dell 32-bit desktop with RHWS4, because
    its hardware was not supported by RHEL3.

    Today, we have a total of ~150 Linux systems:

    - 65 in clusters: 6 UDF, 6 COSMOS, 17 GOODS, 36 Wulf

    - 18 Servers: 9 Zope, 4 Tomcat, 2 Linux infra., Proxy

    - 55 Desktops (~18 in CPT)

    - 10 Laptops

    Wulf, the VizWall Beowulf cluster still runs RedHat 7.3, with
    only 5 nodes (64 bit) running Fedora Core. Frank Summers is
    currently planning the upgrade from 7.3 to RHWS4.

    Upgrading the Linux servers (Zope, TomCat, etc.) to RHWS4 can be planned for and executed separately.

    Procedures for upgrading to RHWS4 are about 90% complete,
    and finalizing these is not expected to be a significant amount of work.

    For our desktops, we are now in a similar situation as with
    Windows XP and 2000: we can decide to deploy new systems and
    rebuild any "broken" systems with RHWS4, and leave all other
    systems on RHEL3. Or we can decide to upgrade all RHEL3 systems
    to RHWS4.

    The following information weighs in towards deciding between these
    two options:

    - we are running in a mixed 3/4 mode, and this is generating
      extra work for CPT and ESS (IRAF builds). Costs not yet quantified

    - RHWS4 has benefits from an ease of maintenance and security
      perspective for CPT

    - RHWS4 provides improved usability, functionality for end users

    - RHWS4 is based on a newer Linux kernel (2.6 vs. 2.4) which has
      improved performance.

    - Upgrading desktops to RHEL3 last year was a lot of work, since
      we used that upgrade to repartition disks and move /usr/local
      from a central file server to internal disks. Upgrading to RHWS4
      is expected to be much easier, <=4 hours of clock time/system,
      and can occur while the system remains in a user''s office.

    - We expect no hardware compatibility problems with RHWS4. The oldest
      hardware is in CPT itself, and can be tested.

    <b> RedHat support</b>

    RHEL is fully supported for 2.5 years after the initial release.
    During this period, new hardware support will be provided
    ("at the discretion of RedHat")

    For RHEL3, this period ends on Apr. 30, 2006 (soon!).

    The end of full support means that we can no longer assume
    that new hardware will be able to run RHEL3 - something we
    have already discovered.

    Deployment support for RHEL lasts an extra 6 months. During this
    period all available security and bug fixes will be made available.
    For RHEL3, this is through Oct 31, 2006.

    Finally, there is an extra 4 years of maintenance support.
    During this period, only security fixed will be released
    (and "mission critical bug fixes").

    By coincidence, RHEL4 (of which we want to use the  WorkStation
    flavor) was released exactly a year ago yesterday. (Feb 15, 2005)

    ( See http://www.redhat.com/security/updates/errata/ for the source
    of this info)

    So, what does this mean?

    - For our infrastructure servers running RHEL3 (e.g. the
    9 Zope/Squid systems) as long as Zope/Squid supports
    RHEL3, and there is no reason for newer hardware, there is no
    driver to upgrade to RHWS4. This is all under our own control,
    and we can plan for this in the future. (Jim Grice confirms
    there is no reason to upgrade today).

    - For our desktop environments: this is a very dynamic
    environment, with new applications and new hardware arriving
    frequently. If we do not upgrade all systems to RedHat 4
    while we can still plan for this at our leisure, we can find
    ourselves in a situation where we will be forced to upgrade
    one day because some critical application is no longer supported
    on RHEL3.

    ', '', '', 1, 'CPT/Tom Walker', '', 0, 0, 0, 6, 7, '2006-02-14', NULL, 0, '2006-02-16 14:18:19', 'HUIZINGA'),
(223, 'Replace (Thorin) Backup DLT Tape Libraries with LTO Libraries', 'Install, configure & integrate a new LTO Tape Library into our backup enviroment to upgrade from the old DLT tape libraries, currently attached to Thorin.  (This work does not affect systems or backups behind the SOGS firewall).', 'The current DLT solution in place is deteriorating which is causing downtime and maintenance to be performed on an almost weekly basis.  The current DLT drives have a very high failure rates which require us to shut down the system.  Currently, there are 4 tape drives offline .  Addutionally, the drives are slow in comparison with today''s technology, and each tape holds a relatively small amount of data.  The LTO system will hold ten times the amount of data per tape, and is over ten times faster.  This will allow us to backup more data in less time, and have fewer tapes to manage.

    (LTO is already used to backup the systems behind the SOGS firewall.  However, behind the SOGS firewall, LTO2 is in use and the upgrade for Thorin will be LTO3 (faster and more capacity than was available when the SOGS firewall solution was implemented)).', '', '', 6, 'CPT/Vera Gibbs', 'Doris McClure', 6, 254, 4, 12, 7, '2006-03-06', NULL, 0, '2006-03-07 14:24:54', 'HUIZINGA'),
(224, 'Load all stsci email aliases into LDAP', 'Load all email aliases (/etc/aliases) into LDAP.', 'Due largely to increases in spam, we are expending an increasing amount of effort to support our current email infrastructure.  Our current effort floats between 1.4 and 1.6 FTEs.  A huge portion of this (0.7 - 0.9 FTEs) is directly related to Donner (our main email router, also known as smtp.stsci.edu) not having direct knowledge of all the institute email addresses (Donner relies heavily on Happy and the /etc/aliases file as the authoritative email address source).

    By not having direct knowledge of the STScI email addresses, the email queues increase dramactically on Donner.  This causes email slow downs to occur (noticable by users as submission wait times as well as time-to-receit times).  This is also related to being blacklisted by sites such as "Spamcop" which blantantly disregard RFC 822.  When STScI is blacklisted, email is not accepted by certain other sites. The number of times we have been blacklisted has also been dramatically increasing in the past months.

    By moving /etc/aliases into LDAP, Donner would have direct access to all stsci addresses and would be able to reject email clearly not for valid STScI users before it is accepted so no bounce is needed (and thus no queue entry).

    This was put off in the past because of <a href="https://www.stsci.edu/institute/org/ot/Governance/ppt/projectByID?projectID=13">
    Project 13</a> (Email consolidation), SCS (Staff Computing Strategy), and a LDAP restructing project.  Because of the amount of effort being expended on support and compared to the level of effort that would be required to just dump the /etc/aliases file into LDAP (without restructuring), it seems reasonable to split this work out into a new and separate project.

    At the same time, though not directly related to this work, the use of Mail Hurdle (grey listing) should be preliminarily broached with STScI decision makers and staff.  Implementing Mail Hurdle could decrease spam received by STScI staff by over 75%, possibly reaching as high as a 90% reduction but at a cost of very minor delays for a small percentage of external emails.  Though not thoroughly calculated, implementing Mail Hurdle could save an additional 0.5 FTE effort in supporting the email infrastructure. See <a href="https://www.stsci.edu/institute/org/ot/Governance/ppt/projectByID?projectID=224">
    Project 221:  Improve Spam Filtering</a>



    ', '', '', 5, 'CPT/Matt Sienkiewicz', 'Doris McClure', 6, 254, 4, 9, 3, '2006-03-07', NULL, 0, '2006-03-07 18:17:41', 'MATTS'),
(225, 'Upgrade Donner hardware from MD400 to MD450', 'Replace the Donner hardware, currently a EOLed MD400, with a MD450.', 'Donner, also known as smtp.stsci.edu, is our main email router and is currently a MD400.  Mirapoint, the vendor who produces our main email hardware, which includes Donner, has "End of Lifed" the MD400.  This means standard software upgrades will no longer be avaliable after Jan 2007.

    We obtained a newer MD450 from the HST Project.  The standard software support for the MD450 is expected to be available until Jan 2009.

    Since Donner is only a mail router, and doesn''t contain user IMAP email boxes, it is expected that the upgrade will be fairly straight forward.  Additionally, the new system can be setup, configured and tested while the current system is still active.  Downtime is expected to be minimal, bordering on none.', '', '', 5, 'CPT/Phil Grant', 'Doris McClure', 6, 254, 4, 9, 7, '2006-03-07', NULL, 0, '2006-03-07 14:28:23', 'HUIZINGA'),
(226, 'Upgrade OSS and OSSDev NASA Origins servers', 'Spec, procure and install two replacement servers to replace the old operational and development systems for NASA Origins, OSS and OSSdev. ', 'These Windows servers are ~7 years old, and OSSDev has
    already died. These systems are critical for the NASA
    Origins project as they are integral to daily business
    for folks around the country.

    If time allows, before committing to a one on one replacement we would
    like to evaluate whether the OSS services can be consolidated
    on an other ISS server, or whether we can combine operations
    and development on a single server running virtual server.
    ', 'OPO has direct funding for this.', '', 1, 'OPO/Kelly Williamson', 'OPO/Stratis Kakadelis', 13, 1, 4, 10, 7, '2006-03-08', NULL, 0, '2006-03-08 20:42:18', 'HUIZINGA');
INSERT INTO "description" ("projectID", "name", "description", "rationale", "businesscase", "dependencies", "maturityID", "proposer", "customer", "sponsorID", "fundingsourceID", "hostID", "technologyID", "typeID", "created", "ended", "finalID", "lastModified", "lastModifiedBy") VALUES
(227, 'OPO Mac Compute Cluster', 'Create a Mac based HPC cluster to support compute intensive graphics rendering and animation applications for the
    OPO Imaging and Video/Animation Groups.', 'Within OPO News, the Image Processing Group (IPG) and the animator of 2D/3D projects require substantial computing resources to produce increasingly large images, illustrations, standard definition (SD) and high definition (HD) video for public distribution of Hubble''s results.
    Current processing power on the desktop is no longer
    sufficient to meet OPO requirements for timely
    deliverables.

    There are a couple of factors creating this limitation: (1) the Advanced Camera for Surveys (ACS) large mosaic datasets and (2) HD video requirements.

    Initial processing of data from the Hubble archive requires substantial processing power:  CPU, RAM and disk space.  Single datasets now can exceed the address space available using standard operating system and application software.  For example, the Orion Nebula mosaic, when fully assembled was more than 1 billion pixels (>1000Mpx), too large to be processed into a single mosaic.  The field was retiled into seven separate, overlapping pieces to permit assembling the initial ACS observations for each filter.

    2D and 3D have similar and different requirements in processing and storage requirements.  2D motion files are primarily generated from files from IPG, except when it’s driven by artwork or by the combination of the two.  Movies, video clips, are created from these stills.  This is accomplished with Adobe Photoshop (CS2), Adobe After Effects (6.5) and Apple Shake (v4.0), primarily on Mac OSX.  Additional plug-in software is used to allow for image, time or other graphical manipulation.  Adobe After Effects and Apple Shake are compositing applications, which are very similar functionally as Adobe Photoshop, but include the addition of time and 3D (perspective).

    3D requirements use the system resources intensively.  For 3D animations, Alias Maya 7.0 is used.  The Maya application allows for creation of 3D environments, particle and fluid simulations and complex object building.  The application runs locally on the desktop (Mac OSX, Windows, and Linux).  Depending on the complexity of the animation and the subject matter the files sizes can grow exponentially.  Building of objects, whether they are new planets or flying through nebulas are created with primitives (spheres, torus, etc.) and/or particle systems (clouds, fluids, etc.).  Dynamic systems need a lot of RAM, CPU and disk space.  Keyframes and behaviors are created for objects and cameras and their attributes to control just about everything; color, camera position, textures, lighting, particles, shapes and sizes, forces, etc.

    Once a 3D environment is finished the scene file needs to be ‘rendered.’  Rendering is the process of generating an image from a model (scene), by means of a software program (Maya has several built-in rendering programs).  This process also holds true for 2D animations, as described earlier.  But in this case, software (After Effects and Shake) ‘render’ out final image sequences or movies from the manipulation of the input images.  Currently, rendering of final project or scene files is computed from the host machine (local desktop).  All of these programs have the capability to render to multiple nodes (multiple machines).  Earlier, about a year ago, the Beowulf cluster was utilized to render out Maya scene files over multiple rendering nodes, roughly 30 computers (each with 2 CPUs).  The process of computing the scene file into actual frames was greatly reduced.  Unfortunately, the Beowulf cluster has not been upgrade to a compatible Linux version only 4 CPU’s can handle the newer Linux version.  Consequently, rendering files are mainly done locally.  This puts major strain on the computer; so large renders are initiated over night. ', 'OPO has funding for hardware and software (~$25k).

    ', '', 1, 'OPO/Greg Bacon', 'OPO/Stratis Kakadelis', 13, 1, 0, 5, 4, '2006-03-13', NULL, 0, '2006-03-13 14:15:16', 'HUIZINGA'),
(228, 'Support Mac on Intel', 'Make MacOS-X on the new Intel based architecture a
    supported configuration at STScI.', 'Apple is aggressively phasing out PowerPC based Macs in favor
    of Intel based systems: Shipping of 15" PowerBooks stopped less
    than two weeks after the 15" MacBook Pro became available.

    The SIPE branch in CPT has completed an evaluation of an Intel based iMac, and found few issues. SIPE continues to support evaluations and testing by other divisions
    and individuals.

    About 10 users indicated they would prefer to order 15"
    MacBook Pro''s as part of the current M&E desktop/laptop procurement cycle, though none of these was a critical
    system. Today we do not have the
    processes and infrastructure in place to start deploying and supporting these systems, which is the rationale for this
    project.

    Based on Apple''s best practices and an initial assessment,
    the preferred approach is to move away from re-imaging new
    systems, and instead layering STScI specific applications and configurations on top of the factory installed OS.

    At the time of this writing, our top priority for the
    Mac environment continues to be upgrading all existing Macs to Tiger (Mac OS X Upgrade to Tiger project, #178).
    Understanding how much, if any, of this project can be done
    in parallel to that remains to be seen.
    ', '', 'Resource conflicts, but possible synergy with #178: Mac OS X upgrade to Tiger.
    ', 1, 'CPT/Ron Russell', 'CPT/Doris McClure', 6, 254, 4, 6, 3, '2006-03-13', NULL, 0, '2006-03-13 23:35:04', 'HUIZINGA'),
(229, 'Mac INLINE Integration', 'Support sharing data on the INLINE RAID array between
    Solaris, Linux and Mac desktops in INS.
    Resolve UID/GID conflicts, either by reasigning existing
    IDs or by creating new ones that avoid OS conflicts with
    reserved UID/GIDs. NFS Export the INLINE to INS Mac desktops.

    Scope is limited to fixed IP Mac systems only, and this
    solution will only be implemented for INLINE use. ', 'INS has started to use a new centralized storage system: the “INLINE” (name of vendor). This network-attached storage (NAS) RAID array replaces several smaller and old SNAP (another vendor name) NAS servers, and has expanded available storage to 5TB. INS is developing internal use policies and guidelines to make effective use of this resource, and has started to move shared data on to the system. Because data is only accessible over 100Mbit desktop connections and the current gigabit backbone, performance is too slow for interactive tasks. The INLINE is used mostly for sharing group data, freeing up local disk space for new projects.
    Solaris and Linux users have direct access to the INLINE by NFS mounting /data/inline1.
    On our Linux and Solaris environments we have aligned user IDs and group IDs from the very beginning. In our Mac environment, we have routinely created user accounts with the same user ID as on the Linux/Solaris clusters. However, some of the group ID’s have conflicts on the Mac. The most widely used “science” group corresponds to the default “guest” GID on the Mac (31), and standard groups such as “staff” correspond to 10 on Solaris/Linux and 20 on the Mac.
    Fifteen or so years ago, when we first deployed Unix systems at STScI, we simply started using the lowest available UIDs and GIDs for our own use. E.g. on Solaris, Fred Romelfanger’s UID is 9, and ~10 users still have UIDs below 100. On the Mac, low UIDs are reserved for system use. Solving this problem for the Mac may involve changing UIDs and GIDs on Solaris and Linux or creating new groups with higher numbers. The purpose of this project is to determine an acceptable approach to resolve this problem.
    Even if we can align UIDs and GIDs with the Mac, we cannot export all Solaris and Linux disks to Macs for data security reasons: on the Mac, any user can change his or her UID/GID, therefore pretending to be an other user, and so access potentially confidential information on cross mounted Solaris or Linux disks. This problem can only be resolved after support and management of the Mac environment has become responsive and flexible enough to revoke general user admin privileges. As long as INS is aware of this caveat, and agrees that all data stored on the INLINE can be shared across INS staff, we can export the INLINE partitions to INS Mac users only. Since the INLINE is intended only for functional science data, this is not a major inconvenience. Because this solution will involve manual processes, its implementation will be limited to this one use case only. All other data sharing issues with Macs have to wait for completion of the larger centralized account management project.
    ', '', 'Potential resource and timing conflicts with Tiger upgrade and Mac support on Intel projects.', 6, 'INS/Paul Lee', 'INS/Chris Blades', 6, 1, 4, 6, 4, '2006-03-22', NULL, 0, '2006-03-22 15:26:54', 'HUIZINGA'),
(230, 'INS INLINE Disk Augmentation', 'Augment the disk storage available on the INS INLINE NFS server.  ', 'In addition to providing more disk storage for INS, that is needed for normal operations as well as SM4, this increase in disk storage will allow the removal of the older SNAP servers.
    Edwin okayed this increase on Mar 22, 2006.<br>
    Please reference the <a href="https:/institute/org/ot/Governance/ppt/projectByID?projectID=182">Workgroup Storage for INS Installation and Integration</a> project for details of the original installation.', '', '', 1, 'INS', '', 0, 0, 0, 0, 0, '2006-04-03', NULL, 0, '2006-04-03 14:18:59', 'MATTS'),
(231, 'WebDAV Calendar Service', 'This project will implement the recommendations of the WebDAV Calendar Sharing evaluation.  It will create a WebDAV repository on a production web server, with access controlled by the Enterprise Directory (LDAP), for calendars published from iCal and other calendar clients, so that other people can see them.  ', 'From the evaluation ("http://www.stsci.edu/institute/org/ot/TechWatch/techEvaluation/Evaluations/eval_webdav_calendars":http://www.stsci.edu/institute/org/ot/TechWatch/techEvaluation/Evaluations/eval_webdav_calendars):

     The work involved in implementing this technology consists of several steps:

     * Adding some Apache modules (which are useful for other purposes, as well) and configuring them, and perhaps installing a PHP product (basically dropping it on a web site),

     * Deciding how to handle write access to calendars and develop relevant procedures and scripts, and

     * Moving to a production server and scaling for hundreds of users.

    Sharing calendars published from existing tools to a centralized site using WebDAV is quite easy for users (on certain platforms) and may be of general benefit.  The benefit falls short of a comprehensive solution for scheduling meetings, but is recommended as an interim solution.  We recommend that CPT offer a WebDAV repository of shared calendars, along with a way of discovering and viewing calendars in a web browser, as a supported service to Institute staff members.

    The technology cost can be low if implemented on an existing production Apache server.  The cost is mostly up front, with a cost for software upgrades but none (practically) for day-to-day maintenance.  The Apache modules required would be generally useful, and their implementation is recommended.

    We recommend blocking insecure connections to this service at the firewall, to protect LDAP passwords.  We recommend the “live with it” option (i.e., LDAP account required for write access and off-site access, with no other controls) for controlling access to calendars.  The webmaster can always handle any special cases.

    If this service becomes popular, the load imposed on any single production web server may become excessive.  We need to have a plan to keep capacity in line with demand before we deploy the service.  Or commit to continuing to look for a comprehensive calendaring solution, which might include functionality currently in the leave request and conference room scheduling systems.
    ', '', '', 1, 'HLA Logistics Team', '', 0, 0, 0, 0, 0, '2006-04-06', NULL, 0, '2006-04-06 21:08:05', 'payne'),
(232, 'Bulletin Board Service', 'This project will implement the recommendations of the Bulletin Board Evaluation.  It will create an instance of the PhpBB product on a production server.  The smaller part of the work is enabling PHP on a production web server.  The much greater part of the work will be creating a supported instance of the MySQL database to drive the bulletin board.', 'From the evaluation ("http://www.stsci.edu/institute/org/ot/TechWatch/techEvaluation/Evaluations/eval_bboard":http://www.stsci.edu/institute/org/ot/TechWatch/techEvaluation/Evaluations/eval_bboard):

    PhpBB is a popular open source bulletin board that satisfies the needs of the original requestor, and is a good fit in terms of user experience. All of the other reviewed products fell short in some way. However, we did not review any commercial products or hosted solutions (e.g., Basecamp, or Backpack, Basecamp’s “little brother”).

    There are some gaps between the needs of this product and our production environment, however. The most costly of these will be a production instance of MySQL, self-described as “the world’s most popular open source database.” We have personal or workgroup instances of MySQL, so there is local experience that can be tapped. But it is unlikely that any of these instances is getting the full treatment that a DBA could provide. Some modules also need to be added to the Apache environment to get this to work.

    We need to get PHP on the production Apache servers. That is not a lot of work, and is not a project, but the process will take time.

    We need a production MySQL server. This is a project.', '', '', 6, 'Harry Ferguson/Leigh McCuen', '', 6, 0, 3, 14, 4, '2006-04-06', NULL, 0, '2006-05-03 16:18:44', 'HUIZINGA'),
(233, 'Mirapoint Appraisal', 'Revisit Mirapoint as an email solution.', 'The Mirapoint Messaging Appliances are simplified appliances to handle receiving, sending and reading mail.  They also have antivirus and anti-spam components built in, as well as a web-based email uder interface, as well as an administrator interface.

    Out of the box, the Mirapoint appliances are designed to be both high performance and simple to install/configure/maintain. While these appliances may have a larger upfront cost than many "roll your own/home grown" solutions, they are designed to deliver a lower lifetime TCO.

    However, there are drawbacks to such a simplified and "static" proprietary solution from a sole-source vendor.  Most of the problems are when we, as the customers, want or need to go outside the "box" Mirapoint made for their customers. A few examples of the Institute''s difficulties with this "boxed solution": email lists; migrating mail from one appliance to another; integration with email aliases; integration with our current backup system; Mirapoint''s adding and dropping anti-spam programs and methods as they see fit; being able to set up standards compliant services, such as SMTP submission; possible integration with third party solutions; and so forth.  (We spend a large amount of time adapting to the tool rather than having a fully flexible tool that would adapt to our needs).

    Our current mail system is consuming ~500 out of a maximum of 700 GB of storage.  Storage use increases at between 10 and 20 GB per month, so determining and implementing a solution will become critical in the next 10 to 20 months.  In order to stay with Mirapoint products, the Institute would not be able to upgrade the current systems but be forced to purchase and migrate to a larger model mail storage solution.

    There are benefits to a Mirapoint solution; a "home grown solution"; or a hybrid of Mirapoint appliances and home-grown services. There are costs, risks and limitations to each approach. In order to best serve our customers,the Institute needs to step back now and consider which solution would best meet our current and future needs.
    ', '', '', 1, 'CPT', '', 0, 0, 0, 0, 0, '2006-04-12', NULL, 0, '2006-04-12 16:53:11', 'MATTS'),
(234, 'Implement RSS', 'RSS stands for Really Simple Syndication. Or Rich Site Summary. Or RDF (Resource Description Framework) Site Summary. It all depends who you ask.

    RSS is a way for one site to allow publication of some of its content on other sites – very much in the way some newspaper columnists have their articles syndicated across national or international publications. RSS lets anybody with a smattering of HTML skill syndicate the content on their site, content which may be in the form of news feeds, event listings, headlines, discussion summaries, newsletter articles and so on.

    RSS is becoming a standard method of publishing information on the
    Internet and within larger enterprises. RSS is often associated with
    weblogs, but it is increasingly being used to publish news, press
    releases, and similar information. The biggest advantage of RSS is
    it''s convenience. RSS allows users to subscribe to an RSS "feed" that
    can publishes updates. Users can subscribe to a feed using a
    dedicated RSS reader, email clients, and some Web browsers. This
    subscription capability lets users gather and collate multiple
    sources of information in a convenient viewing format, and have the
    information automatically update on a regular basis.
    ', 'There are several advantages of using RSS at the Institute. First,
    RSS would allow various groups (instrument teams, CPT) to publish
    news, work status, and information of interest to other Institute
    employees that could be easily retrieved. In a typical scenario,
    instrument teams could publish work status, CPT could publish
    announcements of work or other technical updates, BRC could post
    admin news, and so on. Institute personnel would have the option to
    subscribe to these feeds, or the feeds could be gathered onto a
    central news page accessible from the STScI intranet. This could work
    as an extension of the current Zope news capability, as a separate
    Zope feature, or both.

    Another advantage is the positioning of RSS with respect to email
    alerts and news. While RSS is probably not as good for time-critical
    information as email alerts, and does not have the features of our
    existing news/calendar product, it does offer functionality that
    would let it provide coverage between email alerts and the current
    web site news feature. The standardized nature of RSS and it''s
    subscription capabilities would allow news to be gathered from
    various sources, which is currently difficult to do with our existing
    news product. While not as immediate as email alerts, RSS would still
    let us publish and broadcast critical indormation in a timely manner
    with the additional advantage of the information being persistent
    enough for later reference.

    The downside of implementing RSS for the Institute is primarily an
    issue of resources. Implementation of RSS would most probably require
    either a) extension and expansion of the existing Zope news/calendar
    feature, or b) implementation of a new feature and interface for
    creating the RSS file and displaying feeds, or c) both. While not a
    massive undertaking, it would require around 6-8 man-weeks
    (estimated) to implement. This figure could vary depending on the
    scope of work required.

    Synopsis
    --------

    Pros:

    - allows STScI groups to easily publish and broadcast information
    - allows STScI personnel to conveniently gather news
    - allows personnel to gather news relevant to their work and exclude
      irrelevant info (higher signal/noise ratio)
    - allows us to extend news and calendar features to pull feeds from
      multiple sources

    Cons:

    - will require a project to implement
    - may require a rework of existing news and calendar features


    A very good initial
    candidate, so it seems, is CPT News.  ITS is amenable to using CPTnews as a pilot for this utility.', '', '', 1, 'CPT', '', 0, 0, 0, 0, 0, '2006-04-12', NULL, 0, '2006-04-12 20:06:05', 'MATTS'),
(235, 'HRIS Implementation', 'The HRIS Implementation project will implement a replacement Human Resources Information System (HRIS).  The new system will replace the existing PeopleSoft system.  This project follows the HRIS Strategy project, PPT#167.<br><br>

    This implementation project will install the new software system resulting from the <a href="http://www.stsci.edu/wiki/cisd/HrisStrategy"> HRIS Strategy</a> project.
    <br><br>
    Please refer to  <a href="http://www.stsci.edu/institute/org/ot/Governance/ppt/projectByID?projectID=167">PPT#167</a> for project background.<br>
    <br>

    This implementation project should result in a production system by October 1, 2006, to meet the customer''s (Sheryl Bruff, HR Branch Chief) requirements to have a useable system for the upcoming electronic Benefits Open Enrollment period for STScI employees.
    ', 'Rationale for the Human Resources Information System (HRIS) implementation:<br><br>

    This project implements the system selected in PPT#167, HRIS strategy.<br><br>

    A prior Tiger Team led by Marty Durkin (formed to assist the Human Resources Branch with some urgent data access problems and to consider potential approaches to the ongoing HRIS problems) determined that it was not practical to upgrade the existing HRIS system (PeopleSoft), due to resource requirements and extremely high costs of upgrading, training, and support.
    <br><br>
    Due to increasingly loss of functionality with the existing system, the need to obtain a replacement HRIS project has become urgent for the Human Resources office.<br><br>

    The Human Resources Branch requires an HRIS system that will facilitate managing the primary tasks and responsibilities of the Human Reources staff, such as recruitment/hiring, benefits, and compensation management.  The system must also maintain HR-related data in a confidential secure database.  The HRIS must include a user-friendly report writer to facilitate custom and ad-hoc queries by HR staff members.<br><br>

    The work of the Human Resources Branch is important for running the Institute and complying with several Federal, State, DoD, NASA, and auditors'' regulations and requirements.  A useable HRIS system is critical to the Human Resources work.  Replacement of the current system is important to reduce the risks that would result from not having an operational system.
    <br><br>
    Once the precedent project (HRIS Strategy) selects an HRIS product that meets the requirements of the Human Resources Branch, this project (HRIS Implementation) should implement the new system as soon as possible.
    ', '', 'Dependencies for HRIS Implementation:

    This project should closely follow the HRIS Strategy project.  During both the strategy and implementation phases, interfaces  will be examined and care will be taken to ensure capability with existing Oracle databases and simplify interfacing to the Accounting/Payroll Costpoint system.
    ', 1, 'BRC', 'Ray Beaser / Sheryl Bruff / Karen Schimpf', 4, 254, 4, 4, 7, '2006-04-14', NULL, 0, '2006-04-14 16:46:46', 'PANTALONE'),
(236, 'Migrate DOORS Server to Windows', 'Install the latest version of DOORS on a Windows server infrastructure, and migrate all existing data and configuration information from the current Solaris installation.
    ', 'Telelogic DOORS is the Institute''s standard requirements
    management system. It is an integral and critical component
    in the ESS systems engineering and development process,
    supporting all Institute missions.

    The DOORS system consists of a central DOORS server and
    database, hosted on Solaris, and client software running on
    engineering staff''s Windows desktops or laptops. To support
    requirement reviews etc. DOORS generates MS-Word documents,
    that can be distributed as Word or PDF documents to
    stakeholders on any desktop platform.

    Project #210 is concerned with making the DOORS client
    available to Mac users - likely through Citrix. The
    rationale for #210 also mentions the option of moving the
    DOORS server from Solaris to Windows. The purpose of
    this project is to address that specific point.

    ESS has requested new features and an upgrade to
    DOORS v8.0 to get access to
    new functionality. However, DOORS v8 is only supported
    on Solaris 9 and up (see help desk call CNSHD547069).

    Our experience has also shown that DOORS is primarily supported on Windows, and support and features for
    Solaris are lacking or lagging.

    As part of the early planning for this project we need to
    determine if DOORS can be supported on existing infrastructure or whether this requires new hardware.
    ', '', '', 1, 'ESS/Rusty Whitman', '', 0, 0, 0, 0, 0, '2006-04-27', NULL, 0, '2006-04-27 17:33:21', 'HUIZINGA'),
(237, 'Planning and Reporting Tool Strategy', 'This project will evaluate off-the-shelf budgeting tools to replace the in-house system currently in use by Program Management (PM) to collect and establish cost of budgeted work and to provide a variety of analysis tools and financial progress reports against various versions of the budget.  In the event that no acceptable replacement is found, the project team will define a project to perform the work necessary to make the existing Microsoft Access/Excel system more stable and maintainable.

    Background materials:
    <ul>
    <li>PPT 192 “Deploy Crystal Server” created Sept. 2005:
    <a href="http://www.stsci.edu/institute/org/ot/Governance/ppt/projectByID?projectID=192">PPT 192</a>
    </li>
    <li>S. Belt write up for 1/11/06 meeting to discuss alternatives</li>
    <li>PM Budget Analysis Reporting Tiger Team started 1/27/06 – charter and results:<br>  <a href="http://www.stsci.edu/wiki/center/TigerTeam/PMTigerTeam/FrontPage"> href="http://www.stsci.edu/wiki/center/TigerTeam/PMTigerTeam/FrontPage</a>
    <li>Operations Concept and Systems Requirements Documents created by Judy Ashwell 3/17/06</li>
    <li>Email from S. Belt to L. Wolff dated 4/12/2006 documenting problems with Deltek budgeting system in past.</li>
    </ul>
    ', 'Program Management is responsible for the creation and distribution of Institute budgets and reports that track actual resource usage versus the budget.  Reports are prepared monthly for internal uses that are accessed by division, missions and team leads.  NASA monthly and quarterly reports are also generated, as well as many management *ad hoc* reports and queries. The existing system in use to create and maintain these budgets was built in-house and has been problematic in four areas.
    <ul>
    <ol>
    <li>Integration with the Deltek Costpoint accounting system</li>
    <li>Row limitations and performance issues with the current versions of Excel (versions Excel 2000 for Windows 2000 and Excel 2002/2003 for Windows XP)</li>
    <li>Performance issues with prototype Crystal Reports reports</li>
    <li>Maintainability and accuracy of the queries in Microsoft Access and the Excel formula-driven reports.</li>
    </ol>
    </ul>
    Recent work has corrected the issues relating to integration with Costpoint by replacing a rather cumbersome process with direct access to the underlying Oracle database.  The performance issues with Crystal Reports have been addressed to the point that it is now possible to begin work to replace the Excel reporting system (and its row limitations) with Crystal.  The maintainability issue would be partially addressed with the replacement of Excel with Crystal since the complexity of the Excel spreadsheets with multiple worksheets containing redundant formulas with cryptic (for example, if $b6$=$f3$) formulas would be replaced by fewer formulas with named contents that would be more easily understood.  However, Program Management remains concerned about the cumbersome user interface on the Crystal Reports version 11 demonstration, because we have a wide variety of users distributed throughout STScI.
    <br><br>
    All of the work done thus far has been intended to address critical needs in the near-term.  The long-term approach to resolving the situation would include an investigation of off-the-shelf products.

    ', 'A Systems Requirements Document has been developed as a product of the Tiger Team and describes the objectives of the Planning and Reporting Tool.
    <br><br>
      In summary:
    <ul>
    <li>Provide a framework within which the organization may plan its labor and non-labor resources on an annual basis.
    <li>Provide monthly reports to the organization to assist in re-planning, forecasting and monitoring of the execution of the budget.
    <li>Provide monthly and quarterly reports to NASA on the budgetary performance of various missions and contracts.
    <li>Provide a reliable and accurate source for responding to *ad hoc* inquiries about annual performance trends.
    </ul>
    Please refer to the Operations Concept Document and the Systems Requirements document for information regarding scope, stakeholders, and detailed objectives.

    ', 'It is desirable that the budget process has some integration with the Deltek Costpoint accounting system.  Deltek offers a budget and analysis module through COGNOS, although there are documented problems with this system from 1999-2002 (when it was called “Adaytum”).  The desire for integration makes the Deltek budget module a candidate for evaluation. In addition, the HRIS Strategy Project (PPT 167) will be evaluating the Deltek human resources module.  The CIO has invited Program Management to participate in the HRIS Strategy''s evaluation of Deltek software.  It is hoped that the planned demonstration of Deltek''s HR module can be expanded to include a presentation describing the budget module.


    ', 1, 'Susan Belt / Judy Ashwell, Program Management', 'Program Management', 11, 0, 9, 4, 5, '2006-05-01', NULL, 0, '2006-05-01 22:44:17', 'PANTALONE'),
(238, 'SAN Storage Growth', 'Bring 5-7TB of new storage capacity online in the Archive
    storage area network. Finalize disk technology, capacity
    and performance selection, procure and integrate one tray
    of disks in the CX700, decide on allocation.', 'Recently, we allocated the last remaining capacity on the
    EMC Symmetrix to ARCHC to grow the HST Data Depot. HST/MAST
    is expecting up to 3.5TB of new high level science products
    over the next year, with 2-2.5TB arriving this fiscal year.

    The Archive webserver (STDATU) is also still using a RaidTec
    storage device, which is well past its predicted lifetime,
    for caching HST retrievals.

    By mid-May, the new CX700 RAID array will come online and
    be integrated in the SAN for use by Kepler. The Kepler and
    HST mission have agreed to share the excess capacity on
    the CX700 until the Kepler mission becomes operational
    and starts to consume significant amounts of storage.

    In addition, the mission data and storage inventory
    identified several options to free up storage on
    the Symmetrix (such as staging database backups on the
    CX700), and the Digital Sky Survey is scheduled to
    move from the "CASB" infrastructure in to the SAN.
    Finally, the HLA has an immediate need for limited
    storage to support the pilot and concept studies.
    Final allocation will happen in the project.

    The new storage will consist of a full tray of disks
    for the CX700.


    ', 'In ED05, we identified $100k towards SAN storage.
    The ROM for this storage is $25k. ', 'Finalize integration of CX700 as part of
    Kepler Initial Storage Project.', 6, 'CPT/Edwin Huizinga', 'HST/Rodger Doxsey', 1, 1, 9, 5, 7, '2006-05-02', NULL, 0, '2006-05-02 13:20:43', 'HUIZINGA'),
(239, 'Identity Management', 'Create an Identity Management governance body; policies and
    technology roadmap.', 'How many different accounts and passwords do you have
    to remember? Why can''t you share data between your Mac and
    Linux or Solaris systems? This is how STScI staff
    experience the lack of an integrated user account system.
    From the IT support side, the Help Desk has to check and
    disable 30-40 unique accounts each time a staff member
    leaves. This is a complex and fragile process, with
    obvious security concerns.

    Over the past two years, the Institute has made some
    progress by providing LDAP based authentication for
    Email and several stand alone applications (SOCCER, PPT,
    Web Proxy), and we have manually synchronized user IDs
    and group IDs accross Linux and Solaris to allow easy
    sharing of data across NFS.

    In addition to the LDAP directory service, we also need
    Window''s Active Directory to manage the windows domains
    and accounts, and we also need a directory service
    (to be determined) to manage our Mac environments.
    Some information only needs to be managed and maintained
    in one specific directory service, other information
    has to be shared accross all. The technology solution to
    this problem is to place all directory servers under a
    so-called Identity Management System (IdMS). The IdMS
    maintains the information that needs to be shared accross
    all directory servers, and is used to provision identities.
    This recognizes that accounts, privileges, office numbers,
    etc. are just properties of a person or an "identity".

    Identity Management goes beyond the realm of IT: HR is responsible to manage STScI staff information such as name,
    affilitation (staff, consultant), location, etc. while
    CPT is responsible to manage computing related
    information.
    Deciding which information is maintained
    in an IdMS, who or what is the authoritative source of
    this information (e.g. the HR Management System), and
    what information is shared accross the underlying directory
    services requires new Institute policies. These policies also need to address
    how account management and user roles are implemented in
    new software systems (DADS, GMS, PRD, etc.) databases, etc.

    In addition to up front policies, IdM requires a governance
    body including at a minimum HR, CPT and ESS to provide
    a continued forum for decisions regarding data ownership, policies etc.

    The purpose of this project is to establish
    IdM governance, policies and procedures and to develop
    the technology roadmap for deployment in a follow on implementation project.


    ', '', '', 1, 'CPT/Harry Payne', '', 0, 0, 0, 0, 0, '2006-05-02', NULL, 0, '2006-05-02 14:11:30', 'HUIZINGA'),
(288, 'Test item', 'Project created for testing purposes.', 'Not especially important, now that you mention it.', '', '', 1, 'Harry', '', 8, 1, 0, 3, 5, '2009-08-13', '2009-08-13', 0, '2015-08-15 16:15:06', 'payne'),
(289, 'Test', '', '', '', '', 1, '', '', 3, 254, 9, 9, 8, '2009-08-13', '2009-08-13', 0, '2015-11-08 19:54:45', 'usera'),
(303, 'New project', 'Testing add a project.', '', '', '', 1, 'Harry', '', 6, 1, 2, 7, 4, '2015-06-15', NULL, 0, '2015-06-15 18:47:03', 'payne'),
(304, 'Another new project', 'Testing with caching.', '', '', '', 1, '', '', 0, 1, 9, 0, 0, '2015-06-19', NULL, 0, '2015-06-19 21:18:55', 'payne'),
(305, 'Testing add a project', 'Creating a project with just a name.', '', '', '', 0, '', '', 0, 0, 0, 0, 0, '2015-08-03', NULL, 0, '2015-08-03 20:24:43', 'payne'),
(306, 'Testing add a project', 'Testing landing with the correct project name.', '', '', '', 0, '', '', 0, 0, 0, 0, 0, '2015-08-03', NULL, 0, '2015-08-03 21:13:10', 'payne'),
(307, 'Testing add a project', 'Testing landing with the correct project name.', '', '', '', 0, '', '', 0, 0, 0, 0, 0, '2015-08-03', NULL, 0, '2015-08-03 21:16:02', 'payne'),
(308, 'Testing add a project', 'Still on landing properly.', '', '', '', 0, '', '', 0, 0, 0, 0, 0, '2015-08-03', NULL, 0, '2015-08-03 21:51:57', 'payne'),
(309, 'Testing add a project', 'Still on landing properly.', '', '', '', 0, '', '', 0, 0, 0, 0, 0, '2015-08-03', NULL, 0, '2015-08-03 21:51:58', 'payne'),
(310, 'Testing add a project', 'Still on landing properly.', '', '', '', 0, '', '', 0, 0, 0, 0, 0, '2015-08-03', NULL, 0, '2015-08-03 21:53:03', 'payne'),
(311, 'Testing add a project', '', '', '', '', 0, '', '', 0, 0, 0, 0, 0, '2015-08-03', NULL, 0, '2015-08-03 22:44:29', 'payne'),
(312, 'Testing add a project', '', '', '', '', 0, '', '', 0, 0, 0, 0, 0, '2015-08-03', NULL, 0, '2015-08-03 22:47:56', 'payne'),
(313, 'Testing add a project', '', '', '', '', 0, '', '', 0, 0, 0, 0, 0, '2015-08-03', NULL, 0, '2015-08-03 22:48:46', 'payne');

--
-- Truncate table before insert "disposition"
--

--
-- Dumping data for table "disposition"
--

ALTER TABLE "disposition" DISABLE TRIGGER ALL;
INSERT INTO "disposition" ("projectID", "disposedInFY", "disposedInQ", "dispositionID", "explanation", "reconsiderInFY", "reconsiderInQ", "startInY", "startInM", "finishInY", "finishInM", "lastModified", "lastModifiedBy") VALUES
(2, 2004, 3, 2, 'This project was deferred because of a lack of people resources. ', 2004, 4, 0, 0, 0, 0, '2004-06-29 14:58:47', 'HUIZINGA'),
(2, 2004, 4, 2, 'The most critical systems are sufficiently backed up, so this project can continue to hold without much risk. The enterprise-wide backup approach requires definition of the desktop backup plan as input. That plan will be a product of the Staff Computing Strategy project (which is on the working short list for FY05/Q1). Additionally, the new requirement to provide an offsite backup storage arrangement will influence this project.  The arrangements for the offsite storage and how we will retrieve remotely stored data, must also be solidified prior to working this project. The Offsite Storage project is part of the "working short list" for FY05/Q1.', 2005, 2, 0, 0, 0, 0, '2004-08-30 01:53:03', 'WOLFFL'),
(2, 2005, 2, 0, '', 0, 0, 0, 0, 0, 0, '2005-03-31 16:45:07', 'SINGER'),
(2, 2005, 3, 4, '', 0, 0, 0, 0, 0, 0, '2005-06-01 16:39:51', 'SINGER'),
(2, 2006, 1, 0, 'This project was uncommitted because its main objective is going to be achieved within the context of the centralized storage project. It is not terminated because we still need to revisit the storage and backup infrastructure of our backroom infrastructure systems. ', 0, 0, 0, 0, 0, 0, '2006-01-27 17:12:08', 'HUIZINGA'),
(4, 2004, 3, 2, 'Insufficient resources at this time.', 2004, 4, 0, 0, 0, 0, '2004-06-22 22:40:48', 'HUIZINGA'),
(4, 2004, 4, 2, 'A business case needs to be prepared for this project.  The business case should consider a trade between managing a single calendaring tool to the management of the "Leave System", "Conference Room Schedule", estimate of administrators and staff to manage personal schedules, etc.  An evaluation of Mirapoint''s calendaring tool should be completed in parallel with the business case analysis.', 2005, 2, 0, 0, 0, 0, '2004-09-14 15:25:12', 'HUIZINGA'),
(4, 2005, 2, 0, '', 0, 0, 0, 0, 0, 0, '2005-01-12 16:33:17', 'PAYNE'),
(4, 2005, 3, 0, 'A business case must be developed to consider this project request in a later cycle.  The business case should explore:<br>
    1) How many non-recurring meetings are typically scheduled through the Conference Room Scheduler?<br>
    2) Using an estimate of 15 minutes per meeting to account for the staff labor involved in the scheduling logistics, responding to a meeting requests, etc. and an average hourly rate of $70/hour (without OH/G&A), calculate the dollar amount of the labor expended on meeting scheduling. (consider this number the labor required for the current method)<br>
    3) Do a similar calculation as in #2 for a calendaring too1. Estimate, or determine through beta use, the number of minutes required for the scheduling. (It is anticipated that a scheduling tool that can automatically detect the availability of staff (to select the times a meeting may be scheduled) and the tool''s ability to also find and secure a conference room, will yield a lower number of minutes required for scheduling.)<br>
    4) Estimate the labor required to implement a calandering tool. (consider this number the labor required for the "new method)<br>
    5) Estimate the labor savings from dropping support for the Conference Room Scheduler (CRS) and the Leave Notification System (LNS)
    5) Consider the costs to implement, the labor savings from dropping support for CRS/LNS and determine how long it will take to recover the cost of implementing and licensing.  ', 2005, 4, 0, 0, 0, 0, '2005-09-25 21:58:07', 'WOLFFL'),
(4, 2006, 1, 5, '', 0, 0, 0, 0, 0, 0, '2005-11-08 23:48:17', 'payne'),
(5, 2004, 3, 0, '', 0, 0, 2004, 1, 2004, 5, '2004-07-22 13:55:30', 'HUIZINGA'),
(6, 2004, 3, 2, '', 2004, 4, 0, 0, 0, 0, '2004-06-23 13:11:11', 'HUIZINGA'),
(6, 2004, 4, 2, '', 2005, 2, 0, 0, 0, 0, '2004-09-01 13:26:10', 'WOLFFL'),
(6, 2005, 2, 0, '', 0, 0, 0, 0, 0, 0, '2005-03-23 19:28:04', 'HUIZINGA'),
(6, 2005, 3, 0, '', 0, 0, 0, 0, 0, 0, '2005-04-24 00:41:57', 'WOLFFL'),
(8, 2004, 3, 4, '', 0, 0, 2004, 11, 2005, 7, '2006-02-14 11:30:04', 'HUIZINGA'),
(10, 2004, 3, 2, 'Deferred ', 2004, 4, 2004, 6, 2004, 9, '2004-06-29 15:20:57', 'HUIZINGA'),
(10, 2004, 4, 4, '1) This project needs to be completed this planning period because the reduction in the desktop complexity offers multiple opportunities to reduce costs, 2) To shorten the request-to-desk cycle for desktop equipment, pre-imaged systems will be required.  The desktop strategy should be developed before embarking on an imaging strategy with the equipment supplier, 3) Completing the imaging capability will provide the greatest costs savings and increase the buying power of our IT equipment dollars. (See related project for the IT interface setup)    ', 2004, 4, 2005, 1, 2005, 12, '2005-10-05 18:57:18', 'SINGER'),
(11, 2004, 3, 2, 'Deferred because of a lack of people resources and because hardware "ownership" issues need to be resolved before this project can be successful.
    Existing GRID clusters continue to operate and meet the immediate needs of the Science and ESS staff.', 2004, 4, 0, 0, 0, 0, '2004-06-29 15:35:11', 'HUIZINGA'),
(11, 2004, 4, 2, 'This project is deferred until the Staff Computing project provides the long-term vision of which OS will be on the desktop and which will not.  Whether or not the OS platform is accessible at the desktop or via a data processing (i.e. backroom) resource, will have an influence on the types of products investigated and the approach for implementation proposed by the project team. The Staff Computing project is on the short list for FY05/Q1 and the expectation is this project could be reconsidered as soon as the required information is known (even if the Staff Computing project is not closed out)', 2005, 2, 0, 0, 0, 0, '2004-08-26 21:06:47', 'WOLFFL'),
(11, 2005, 2, 0, '', 0, 0, 0, 0, 0, 0, '2005-01-12 16:33:18', 'PAYNE'),
(11, 2005, 3, 0, '', 0, 0, 0, 0, 0, 0, '2005-05-05 10:29:12', 'HUIZINGA'),
(12, 2004, 3, 0, '', 0, 0, 0, 0, 2004, 3, '2004-06-19 13:50:04', 'payne'),
(13, 2004, 3, 2, 'Deferred because the Comet upgrade project had to be completed first.', 2004, 4, 0, 0, 0, 0, '2004-06-29 15:40:02', 'HUIZINGA'),
(13, 2004, 4, 2, 'Deferred due to staffing conflicts.', 2005, 2, 0, 0, 0, 0, '2004-09-01 13:31:25', 'WOLFFL'),
(13, 2005, 2, 0, '', 0, 0, 0, 0, 0, 0, '2005-01-12 16:33:18', 'PAYNE'),
(13, 2005, 3, 2, 'The staff needed to work this project are committed to other higher priority projects.', 2006, 1, 0, 0, 0, 0, '2005-04-23 05:22:15', 'WOLFFL'),
(13, 2006, 1, 2, '', 2006, 3, 0, 0, 0, 0, '2005-10-21 14:32:01', 'WOLFFL'),
(14, 2004, 3, 4, '', 0, 0, 2004, 3, 2004, 7, '2004-07-20 13:10:50', 'SINGER'),
(15, 2004, 3, 4, '', 0, 0, 2004, 4, 2004, 12, '2005-04-07 18:46:27', 'SINGER'),
(16, 2004, 3, 2, 'Lack of sufficient data describing the systems that would benefit most from
    such a strategy in the State of Technology. Many of the business and mission software systems were under significant change and introducing yet another enhancement was considered too risky. ', 2004, 4, 0, 0, 0, 0, '2004-06-29 15:45:38', 'HUIZINGA'),
(16, 2004, 4, 2, 'For the next half year, we only forsee using LDAP to authenticate for new services, such as the JWST DMS.  As long as we continue to use LDAP for such basic services, and there is no need to integrate LDAP with our HR systems, this project is deferred to the next planning cycle.  However, this project should be redefined to be more than just the PeopleSoft integration.', 2005, 2, 0, 0, 0, 0, '2004-08-30 18:14:48', 'WOLFFL'),
(16, 2005, 2, 0, '', 0, 0, 0, 0, 0, 0, '2005-01-12 16:33:18', 'PAYNE'),
(16, 2005, 3, 5, '', 0, 0, 0, 0, 0, 0, '2005-04-23 05:26:05', 'WOLFFL'),
(16, 2006, 1, 2, '', 2006, 3, 0, 0, 0, 0, '2005-10-25 01:11:56', 'WOLFFL'),
(17, 2004, 3, 4, '', 0, 0, 2004, 1, 2004, 7, '2004-11-23 21:17:24', 'DURKIN'),
(18, 2004, 3, 0, '', 0, 0, 2004, 1, 2004, 7, '2004-06-19 13:55:04', 'payne'),
(19, 2004, 3, 4, '', 0, 0, 2004, 1, 2004, 6, '2004-11-23 21:14:12', 'DURKIN'),
(20, 2004, 3, 0, '', 0, 0, 0, 0, 2004, 3, '2004-06-19 13:55:42', 'payne'),
(21, 2004, 3, 4, '', 0, 0, 2004, 4, 2004, 8, '2004-11-23 21:17:58', 'DURKIN'),
(23, 2004, 3, 2, 'With the installation of the Institute’s front door firewall in 2003, and the FY04 Q3 project to implement firewall rules, this project has been deferred and will be reconsidered for FY04 Q4. ', 2004, 4, 0, 0, 0, 0, '2004-06-29 15:55:05', 'HUIZINGA'),
(23, 2004, 4, 0, '', 0, 0, 0, 0, 0, 0, '2004-08-02 15:16:35', 'PAYNE'),
(24, 2004, 3, 4, '', 0, 0, 0, 0, 0, 0, '2005-10-05 19:01:14', 'SINGER'),
(25, 2004, 3, 4, '', 0, 0, 2004, 1, 2004, 5, '2006-11-24 20:28:58', 'payne'),
(26, 2004, 3, 2, 'With the installation of the Institute’s front door firewall in 2003, and the FY04 Q3 project to implement firewall rules, this project has been deferred and will be reconsidered for FY04 Q4. ', 2004, 4, 0, 0, 0, 0, '2004-07-01 16:53:25', 'HUIZINGA'),
(26, 2004, 4, 2, 'Deferral #1:Since the firewall rules project is underway, and we have no external commitments to implement this functionality we will defer this project to be reconsidered in the next cycle.
    ', 2005, 2, 0, 0, 0, 0, '2004-08-30 02:07:06', 'WOLFFL'),
(26, 2005, 2, 0, '', 0, 0, 0, 0, 0, 0, '2005-01-12 16:33:18', 'PAYNE'),
(26, 2005, 3, 2, 'GSFC has not set a due date for this work and other security tasks with higher priority has max''d out the security staff.', 2006, 1, 0, 0, 0, 0, '2005-04-23 04:33:40', 'WOLFFL'),
(26, 2006, 1, 5, '', 0, 0, 0, 0, 0, 0, '2005-10-12 00:38:35', 'WOLFFL'),
(31, 2004, 3, 0, '', 0, 0, 0, 0, 2004, 3, '2004-06-19 13:56:21', 'payne'),
(33, 2004, 3, 2, '', 2004, 4, 0, 0, 0, 0, '2004-06-29 20:21:14', 'HUIZINGA'),
(33, 2004, 4, 2, 'The most critical systems have been protected with an UPS connection.  This project must be deferred until the UPS replacement projects have been completed, thereby removing current staffing conflicts.', 2005, 3, 0, 0, 0, 0, '2004-09-01 01:52:09', 'WOLFFL'),
(33, 2005, 2, 0, 'Instead of a dedicated project, this work will be implemented
    by making use of opportunities to plug critical systems in
    to the power generator as part of routine work involving
    power cycling or other projects.
    ', 0, 0, 0, 0, 0, 0, '2005-03-30 20:33:48', 'HUIZINGA'),
(34, 2004, 3, 2, 'This project was deferred because we needed to complete the Internet Bandwidth project (#25), which included a task that allowed us to assess
    our ability to  examine internal and external traffic. Also, the Performance and
    Quality Monitoring project (#??) must be completed because it will create the basic data management infrastructure of performance data. With the completion of these two projects we are in a better position to develop a strategy for data collection and management for network-related statistics.', 2004, 4, 0, 0, 0, 0, '2004-06-29 20:35:01', 'HUIZINGA'),
(34, 2004, 4, 2, 'In FY04 we deployed the capability to monitor our external bandwidth consumption. We do not see an urgent need to scope out this project at this time.', 2005, 1, 0, 0, 0, 0, '2004-08-30 02:15:26', 'WOLFFL'),
(35, 2004, 3, 0, '', 0, 0, 0, 0, 2004, 3, '2004-06-19 13:56:48', 'payne'),
(36, 2004, 3, 2, 'This project was deferred because we had good work-arounds for the bugs it would address. The BRC staff required to do user testing were unavailable in this timeframe and asked for it to be reconsidered in the fall.
    Additionally, this can not be completed until a test environment for the existing deployment is available (item #87)', 2004, 4, 0, 0, 0, 0, '2004-06-29 20:45:16', 'HUIZINGA'),
(36, 2004, 4, 2, 'There are no critical patches required in the next 6 months and no problems with the existing environment reported at this time.  Additionally, the test and development environment must be in place before actually attempting an upgrade, so this project will be deferred until the test/dev environment is ready AND a critical patch needs installation.  This deferral will be reassessed after our new head of HR comes on board.', 2005, 2, 0, 0, 0, 0, '2004-09-01 12:28:10', 'WOLFFL'),
(36, 2005, 2, 0, 'This project was superseded by Project #162, which will address the stabilization and upgrade the software.', 0, 0, 0, 0, 0, 0, '2005-01-27 19:23:32', 'HUIZINGA'),
(37, 2004, 3, 4, '', 0, 0, 2004, 1, 2004, 5, '2005-02-25 18:30:56', 'SINGER'),
(38, 2004, 3, 4, '', 0, 0, 2004, 8, 2004, 10, '2005-02-25 18:31:58', 'SINGER'),
(42, 2004, 3, 5, 'This item was terminated because it has been superseded by the staff
    computing strategy development (item #10)', 0, 0, 0, 0, 0, 0, '2004-06-29 20:53:12', 'HUIZINGA'),
(43, 2004, 3, 2, 'This proposal was deferred because of resource conflicts with DBAs; WebET upgrade, CostPoint upgrades and the move of Sybase databases to the EMC
    were deemed higher priority.', 2004, 4, 0, 0, 0, 0, '2004-06-29 21:07:15', 'HUIZINGA'),
(43, 2004, 4, 0, 'This project was absorbed in #138 since the main issues, performance and uptime were already resolved separately.', 0, 0, 0, 0, 0, 0, '2004-08-18 20:23:04', 'HUIZINGA'),
(44, 2004, 3, 2, 'This was deferred because the state of the current system had not been fully documented so that definition and planning for this item could be completed.', 2004, 4, 0, 0, 0, 0, '2004-06-29 21:19:21', 'HUIZINGA'),
(44, 2004, 4, 2, 'This is deferred until a test and development environment has been established.  No further enhancements should occur until they can be tested.  The staff that will establish the test and development environment would be the same staff working the web interface project.  The test and development project was considered of higher relevance given the constraints on staffing (and the risk of continuing to change an environment without the benefit of a test environment).', 2005, 2, 0, 0, 0, 0, '2004-09-01 13:22:47', 'WOLFFL'),
(44, 2005, 2, 0, '', 0, 0, 0, 0, 0, 0, '2005-02-17 18:44:16', 'HUIZINGA'),
(44, 2005, 3, 2, 'Deferred because the refactoring work must be completed prior to this project.  (rationalizing functionality available in the two interfaces, prior to moving to one interface)', 2006, 1, 0, 0, 0, 0, '2005-05-06 14:38:40', 'WOLFFL'),
(44, 2006, 1, 2, '', 2006, 3, 0, 0, 0, 0, '2005-10-25 01:13:58', 'WOLFFL'),
(45, 2004, 3, 0, '', 0, 0, 0, 0, 2004, 3, '2004-06-19 13:57:18', 'payne'),
(46, 2004, 3, 2, 'This project was absorbed in to the enterprise directory strategy project (#16)', 2004, 4, 0, 0, 0, 0, '2005-09-27 13:41:31', 'PAYNE'),
(47, 2004, 3, 4, '', 0, 0, 2004, 1, 2005, 6, '2005-11-30 11:41:24', 'HUIZINGA'),
(48, 2004, 3, 2, 'This project was deferred because of resource conflicts for system administrators. ', 2004, 4, 0, 0, 0, 0, '2004-06-30 16:58:18', 'HUIZINGA'),
(48, 2004, 4, 5, '', 0, 0, 2005, 3, 2005, 11, '2005-03-28 15:54:31', 'SINGER'),
(48, 2005, 3, 2, 'Deferred due to dependancies.', 2006, 1, 0, 0, 0, 0, '2005-05-06 17:29:57', 'WOLFFL'),
(48, 2006, 1, 2, '', 2006, 3, 0, 0, 0, 0, '2005-10-25 01:16:48', 'WOLFFL'),
(49, 2004, 3, 2, 'Except for the Sybase maintenance contract, this project was deferred because of resource conflicts at the management level.', 2004, 4, 0, 0, 0, 0, '2004-07-01 17:33:05', 'HUIZINGA'),
(49, 2004, 4, 0, '', 0, 0, 0, 0, 0, 0, '2004-08-02 15:35:32', 'PAYNE'),
(51, 2004, 3, 4, '', 0, 0, 2004, 6, 2004, 9, '2005-02-25 18:34:18', 'SINGER'),
(52, 2004, 3, 2, 'This project was deferred because we plan to adapt the processes developed in the mission systems CM/CC project to achieve this goal. The
    first draft for the mission systems process is due in August.
    ', 2004, 4, 0, 0, 0, 0, '2004-06-30 23:06:26', 'HUIZINGA'),
(52, 2004, 4, 2, 'This project should follow the mission systems CM/CC.', 2005, 1, 0, 0, 0, 0, '2004-08-30 02:09:40', 'WOLFFL'),
(53, 2004, 3, 2, 'This project was deferred because we needed to improve our ability to understand our current networking services, forecasting future needs,
    and resource conflicts because of the planned Rotunda and Bloomberg moves.', 2004, 4, 0, 0, 0, 0, '2004-06-30 23:19:02', 'HUIZINGA'),
(53, 2004, 4, 2, 'Defer for two cycles.', 2005, 2, 0, 0, 0, 0, '2004-08-02 15:52:01', 'PAYNE'),
(53, 2005, 2, 0, '', 0, 0, 0, 0, 0, 0, '2005-01-12 16:33:18', 'PAYNE'),
(53, 2005, 3, 2, 'Ray Beaser and Doris McClure will determine whether there is funding in FY05 that could be used to support the study. This project will be reconsidered based on the funding availability.', 2005, 4, 0, 0, 0, 0, '2005-04-22 01:30:47', 'WOLFFL'),
(53, 2006, 1, 2, '', 2006, 3, 0, 0, 0, 0, '2005-10-25 01:20:48', 'WOLFFL'),
(56, 2004, 3, 0, '', 0, 0, 2004, 9, 2004, 12, '2004-10-27 14:51:24', 'SINGER'),
(56, 2005, 2, 0, '', 0, 0, 0, 0, 0, 0, '2005-03-23 19:28:41', 'HUIZINGA'),
(56, 2005, 3, 2, 'Deferred until an acceptable business case is developed.', 2005, 4, 0, 0, 0, 0, '2005-05-25 19:36:29', 'WOLFFL'),
(56, 2006, 1, 2, '', 2006, 3, 0, 0, 0, 0, '2005-10-25 01:23:04', 'WOLFFL'),
(57, 2004, 3, 2, 'This project was deferred because of security related resource issues and
    the fact that the firewall related projects had a higher priority.', 2004, 4, 0, 0, 0, 0, '2004-06-30 23:30:02', 'HUIZINGA'),
(57, 2004, 4, 2, 'No due date has been specified by NASA for this installation.  Since security staff are very involved in projects with hard due dates, this project will be deferred for later consideration.', 2005, 2, 0, 0, 0, 0, '2004-08-30 03:13:38', 'WOLFFL'),
(57, 2005, 2, 0, '', 0, 0, 0, 0, 0, 0, '2005-01-12 16:33:18', 'PAYNE'),
(57, 2005, 3, 2, 'GSFC has not set a due date for this work and other security tasks with higher priority has max''d security staff.', 2006, 1, 0, 0, 0, 0, '2005-04-23 04:34:53', 'WOLFFL'),
(57, 2006, 1, 0, '', 0, 0, 0, 0, 0, 0, '2005-10-04 14:39:45', 'SINGER'),
(58, 2004, 3, 4, '', 0, 0, 2004, 3, 2004, 8, '2004-11-23 21:18:45', 'DURKIN'),
(60, 2004, 3, 4, '', 0, 0, 2004, 7, 2004, 8, '2004-11-23 21:10:00', 'DURKIN'),
(61, 2004, 3, 0, '', 0, 0, 0, 0, 2004, 3, '2004-06-19 13:57:50', 'payne'),
(62, 2004, 3, 2, 'This project was deferred because we did not secure funding for the
    required capital investment in a new UPS in FY04.', 2004, 4, 0, 0, 0, 0, '2004-06-30 23:45:38', 'HUIZINGA'),
(62, 2004, 4, 4, '', 0, 0, 2004, 12, 2004, 12, '2005-02-25 18:35:00', 'SINGER'),
(63, 2004, 3, 4, '', 0, 0, 2004, 1, 2004, 7, '2005-02-25 18:35:29', 'SINGER'),
(64, 2004, 3, 2, 'This project is the follow-on to the IT Supplier Interface setup project which is scheduled to run through October 2004. ', 2004, 4, 0, 0, 0, 0, '2004-06-30 23:53:43', 'HUIZINGA'),
(64, 2004, 4, 2, '', 2005, 1, 0, 0, 0, 0, '2004-09-20 19:20:47', 'WOLFFL'),
(64, 2005, 2, 0, '', 0, 0, 0, 0, 0, 0, '2005-01-12 16:33:18', 'PAYNE'),
(64, 2005, 3, 2, 'Need to complete the Staff Computing Project to obtain the cost evaluations of services that could be outsourced to GMRI.', 2006, 1, 0, 0, 0, 0, '2005-04-23 05:28:16', 'WOLFFL'),
(64, 2006, 1, 2, '', 2006, 3, 0, 0, 0, 0, '2005-10-25 01:25:46', 'WOLFFL'),
(65, 2004, 3, 4, '', 0, 0, 2004, 5, 2005, 8, '2005-09-22 21:02:07', 'SINGER'),
(67, 2004, 3, 0, '', 0, 0, 2004, 4, 2005, 4, '2005-03-23 20:05:54', 'HUIZINGA'),
(67, 2005, 3, 0, '', 0, 0, 0, 0, 0, 0, '2005-04-14 14:04:52', 'PAYNE'),
(67, 2006, 1, 0, '', 0, 0, 0, 0, 0, 0, '2005-10-04 14:37:17', 'SINGER'),
(68, 2004, 3, 4, '', 0, 0, 2004, 4, 2004, 8, '2005-02-25 18:36:02', 'SINGER'),
(69, 2004, 3, 2, 'This project was terminated because its objective was already realized as part of the initial deployment of VPN. ', 2004, 4, 0, 0, 0, 0, '2004-06-30 23:55:39', 'HUIZINGA'),
(70, 2004, 3, 2, 'This project was terminated because it is a duplicate with
    project #103', 2004, 4, 0, 0, 0, 0, '2004-07-01 00:00:46', 'HUIZINGA'),
(73, 2004, 3, 4, '', 0, 0, 2004, 1, 2004, 6, '2004-07-21 20:42:02', 'SINGER'),
(74, 2004, 3, 4, '', 0, 0, 2004, 1, 2004, 6, '2005-03-02 15:14:35', 'SINGER'),
(75, 2004, 3, 4, '', 0, 0, 2004, 1, 2004, 10, '2005-07-11 21:11:41', 'SINGER'),
(76, 2004, 3, 0, '', 0, 0, 2004, 1, 2004, 4, '2004-06-19 13:59:05', 'payne'),
(77, 2004, 3, 2, 'This project was deferred because of resource conflicts with the work on the HST-DMS upgrades. ', 2004, 4, 0, 0, 0, 0, '2004-07-01 00:11:04', 'HUIZINGA'),
(77, 2004, 4, 2, '', 2005, 1, 0, 0, 0, 0, '2004-09-20 19:22:00', 'WOLFFL'),
(77, 2005, 2, 0, '', 0, 0, 0, 0, 0, 0, '2005-02-22 15:49:11', 'HUIZINGA'),
(77, 2005, 3, 0, 'The JWST DMS project has developed a basic CM process.  This process will form the basis for mission documentation CM.', 0, 0, 0, 0, 0, 0, '2005-04-23 05:34:12', 'WOLFFL'),
(78, 2004, 3, 4, '', 0, 0, 2004, 4, 2004, 11, '2005-02-25 18:36:31', 'SINGER'),
(79, 2004, 3, 4, '', 0, 0, 2004, 4, 2004, 7, '2004-07-20 14:01:09', 'SINGER'),
(80, 2004, 3, 0, '', 0, 0, 2004, 2, 2004, 5, '2004-06-19 13:59:50', 'payne'),
(83, 2004, 3, 0, '', 0, 0, 2004, 2, 2004, 4, '2004-06-19 14:00:45', 'payne'),
(84, 2004, 3, 2, 'This project was deferred until after the completion of the perimeter firewall
    implementation and the firewall rules projects', 2004, 4, 0, 0, 0, 0, '2004-07-01 00:17:49', 'HUIZINGA'),
(84, 2004, 4, 4, '', 0, 0, 2005, 1, 2005, 5, '2005-02-25 19:02:49', 'SINGER'),
(84, 2005, 3, 4, '', 0, 0, 2005, 1, 2005, 5, '2005-05-12 19:25:22', 'SINGER'),
(84, 2005, 4, 4, '', 0, 0, 2005, 1, 2005, 5, '2005-06-01 15:22:05', 'SINGER'),
(85, 2004, 3, 0, '', 0, 0, 0, 0, 0, 0, '2004-06-29 12:23:14', 'HUIZINGA'),
(85, 2004, 4, 2, 'An assessment was made by management of the most critical servers (mission, business, science and data management servers) to determine whether there were any that needed immediate attention.  The outcome of the assessment identified no issues that needed immediate attention so this project will be deferred until staff resources are available to do a more thorough evaluation.  ', 2005, 2, 0, 0, 0, 0, '2004-09-01 12:08:56', 'WOLFFL'),
(85, 2005, 2, 0, '', 0, 0, 0, 0, 0, 0, '2005-01-12 16:33:18', 'PAYNE'),
(85, 2005, 3, 0, '', 0, 0, 0, 0, 0, 0, '2005-04-23 04:13:54', 'WOLFFL'),
(86, 2004, 3, 0, '', 0, 0, 0, 0, 0, 0, '2004-06-29 12:20:44', 'HUIZINGA'),
(86, 2004, 4, 2, '', 0, 0, 0, 0, 0, 0, '2004-10-27 10:37:21', 'HUIZINGA'),
(86, 2005, 2, 0, '', 0, 0, 0, 0, 0, 0, '2005-01-12 16:33:18', 'PAYNE'),
(86, 2005, 3, 4, '', 2005, 4, 0, 0, 0, 0, '2006-04-20 17:18:14', 'HUIZINGA'),
(87, 2004, 3, 2, '', 2005, 1, 2004, 10, 2005, 1, '2004-06-11 17:28:43', ''),
(87, 2004, 4, 2, 'A development environment would be required if there were planned upgrades within the next 6 months. This work can be deferred without incurring any operational risks because there are no planned upgrades to Peoplesoft.', 2005, 2, 0, 0, 0, 0, '2004-09-01 00:55:27', 'WOLFFL'),
(87, 2005, 2, 0, 'After discussing this between the OT, BRC and CPT it was decided to
    propose a broader project to decide if we want to continue with
    PeopleSoft at all. This is captured in #167.
    ', 0, 0, 0, 0, 0, 0, '2005-03-30 15:38:25', 'HUIZINGA'),
(88, 2004, 3, 4, '', 0, 0, 2004, 6, 2004, 9, '2005-05-09 15:23:17', 'SINGER'),
(89, 2004, 3, 4, '', 0, 0, 2004, 6, 2004, 7, '2004-11-23 21:11:45', 'DURKIN'),
(90, 2004, 3, 4, '', 0, 0, 2004, 7, 2004, 10, '2004-07-02 18:55:59', 'PAYNE'),
(90, 2004, 4, 4, '', 0, 0, 2004, 7, 2004, 10, '2004-11-23 21:23:20', 'DURKIN'),
(90, 2005, 3, 2, '', 2005, 4, 2005, 7, 2005, 10, '2005-05-06 17:40:27', 'WOLFFL'),
(90, 2006, 1, 2, '', 2006, 3, 0, 0, 0, 0, '2005-10-25 01:36:31', 'WOLFFL'),
(92, 2004, 3, 4, '', 0, 0, 2004, 5, 2004, 7, '2005-02-25 18:37:57', 'SINGER'),
(93, 2004, 3, 2, 'This project was deferred pending the completion of the perimeter firewall and firewall rules projects.', 2004, 4, 0, 0, 0, 0, '2004-07-01 00:30:07', 'HUIZINGA'),
(93, 2004, 4, 2, 'This project should be considered after completion of the Firewall Rules Implementation and the Web Services Strategy (#86) projects.', 2005, 1, 0, 0, 0, 0, '2004-08-02 16:30:00', 'PAYNE'),
(93, 2005, 2, 0, '', 0, 0, 0, 0, 0, 0, '2005-03-24 16:40:22', 'HUIZINGA'),
(93, 2005, 3, 4, '', 0, 0, 0, 0, 0, 0, '2005-11-28 14:42:23', 'HUIZINGA'),
(94, 2004, 3, 4, '', 0, 0, 2004, 4, 2005, 1, '2004-11-23 21:15:07', 'DURKIN'),
(95, 2004, 3, 4, '', 0, 0, 2004, 4, 2005, 1, '2005-09-22 21:06:59', 'SINGER'),
(96, 2004, 3, 4, '', 0, 0, 2004, 4, 2004, 10, '2004-11-23 21:15:58', 'DURKIN'),
(97, 2004, 3, 4, '', 0, 0, 2004, 1, 2004, 5, '2004-07-21 20:34:29', 'SINGER'),
(98, 2004, 3, 4, '', 0, 0, 2004, 6, 0, 0, '2005-10-26 14:12:20', 'SINGER'),
(100, 2004, 3, 0, '', 0, 0, 2004, 6, 0, 0, '2004-06-16 23:34:30', ''),
(101, 2004, 3, 0, '', 0, 0, 0, 0, 0, 0, '2004-06-23 13:15:08', 'HUIZINGA'),
(101, 2004, 4, 2, 'A review of the hardware indicates that waiting to complete this work does not pose unacceptable risk for the business systems.  Staffing conflicts prevents CPT from taking this work on prior to the next planning cycle.', 2005, 2, 0, 0, 0, 0, '2004-09-01 16:00:45', 'hulbert'),
(101, 2005, 2, 0, '', 0, 0, 0, 0, 0, 0, '2005-01-12 16:33:18', 'PAYNE'),
(101, 2005, 3, 2, 'Project 133 needs to progress further and an overarching look of our business systems application dependencies on Oracle versions may indicate that not only should the MTI drives be replaced, but an upgrade to Oracle occur simultaneously.  Needed information should be available by July.', 2005, 4, 0, 0, 0, 0, '2005-05-06 14:54:55', 'WOLFFL'),
(101, 2006, 1, 2, '', 2006, 3, 0, 0, 0, 0, '2005-10-17 12:56:39', 'SINGER'),
(102, 2004, 4, 2, 'Since Solaris 10 has not yet been released, and we do not plan to deploy the very first release, this project is deferred to the next planning cycle.', 2005, 2, 0, 0, 0, 0, '2004-08-30 03:16:52', 'WOLFFL'),
(102, 2005, 2, 0, '', 0, 0, 0, 0, 0, 0, '2005-01-12 16:33:18', 'PAYNE'),
(102, 2005, 3, 2, 'The project is deferred until the outcomes of the Staff Computing Project (related to Solaris) are known and the work is sufficiently funded through direct/indirect funds.', 2005, 4, 0, 0, 0, 0, '2005-04-22 01:41:31', 'WOLFFL'),
(102, 2006, 1, 5, '', 2006, 3, 0, 0, 0, 0, '2005-10-25 02:03:11', 'WOLFFL'),
(103, 2004, 4, 4, 'This project had to be fast tracked since it has become a short term NASA requirement to implement this capability.', 0, 0, 2004, 8, 2004, 9, '2005-01-20 17:24:46', 'HUIZINGA'),
(104, 2004, 4, 2, 'This project is deferred due to insufficient staffing.  Rodger needs to review this deferral and provide guidance on this work in comparison to other HST-related projects that are recommended for the short-list', 2005, 2, 2004, 11, 2005, 1, '2005-01-10 21:42:32', 'HUIZINGA'),
(104, 2005, 2, 0, '', 0, 0, 0, 0, 0, 0, '2005-03-22 16:46:50', 'HUIZINGA'),
(104, 2005, 3, 4, '', 0, 0, 0, 0, 0, 0, '2005-04-26 15:24:24', 'SINGER'),
(105, 2004, 4, 4, '', 0, 0, 2004, 10, 2005, 6, '2005-05-18 13:56:08', 'SINGER'),
(106, 2004, 4, 4, 'Because of NASA requirements, this project has been fast tracked and committed to by CPT.', 0, 0, 0, 0, 0, 0, '2005-09-29 20:46:22', 'HUIZINGA'),
(107, 2004, 4, 2, 'Complete the DMS workshop and review deliverables from the subsequent planning work prior to working this project.', 2005, 2, 0, 0, 0, 0, '2004-11-19 20:28:27', 'payne'),
(107, 2005, 2, 0, '', 0, 0, 0, 0, 0, 0, '2005-01-12 16:33:19', 'PAYNE'),
(107, 2005, 3, 5, '', 0, 0, 0, 0, 0, 0, '2005-05-06 16:42:49', 'WOLFFL'),
(107, 2006, 1, 2, '', 2006, 3, 0, 0, 0, 0, '2005-10-25 02:20:27', 'WOLFFL'),
(108, 2004, 4, 2, 'DMS planning workshop and deliverables from subsequent planning activities for the DMS should be completed before beginning this project.', 2005, 2, 0, 0, 0, 0, '2004-09-01 13:13:46', 'hulbert'),
(108, 2005, 2, 0, '', 0, 0, 0, 0, 0, 0, '2005-01-12 16:33:19', 'PAYNE'),
(108, 2005, 3, 5, '', 0, 0, 0, 0, 0, 0, '2005-05-06 19:36:35', 'WOLFFL'),
(108, 2006, 1, 2, '', 2006, 3, 0, 0, 0, 0, '2005-10-25 02:26:23', 'WOLFFL'),
(109, 2004, 3, 4, 'This project was raised during the execution cycle. Since it
    addressed an urgent issue with our critical Zope web environment
    it was decided to fast track it.', 0, 0, 2004, 7, 2004, 8, '2004-11-23 21:16:47', 'DURKIN'),
(110, 2004, 4, 2, 'Testing for software is a critical bottleneck for the HST DMS.  The test group could perform testing more consistently and efficiently if provided a testing tool suite.', 2005, 1, 0, 0, 0, 0, '2004-09-20 18:00:10', 'WOLFFL'),
(110, 2005, 2, 0, 'This project will be handled as part of the systems development process improvements and handled at a team level.', 0, 0, 0, 0, 0, 0, '2005-02-21 19:43:54', 'WOLFFL'),
(111, 2004, 4, 2, 'Further discussion with the HST mission manager, technical staff and stakeholders should be completed.  Additionally, there are outputs from several planning efforts for the DMS environment that must be considered in parallel with this idea. Lastly, no funding for such a migration has been allocated by the HST mission and this work would require applying for overguide funds from HSTP. ', 2005, 2, 0, 0, 0, 0, '2004-09-01 12:14:45', 'WOLFFL'),
(111, 2005, 2, 0, 'Formal agreements with Sybase have mitigated the loss of support for the HST databases.  For the near term (i.e. 5-7 years), the risk has been handled without the need for mass migration from Sybase.  Agreements for support and a cap on support contract values have been negotiated with Sybase.

    Additionally, although a technical study was completed during the Sybase Alternatives effort, a full cost accounting of the proposed solution was not been completed.  A preliminary full cost assessment of the proposal indicates that the DBA and system administration burden would be approximately 30% higher in the MS-SQL environment.  Given the stable nature of the HST databases, the bulk of the labor charged to HST is for DBA and system administration, indicating that a migration away from Sybase has a high likelihood of increasing HST costs.

    This project is terminated with the expectation that decisions to move away from Sybase will be handled for those systems identified as key or core applications, and will include a full cost accounting in addition to the technical assessment.  Such decisions will be part of an overall systems development and architecture review.', 0, 0, 0, 0, 0, 0, '2005-02-21 19:39:17', 'WOLFFL'),
(112, 2004, 4, 4, '', 0, 0, 2005, 3, 2005, 7, '2005-02-25 19:02:18', 'SINGER'),
(112, 2005, 3, 5, 'This will remain identified as a short list project until help desk calls can be opened to handle the 2-3 NFS requests discussed in the SCW.  Doris and Edwin have the actions to ensure the help desk calls are defined and opened before terminating this project within the PPT.  (Termination will occur because tracking of the work will not be at a project, but at a help desk call instead.)  Additionally, NFS/OS combinations that will be supported for staff computing are being considered within the Staff Computing Strategy project.', 0, 0, 0, 0, 0, 0, '2005-05-06 19:19:11', 'WOLFFL'),
(112, 2006, 1, 2, '', 2006, 3, 0, 0, 0, 0, '2005-10-17 13:08:59', 'SINGER'),
(113, 2004, 4, 0, '', 0, 0, 0, 0, 0, 0, '2004-07-14 18:14:22', 'payne'),
(113, 2005, 2, 0, '', 0, 0, 0, 0, 0, 0, '2005-01-12 16:33:19', 'PAYNE'),
(113, 2005, 3, 2, 'Waiting on external hosting decision.
    <br>External hosting of OPO sites will include informing public during outages within the requirements.  Until the decision is made regarding external hosting, this project will remain in a deferred state.  The decision on hosting will be taken summer 2005.

    ', 2005, 4, 0, 0, 0, 0, '2005-05-06 16:33:29', 'WOLFFL'),
(113, 2006, 1, 2, '', 2006, 3, 0, 0, 0, 0, '2005-10-17 13:12:13', 'SINGER'),
(114, 2004, 4, 2, '', 2005, 3, 0, 0, 0, 0, '2004-11-19 20:27:39', 'payne'),
(114, 2005, 2, 0, '', 0, 0, 0, 0, 0, 0, '2005-01-12 16:33:19', 'PAYNE'),
(114, 2005, 3, 2, 'Electronic signature for mission documentation is under evaluation within the Agile-extension study.  Completion of this study will determine what types of documentation should be managed through an electronic sign-off.  JWST is already using Agile for it''s document management, so extending the use of Agile to other missions is a logical approach to moving into an electronic signature approach.  The study is due for completion in July 2005. ', 2005, 4, 0, 0, 0, 0, '2005-04-23 04:24:02', 'WOLFFL'),
(114, 2006, 1, 2, '', 2006, 3, 0, 0, 0, 0, '2005-10-17 13:12:49', 'SINGER'),
(115, 2004, 4, 5, '', 0, 0, 0, 0, 0, 0, '2004-09-01 13:38:21', 'WOLFFL'),
(115, 2005, 2, 0, '', 0, 0, 0, 0, 0, 0, '2005-01-12 16:33:19', 'PAYNE'),
(115, 2005, 3, 4, '', 0, 0, 0, 0, 0, 0, '2005-09-22 20:08:53', 'SINGER'),
(116, 2004, 4, 2, 'This project is deferred because further definition of the need and a study of the wireless bleedthrough to the outside for each of the needs if assessed.  In many cases, wireless is not made available due to bleedthrough of the signal.  A small amount of funding was included in ED-05 for those areas where wireless can be enhanced while maintaining a secure connection.  Use of those funds will be re-examined after the bleedthrough assessment is completed.', 2005, 2, 0, 0, 0, 0, '2004-09-01 12:23:43', 'WOLFFL'),
(116, 2005, 2, 0, '', 0, 0, 0, 0, 0, 0, '2005-03-31 16:49:51', 'SINGER'),
(117, 2004, 4, 4, '', 0, 0, 2004, 11, 2005, 2, '2005-05-18 14:03:17', 'SINGER'),
(118, 2004, 4, 0, 'The needs for this project will be met by providing 2.5TB of additional storage on the EMC. The storage systems management work required are routine tasks. Planning and coordinating data migration and possible downtime for MAST will happen following existing processes and procedures within the HST Mission Systems.', 0, 0, 0, 0, 0, 0, '2004-08-04 21:16:14', 'HUIZINGA'),
(119, 2004, 4, 2, 'Deferred until we have a identified a team that would take advantage of the GO processing offer.', 2005, 2, 0, 0, 0, 0, '2004-09-01 13:28:26', 'WOLFFL'),
(119, 2005, 2, 0, '', 0, 0, 0, 0, 0, 0, '2005-01-12 16:33:19', 'PAYNE'),
(119, 2005, 3, 0, 'Project terminated because use not expected by the GOs', 0, 0, 0, 0, 0, 0, '2005-04-23 05:07:54', 'WOLFFL'),
(120, 2004, 4, 2, 'This project is deferred due to staffing conflicts and budget for upgrades has not be 100% secured.', 2005, 2, 0, 0, 0, 0, '2004-09-01 02:49:24', 'WOLFFL'),
(120, 2005, 2, 0, 'The bulk of this work was absorbed in project #161. The remaining
    items are being worked in coordination between CPT/TS and OPO.
    This makes this proposal obsolete, and therefore this has now been
    marked as completely absorbed. (March 28 2005)', 0, 0, 0, 0, 0, 0, '2005-03-28 16:53:50', 'HUIZINGA'),
(121, 2004, 4, 5, '', 0, 0, 0, 0, 0, 0, '2004-08-23 21:13:51', 'HUIZINGA'),
(121, 2005, 2, 0, '', 0, 0, 0, 0, 0, 0, '2005-01-12 16:33:19', 'PAYNE'),
(121, 2005, 3, 4, '', 0, 0, 2005, 7, 2006, 1, '2005-11-28 14:43:13', 'HUIZINGA'),
(122, 2004, 4, 2, 'This project is deferred until we are contractually obligated to perform the work', 2005, 2, 0, 0, 0, 0, '2004-09-01 12:24:53', 'WOLFFL'),
(122, 2005, 2, 0, 'This is no longer a NASA priority', 0, 0, 0, 0, 0, 0, '2005-03-22 16:53:17', 'HUIZINGA'),
(123, 2004, 4, 2, 'This project is deferred due to staffing conflicts', 2005, 3, 0, 0, 0, 0, '2004-09-01 12:16:56', 'WOLFFL'),
(123, 2005, 2, 0, '', 0, 0, 0, 0, 0, 0, '2005-02-17 17:43:22', 'HUIZINGA'),
(123, 2005, 3, 2, 'This is deferred due to funding limitations.  If FY06 funding permits, this project could be worked in the spring of 2006.', 2006, 1, 0, 0, 0, 0, '2005-04-23 04:41:19', 'WOLFFL'),
(123, 2006, 1, 2, '', 2006, 3, 0, 0, 0, 0, '2005-10-17 13:13:24', 'SINGER'),
(124, 2004, 4, 2, 'This is deferred until further scoping and an approach to such services can be developed by the CPT division head.', 2005, 2, 0, 0, 0, 0, '2004-11-19 20:26:20', 'payne'),
(124, 2005, 2, 0, '', 0, 0, 0, 0, 0, 0, '2005-03-22 16:56:00', 'HUIZINGA'),
(124, 2005, 3, 2, 'Currently, these types of evaluations are handled on an as needed basis, that is, there is no formal service offered.  Providing a formal evaluation program for new hardware offerings would be an increase to the work level of CPT and BRC, when budgets are forcing both divisions to shed non-essential work. It is understood that is could be better to offer such a service.

    To be considered further, more information is needed. (i.e. how proactive would the evaluation service be, who is developing test cases and performing the evaluations, is the equipment bought or borrowed?).  A financially-based(labor$,non-labor$) business case should be developed so this proposed service''s value can be compared to other things that support the research infrastructure.

    This could be re-considered earlier than FY05-4 if the requested information is supplied soon.', 2005, 4, 0, 0, 0, 0, '2005-04-22 02:44:30', 'WOLFFL'),
(124, 2006, 1, 2, '', 2006, 3, 0, 0, 0, 0, '2005-10-17 13:14:09', 'SINGER'),
(125, 2004, 4, 0, '', 0, 0, 0, 0, 0, 0, '2004-07-28 22:24:01', 'HUIZINGA'),
(125, 2005, 2, 0, '', 0, 0, 0, 0, 0, 0, '2005-01-12 16:33:19', 'PAYNE'),
(125, 2005, 3, 2, 'The handling/sharing of large data sets for research scientists will be considered within the Staff Computing Strategy (SCS)project.  This project is deferred with the expectation that the SCS effort will actually fulfill the request for this project.  If not, this project will be added to the shortlist for the next cycle.', 2005, 4, 0, 0, 0, 0, '2005-05-25 19:38:31', 'WOLFFL'),
(125, 2006, 1, 2, '', 2006, 3, 0, 0, 0, 0, '2005-10-17 13:15:08', 'SINGER'),
(126, 2004, 4, 2, 'Deferred pending identification of funding for such upgrades.', 2005, 2, 0, 0, 0, 0, '2004-09-01 13:27:10', 'WOLFFL'),
(126, 2005, 2, 0, '', 0, 0, 0, 0, 0, 0, '2005-01-12 16:33:19', 'PAYNE'),
(126, 2005, 3, 2, 'Compute farms is one of the core architecture components under consideration within the Staff Computing Strategy (SCS) project.  Following the completion of the SCS and the selection of an end-to-end staff computing strategy, this project will be reconsidered if upgrading the wulf cluster is contained within the strategy.', 2005, 4, 0, 0, 0, 0, '2005-04-23 04:20:23', 'WOLFFL'),
(126, 2006, 1, 2, '', 2006, 3, 0, 0, 0, 0, '2005-10-17 13:15:38', 'SINGER'),
(127, 2004, 4, 4, 'End of year funding is possibily available, this project should be assessed on a fast track.', 2005, 2, 2005, 3, 2005, 4, '2005-05-06 19:54:08', 'WOLFFL'),
(127, 2005, 3, 4, 'End of year funding is possibily available, this project should be assessed on a fast track.', 2005, 2, 2005, 3, 2005, 4, '2005-11-28 14:44:00', 'HUIZINGA'),
(128, 2004, 4, 0, '', 0, 0, 0, 0, 0, 0, '2004-11-19 20:25:38', 'payne'),
(128, 2005, 2, 0, '', 0, 0, 0, 0, 0, 0, '2005-01-12 16:33:19', 'PAYNE'),
(128, 2005, 3, 2, 'Lack of business case to compare the benefits of expending the staff labor to complete the work.  This can be reconsidered when a business case is developed. It''s recommended that a business case be prepared in time for the next planning cycle.', 2005, 4, 0, 0, 0, 0, '2005-04-23 04:27:55', 'WOLFFL'),
(128, 2006, 1, 2, '', 2006, 3, 0, 0, 0, 0, '2005-10-17 16:00:41', 'SINGER'),
(129, 2004, 4, 5, '', 0, 0, 2005, 1, 2005, 4, '2005-03-31 17:00:41', 'SINGER'),
(129, 2005, 3, 4, '', 0, 0, 0, 0, 0, 0, '2006-02-14 11:42:41', 'HUIZINGA'),
(130, 2004, 4, 2, 'DMS planning workshop and deliverables from subsequent planning activities for the DMS should be completed before beginning this project.', 2005, 2, 0, 0, 0, 0, '2004-11-19 20:25:07', 'payne'),
(130, 2005, 2, 4, 'This work had already been committed to, but it wasn''t clear if it would
    be worked as a project. Since this affects production servers, we will
    use the project process to coordinate and schedule this work, and
    have committed this project.', 0, 0, 0, 0, 0, 0, '2005-05-18 13:57:22', 'SINGER'),
(131, 2004, 4, 2, 'This project is deferred until the DMS planning workshop and deliverables are available for consideration during the planning stages of this project.  The current system is not at risk of immediate failure and there is sufficient time to complete at least a rough roadmap for the DMS (seeing where the services on STDATU fit) and then deciding how to proceed.  This project must be reconsidered no later than FY05/Q2, but could be reconsidered as soon as the needed DMS roadmap is available. Work on the roadmap will begin in October 2004.', 2005, 2, 0, 0, 0, 0, '2004-11-16 23:25:29', 'WOLFFL'),
(131, 2005, 2, 5, 'The short term driver for this project was the high load on STDATU,
    and concerns about the age of the Sun Ultra-60 hardware. In the longer
    term, we have to refactor these HST/MAST systems, but if possible, we
    would like to coordinate this with any plans regarding the pilot implementation of the HST legacy archive. In March 2005,
    we added a redundant and load balancing fiber-channel connection
    from STDATU to the Symmetrix, as part of the deployment of the
    second SAN switch. This change has unexpectedly reduced the load
    on STDATU, which we now suspect was caused by polling or other
    I/O activity in the Covalent FTP server.

    CPU and disk usage of STDATU is trended, and can be monitored
    online on <a href="http://faxafloi.stsci.edu:8080/stdatu/index.html">faxafloi</a>.

    As for hardware reliability, we have several comparable systems in house,
    and all are under maintenance. Thusfar we have not experienced any
    disruptive hardware problems. If hardware issues do arise, we can
    address them in a timely manner.

    Based on this information it was decided to not use FY05 funds to
    upgrade or re-architect the operational STDATU environment. Instead,
    we will only consider the developmen ARCHDEV environment in light
    of the pilot for the HST legacy archive, and consider off-loading
    of FTP or webservices in the short term as part of the
    <a href="/institute/org/ot/Governance/ppt/projectByID?projectID=86">web services strategy project (#86)</a>.


    ', 0, 0, 2005, 4, 2005, 5, '2006-03-15 19:03:39', 'HUIZINGA'),
(132, 2004, 4, 5, '', 0, 0, 0, 0, 0, 0, '2004-08-30 19:30:46', 'hulbert'),
(132, 2005, 2, 0, 'Proposals #130 and #132  were entered separately because they
    had different drivers and different line items in the ED05 plan. However,
    the work to implement them is actually a single project, and therefore this
    proposal has been absorbed.', 0, 0, 0, 0, 0, 0, '2005-02-08 18:12:49', 'HUIZINGA'),
(133, 2004, 4, 2, 'DMS planning workshop and deliverables from subsequent planning activities for the DMS should be completed before beginning this project.', 2005, 2, 0, 0, 0, 0, '2004-09-01 13:11:56', 'WOLFFL'),
(133, 2005, 2, 4, '', 0, 0, 0, 0, 0, 0, '2005-09-22 20:56:30', 'SINGER'),
(134, 2004, 4, 2, 'This project is deferred until some additional risk assessments of the hardware lifespan and computing approach has been discussed with the mission manager.  ', 2005, 2, 0, 0, 0, 0, '2004-11-18 15:46:23', 'HUIZINGA'),
(134, 2005, 2, 0, 'This proposed project was terminated. The problem will be addressed by upgrading existing workstations as part of baseline work. See comments for details.', 0, 0, 0, 0, 0, 0, '2005-01-14 18:52:35', 'HUIZINGA'),
(135, 2004, 4, 0, 'This project idea was entered by accident as a duplicate to #133, which
    expanded a little bit on the scope of the original idea. Therefore it was terminated.', 0, 0, 0, 0, 0, 0, '2004-08-18 16:32:55', 'HUIZINGA'),
(136, 2004, 4, 4, '', 0, 0, 2004, 12, 2005, 5, '2005-02-25 18:39:19', 'SINGER'),
(137, 2004, 4, 4, '', 0, 0, 2004, 11, 2005, 1, '2006-01-12 17:52:37', 'HUIZINGA'),
(138, 2004, 4, 2, 'Deferred until a test and development environment is completed.', 2005, 2, 0, 0, 0, 0, '2004-11-19 20:24:21', 'payne'),
(138, 2005, 2, 0, '', 0, 0, 0, 0, 0, 0, '2005-01-12 16:33:20', 'PAYNE'),
(138, 2005, 3, 0, '', 0, 0, 0, 0, 0, 0, '2005-04-23 05:10:25', 'WOLFFL'),
(139, 2004, 4, 4, '', 0, 0, 2004, 12, 2005, 2, '2005-11-30 11:06:59', 'HUIZINGA'),
(140, 2004, 4, 4, '', 0, 0, 2004, 12, 2005, 1, '2005-09-22 20:31:34', 'SINGER'),
(141, 2004, 4, 4, '', 0, 0, 2004, 10, 2005, 1, '2005-02-25 18:41:55', 'SINGER'),
(142, 2004, 4, 2, 'this project was created by accident and terminated.', 2005, 2, 0, 0, 0, 0, '2004-08-27 17:00:18', 'HUIZINGA'),
(143, 2004, 4, 0, 'entered prematurely. Terminated for now.', 0, 0, 0, 0, 0, 0, '2004-09-01 20:33:25', 'HUIZINGA'),
(144, 2004, 4, 0, 'entered prematurely. Terminated for now.', 0, 0, 0, 0, 0, 0, '2004-09-01 20:33:06', 'HUIZINGA'),
(145, 2004, 4, 0, 'entered prematurely. Terminated for now.', 0, 0, 0, 0, 0, 0, '2004-09-01 20:32:45', 'HUIZINGA'),
(146, 2004, 4, 0, '', 0, 0, 0, 0, 0, 0, '2004-11-19 20:23:56', 'payne'),
(146, 2005, 2, 0, '', 0, 0, 0, 0, 0, 0, '2005-01-12 16:33:20', 'PAYNE'),
(146, 2005, 3, 2, 'This project should not be considered until the outcomes of the Staff Computing Strategy project are known and an implementation plan for the selected strategy has considered the level of automation necessary to achieve the expected operational costs.', 2006, 1, 0, 0, 0, 0, '2005-04-23 04:45:38', 'WOLFFL'),
(146, 2006, 1, 2, '', 2006, 3, 0, 0, 0, 0, '2005-10-17 16:09:56', 'SINGER'),
(147, 2004, 4, 0, '', 0, 0, 0, 0, 0, 0, '2004-09-22 19:30:54', 'WOLFFL'),
(147, 2005, 2, 0, '', 0, 0, 0, 0, 0, 0, '2005-03-30 20:44:27', 'HUIZINGA'),
(147, 2005, 3, 5, 'Wait until after web services strategy to proceed (Rick 6/14).', 0, 0, 0, 0, 0, 0, '2005-06-14 19:32:10', 'DURKIN'),
(147, 2006, 1, 2, '', 2006, 3, 0, 0, 0, 0, '2009-07-11 04:59:24', 'payne'),
(148, 2004, 4, 4, '', 0, 0, 2004, 9, 2005, 12, '2006-02-14 11:47:47', 'HUIZINGA'),
(149, 2004, 4, 4, '', 0, 0, 0, 0, 0, 0, '2005-10-10 15:01:48', 'WMILLER'),
(150, 2004, 4, 0, '', 0, 0, 0, 0, 0, 0, '2004-10-29 17:32:46', 'WMILLER'),
(150, 2005, 2, 4, '', 0, 0, 0, 0, 0, 0, '2005-10-10 15:05:31', 'WMILLER'),
(151, 2004, 4, 0, '', 0, 0, 0, 0, 0, 0, '2004-10-29 18:11:38', 'WMILLER'),
(151, 2005, 2, 0, '', 0, 0, 0, 0, 0, 0, '2005-05-06 21:50:42', 'WOLFFL'),
(151, 2006, 1, 0, '', 0, 0, 0, 0, 0, 0, '2005-09-26 14:08:23', 'PAYNE'),
(152, 2004, 4, 4, '', 0, 0, 2004, 12, 2004, 12, '2005-05-09 15:32:03', 'SINGER'),
(153, 2004, 4, 2, '', 2005, 1, 0, 0, 0, 0, '2004-11-18 17:06:36', 'SINGER'),
(153, 2005, 2, 0, '', 0, 0, 0, 0, 0, 0, '2005-03-23 19:18:58', 'HUIZINGA'),
(153, 2005, 3, 4, 'Completion of this project is in direct support of NASA/GSFC security goals for STSCI.', 0, 0, 0, 0, 0, 0, '2005-11-28 14:46:54', 'HUIZINGA'),
(154, 2005, 2, 0, '', 0, 0, 0, 0, 0, 0, '2005-01-28 18:33:04', 'PAYNE'),
(154, 2005, 3, 4, '', 0, 0, 0, 0, 0, 0, '2005-11-28 14:48:04', 'HUIZINGA'),
(155, 2005, 2, 0, '', 0, 0, 0, 0, 0, 0, '2005-01-28 18:43:42', 'PAYNE'),
(155, 2005, 3, 4, '', 0, 0, 0, 0, 0, 0, '2005-11-28 14:48:48', 'HUIZINGA'),
(156, 2005, 2, 0, '', 0, 0, 0, 0, 0, 0, '2005-01-28 18:44:02', 'PAYNE'),
(156, 2005, 3, 2, '', 2006, 1, 0, 0, 0, 0, '2005-05-06 17:00:55', 'WOLFFL'),
(156, 2006, 1, 4, '', 0, 0, 0, 0, 0, 0, '2005-11-28 14:49:08', 'HUIZINGA'),
(157, 2005, 2, 0, '', 0, 0, 0, 0, 0, 0, '2005-01-28 18:44:23', 'PAYNE'),
(157, 2005, 3, 2, '', 2006, 1, 0, 0, 0, 0, '2005-05-06 17:03:06', 'WOLFFL'),
(157, 2006, 1, 2, '', 2006, 3, 0, 0, 0, 0, '2005-11-18 14:43:17', 'HUIZINGA'),
(158, 2005, 2, 0, '', 0, 0, 0, 0, 0, 0, '2005-01-28 18:44:42', 'PAYNE'),
(158, 2005, 3, 2, '', 2006, 1, 0, 0, 0, 0, '2005-05-06 17:07:27', 'WOLFFL'),
(158, 2006, 1, 2, '', 2006, 3, 0, 0, 0, 0, '2005-10-17 17:36:16', 'SINGER'),
(159, 2005, 2, 0, '', 0, 0, 0, 0, 0, 0, '2005-01-28 18:45:01', 'PAYNE'),
(159, 2005, 3, 2, '', 2006, 1, 0, 0, 0, 0, '2005-05-06 20:13:12', 'WOLFFL'),
(159, 2006, 1, 2, '', 2006, 3, 0, 0, 0, 0, '2005-10-17 17:48:43', 'SINGER'),
(160, 2005, 2, 0, '', 0, 0, 0, 0, 0, 0, '2005-01-28 18:45:29', 'PAYNE'),
(160, 2005, 3, 4, '', 0, 0, 0, 0, 0, 0, '2005-11-28 14:49:46', 'HUIZINGA'),
(161, 2005, 2, 4, '', 0, 0, 0, 0, 0, 0, '2005-11-28 14:50:12', 'HUIZINGA'),
(162, 2005, 2, 0, 'Merged.', 0, 0, 0, 0, 0, 0, '2005-02-15 14:19:33', 'HUIZINGA'),
(163, 2005, 2, 4, '', 0, 0, 0, 0, 0, 0, '2005-11-28 14:50:36', 'HUIZINGA'),
(164, 2005, 2, 4, '', 0, 0, 0, 0, 0, 0, '2005-05-09 21:00:31', 'SINGER'),
(165, 2005, 2, 0, '', 0, 0, 0, 0, 0, 0, '2005-03-03 17:30:44', 'HUIZINGA'),
(165, 2005, 3, 0, 'Project work described will be completed as help desk call
    <a href="http://www.stsci.edu/institute/center/ARSystem/RemedyAlternateSearch?CALL=522885">CNSHD522885</a> because the installation proved to be much simpler than orginally thought.', 0, 0, 0, 0, 0, 0, '2005-04-28 13:17:56', 'HUIZINGA'),
(166, 2005, 2, 0, '', 0, 0, 0, 0, 0, 0, '2005-03-31 16:38:00', 'SINGER'),
(167, 2005, 2, 0, '', 0, 0, 0, 0, 0, 0, '2005-03-23 19:25:42', 'HUIZINGA'),
(167, 2005, 3, 5, '', 0, 0, 2005, 9, 0, 0, '2005-05-25 20:24:23', 'WOLFFL'),
(167, 2006, 1, 4, '', 2006, 3, 0, 0, 0, 0, '2006-04-20 17:15:42', 'HUIZINGA'),
(168, 2005, 2, 0, '', 0, 0, 0, 0, 0, 0, '2005-03-23 19:26:08', 'HUIZINGA'),
(168, 2005, 3, 2, 'Deferred due to staff resource shortages.', 2006, 1, 0, 0, 0, 0, '2005-05-06 20:27:24', 'WOLFFL'),
(168, 2006, 1, 0, '', 0, 0, 0, 0, 0, 0, '2005-10-04 14:44:28', 'SINGER'),
(169, 2005, 2, 0, '', 0, 0, 0, 0, 0, 0, '2005-03-24 16:33:58', 'HUIZINGA'),
(169, 2005, 3, 2, 'This should be considered after the completion of project #10 SCS.  How laptop loaners can be handled best, given the solution selected via the SCS, will become more apparent as the implementation plan is documented. ', 2006, 1, 0, 0, 0, 0, '2005-05-06 20:39:31', 'WOLFFL'),
(169, 2006, 1, 0, '', 0, 0, 0, 0, 0, 0, '2005-09-26 14:08:13', 'PAYNE'),
(170, 2005, 2, 0, '', 0, 0, 0, 0, 0, 0, '2005-04-01 20:25:15', 'HUIZINGA'),
(170, 2005, 3, 4, '', 0, 0, 0, 0, 0, 0, '2005-12-07 15:31:00', 'SINGER'),
(171, 2005, 2, 0, '', 0, 0, 0, 0, 0, 0, '2005-04-01 21:15:43', 'HUIZINGA'),
(171, 2005, 3, 2, 'Deferred due to lack of funding for hardware.', 2006, 1, 0, 0, 0, 0, '2005-06-22 20:03:57', 'SINGER'),
(171, 2006, 1, 4, '', 0, 0, 0, 0, 0, 0, '2005-12-05 20:03:56', 'HUIZINGA'),
(172, 2005, 2, 0, '', 0, 0, 0, 0, 0, 0, '2005-04-01 21:48:40', 'HUIZINGA'),
(172, 2005, 3, 4, '', 0, 0, 0, 0, 0, 0, '2005-09-22 20:53:44', 'SINGER'),
(173, 2005, 2, 0, '', 0, 0, 0, 0, 0, 0, '2005-04-01 21:55:45', 'NAGEL'),
(173, 2005, 3, 0, '', 2006, 1, 0, 0, 0, 0, '2005-05-06 20:42:03', 'WOLFFL'),
(174, 2005, 2, 0, '', 0, 0, 0, 0, 0, 0, '2005-04-05 13:53:02', 'JSCOTT'),
(174, 2005, 3, 5, '', 0, 0, 0, 0, 0, 0, '2005-05-05 20:06:34', 'HUIZINGA'),
(174, 2006, 1, 2, '', 2006, 3, 0, 0, 0, 0, '2005-10-17 17:50:27', 'SINGER'),
(175, 2005, 2, 0, '', 0, 0, 0, 0, 0, 0, '2005-04-07 13:39:48', 'HUIZINGA');
INSERT INTO "disposition" ("projectID", "disposedInFY", "disposedInQ", "dispositionID", "explanation", "reconsiderInFY", "reconsiderInQ", "startInY", "startInM", "finishInY", "finishInM", "lastModified", "lastModifiedBy") VALUES
(175, 2005, 3, 5, 'Wait until after SCS to determine how to proceed (6/14).
    The Mac VPN solution could be incorporated into the
    project to rollout Tiger (per Lisa Wolff 6/14).', 0, 0, 0, 0, 0, 0, '2005-06-14 19:30:49', 'DURKIN'),
(175, 2006, 1, 4, '', 0, 0, 2005, 12, 2006, 2, '2006-01-12 17:58:08', 'HUIZINGA'),
(176, 2005, 2, 0, '', 0, 0, 0, 0, 0, 0, '2005-04-07 13:46:27', 'HUIZINGA'),
(176, 2005, 3, 5, '', 0, 0, 0, 0, 0, 0, '2005-04-27 21:13:35', 'DURKIN'),
(176, 2006, 1, 2, '', 2006, 3, 0, 0, 0, 0, '2005-11-18 14:44:48', 'HUIZINGA'),
(177, 2005, 2, 0, '', 0, 0, 2006, 1, 0, 0, '2005-04-07 14:48:37', 'PANTALONE'),
(177, 2005, 3, 5, '', 0, 0, 2006, 1, 0, 0, '2005-05-09 21:19:29', 'SINGER'),
(177, 2006, 1, 2, '', 2006, 3, 0, 0, 0, 0, '2006-02-27 18:19:44', 'PANTALONE'),
(178, 2005, 2, 0, '', 0, 0, 0, 0, 0, 0, '2005-04-12 15:49:48', 'TCOMEAU'),
(178, 2005, 3, 2, 'This evaluation will not occur until the outcomes of the Staff Computing Project are known and an end-to-end staff computing architecture is identified that does include the MAC operating system at the desktop.  ', 2006, 1, 0, 0, 0, 0, '2005-05-12 19:11:41', 'HUIZINGA'),
(178, 2006, 1, 4, '', 0, 0, 0, 0, 0, 0, '2006-01-27 17:09:19', 'HUIZINGA'),
(179, 2005, 2, 0, '', 0, 0, 0, 0, 0, 0, '2005-04-12 17:30:53', 'TCOMEAU'),
(179, 2005, 3, 2, 'IN response to the request for this project, a review of the state of the ETC servers was completed (Edwin Huizinga and Tony Krueger were primary on the review).  The outcome of the review indicates the systems are performing well, and we have no performance issues. The hardware is healthy, and in case of an unexpected failure of a production system, we can manually fail over to the test or development system. We will consider placing these systems under extended warranty, as the three year
    warranty we purchase with new systems will expire.
    <br>
    In case of an SM4, any new development for the WFC3 and COS
    ETCs is not expected to become operational in FY06. When NASA does decide to support SM4, we will have to reassess the ETC servers. At that time we can choose to add a third production server; replace (some of the) older systems, change OS, etc.  Therefore, this project is deferred until a future planning cycle.', 2006, 2, 0, 0, 0, 0, '2005-05-17 13:58:45', 'WOLFFL'),
(179, 2006, 1, 2, '', 2006, 3, 0, 0, 0, 0, '2005-10-17 17:52:16', 'SINGER'),
(180, 2005, 3, 0, '', 0, 0, 0, 0, 0, 0, '2005-06-03 17:40:58', 'TCOMEAU'),
(180, 2006, 1, 2, '', 2006, 3, 0, 0, 0, 0, '2005-11-18 14:47:14', 'HUIZINGA'),
(181, 2005, 3, 4, '', 0, 0, 2005, 7, 2005, 10, '2005-09-22 20:10:56', 'SINGER'),
(182, 2005, 3, 0, '', 0, 0, 0, 0, 0, 0, '2005-07-21 19:45:05', 'WOLFFL'),
(182, 2006, 1, 4, '', 0, 0, 0, 0, 0, 0, '2005-11-28 14:56:46', 'HUIZINGA'),
(183, 2005, 3, 0, '', 0, 0, 0, 0, 0, 0, '2005-07-15 21:56:47', 'TCOMEAU'),
(183, 2006, 1, 2, '', 2006, 3, 0, 0, 0, 0, '2005-10-17 18:01:05', 'SINGER'),
(184, 2005, 3, 0, '', 0, 0, 0, 0, 0, 0, '2005-07-21 14:45:10', 'TCOMEAU'),
(184, 2006, 1, 2, '', 2006, 3, 0, 0, 0, 0, '2005-10-17 18:01:40', 'SINGER'),
(185, 2005, 3, 0, '', 0, 0, 0, 0, 0, 0, '2005-07-26 20:54:44', 'HUIZINGA'),
(185, 2006, 1, 4, '', 2006, 3, 0, 0, 0, 0, '2006-04-26 16:00:13', 'payne'),
(186, 2005, 3, 0, '', 0, 0, 0, 0, 0, 0, '2005-08-17 20:03:20', 'SINGER'),
(186, 2006, 1, 2, '', 2006, 3, 0, 0, 0, 0, '2005-10-17 18:02:53', 'SINGER'),
(187, 2005, 3, 0, '', 0, 0, 0, 0, 0, 0, '2005-08-17 20:08:41', 'SINGER'),
(187, 2006, 1, 0, 'Though the work was not planned and executed as a project, the
    moves have been completed. So instead of terminated we''ll say this
    idea was completed.', 0, 0, 0, 0, 0, 0, '2005-09-29 21:03:54', 'HUIZINGA'),
(188, 2005, 3, 0, '', 0, 0, 0, 0, 0, 0, '2005-09-02 18:44:06', 'WMILLER'),
(188, 2006, 1, 0, '', 0, 0, 0, 0, 0, 0, '2005-11-18 14:49:48', 'HUIZINGA'),
(189, 2005, 3, 0, '', 0, 0, 0, 0, 0, 0, '2005-09-02 19:39:11', 'SINGER'),
(189, 2006, 1, 5, 'This project was completed and closed out in 11/2005.', 0, 0, 0, 0, 0, 0, '2005-11-18 14:51:39', 'HUIZINGA'),
(190, 2005, 3, 0, '', 0, 0, 0, 0, 0, 0, '2005-09-20 21:38:48', 'DURKIN'),
(190, 2006, 1, 0, 'This project was initially committed, but in light of the
    staff computing strategy and infrastructure roadmap, we will
    reconsider this work within the scope of a centralized account
    or identity management system as proposed by the SCS. Password
    aging remains a goal, but it may be implemented at the
    Institute Directory/LDAP level, instead of at the operating system level.
    ', 0, 0, 0, 0, 0, 0, '2005-12-22 18:13:22', 'HUIZINGA'),
(191, 2005, 3, 0, '', 0, 0, 0, 0, 0, 0, '2005-09-22 18:37:01', 'WMILLER'),
(191, 2006, 1, 0, '', 0, 0, 0, 0, 0, 0, '2005-11-18 14:56:46', 'HUIZINGA'),
(192, 2005, 3, 0, '', 0, 0, 0, 0, 0, 0, '2005-09-22 21:18:14', 'GOLOMBEK'),
(192, 2006, 1, 4, '', 0, 0, 0, 0, 0, 0, '2006-01-12 18:26:01', 'HUIZINGA'),
(193, 2005, 3, 0, '', 0, 0, 0, 0, 0, 0, '2005-09-23 16:15:39', 'WMILLER'),
(193, 2006, 1, 0, '', 0, 0, 0, 0, 0, 0, '2005-09-26 14:08:23', 'PAYNE'),
(194, 2006, 1, 4, '', 0, 0, 2005, 10, 2005, 11, '2005-11-28 14:57:37', 'HUIZINGA'),
(195, 2006, 1, 4, '', 0, 0, 0, 0, 0, 0, '2005-10-24 13:00:05', 'SINGER'),
(196, 2006, 1, 2, '', 2006, 3, 0, 0, 0, 0, '2005-10-24 12:57:37', 'SINGER'),
(197, 2006, 1, 4, '', 0, 0, 0, 0, 0, 0, '2005-12-02 15:24:49', 'SINGER'),
(198, 2006, 1, 0, '', 0, 0, 0, 0, 0, 0, '2005-10-06 16:10:09', 'MATTS'),
(199, 2006, 1, 2, '', 2006, 3, 0, 0, 0, 0, '2005-11-18 14:52:17', 'HUIZINGA'),
(200, 2006, 1, 4, 'Because of changing OPO requirements (more CPU instead of
    more storage), and the progress of the data storage and
    network project, it was decided to collaps the OPO storage
    project after initial requirements and use cases were
    developed by interviews with OPO staff. This information will
    be fed in to the data storage and network project (#214).', 0, 0, 0, 0, 0, 0, '2006-04-20 17:13:17', 'HUIZINGA'),
(201, 2006, 1, 4, 'An opportunity to implement this upgrade presented itself as part of addressing a hardware failure on the COSMOS cluster, and this work
    was completed as a routine activity. COSMOS now runs RedHat
    Workstation 4.
    ', 0, 0, 0, 0, 0, 0, '2005-12-21 19:32:24', 'HUIZINGA'),
(202, 2006, 1, 4, '', 0, 0, 0, 0, 0, 0, '2005-12-08 20:40:56', 'HUIZINGA'),
(203, 2006, 1, 0, '', 0, 0, 0, 0, 0, 0, '2005-10-17 17:46:25', 'TCOMEAU'),
(204, 2006, 1, 4, '', 0, 0, 0, 0, 0, 0, '2005-11-30 10:34:52', 'HUIZINGA'),
(205, 2006, 1, 5, '', 0, 0, 0, 0, 0, 0, '2005-10-24 18:54:01', 'SINGER'),
(206, 2006, 1, 0, '', 0, 0, 0, 0, 0, 0, '2005-10-20 18:51:00', 'PANTALONE'),
(207, 2006, 1, 4, '', 0, 0, 0, 0, 0, 0, '2005-12-05 18:50:22', 'HUIZINGA'),
(208, 2006, 1, 4, '', 0, 0, 2006, 2, 2006, 3, '2006-02-24 16:18:26', 'HUIZINGA'),
(209, 2006, 1, 0, '', 0, 0, 0, 0, 0, 0, '2005-11-18 14:54:13', 'HUIZINGA'),
(210, 2006, 1, 0, '', 0, 0, 0, 0, 0, 0, '2005-11-04 19:38:33', 'HUIZINGA'),
(211, 2006, 1, 0, '', 0, 0, 0, 0, 0, 0, '2005-11-16 20:26:45', 'SINGER'),
(212, 2006, 1, 4, '', 0, 0, 0, 0, 0, 0, '2005-12-05 19:54:13', 'HUIZINGA'),
(213, 2006, 1, 0, '', 0, 0, 0, 0, 0, 0, '2005-12-05 20:44:26', 'HUIZINGA'),
(214, 2006, 1, 4, '', 0, 0, 2006, 1, 2006, 5, '2006-02-24 16:24:47', 'HUIZINGA'),
(215, 2006, 1, 4, '', 0, 0, 0, 0, 0, 0, '2005-12-14 15:33:15', 'HUIZINGA'),
(216, 2006, 1, 0, 'this was entered accidentally and terminated. The real entries
    should follow soon. Edwin.', 0, 0, 0, 0, 0, 0, '2005-12-15 15:22:52', 'HUIZINGA'),
(217, 2006, 1, 4, '', 0, 0, 0, 0, 0, 0, '2005-12-15 17:11:35', 'HUIZINGA'),
(218, 2006, 1, 4, 'This effort has been ongoing as part of the apache webfarm project,
    which was subsumed by the web services strategy project. This
    work needs to be completed and this project was created to catch it.', 0, 0, 0, 0, 0, 0, '2005-12-15 17:49:41', 'HUIZINGA'),
(219, 2006, 1, 4, '', 0, 0, 0, 0, 0, 0, '2005-12-15 21:07:08', 'HUIZINGA'),
(220, 2006, 1, 4, '', 0, 0, 0, 0, 0, 0, '2006-01-18 17:05:57', 'HUIZINGA'),
(221, 2006, 1, 0, '', 0, 0, 0, 0, 0, 0, '2006-01-18 19:21:43', 'MATTS'),
(222, 2006, 1, 0, '', 0, 0, 0, 0, 0, 0, '2006-02-14 19:57:00', 'HUIZINGA'),
(223, 2006, 1, 4, '', 0, 0, 0, 0, 0, 0, '2006-03-07 14:24:54', 'HUIZINGA'),
(224, 2006, 1, 0, '', 0, 0, 0, 0, 0, 0, '2006-03-07 14:56:49', 'MATTS'),
(225, 2006, 1, 0, '', 0, 0, 0, 0, 0, 0, '2006-03-07 14:28:23', 'HUIZINGA'),
(226, 2006, 1, 0, '', 0, 0, 0, 0, 0, 0, '2006-03-08 20:35:36', 'HUIZINGA'),
(227, 2006, 1, 0, '', 0, 0, 0, 0, 0, 0, '2006-03-13 14:08:14', 'HUIZINGA'),
(228, 2006, 1, 0, '', 0, 0, 0, 0, 0, 0, '2006-03-13 23:33:13', 'HUIZINGA'),
(229, 2006, 1, 4, '', 0, 0, 2006, 3, 2006, 5, '2006-03-22 15:26:54', 'HUIZINGA'),
(230, 2006, 1, 0, '', 0, 0, 0, 0, 0, 0, '2006-04-03 14:15:28', 'MATTS'),
(231, 2006, 1, 0, '', 0, 0, 0, 0, 0, 0, '2006-04-06 20:51:43', 'payne'),
(232, 2006, 1, 4, '', 0, 0, 0, 0, 0, 0, '2006-05-03 16:18:44', 'HUIZINGA'),
(233, 2006, 1, 0, '', 0, 0, 0, 0, 0, 0, '2006-04-12 16:53:11', 'MATTS'),
(234, 2006, 1, 0, '', 0, 0, 0, 0, 0, 0, '2006-04-12 20:06:05', 'MATTS'),
(235, 2006, 1, 0, '', 0, 0, 0, 0, 0, 0, '2006-04-14 16:26:29', 'PANTALONE'),
(236, 2006, 1, 0, '', 0, 0, 0, 0, 0, 0, '2006-04-27 17:33:23', 'HUIZINGA'),
(237, 2006, 1, 0, '', 0, 0, 0, 0, 0, 0, '2006-05-01 21:59:08', 'PANTALONE'),
(238, 2006, 1, 4, '', 0, 0, 0, 0, 0, 0, '2006-05-02 13:20:43', 'HUIZINGA'),
(239, 2006, 1, 0, '', 0, 0, 0, 0, 0, 0, '2006-05-02 14:11:30', 'HUIZINGA'),
(288, 2015, 2, 5, 'None', 2015, 4, 2015, 9, 0, 0, '2015-07-15 13:06:50', 'payne'),
(288, 2015, 3, 2, 'Not time yet.', 2015, 4, 0, 0, 0, 0, '2015-08-06 20:52:19', ''),
(288, 2015, 4, 5, 'None', 2016, 1, 2014, 11, 0, 0, '2015-08-01 21:59:21', 'payne'),
(288, 2016, 1, 2, 'Not now.', 2016, 2, 0, 0, 0, 0, '2015-07-30 04:43:42', ''),
(289, 2006, 1, 5, '', 2006, 2, 2012, 4, 0, 0, '2015-06-11 01:37:12', 'payne'),
(289, 2008, 1, 0, 'asdfasf', 2008, 2, 2009, 1, 2009, 2, '2015-06-11 02:32:19', 'payne'),
(289, 2008, 2, 2, '', 0, 0, 0, 0, 0, 0, '2015-06-18 19:38:02', 'payne'),
(289, 2014, 4, 2, '', 0, 0, 2015, 6, 0, 0, '2015-06-06 01:28:56', 'payne'),
(289, 2015, 1, 2, '', 0, 0, 2015, 6, 0, 0, '2015-06-04 18:51:49', 'payne'),
(289, 2015, 2, 4, '', 0, 0, 2015, 3, 0, 0, '2015-07-29 22:29:05', ''),
(289, 2015, 3, 2, '', 2015, 4, 2015, 2, 0, 0, '2015-11-08 15:58:22', 'payne'),
(303, 2014, 2, 0, '', 0, 0, 0, 0, 0, 0, '2015-06-19 19:23:19', 'payne'),
(303, 2014, 3, 0, '', 0, 0, 0, 0, 0, 0, '2015-06-19 02:01:18', 'payne'),
(304, 2015, 2, 2, '', 2015, 4, 0, 0, 0, 0, '2015-06-21 23:02:19', '');

--
-- Truncate table before insert "dispositionlist"
--

--
-- Dumping data for table "dispositionlist"
--

INSERT INTO "dispositionlist" ("dispositionID", "dispositionDesc", "dispositionText") VALUES
(0, '', ''),
(2, 'deferred', 'This project will be reconsidered in a future planning cycle. '),
(4, 'committed', 'This project is scheduled in the next implementation plan and a good-faith commitment to execute it has been made.'),
(5, 'short list', 'This project has passed the filter being used in this portfolio planning cycle, and is being scrutinized for fit in the next implementation plan.');

--
-- Truncate table before insert "driver"
--

--
-- Dumping data for table "driver"
--

ALTER TABLE "driver" DISABLE TRIGGER ALL;
INSERT INTO "driver" ("projectID", "driverID") VALUES
(18, 1),
(23, 1),
(33, 2),
(27, 1),
(33, 8),
(38, 1),
(45, 1),
(47, 7),
(57, 2),
(62, 2),
(68, 1),
(70, 2),
(84, 2),
(93, 2),
(23, 2),
(27, 2),
(45, 2),
(46, 2),
(57, 3),
(68, 2),
(70, 8),
(18, 2),
(87, 2),
(93, 4),
(92, 2),
(51, 2),
(2, 2),
(52, 2),
(77, 2),
(87, 3),
(53, 2),
(65, 4),
(6, 7),
(40, 6),
(47, 8),
(48, 7),
(49, 4),
(56, 4),
(64, 4),
(67, 7),
(85, 2),
(92, 7),
(10, 6),
(13, 4),
(16, 4),
(21, 6),
(40, 7),
(86, 4),
(18, 4),
(8, 4),
(9, 4),
(12, 4),
(17, 4),
(28, 4),
(69, 4),
(86, 6),
(98, 1),
(4, 4),
(86, 7),
(98, 4),
(5, 1),
(18, 8),
(19, 1),
(23, 8),
(303, 1),
(26, 2),
(27, 8),
(31, 1),
(38, 8),
(42, 1),
(45, 8),
(50, 1),
(57, 8),
(58, 1),
(60, 1),
(61, 1),
(66, 1),
(68, 8),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(79, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 8),
(94, 1),
(95, 1),
(98, 7),
(80, 5),
(15, 2),
(37, 2),
(101, 2),
(105, 4),
(105, 7),
(85, 3),
(2, 3),
(11, 4),
(11, 5),
(11, 6),
(11, 7),
(13, 6),
(16, 6),
(34, 2),
(34, 4),
(34, 5),
(36, 4),
(43, 2),
(43, 4),
(43, 6),
(44, 4),
(49, 7),
(52, 3),
(52, 8),
(53, 6),
(53, 7),
(77, 3),
(77, 8),
(62, 8),
(64, 6),
(64, 7),
(93, 8),
(4, 6),
(26, 8),
(116, 4),
(123, 4),
(111, 2),
(127, 2),
(125, 4),
(120, 2),
(120, 4),
(119, 5),
(118, 2),
(118, 4),
(118, 5),
(130, 2),
(103, 1),
(108, 2),
(108, 3),
(108, 4),
(106, 4),
(133, 2),
(133, 4),
(133, 5),
(115, 4),
(126, 4),
(129, 4),
(121, 4),
(121, 7),
(132, 8),
(112, 4),
(117, 2),
(136, 4),
(136, 8),
(137, 4),
(139, 8),
(140, 8),
(141, 5),
(141, 6),
(141, 7),
(142, 2),
(142, 3),
(2, 4),
(102, 4),
(102, 8),
(110, 4),
(110, 6),
(110, 7),
(104, 4),
(104, 6),
(104, 7),
(87, 4),
(87, 8),
(8, 8),
(131, 2),
(131, 4),
(131, 6),
(131, 7),
(131, 8),
(134, 2),
(134, 4),
(134, 6),
(134, 7),
(134, 8),
(117, 4),
(149, 2),
(149, 6),
(150, 4),
(150, 6),
(151, 1),
(152, 2),
(153, 2),
(153, 8),
(154, 5),
(148, 1),
(163, 2),
(166, 1),
(171, 2),
(172, 2),
(177, 1),
(177, 2),
(177, 4),
(107, 2),
(107, 3),
(107, 7),
(124, 4),
(160, 1),
(160, 5),
(175, 1),
(175, 8),
(174, 4),
(16, 7),
(16, 8),
(113, 2),
(113, 4),
(146, 4),
(146, 6),
(146, 7),
(146, 8),
(13, 7),
(13, 8),
(44, 6),
(44, 7),
(179, 2),
(167, 2),
(167, 4),
(24, 8),
(158, 5),
(156, 5),
(155, 5),
(65, 6),
(65, 7),
(159, 5),
(164, 4),
(164, 6),
(164, 7),
(164, 8),
(168, 4),
(181, 5),
(185, 2),
(193, 5),
(200, 4),
(200, 6),
(196, 8),
(197, 8),
(199, 7),
(206, 7),
(206, 6),
(206, 4),
(48, 4),
(102, 2),
(210, 4),
(204, 2),
(212, 2),
(213, 2),
(214, 2),
(217, 2),
(218, 2),
(219, 2),
(219, 7),
(192, 4),
(208, 2),
(222, 8),
(223, 2),
(224, 4),
(224, 6),
(225, 2),
(226, 2),
(227, 4),
(228, 2),
(229, 4),
(235, 2),
(237, 2),
(238, 2),
(232, 4),
(288, 1),
(288, 2),
(303, 2),
(303, 3),
(288, 3),
(20, 6),
(289, 5),
(289, 6);

--
-- Truncate table before insert "driverlist"
--

--
-- Dumping data for table "driverlist"
--

INSERT INTO "driverlist" ("driverID", "driverDesc", "driverText") VALUES
(1, 'contract requirement', 'A mission deliverable, such as Two Gyro support or NPG 2810.1.'),
(2, 'disaster avoidance', 'Work that prevents infrequent big disasters or frequent minor outages.'),
(3, 'disaster recovery', 'Such as backups, off-site P&S servers.'),
(4, 'efficiency', 'Improved productivity or efficiency, without recoverable FTE costs.'),
(5, 'new business', 'Bringing new contracts to the Institute.'),
(6, 'save labor', 'Recoverable labor FTE cost savings.'),
(7, 'save money', 'Recoverable operating expenses.'),
(8, 'security', 'Security is mostly about disaster avoidance and recovery, but it warrants it’s own driver.');

--
-- Truncate table before insert "edit_log"
--

--
-- Dumping data for table "edit_log"
--

ALTER TABLE "edit_log" DISABLE TRIGGER ALL;
INSERT INTO "edit_log" ("user", "projectID", "action", "timestamp") VALUES
('HUIZINGA', 10, 'edit', '2004-06-17 13:50:58'),
('HUIZINGA', 93, 'edit', '2004-06-17 13:48:43'),
('HUIZINGA', 99, 'saveAsNew', '2004-06-17 13:19:13'),
('HUIZINGA', 85, 'edit', '2004-06-17 11:30:31'),
('HUIZINGA', 21, 'edit', '2004-06-17 13:55:46'),
('HUIZINGA', 37, 'edit', '2004-06-17 13:57:30'),
('HUIZINGA', 83, 'edit', '2004-06-17 14:04:41'),
('HUIZINGA', 78, 'edit', '2004-06-17 14:05:59'),
('HUIZINGA', 79, 'edit', '2004-06-17 14:07:00'),
('HUIZINGA', 88, 'edit', '2004-06-17 14:08:03'),
('HUIZINGA', 88, 'edit', '2004-06-17 14:10:09'),
('HUIZINGA', 89, 'edit', '2004-06-17 14:12:58'),
('HUIZINGA', 90, 'edit', '2004-06-17 14:14:13'),
('PAYNE', 101, 'edit', '2004-06-17 14:14:22'),
('PAYNE', 101, 'edit', '2004-06-17 14:15:30'),
('HUIZINGA', 89, 'edit', '2004-06-17 14:15:54'),
('HUIZINGA', 92, 'edit', '2004-06-17 14:19:15'),
('HUIZINGA', 67, 'edit', '2004-06-17 14:20:21'),
('HUIZINGA', 60, 'edit', '2004-06-17 14:22:31'),
('HUIZINGA', 56, 'edit', '2004-06-17 14:23:51'),
('HUIZINGA', 24, 'edit', '2004-06-17 14:25:53'),
('HUIZINGA', 24, 'edit', '2004-06-17 14:26:20'),
('HUIZINGA', 24, 'edit', '2004-06-17 14:27:04'),
('HUIZINGA', 96, 'edit', '2004-06-17 14:30:58'),
('HUIZINGA', 98, 'edit', '2004-06-17 14:31:59'),
('HUIZINGA', 93, 'edit', '2004-06-17 14:33:31'),
('HUIZINGA', 101, 'edit', '2004-06-17 17:35:22'),
('HUIZINGA', 101, 'edit', '2004-06-17 17:35:51'),
('HUIZINGA', 23, 'edit', '2004-06-17 19:34:25'),
('HUIZINGA', 43, 'edit', '2004-06-17 19:38:04'),
('HUIZINGA', 53, 'edit', '2004-06-17 19:38:55'),
('DURKIN', 48, 'edit', '2004-06-17 19:50:08'),
('DURKIN', 48, 'edit', '2004-06-17 19:50:22'),
('PAYNE', 63, 'edit', '2004-06-18 21:19:19'),
('payne', 5, 'edit', '2004-06-19 13:38:49'),
('payne', 5, 'edit', '2004-06-19 13:46:03'),
('payne', 5, 'edit', '2004-06-19 13:46:44'),
('payne', 5, 'edit', '2004-06-19 13:49:06'),
('payne', 12, 'edit', '2004-06-19 13:50:04'),
('payne', 5, 'edit', '2004-06-19 13:53:22'),
('payne', 12, 'edit', '2004-06-19 13:54:26'),
('payne', 18, 'edit', '2004-06-19 13:55:04'),
('payne', 18, 'edit', '2004-06-19 13:55:07'),
('payne', 20, 'edit', '2004-06-19 13:55:42'),
('payne', 31, 'edit', '2004-06-19 13:56:21'),
('payne', 35, 'edit', '2004-06-19 13:56:48'),
('payne', 45, 'edit', '2004-06-19 13:57:18'),
('payne', 61, 'edit', '2004-06-19 13:57:50'),
('payne', 76, 'edit', '2004-06-19 13:59:05'),
('payne', 80, 'edit', '2004-06-19 13:59:50'),
('payne', 83, 'edit', '2004-06-19 14:00:45'),
('payne', 82, 'edit', '2004-06-19 14:03:16'),
('payne', 1, 'edit', '2004-06-19 14:05:45'),
('payne', 9, 'edit', '2004-06-19 14:06:24'),
('payne', 22, 'edit', '2004-06-19 14:07:04'),
('payne', 28, 'edit', '2004-06-19 14:08:06'),
('payne', 40, 'edit', '2004-06-19 14:08:52'),
('payne', 54, 'edit', '2004-06-19 14:10:18'),
('payne', 66, 'edit', '2004-06-19 14:11:02'),
('payne', 81, 'edit', '2004-06-19 14:12:58'),
('payne', 48, 'edit', '2004-06-19 16:34:44'),
('payne', 93, 'edit', '2004-06-19 16:36:23'),
('payne', 51, 'edit', '2004-06-19 16:39:07'),
('payne', 67, 'edit', '2004-06-19 16:39:39'),
('payne', 88, 'edit', '2004-06-19 16:41:57'),
('payne', 90, 'edit', '2004-06-19 16:43:08'),
('payne', 92, 'edit', '2004-06-19 16:44:00'),
('PAYNE', 1, 'edit', '2004-06-22 00:38:02'),
('PAYNE', 9, 'edit', '2004-06-22 00:39:38'),
('PAYNE', 22, 'edit', '2004-06-22 00:40:33'),
('PAYNE', 27, 'edit', '2004-06-22 00:41:12'),
('PAYNE', 28, 'edit', '2004-06-22 00:41:56'),
('PAYNE', 39, 'edit', '2004-06-22 00:42:39'),
('PAYNE', 40, 'edit', '2004-06-22 00:43:28'),
('PAYNE', 50, 'edit', '2004-06-22 00:44:13'),
('PAYNE', 54, 'edit', '2004-06-22 00:44:46'),
('PAYNE', 66, 'edit', '2004-06-22 00:45:18'),
('PAYNE', 81, 'edit', '2004-06-22 00:45:49'),
('PAYNE', 82, 'edit', '2004-06-22 00:46:23'),
('HUIZINGA', 4, 'edit', '2004-06-22 22:40:49'),
('HUIZINGA', 14, 'edit', '2004-06-22 22:45:21'),
('HUIZINGA', 8, 'edit', '2004-06-23 11:13:13'),
('HUIZINGA', 10, 'edit', '2004-06-23 11:13:58'),
('HUIZINGA', 14, 'edit', '2004-06-23 11:14:31'),
('HUIZINGA', 15, 'edit', '2004-06-23 11:15:20'),
('HUIZINGA', 17, 'edit', '2004-06-23 11:15:58'),
('HUIZINGA', 19, 'edit', '2004-06-23 11:16:29'),
('HUIZINGA', 21, 'edit', '2004-06-23 11:17:11'),
('HUIZINGA', 25, 'edit', '2004-06-23 11:17:42'),
('HUIZINGA', 37, 'edit', '2004-06-23 11:18:17'),
('HUIZINGA', 38, 'edit', '2004-06-23 11:18:48'),
('HUIZINGA', 47, 'edit', '2004-06-23 11:19:18'),
('HUIZINGA', 48, 'edit', '2004-06-23 11:19:54'),
('HUIZINGA', 56, 'edit', '2004-06-23 11:21:03'),
('HUIZINGA', 58, 'edit', '2004-06-23 11:21:42'),
('HUIZINGA', 60, 'edit', '2004-06-23 11:22:21'),
('HUIZINGA', 63, 'edit', '2004-06-23 11:22:51'),
('HUIZINGA', 65, 'edit', '2004-06-23 11:23:39'),
('HUIZINGA', 68, 'edit', '2004-06-23 11:24:59'),
('HUIZINGA', 73, 'edit', '2004-06-23 11:25:33'),
('HUIZINGA', 74, 'edit', '2004-06-23 11:26:12'),
('HUIZINGA', 75, 'edit', '2004-06-23 11:26:49'),
('HUIZINGA', 78, 'edit', '2004-06-23 11:27:21'),
('HUIZINGA', 79, 'edit', '2004-06-23 11:27:49'),
('HUIZINGA', 89, 'edit', '2004-06-23 11:29:41'),
('HUIZINGA', 94, 'edit', '2004-06-23 11:30:46'),
('HUIZINGA', 95, 'edit', '2004-06-23 11:31:28'),
('HUIZINGA', 96, 'edit', '2004-06-23 11:32:17'),
('HUIZINGA', 97, 'edit', '2004-06-23 11:33:06'),
('HUIZINGA', 14, 'edit', '2004-06-23 11:50:14'),
('HUIZINGA', 51, 'edit', '2004-06-23 11:53:58'),
('HUIZINGA', 24, 'edit', '2004-06-23 11:58:13'),
('HUIZINGA', 98, 'edit', '2004-06-23 12:54:56'),
('HUIZINGA', 70, 'edit', '2004-06-23 12:56:16'),
('HUIZINGA', 50, 'edit', '2004-06-23 13:04:48'),
('HUIZINGA', 39, 'edit', '2004-06-23 13:05:33'),
('HUIZINGA', 27, 'edit', '2004-06-23 13:07:02'),
('HUIZINGA', 4, 'edit', '2004-06-23 13:10:37'),
('HUIZINGA', 6, 'edit', '2004-06-23 13:11:12'),
('HUIZINGA', 101, 'edit', '2004-06-23 13:15:08'),
('HUIZINGA', 102, 'addProject', '2004-06-23 13:24:19'),
('HUIZINGA', 102, 'edit', '2004-06-23 13:24:20'),
('HUIZINGA', 102, 'edit', '2004-06-23 13:25:30'),
('PAYNE', 102, 'deleteComment', '2004-06-23 18:02:14'),
('HUIZINGA', 103, 'addProject', '2004-06-23 19:03:17'),
('HUIZINGA', 103, 'edit', '2004-06-23 19:03:17'),
('HUIZINGA', 104, 'addProject', '2004-06-23 19:17:09'),
('HUIZINGA', 104, 'edit', '2004-06-23 19:17:09'),
('HUIZINGA', 104, 'edit', '2004-06-23 19:21:56'),
('HUIZINGA', 104, 'edit', '2004-06-23 19:24:38'),
('HUIZINGA', 105, 'addProject', '2004-06-24 16:50:00'),
('HUIZINGA', 105, 'edit', '2004-06-24 16:50:02'),
('HUIZINGA', 105, 'edit', '2004-06-24 16:52:08'),
('HUIZINGA', 103, 'edit', '2004-06-24 16:54:56'),
('HUIZINGA', 86, 'edit', '2004-06-29 12:20:45'),
('HUIZINGA', 85, 'edit', '2004-06-29 12:23:15'),
('HUIZINGA', 2, 'edit', '2004-06-29 14:58:48'),
('HUIZINGA', 10, 'edit', '2004-06-29 15:06:42'),
('HUIZINGA', 10, 'edit', '2004-06-29 15:06:54'),
('HUIZINGA', 10, 'edit', '2004-06-29 15:20:58'),
('HUIZINGA', 11, 'edit', '2004-06-29 15:26:08'),
('HUIZINGA', 11, 'edit', '2004-06-29 15:35:11'),
('HUIZINGA', 13, 'edit', '2004-06-29 15:40:02'),
('HUIZINGA', 16, 'edit', '2004-06-29 15:45:39'),
('HUIZINGA', 23, 'edit', '2004-06-29 15:55:05'),
('HUIZINGA', 106, 'addProject', '2004-06-29 19:51:37'),
('HUIZINGA', 106, 'edit', '2004-06-29 19:51:37'),
('HUIZINGA', 26, 'edit', '2004-06-29 20:09:23'),
('HUIZINGA', 26, 'edit', '2004-06-29 20:10:22'),
('HUIZINGA', 26, 'edit', '2004-06-29 20:11:05'),
('HUIZINGA', 33, 'edit', '2004-06-29 20:21:15'),
('HUIZINGA', 34, 'edit', '2004-06-29 20:35:01'),
('HUIZINGA', 36, 'edit', '2004-06-29 20:45:16'),
('HUIZINGA', 42, 'edit', '2004-06-29 20:53:12'),
('HUIZINGA', 43, 'edit', '2004-06-29 21:07:15'),
('HUIZINGA', 44, 'edit', '2004-06-29 21:17:28'),
('HUIZINGA', 44, 'edit', '2004-06-29 21:19:21'),
('HUIZINGA', 106, 'edit', '2004-06-29 23:12:39'),
('HUIZINGA', 107, 'addProject', '2004-06-30 10:49:21'),
('HUIZINGA', 108, 'addProject', '2004-06-30 10:59:27'),
('HUIZINGA', 46, 'edit', '2004-06-30 16:37:19'),
('HUIZINGA', 49, 'edit', '2004-06-30 16:50:18'),
('HUIZINGA', 48, 'edit', '2004-06-30 16:58:18'),
('HUIZINGA', 107, 'edit', '2004-06-30 17:59:27'),
('HUIZINGA', 107, 'edit', '2004-06-30 18:00:20'),
('HUIZINGA', 108, 'edit', '2004-06-30 18:25:45'),
('HUIZINGA', 109, 'addProject', '2004-06-30 19:19:35'),
('HUIZINGA', 109, 'edit', '2004-06-30 19:19:36'),
('HUIZINGA', 109, 'edit', '2004-06-30 19:25:09'),
('HUIZINGA', 109, 'edit', '2004-06-30 19:33:51'),
('HUIZINGA', 109, 'edit', '2004-06-30 19:37:48'),
('HUIZINGA', 109, 'edit', '2004-06-30 19:38:47'),
('HUIZINGA', 2, 'edit', '2004-06-30 19:40:43'),
('HUIZINGA', 10, 'edit', '2004-06-30 19:41:22'),
('HUIZINGA', 13, 'edit', '2004-06-30 19:41:56'),
('HUIZINGA', 109, 'edit', '2004-06-30 19:56:15'),
('HUIZINGA', 16, 'edit', '2004-06-30 22:07:52'),
('HUIZINGA', 16, 'edit', '2004-06-30 22:09:55'),
('HUIZINGA', 52, 'edit', '2004-06-30 23:06:26'),
('HUIZINGA', 53, 'edit', '2004-06-30 23:19:02'),
('HUIZINGA', 57, 'edit', '2004-06-30 23:30:02'),
('HUIZINGA', 62, 'edit', '2004-06-30 23:30:39'),
('HUIZINGA', 62, 'edit', '2004-06-30 23:33:53'),
('HUIZINGA', 62, 'edit', '2004-06-30 23:35:18'),
('HUIZINGA', 77, 'edit', '2004-06-30 23:38:24'),
('HUIZINGA', 62, 'edit', '2004-06-30 23:41:16'),
('HUIZINGA', 62, 'edit', '2004-06-30 23:45:39'),
('HUIZINGA', 62, 'edit', '2004-06-30 23:45:55'),
('HUIZINGA', 62, 'edit', '2004-06-30 23:46:09'),
('HUIZINGA', 62, 'edit', '2004-06-30 23:46:17'),
('HUIZINGA', 64, 'edit', '2004-06-30 23:53:43'),
('HUIZINGA', 69, 'edit', '2004-06-30 23:55:39'),
('HUIZINGA', 70, 'edit', '2004-07-01 00:00:46'),
('HUIZINGA', 77, 'edit', '2004-07-01 00:11:04'),
('HUIZINGA', 84, 'edit', '2004-07-01 00:17:50'),
('HUIZINGA', 93, 'edit', '2004-07-01 00:30:07'),
('HUIZINGA', 4, 'edit', '2004-07-01 00:36:45'),
('HUIZINGA', 2, 'edit', '2004-07-01 00:40:31'),
('HUIZINGA', 8, 'edit', '2004-07-01 16:00:40'),
('HUIZINGA', 8, 'edit', '2004-07-01 16:01:45'),
('HUIZINGA', 23, 'edit', '2004-07-01 16:53:12'),
('HUIZINGA', 26, 'edit', '2004-07-01 16:53:25'),
('HUIZINGA', 26, 'edit', '2004-07-01 17:23:04'),
('HUIZINGA', 26, 'edit', '2004-07-01 17:24:00'),
('HUIZINGA', 33, 'edit', '2004-07-01 17:25:49'),
('HUIZINGA', 10, 'edit', '2004-07-01 17:28:37'),
('HUIZINGA', 34, 'edit', '2004-07-01 17:29:21'),
('HUIZINGA', 15, 'edit', '2004-07-01 17:29:52'),
('HUIZINGA', 84, 'edit', '2004-07-01 17:31:01'),
('HUIZINGA', 64, 'edit', '2004-07-01 17:31:38'),
('HUIZINGA', 57, 'edit', '2004-07-01 17:32:06'),
('HUIZINGA', 48, 'edit', '2004-07-01 17:32:36'),
('HUIZINGA', 49, 'edit', '2004-07-01 17:33:05'),
('HUIZINGA', 62, 'edit', '2004-07-01 17:33:33'),
('HUIZINGA', 75, 'edit', '2004-07-01 17:36:30'),
('HUIZINGA', 75, 'edit', '2004-07-01 17:38:10'),
('HUIZINGA', 8, 'edit', '2004-07-01 17:39:36'),
('HUIZINGA', 106, 'edit', '2004-07-02 16:54:23'),
('PAYNE', 8, 'edit', '2004-07-02 18:47:42'),
('PAYNE', 14, 'edit', '2004-07-02 18:48:12'),
('PAYNE', 15, 'edit', '2004-07-02 18:48:31'),
('PAYNE', 17, 'edit', '2004-07-02 18:48:47'),
('PAYNE', 19, 'edit', '2004-07-02 18:49:04'),
('PAYNE', 21, 'edit', '2004-07-02 18:49:23'),
('PAYNE', 24, 'edit', '2004-07-02 18:49:39'),
('PAYNE', 25, 'edit', '2004-07-02 18:49:56'),
('PAYNE', 37, 'edit', '2004-07-02 18:50:14'),
('PAYNE', 38, 'edit', '2004-07-02 18:50:31'),
('PAYNE', 47, 'edit', '2004-07-02 18:50:48'),
('PAYNE', 51, 'edit', '2004-07-02 18:51:04'),
('PAYNE', 56, 'edit', '2004-07-02 18:51:50'),
('PAYNE', 58, 'edit', '2004-07-02 18:52:05'),
('PAYNE', 60, 'edit', '2004-07-02 18:52:23'),
('PAYNE', 63, 'edit', '2004-07-02 18:52:40'),
('PAYNE', 65, 'edit', '2004-07-02 18:52:55'),
('PAYNE', 67, 'edit', '2004-07-02 18:53:09'),
('PAYNE', 68, 'edit', '2004-07-02 18:53:39'),
('PAYNE', 73, 'edit', '2004-07-02 18:53:56'),
('PAYNE', 74, 'edit', '2004-07-02 18:54:12'),
('PAYNE', 75, 'edit', '2004-07-02 18:54:29'),
('PAYNE', 78, 'edit', '2004-07-02 18:54:46'),
('PAYNE', 79, 'edit', '2004-07-02 18:55:01'),
('PAYNE', 88, 'edit', '2004-07-02 18:55:16'),
('PAYNE', 89, 'edit', '2004-07-02 18:55:32'),
('PAYNE', 90, 'edit', '2004-07-02 18:55:59'),
('PAYNE', 92, 'edit', '2004-07-02 18:56:14'),
('PAYNE', 94, 'edit', '2004-07-02 18:56:31'),
('PAYNE', 95, 'edit', '2004-07-02 18:56:56'),
('PAYNE', 96, 'edit', '2004-07-02 18:57:14'),
('PAYNE', 97, 'edit', '2004-07-02 18:57:30'),
('PAYNE', 98, 'edit', '2004-07-02 18:57:45'),
('PAYNE', 109, 'edit', '2004-07-02 18:58:05'),
('HUIZINGA', 34, 'edit', '2004-07-06 13:08:42'),
('HUIZINGA', 11, 'edit', '2004-07-06 13:09:42'),
('HUIZINGA', 96, 'edit', '2004-07-06 13:11:09'),
('HUIZINGA', 47, 'edit', '2004-07-06 13:23:22'),
('HUIZINGA', 67, 'edit', '2004-07-06 13:23:47'),
('HUIZINGA', 21, 'edit', '2004-07-06 13:24:25'),
('HUIZINGA', 60, 'edit', '2004-07-06 13:24:53'),
('HUIZINGA', 73, 'edit', '2004-07-06 13:25:19'),
('HUIZINGA', 17, 'edit', '2004-07-06 13:25:59'),
('HUIZINGA', 110, 'addProject', '2004-07-07 13:21:47'),
('HUIZINGA', 110, 'edit', '2004-07-07 13:22:19'),
('HUIZINGA', 108, 'edit', '2004-07-07 13:23:07'),
('HUIZINGA', 107, 'edit', '2004-07-07 13:24:05'),
('HUIZINGA', 111, 'addProject', '2004-07-12 17:33:13'),
('HUIZINGA', 111, 'edit', '2004-07-12 17:35:38'),
('HUIZINGA', 111, 'edit', '2004-07-12 17:37:13'),
('HUIZINGA', 112, 'addProject', '2004-07-13 21:07:35'),
('HUIZINGA', 112, 'edit', '2004-07-13 21:08:04'),
('HUIZINGA', 113, 'addProject', '2004-07-13 21:13:42'),
('HUIZINGA', 114, 'addProject', '2004-07-13 21:15:58'),
('HUIZINGA', 115, 'addProject', '2004-07-13 21:17:55'),
('HUIZINGA', 116, 'addProject', '2004-07-13 21:20:56'),
('HUIZINGA', 117, 'addProject', '2004-07-13 21:35:12'),
('HUIZINGA', 118, 'addProject', '2004-07-14 14:52:00'),
('HUIZINGA', 119, 'addProject', '2004-07-14 15:15:54'),
('HUIZINGA', 120, 'addProject', '2004-07-14 16:34:24'),
('HUIZINGA', 120, 'edit', '2004-07-14 16:35:55'),
('HUIZINGA', 119, 'edit', '2004-07-14 16:36:40'),
('HUIZINGA', 118, 'edit', '2004-07-14 16:37:24'),
('HUIZINGA', 108, 'edit', '2004-07-14 16:38:50'),
('HUIZINGA', 107, 'edit', '2004-07-14 16:39:17'),
('HUIZINGA', 120, 'edit', '2004-07-14 16:45:03'),
('HUIZINGA', 120, 'edit', '2004-07-14 16:46:17'),
('HUIZINGA', 118, 'edit', '2004-07-14 17:32:29'),
('HUIZINGA', 118, 'edit', '2004-07-14 17:51:16'),
('HUIZINGA', 119, 'addComment', '2004-07-14 17:53:07'),
('HUIZINGA', 121, 'addProject', '2004-07-14 20:17:08'),
('HUIZINGA', 122, 'addProject', '2004-07-14 21:08:10'),
('SINGER', 123, 'addProject', '2004-07-15 13:23:11'),
('HUIZINGA', 108, 'addComment', '2004-07-15 14:16:55'),
('HUIZINGA', 108, 'updateComment', '2004-07-15 14:17:17'),
('HUIZINGA', 124, 'addProject', '2004-07-15 18:35:24'),
('HUIZINGA', 125, 'addProject', '2004-07-15 18:36:12'),
('HUIZINGA', 126, 'addProject', '2004-07-15 18:36:55'),
('WOLFFL', 10, 'edit', '2004-07-15 19:36:04'),
('WOLFFL', 127, 'addProject', '2004-07-15 20:08:59'),
('WOLFFL', 127, 'edit', '2004-07-15 20:13:20'),
('PAYNE', 106, 'edit', '2004-07-16 19:57:19'),
('PAYNE', 106, 'edit', '2004-07-16 19:58:58'),
('PAYNE', 106, 'edit', '2004-07-16 20:02:52'),
('WOLFFL', 127, 'edit', '2004-07-19 18:35:25'),
('WOLFFL', 125, 'edit', '2004-07-19 18:42:27'),
('WOLFFL', 122, 'edit', '2004-07-19 18:46:59'),
('WOLFFL', 106, 'edit', '2004-07-19 19:22:34'),
('WOLFFL', 120, 'edit', '2004-07-19 19:26:23'),
('WOLFFL', 119, 'edit', '2004-07-19 19:30:20'),
('WOLFFL', 118, 'edit', '2004-07-19 19:40:10'),
('WOLFFL', 114, 'edit', '2004-07-19 19:43:43'),
('WOLFFL', 108, 'edit', '2004-07-19 19:45:24'),
('WOLFFL', 107, 'edit', '2004-07-19 19:46:57'),
('WOLFFL', 10, 'edit', '2004-07-19 19:50:56'),
('WOLFFL', 2, 'edit', '2004-07-19 19:55:29'),
('WOLFFL', 2, 'edit', '2004-07-19 19:55:51'),
('WOLFFL', 33, 'edit', '2004-07-19 19:57:07'),
('WOLFFL', 49, 'edit', '2004-07-19 19:57:51'),
('WOLFFL', 77, 'edit', '2004-07-19 19:58:41'),
('WOLFFL', 93, 'edit', '2004-07-19 20:00:08'),
('WOLFFL', 103, 'edit', '2004-07-19 20:07:16'),
('HUIZINGA', 128, 'addProject', '2004-07-19 04:00:00'),
('SINGER', 14, 'edit', '2004-07-20 13:10:50'),
('SINGER', 60, 'edit', '2004-07-20 13:41:56'),
('SINGER', 75, 'addComment', '2004-07-20 13:54:19'),
('SINGER', 79, 'edit', '2004-07-20 14:01:10'),
('SINGER', 89, 'edit', '2004-07-20 14:11:25'),
('SINGER', 24, 'edit', '2004-07-20 15:04:24'),
('HUIZINGA', 106, 'addComment', '2004-07-20 15:34:24'),
('HUIZINGA', 106, 'addComment', '2004-07-20 15:35:25'),
('HUIZINGA', 122, 'edit', '2004-07-20 15:46:38'),
('HUIZINGA', 125, 'addComment', '2004-07-20 15:49:14'),
('SINGER', 58, 'edit', '2004-07-21 13:02:40'),
('SINGER', 17, 'edit', '2004-07-21 13:06:07'),
('SINGER', 65, 'edit', '2004-07-21 13:06:46'),
('SINGER', 68, 'edit', '2004-07-21 13:10:30'),
('HUIZINGA', 118, 'edit', '2004-07-21 15:24:17'),
('HUIZINGA', 118, 'edit', '2004-07-21 15:25:24'),
('HUIZINGA', 118, 'edit', '2004-07-21 15:29:17'),
('HUIZINGA', 118, 'edit', '2004-07-21 15:41:58'),
('HUIZINGA', 118, 'edit', '2004-07-21 15:44:24'),
('HUIZINGA', 118, 'edit', '2004-07-21 15:45:20'),
('HUIZINGA', 118, 'edit', '2004-07-21 15:53:31'),
('HUIZINGA', 118, 'edit', '2004-07-21 17:29:33'),
('SINGER', 129, 'addProject', '2004-07-21 04:00:00'),
('SINGER', 103, 'edit', '2004-07-21 19:20:45'),
('SINGER', 103, 'edit', '2004-07-21 19:22:11'),
('SINGER', 103, 'edit', '2004-07-21 19:23:49'),
('SINGER', 79, 'edit', '2004-07-21 19:58:06'),
('SINGER', 38, 'edit', '2004-07-21 20:00:11'),
('SINGER', 89, 'edit', '2004-07-21 20:20:16'),
('SINGER', 92, 'edit', '2004-07-21 20:22:34'),
('SINGER', 94, 'edit', '2004-07-21 20:23:34'),
('SINGER', 25, 'edit', '2004-07-21 20:26:30'),
('SINGER', 97, 'edit', '2004-07-21 20:34:29'),
('SINGER', 14, 'edit', '2004-07-21 20:40:28'),
('SINGER', 73, 'edit', '2004-07-21 20:42:02'),
('HUIZINGA', 38, 'edit', '2004-07-22 13:24:56'),
('HUIZINGA', 5, 'edit', '2004-07-22 13:55:30'),
('HUIZINGA', 5, 'edit', '2004-07-22 13:57:37'),
('HUIZINGA', 58, 'edit', '2004-07-22 14:04:42'),
('HUIZINGA', 103, 'edit', '2004-07-22 18:09:50'),
('JSCOTT', 125, 'addComment', '2004-07-26 16:29:46'),
('JSCOTT', 125, 'updateComment', '2004-07-26 16:33:02'),
('JSCOTT', 125, 'addComment', '2004-07-26 16:33:31'),
('SINGER', 130, 'addProject', '2004-07-26 17:16:47'),
('SINGER', 127, 'edit', '2004-07-26 17:20:03'),
('SINGER', 127, 'edit', '2004-07-26 17:20:47'),
('JSCOTT', 118, 'addComment', '2004-07-26 20:40:14'),
('JSCOTT', 108, 'addComment', '2004-07-26 20:41:16'),
('JSCOTT', 107, 'addComment', '2004-07-26 20:44:18'),
('SINGER', 131, 'addProject', '2004-07-27 12:51:28'),
('SINGER', 132, 'addProject', '2004-07-27 12:54:35'),
('HUIZINGA', 127, 'edit', '2004-07-27 14:32:39'),
('HUIZINGA', 127, 'edit', '2004-07-27 14:33:08'),
('HUIZINGA', 127, 'edit', '2004-07-27 14:33:36'),
('HUIZINGA', 126, 'edit', '2004-07-27 14:34:38'),
('HUIZINGA', 121, 'edit', '2004-07-27 14:35:22'),
('HUIZINGA', 118, 'addComment', '2004-07-27 14:40:12'),
('HUIZINGA', 2, 'edit', '2004-07-27 14:44:40'),
('HUIZINGA', 116, 'addComment', '2004-07-27 15:29:37'),
('JSCOTT', 125, 'addComment', '2004-07-27 16:07:27'),
('DURKIN', 88, 'edit', '2004-07-27 21:06:41'),
('LUBOW', 119, 'addComment', '2004-07-27 21:11:31'),
('HUIZINGA', 118, 'edit', '2004-07-28 20:35:38'),
('HUIZINGA', 118, 'edit', '2004-07-28 20:36:55'),
('HUIZINGA', 118, 'edit', '2004-07-28 20:38:46'),
('HUIZINGA', 103, 'edit', '2004-07-28 20:50:26'),
('HUIZINGA', 103, 'edit', '2004-07-28 20:52:15'),
('HUIZINGA', 125, 'edit', '2004-07-28 21:00:47'),
('HUIZINGA', 127, 'edit', '2004-07-28 21:02:45'),
('HUIZINGA', 127, 'edit', '2004-07-28 21:03:08'),
('HUIZINGA', 127, 'edit', '2004-07-28 21:03:26'),
('HUIZINGA', 118, 'edit', '2004-07-28 21:06:14'),
('HUIZINGA', 108, 'edit', '2004-07-28 21:16:54'),
('HUIZINGA', 107, 'edit', '2004-07-28 21:25:48'),
('HUIZINGA', 106, 'edit', '2004-07-28 21:29:34'),
('HUIZINGA', 122, 'edit', '2004-07-28 22:20:47'),
('HUIZINGA', 10, 'edit', '2004-07-28 22:21:34'),
('HUIZINGA', 33, 'edit', '2004-07-28 22:21:56'),
('HUIZINGA', 49, 'edit', '2004-07-28 22:22:10'),
('HUIZINGA', 77, 'edit', '2004-07-28 22:22:24'),
('HUIZINGA', 93, 'edit', '2004-07-28 22:22:39'),
('HUIZINGA', 107, 'edit', '2004-07-28 22:22:52'),
('HUIZINGA', 118, 'edit', '2004-07-28 22:23:05'),
('HUIZINGA', 119, 'edit', '2004-07-28 22:23:20'),
('HUIZINGA', 120, 'edit', '2004-07-28 22:23:34'),
('HUIZINGA', 122, 'edit', '2004-07-28 22:23:46'),
('HUIZINGA', 125, 'edit', '2004-07-28 22:24:01'),
('HUIZINGA', 127, 'edit', '2004-07-28 22:24:17'),
('HUIZINGA', 16, 'addComment', '2004-07-29 19:30:44'),
('HUIZINGA', 16, 'edit', '2004-07-29 19:32:38'),
('HUIZINGA', 23, 'edit', '2004-07-29 19:35:13'),
('HUIZINGA', 26, 'edit', '2004-07-29 19:36:14'),
('HUIZINGA', 34, 'edit', '2004-07-29 19:37:44'),
('HUIZINGA', 34, 'edit', '2004-07-29 19:40:49'),
('HUIZINGA', 34, 'deleteComment', '2004-07-29 19:41:59'),
('HUIZINGA', 44, 'addComment', '2004-07-29 19:42:33'),
('HUIZINGA', 48, 'addComment', '2004-07-29 19:43:59'),
('HUIZINGA', 49, 'addComment', '2004-07-29 19:45:54'),
('HUIZINGA', 52, 'addComment', '2004-07-29 19:47:26'),
('HUIZINGA', 53, 'addComment', '2004-07-29 19:48:06'),
('HUIZINGA', 57, 'addComment', '2004-07-29 19:50:18'),
('HUIZINGA', 62, 'addComment', '2004-07-29 19:51:21'),
('HUIZINGA', 64, 'addComment', '2004-07-29 19:55:35'),
('HUIZINGA', 84, 'addComment', '2004-07-29 19:57:19'),
('HUIZINGA', 86, 'addComment', '2004-07-29 20:08:54'),
('HUIZINGA', 93, 'addComment', '2004-07-29 20:12:03'),
('HUIZINGA', 101, 'addComment', '2004-07-29 20:13:52'),
('HUIZINGA', 102, 'addComment', '2004-07-29 20:14:50'),
('HUIZINGA', 102, 'updateComment', '2004-07-29 20:15:03'),
('HUIZINGA', 105, 'addComment', '2004-07-29 20:17:42'),
('HUIZINGA', 123, 'addComment', '2004-07-29 20:20:17'),
('HUIZINGA', 115, 'addComment', '2004-07-29 20:23:04'),
('HUIZINGA', 121, 'addComment', '2004-07-29 20:24:17'),
('HUIZINGA', 127, 'addComment', '2004-07-29 20:25:54'),
('SINGER', 8, 'addComment', '2004-07-30 19:39:43'),
('SINGER', 21, 'addComment', '2004-07-30 19:40:34'),
('SINGER', 60, 'addComment', '2004-07-30 19:41:27'),
('SINGER', 79, 'addComment', '2004-07-30 19:44:46'),
('SINGER', 89, 'addComment', '2004-07-30 19:45:25'),
('SINGER', 94, 'addComment', '2004-07-30 19:46:01'),
('PAYNE', 16, 'edit', '2004-08-02 15:09:42'),
('PAYNE', 23, 'edit', '2004-08-02 15:16:35'),
('PAYNE', 26, 'edit', '2004-08-02 15:25:00'),
('PAYNE', 44, 'edit', '2004-08-02 15:31:02'),
('PAYNE', 49, 'edit', '2004-08-02 15:35:33'),
('PAYNE', 48, 'edit', '2004-08-02 15:42:29'),
('PAYNE', 48, 'edit', '2004-08-02 15:43:45'),
('PAYNE', 52, 'edit', '2004-08-02 15:47:17'),
('PAYNE', 53, 'edit', '2004-08-02 15:52:01'),
('PAYNE', 62, 'edit', '2004-08-02 15:56:38'),
('PAYNE', 64, 'edit', '2004-08-02 16:02:23'),
('PAYNE', 84, 'edit', '2004-08-02 16:06:34'),
('PAYNE', 86, 'edit', '2004-08-02 16:08:01'),
('PAYNE', 93, 'edit', '2004-08-02 16:30:01'),
('PAYNE', 101, 'edit', '2004-08-02 16:32:25'),
('PAYNE', 102, 'edit', '2004-08-02 16:34:45'),
('PAYNE', 105, 'edit', '2004-08-02 16:37:14'),
('PAYNE', 115, 'edit', '2004-08-02 16:38:29'),
('PAYNE', 26, 'edit', '2004-08-02 16:55:02'),
('PAYNE', 64, 'updateComment', '2004-08-02 16:56:56'),
('PAYNE', 62, 'updateComment', '2004-08-02 16:57:08'),
('PAYNE', 48, 'updateComment', '2004-08-02 16:57:19'),
('HUIZINGA', 34, 'edit', '2004-08-02 18:32:09'),
('HUIZINGA', 118, 'edit', '2004-08-03 13:56:32'),
('HUIZINGA', 127, 'edit', '2004-08-03 14:47:00'),
('HUIZINGA', 118, 'addComment', '2004-08-03 14:52:51'),
('HUIZINGA', 118, 'edit', '2004-08-03 20:10:48'),
('HUIZINGA', 103, 'edit', '2004-08-04 00:03:42'),
('HUIZINGA', 103, 'edit', '2004-08-04 00:04:36'),
('HUIZINGA', 109, 'edit', '2004-08-04 00:06:02'),
('HUIZINGA', 133, 'addProject', '2004-08-04 13:40:54'),
('HUIZINGA', 127, 'edit', '2004-08-04 13:43:19'),
('HUIZINGA', 115, 'edit', '2004-08-04 14:26:08'),
('HUIZINGA', 101, 'edit', '2004-08-04 14:27:33'),
('HUIZINGA', 84, 'edit', '2004-08-04 20:43:10'),
('HUIZINGA', 84, 'edit', '2004-08-04 20:43:36'),
('HUIZINGA', 43, 'edit', '2004-08-04 20:44:14'),
('HUIZINGA', 26, 'edit', '2004-08-04 21:01:41'),
('HUIZINGA', 118, 'edit', '2004-08-04 21:16:15'),
('HUIZINGA', 86, 'edit', '2004-08-04 21:20:01'),
('BOHLIN', 117, 'addComment', '2004-08-05 02:16:19'),
('BOHLIN', 125, 'addComment', '2004-08-05 02:31:06'),
('BOHLIN', 112, 'addComment', '2004-08-05 02:41:08'),
('HUIZINGA', 126, 'edit', '2004-08-05 13:07:28'),
('HUIZINGA', 126, 'addComment', '2004-08-05 13:08:47'),
('SINGER', 17, 'edit', '2004-08-09 13:48:22'),
('SINGER', 38, 'edit', '2004-08-09 13:49:48'),
('SINGER', 134, 'addProject', '2004-08-09 17:43:10'),
('SINGER', 127, 'edit', '2004-08-09 17:44:00'),
('SINGER', 127, 'edit', '2004-08-09 17:45:57'),
('SINGER', 115, 'edit', '2004-08-16 14:28:06'),
('SINGER', 115, 'edit', '2004-08-16 14:29:36'),
('SINGER', 135, 'addProject', '2004-08-16 14:34:00'),
('SINGER', 127, 'edit', '2004-08-16 14:41:30'),
('HUIZINGA', 135, 'edit', '2004-08-18 16:32:55'),
('HUIZINGA', 62, 'edit', '2004-08-18 19:59:55'),
('HUIZINGA', 84, 'edit', '2004-08-18 20:01:28'),
('HUIZINGA', 136, 'addProject', '2004-08-18 20:02:38'),
('HUIZINGA', 137, 'addProject', '2004-08-18 20:05:01'),
('HUIZINGA', 138, 'addProject', '2004-08-18 20:21:56'),
('HUIZINGA', 43, 'edit', '2004-08-18 20:23:04'),
('HUIZINGA', 138, 'edit', '2004-08-18 20:23:32'),
('HUIZINGA', 137, 'edit', '2004-08-18 20:24:18'),
('HUIZINGA', 51, 'edit', '2004-08-19 15:29:37'),
('HUIZINGA', 139, 'addProject', '2004-08-19 20:05:02'),
('HUIZINGA', 129, 'edit', '2004-08-19 22:34:35'),
('HUIZINGA', 129, 'edit', '2004-08-19 22:37:25'),
('HUIZINGA', 48, 'edit', '2004-08-20 13:15:01'),
('HUIZINGA', 48, 'edit', '2004-08-20 13:18:28'),
('HUIZINGA', 129, 'edit', '2004-08-23 13:44:51'),
('HUIZINGA', 136, 'edit', '2004-08-23 13:46:35'),
('HUIZINGA', 44, 'edit', '2004-08-23 14:36:16'),
('HUIZINGA', 115, 'edit', '2004-08-23 19:11:58'),
('HUIZINGA', 115, 'edit', '2004-08-23 19:13:04'),
('HUIZINGA', 134, 'edit', '2004-08-23 19:14:47'),
('HUIZINGA', 134, 'edit', '2004-08-23 19:15:29'),
('SINGER', 112, 'edit', '2004-08-23 20:10:20'),
('SINGER', 132, 'edit', '2004-08-23 20:22:56'),
('SINGER', 136, 'edit', '2004-08-23 20:23:57'),
('SINGER', 139, 'edit', '2004-08-23 20:25:27'),
('SINGER', 139, 'edit', '2004-08-23 20:25:40'),
('HUIZINGA', 2, 'edit', '2004-08-23 20:28:05'),
('HUIZINGA', 86, 'edit', '2004-08-23 20:30:07'),
('SINGER', 84, 'edit', '2004-08-23 20:30:12'),
('HUIZINGA', 105, 'edit', '2004-08-23 20:31:06'),
('SINGER', 107, 'edit', '2004-08-23 20:32:03'),
('HUIZINGA', 108, 'edit', '2004-08-23 20:32:53'),
('HUIZINGA', 129, 'edit', '2004-08-23 20:40:06'),
('HUIZINGA', 137, 'edit', '2004-08-23 20:41:05'),
('HUIZINGA', 10, 'edit', '2004-08-23 20:43:59'),
('HUIZINGA', 112, 'edit', '2004-08-23 20:53:35'),
('HUIZINGA', 10, 'edit', '2004-08-23 21:05:30'),
('HUIZINGA', 48, 'edit', '2004-08-23 21:06:14'),
('HUIZINGA', 62, 'edit', '2004-08-23 21:06:51'),
('HUIZINGA', 64, 'edit', '2004-08-23 21:07:39'),
('HUIZINGA', 84, 'edit', '2004-08-23 21:08:14'),
('HUIZINGA', 105, 'edit', '2004-08-23 21:08:55'),
('HUIZINGA', 115, 'edit', '2004-08-23 21:09:50'),
('HUIZINGA', 115, 'edit', '2004-08-23 21:12:33'),
('HUIZINGA', 117, 'edit', '2004-08-23 21:13:16'),
('HUIZINGA', 121, 'edit', '2004-08-23 21:13:52'),
('HUIZINGA', 126, 'edit', '2004-08-23 21:14:36'),
('HUIZINGA', 126, 'edit', '2004-08-23 21:15:39'),
('HUIZINGA', 129, 'edit', '2004-08-23 21:17:24'),
('HUIZINGA', 132, 'edit', '2004-08-23 21:18:03'),
('HUIZINGA', 136, 'edit', '2004-08-23 21:18:34'),
('HUIZINGA', 137, 'edit', '2004-08-23 21:19:19'),
('HUIZINGA', 139, 'edit', '2004-08-23 21:20:27'),
('HUIZINGA', 86, 'edit', '2004-08-23 21:21:55'),
('HUIZINGA', 140, 'addProject', '2004-08-24 01:41:56'),
('HUIZINGA', 140, 'edit', '2004-08-24 01:43:12'),
('HUIZINGA', 140, 'edit', '2004-08-24 12:34:22'),
('HUIZINGA', 140, 'edit', '2004-08-24 12:39:55'),
('HUIZINGA', 117, 'edit', '2004-08-24 15:14:27'),
('HUIZINGA', 112, 'edit', '2004-08-24 15:38:09'),
('HUIZINGA', 121, 'edit', '2004-08-24 15:42:45'),
('HUIZINGA', 121, 'edit', '2004-08-24 15:44:33'),
('HUIZINGA', 132, 'edit', '2004-08-24 15:46:01'),
('HUIZINGA', 101, 'edit', '2004-08-25 14:53:29'),
('HUIZINGA', 101, 'edit', '2004-08-25 15:05:34'),
('HUIZINGA', 101, 'edit', '2004-08-25 15:12:07'),
('PAYNE', 10, 'edit', '2004-08-25 20:23:41'),
('HUIZINGA', 112, 'edit', '2004-08-26 13:51:11'),
('HUIZINGA', 117, 'edit', '2004-08-26 13:52:59'),
('HUIZINGA', 136, 'edit', '2004-08-26 13:55:08'),
('HUIZINGA', 137, 'edit', '2004-08-26 13:56:49'),
('HUIZINGA', 139, 'edit', '2004-08-26 13:58:07'),
('HUIZINGA', 140, 'edit', '2004-08-26 13:59:35'),
('HUIZINGA', 121, 'edit', '2004-08-26 14:00:08'),
('HUIZINGA', 117, 'edit', '2004-08-26 15:32:17'),
('HUIZINGA', 115, 'addComment', '2004-08-26 15:39:00'),
('HUIZINGA', 129, 'edit', '2004-08-26 16:29:29'),
('HUIZINGA', 129, 'edit', '2004-08-26 16:30:26'),
('WOLFFL', 2, 'edit', '2004-08-26 20:50:01'),
('WOLFFL', 2, 'edit', '2004-08-26 20:51:18'),
('WOLFFL', 11, 'edit', '2004-08-26 21:06:47'),
('HUIZINGA', 141, 'addProject', '2004-08-27 14:56:16'),
('HUIZINGA', 141, 'edit', '2004-08-27 14:59:29'),
('HUIZINGA', 141, 'edit', '2004-08-27 15:05:53'),
('HUIZINGA', 117, 'edit', '2004-08-27 15:09:52'),
('HUIZINGA', 121, 'edit', '2004-08-27 15:11:43'),
('HUIZINGA', 132, 'edit', '2004-08-27 15:13:17'),
('HUIZINGA', 86, 'edit', '2004-08-27 15:14:53'),
('HUIZINGA', 105, 'edit', '2004-08-27 15:15:51'),
('HUIZINGA', 115, 'edit', '2004-08-27 15:29:49'),
('HUIZINGA', 140, 'edit', '2004-08-27 16:34:05'),
('HUIZINGA', 2, 'edit', '2004-08-27 16:48:04'),
('HUIZINGA', 142, 'cloneAsNew', '2004-08-27 16:48:22'),
('HUIZINGA', 142, 'edit', '2004-08-27 17:00:18'),
('HUIZINGA', 2, 'edit', '2004-08-27 17:20:02'),
('JSCOTT', 86, 'addComment', '2004-08-27 19:16:09'),
('WOLFFL', 2, 'edit', '2004-08-30 01:53:04'),
('WOLFFL', 2, 'edit', '2004-08-30 01:53:20'),
('WOLFFL', 4, 'edit', '2004-08-30 02:00:56'),
('WOLFFL', 11, 'edit', '2004-08-30 02:03:05'),
('WOLFFL', 4, 'edit', '2004-08-30 02:04:36'),
('WOLFFL', 26, 'edit', '2004-08-30 02:07:07'),
('WOLFFL', 52, 'edit', '2004-08-30 02:09:40'),
('WOLFFL', 34, 'edit', '2004-08-30 02:15:26'),
('WOLFFL', 77, 'edit', '2004-08-30 03:08:37'),
('WOLFFL', 57, 'edit', '2004-08-30 03:13:38'),
('WOLFFL', 102, 'edit', '2004-08-30 03:16:52'),
('WOLFFL', 110, 'edit', '2004-08-30 03:22:27'),
('HUIZINGA', 77, 'edit', '2004-08-30 13:52:52'),
('WOLFFL', 2, 'edit', '2004-08-30 14:29:33'),
('WOLFFL', 4, 'edit', '2004-08-30 14:30:10'),
('WOLFFL', 11, 'edit', '2004-08-30 14:30:53'),
('WOLFFL', 11, 'edit', '2004-08-30 14:32:20'),
('WOLFFL', 16, 'edit', '2004-08-30 14:33:00'),
('WOLFFL', 104, 'edit', '2004-08-30 15:50:30'),
('HUIZINGA', 115, 'edit', '2004-08-30 16:41:50'),
('HUIZINGA', 115, 'edit', '2004-08-30 16:43:51'),
('HUIZINGA', 115, 'edit', '2004-08-30 17:01:08'),
('WOLFFL', 16, 'edit', '2004-08-30 18:14:48'),
('hulbert', 132, 'edit', '2004-08-30 19:30:46'),
('HUIZINGA', 134, 'edit', '2004-08-30 19:36:37'),
('WOLFFL', 87, 'edit', '2004-09-01 00:55:27'),
('WOLFFL', 33, 'edit', '2004-09-01 01:52:09'),
('WOLFFL', 10, 'edit', '2004-09-01 02:25:15'),
('WOLFFL', 140, 'edit', '2004-09-01 02:30:11'),
('WOLFFL', 139, 'edit', '2004-09-01 02:41:13'),
('WOLFFL', 139, 'edit', '2004-09-01 02:41:47'),
('WOLFFL', 120, 'edit', '2004-09-01 02:49:24'),
('WOLFFL', 108, 'edit', '2004-09-01 02:52:26'),
('WOLFFL', 107, 'edit', '2004-09-01 02:54:36'),
('WOLFFL', 101, 'edit', '2004-09-01 02:58:36'),
('WOLFFL', 8, 'edit', '2004-09-01 03:04:49'),
('WOLFFL', 10, 'edit', '2004-09-01 03:06:30'),
('WOLFFL', 134, 'edit', '2004-09-01 03:12:31'),
('WOLFFL', 131, 'edit', '2004-09-01 03:14:43'),
('WOLFFL', 134, 'edit', '2004-09-01 03:15:41'),
('WOLFFL', 85, 'edit', '2004-09-01 12:08:57'),
('WOLFFL', 111, 'edit', '2004-09-01 12:14:46'),
('WOLFFL', 123, 'edit', '2004-09-01 12:16:56'),
('WOLFFL', 124, 'edit', '2004-09-01 12:18:26'),
('WOLFFL', 116, 'edit', '2004-09-01 12:23:43'),
('WOLFFL', 122, 'edit', '2004-09-01 12:24:53'),
('WOLFFL', 36, 'edit', '2004-09-01 12:28:10'),
('WOLFFL', 131, 'edit', '2004-09-01 13:10:09'),
('WOLFFL', 133, 'edit', '2004-09-01 13:11:56'),
('hulbert', 108, 'edit', '2004-09-01 13:13:46'),
('WOLFFL', 134, 'edit', '2004-09-01 13:15:39'),
('WOLFFL', 130, 'edit', '2004-09-01 13:18:01'),
('WOLFFL', 130, 'edit', '2004-09-01 13:19:58'),
('WOLFFL', 44, 'edit', '2004-09-01 13:22:47'),
('WOLFFL', 6, 'edit', '2004-09-01 13:26:10'),
('WOLFFL', 126, 'edit', '2004-09-01 13:27:10'),
('WOLFFL', 119, 'edit', '2004-09-01 13:28:26'),
('WOLFFL', 138, 'edit', '2004-09-01 13:29:22'),
('WOLFFL', 127, 'edit', '2004-09-01 13:30:15'),
('WOLFFL', 13, 'edit', '2004-09-01 13:31:25'),
('WOLFFL', 48, 'edit', '2004-09-01 13:36:37'),
('WOLFFL', 64, 'edit', '2004-09-01 13:37:08'),
('WOLFFL', 112, 'edit', '2004-09-01 13:37:46'),
('WOLFFL', 115, 'edit', '2004-09-01 13:38:21'),
('WOLFFL', 117, 'edit', '2004-09-01 13:39:19'),
('WOLFFL', 129, 'edit', '2004-09-01 13:39:59'),
('hulbert', 134, 'edit', '2004-09-01 15:42:36'),
('hulbert', 131, 'edit', '2004-09-01 15:43:23'),
('hulbert', 101, 'edit', '2004-09-01 16:00:46'),
('grice', 143, 'addProject', '2004-09-01 19:52:24'),
('grice', 144, 'addProject', '2004-09-01 19:59:39'),
('grice', 145, 'addProject', '2004-09-01 20:05:56'),
('HUIZINGA', 145, 'edit', '2004-09-01 20:32:45'),
('HUIZINGA', 144, 'edit', '2004-09-01 20:33:06'),
('HUIZINGA', 143, 'edit', '2004-09-01 20:33:25'),
('PAYNE', 115, 'addComment', '2004-09-02 14:25:31'),
('HUIZINGA', 146, 'addProject', '2004-09-02 14:33:21'),
('PAYNE', 105, 'edit', '2004-09-02 19:09:57'),
('payne', 105, 'edit', '2004-09-03 18:28:17'),
('HUIZINGA', 4, 'edit', '2004-09-14 15:25:13'),
('WOLFFL', 110, 'edit', '2004-09-20 18:00:11'),
('WOLFFL', 127, 'edit', '2004-09-20 18:01:11'),
('WOLFFL', 64, 'edit', '2004-09-20 19:20:47'),
('WOLFFL', 77, 'edit', '2004-09-20 19:22:00'),
('WOLFFL', 117, 'edit', '2004-09-20 19:30:54'),
('WOLFFL', 129, 'edit', '2004-09-20 19:33:57'),
('HUIZINGA', 147, 'addProject', '2004-09-22 18:51:58'),
('HUIZINGA', 147, 'edit', '2004-09-22 18:53:58'),
('WOLFFL', 147, 'edit', '2004-09-22 19:30:54'),
('HUIZINGA', 121, 'edit', '2004-09-22 20:30:25'),
('HUIZINGA', 117, 'edit', '2004-09-22 20:40:28'),
('SINGER', 75, 'edit', '2004-10-26 12:26:31'),
('SINGER', 148, 'addProject', '2004-10-26 13:06:59'),
('SINGER', 148, 'edit', '2004-10-26 13:08:16'),
('SINGER', 127, 'edit', '2004-10-26 14:42:53'),
('HUIZINGA', 86, 'edit', '2004-10-27 10:37:21'),
('SINGER', 19, 'edit', '2004-10-27 14:22:06'),
('SINGER', 38, 'edit', '2004-10-27 14:31:54'),
('SINGER', 8, 'edit', '2004-10-27 14:36:50'),
('SINGER', 94, 'edit', '2004-10-27 14:37:51'),
('SINGER', 78, 'edit', '2004-10-27 14:39:35'),
('SINGER', 21, 'edit', '2004-10-27 14:46:36'),
('SINGER', 51, 'edit', '2004-10-27 14:47:20'),
('SINGER', 51, 'edit', '2004-10-27 14:48:19'),
('SINGER', 56, 'edit', '2004-10-27 14:51:24'),
('HUIZINGA', 141, 'edit', '2004-10-28 12:58:31'),
('WMILLER', 149, 'addProject', '2004-10-28 20:56:52'),
('WMILLER', 149, 'edit', '2004-10-29 13:27:10'),
('WMILLER', 149, 'addComment', '2004-10-29 13:40:21'),
('WMILLER', 150, 'addProject', '2004-10-29 17:32:46'),
('WMILLER', 150, 'edit', '2004-10-29 17:41:29'),
('WMILLER', 151, 'addProject', '2004-10-29 18:11:38'),
('WMILLER', 151, 'edit', '2004-10-29 18:16:48'),
('HUIZINGA', 105, 'edit', '2004-11-15 18:31:33'),
('WOLFFL', 131, 'edit', '2004-11-16 23:25:29'),
('WOLFFL', 131, 'edit', '2004-11-16 23:27:03'),
('HUIZINGA', 62, 'edit', '2004-11-17 20:05:06'),
('HUIZINGA', 140, 'edit', '2004-11-17 20:06:07'),
('HUIZINGA', 136, 'edit', '2004-11-17 20:06:51'),
('HUIZINGA', 84, 'edit', '2004-11-17 20:08:18'),
('SINGER', 84, 'edit', '2004-11-18 14:38:55'),
('SINGER', 84, 'edit', '2004-11-18 14:40:48'),
('SINGER', 10, 'edit', '2004-11-18 14:42:38'),
('SINGER', 141, 'edit', '2004-11-18 14:44:06'),
('SINGER', 47, 'edit', '2004-11-18 14:46:07'),
('SINGER', 148, 'edit', '2004-11-18 14:47:45'),
('SINGER', 148, 'edit', '2004-11-18 14:53:24'),
('SINGER', 105, 'edit', '2004-11-18 14:55:20'),
('SINGER', 127, 'edit', '2004-11-18 14:56:39'),
('SINGER', 140, 'edit', '2004-11-18 14:58:51'),
('SINGER', 136, 'edit', '2004-11-18 15:02:54'),
('SINGER', 139, 'edit', '2004-11-18 15:05:00'),
('SINGER', 112, 'edit', '2004-11-18 15:09:23'),
('SINGER', 48, 'edit', '2004-11-18 15:11:28'),
('SINGER', 117, 'edit', '2004-11-18 15:15:07'),
('SINGER', 129, 'edit', '2004-11-18 15:17:57'),
('SINGER', 137, 'edit', '2004-11-18 15:20:19'),
('SINGER', 62, 'edit', '2004-11-18 15:25:28'),
('HUIZINGA', 134, 'edit', '2004-11-18 15:46:23'),
('SINGER', 152, 'addProject', '2004-11-18 15:55:39'),
('SINGER', 152, 'edit', '2004-11-18 15:58:01'),
('HUIZINGA', 134, 'edit', '2004-11-18 16:09:32'),
('HUIZINGA', 152, 'edit', '2004-11-18 16:22:20'),
('SINGER', 62, 'edit', '2004-11-18 16:48:21'),
('SINGER', 153, 'addProject', '2004-11-18 16:55:11'),
('SINGER', 62, 'edit', '2004-11-18 17:00:23'),
('SINGER', 62, 'edit', '2004-11-18 17:00:40'),
('SINGER', 62, 'edit', '2004-11-18 17:04:38'),
('SINGER', 153, 'edit', '2004-11-18 17:06:36'),
('HUIZINGA', 62, 'edit', '2004-11-18 19:50:39'),
('HUIZINGA', 62, 'edit', '2004-11-18 19:51:59'),
('HUIZINGA', 149, 'edit', '2004-11-18 21:18:32'),
('payne', 148, 'edit', '2004-11-19 20:23:11'),
('payne', 146, 'edit', '2004-11-19 20:23:56'),
('payne', 138, 'edit', '2004-11-19 20:24:21'),
('payne', 130, 'edit', '2004-11-19 20:25:07'),
('payne', 128, 'edit', '2004-11-19 20:25:38'),
('payne', 124, 'edit', '2004-11-19 20:26:20'),
('payne', 114, 'edit', '2004-11-19 20:27:39'),
('payne', 113, 'edit', '2004-11-19 20:28:01'),
('payne', 107, 'edit', '2004-11-19 20:28:28'),
('payne', 98, 'edit', '2004-11-19 20:29:51'),
('DURKIN', 62, 'edit', '2004-11-23 15:24:11'),
('DURKIN', 84, 'edit', '2004-11-23 15:25:36'),
('DURKIN', 106, 'edit', '2004-11-23 15:27:29'),
('DURKIN', 106, 'edit', '2004-11-23 15:28:00'),
('DURKIN', 62, 'edit', '2004-11-23 15:28:26'),
('DURKIN', 84, 'edit', '2004-11-23 15:29:02'),
('DURKIN', 117, 'edit', '2004-11-23 15:40:37'),
('DURKIN', 112, 'edit', '2004-11-23 15:41:28'),
('DURKIN', 127, 'edit', '2004-11-23 15:42:19'),
('DURKIN', 129, 'edit', '2004-11-23 15:43:15'),
('DURKIN', 136, 'edit', '2004-11-23 15:44:28'),
('DURKIN', 137, 'edit', '2004-11-23 15:45:30'),
('DURKIN', 139, 'edit', '2004-11-23 15:46:03'),
('DURKIN', 139, 'edit', '2004-11-23 15:47:17'),
('DURKIN', 140, 'edit', '2004-11-23 15:47:41'),
('DURKIN', 148, 'edit', '2004-11-23 15:48:27'),
('DURKIN', 48, 'edit', '2004-11-23 15:51:00'),
('DURKIN', 48, 'edit', '2004-11-23 16:04:26'),
('DURKIN', 103, 'edit', '2004-11-23 16:04:58'),
('DURKIN', 48, 'edit', '2004-11-23 16:05:24'),
('DURKIN', 106, 'edit', '2004-11-23 16:06:14'),
('DURKIN', 112, 'edit', '2004-11-23 16:06:45'),
('DURKIN', 117, 'edit', '2004-11-23 16:07:11'),
('DURKIN', 129, 'edit', '2004-11-23 16:07:57'),
('DURKIN', 136, 'edit', '2004-11-23 16:08:29'),
('DURKIN', 137, 'edit', '2004-11-23 16:09:02'),
('DURKIN', 139, 'edit', '2004-11-23 16:09:41'),
('DURKIN', 140, 'edit', '2004-11-23 16:10:33'),
('DURKIN', 140, 'edit', '2004-11-23 16:11:13'),
('DURKIN', 148, 'edit', '2004-11-23 16:11:48'),
('DURKIN', 152, 'edit', '2004-11-23 16:12:15'),
('DURKIN', 148, 'edit', '2004-11-23 16:13:11'),
('DURKIN', 141, 'edit', '2004-11-23 16:14:58'),
('DURKIN', 103, 'edit', '2004-11-23 16:16:18'),
('DURKIN', 106, 'edit', '2004-11-23 16:27:05'),
('DURKIN', 136, 'edit', '2004-11-23 16:27:43'),
('DURKIN', 140, 'edit', '2004-11-23 16:28:45'),
('DURKIN', 148, 'edit', '2004-11-23 20:18:14'),
('DURKIN', 137, 'edit', '2004-11-23 20:19:57'),
('DURKIN', 137, 'edit', '2004-11-23 20:20:20'),
('DURKIN', 60, 'edit', '2004-11-23 21:10:01'),
('DURKIN', 88, 'edit', '2004-11-23 21:11:14'),
('DURKIN', 89, 'edit', '2004-11-23 21:11:45'),
('DURKIN', 92, 'edit', '2004-11-23 21:12:18'),
('DURKIN', 19, 'edit', '2004-11-23 21:14:13'),
('DURKIN', 94, 'edit', '2004-11-23 21:15:07'),
('DURKIN', 96, 'edit', '2004-11-23 21:15:58'),
('DURKIN', 109, 'edit', '2004-11-23 21:16:47'),
('DURKIN', 17, 'edit', '2004-11-23 21:17:24'),
('DURKIN', 21, 'edit', '2004-11-23 21:17:58'),
('DURKIN', 58, 'edit', '2004-11-23 21:18:45'),
('DURKIN', 60, 'edit', '2004-11-23 21:19:34'),
('DURKIN', 21, 'edit', '2004-11-23 21:20:20'),
('DURKIN', 89, 'edit', '2004-11-23 21:20:48'),
('DURKIN', 90, 'edit', '2004-11-23 21:23:20'),
('DURKIN', 24, 'edit', '2004-11-23 21:24:29'),
('DURKIN', 90, 'edit', '2004-11-23 21:27:59'),
('DURKIN', 117, 'edit', '2004-12-01 22:27:22'),
('DURKIN', 152, 'edit', '2004-12-01 22:28:13'),
('HUIZINGA', 105, 'edit', '2004-12-07 12:51:07'),
('HUIZINGA', 62, 'edit', '2004-12-07 12:52:56'),
('HUIZINGA', 78, 'edit', '2004-12-07 12:55:48'),
('HUIZINGA', 51, 'edit', '2004-12-07 12:56:39'),
('HUIZINGA', 38, 'edit', '2004-12-07 12:57:54'),
('HUIZINGA', 68, 'edit', '2004-12-07 12:59:03'),
('payne', 141, 'edit', '2004-12-07 17:41:35'),
('HUIZINGA', 117, 'addComment', '2004-12-14 16:41:10'),
('HUIZINGA', 47, 'edit', '2004-12-15 19:02:53'),
('HUIZINGA', 152, 'edit', '2004-12-20 15:35:46'),
('HUIZINGA', 134, 'addComment', '2004-12-30 17:12:53'),
('HUIZINGA', 134, 'addComment', '2004-12-30 17:13:09'),
('HUIZINGA', 134, 'deleteComment', '2004-12-31 13:37:17'),
('HUIZINGA', 134, 'deleteComment', '2004-12-31 13:43:52'),
('HUIZINGA', 104, 'edit', '2005-01-10 21:42:32'),
('HUIZINGA', 134, 'edit', '2005-01-14 18:52:36'),
('HUIZINGA', 154, 'addProject', '2005-01-18 18:02:46'),
('HUIZINGA', 154, 'edit', '2005-01-18 18:05:34'),
('HUIZINGA', 155, 'addProject', '2005-01-18 18:09:35'),
('HUIZINGA', 156, 'addProject', '2005-01-18 19:24:29'),
('HUIZINGA', 156, 'edit', '2005-01-18 19:26:35'),
('HUIZINGA', 157, 'addProject', '2005-01-18 19:30:18'),
('HUIZINGA', 158, 'addProject', '2005-01-18 19:40:41'),
('HUIZINGA', 158, 'edit', '2005-01-18 19:42:01'),
('HUIZINGA', 159, 'addProject', '2005-01-18 19:50:19'),
('HUIZINGA', 160, 'addProject', '2005-01-18 19:56:10'),
('HUIZINGA', 148, 'edit', '2005-01-19 21:48:29'),
('HUIZINGA', 148, 'edit', '2005-01-20 13:14:10'),
('HUIZINGA', 148, 'edit', '2005-01-20 16:21:35'),
('HUIZINGA', 62, 'edit', '2005-01-20 17:00:05'),
('HUIZINGA', 137, 'edit', '2005-01-20 17:02:35'),
('HUIZINGA', 136, 'edit', '2005-01-20 17:03:20'),
('HUIZINGA', 63, 'edit', '2005-01-20 17:04:03'),
('HUIZINGA', 10, 'edit', '2005-01-20 17:05:35'),
('HUIZINGA', 10, 'edit', '2005-01-20 17:05:52'),
('HUIZINGA', 103, 'edit', '2005-01-20 17:24:46'),
('HUIZINGA', 103, 'edit', '2005-01-20 17:25:52'),
('HUIZINGA', 137, 'edit', '2005-01-20 17:30:12'),
('HUIZINGA', 117, 'edit', '2005-01-20 17:32:18'),
('HUIZINGA', 154, 'edit', '2005-01-20 17:51:06'),
('HUIZINGA', 154, 'edit', '2005-01-20 17:51:35'),
('HUIZINGA', 154, 'edit', '2005-01-20 17:53:42'),
('HUIZINGA', 161, 'addProject', '2005-01-21 20:43:17'),
('HUIZINGA', 120, 'edit', '2005-01-21 20:49:44'),
('HUIZINGA', 161, 'edit', '2005-01-21 20:51:11'),
('HUIZINGA', 161, 'edit', '2005-01-21 20:52:14'),
('HUIZINGA', 162, 'addProject', '2005-01-25 16:22:45'),
('HUIZINGA', 162, 'edit', '2005-01-25 16:25:02'),
('JSCOTT', 162, 'addComment', '2005-01-25 17:16:10'),
('HUIZINGA', 36, 'edit', '2005-01-27 19:23:33'),
('HUIZINGA', 92, 'edit', '2005-01-27 19:32:10'),
('PAYNE', 154, 'edit', '2005-01-28 18:33:04'),
('PAYNE', 155, 'edit', '2005-01-28 18:43:42'),
('PAYNE', 156, 'edit', '2005-01-28 18:44:03'),
('PAYNE', 157, 'edit', '2005-01-28 18:44:23'),
('PAYNE', 158, 'edit', '2005-01-28 18:44:42'),
('PAYNE', 159, 'edit', '2005-01-28 18:45:01'),
('PAYNE', 160, 'edit', '2005-01-28 18:45:29'),
('HUIZINGA', 163, 'addProject', '2005-02-01 19:24:08'),
('HUIZINGA', 163, 'edit', '2005-02-01 19:26:45'),
('HUIZINGA', 163, 'edit', '2005-02-01 19:27:59'),
('HUIZINGA', 163, 'edit', '2005-02-01 19:28:37'),
('PAYNE', 163, 'edit', '2005-02-01 20:58:28'),
('PAYNE', 163, 'edit', '2005-02-01 21:00:49'),
('HUIZINGA', 133, 'addComment', '2005-02-02 14:39:40'),
('HUIZINGA', 10, 'edit', '2005-02-02 16:41:48'),
('HUIZINGA', 162, 'edit', '2005-02-02 20:38:44'),
('HUIZINGA', 162, 'edit', '2005-02-02 20:39:36'),
('HUIZINGA', 87, 'edit', '2005-02-02 20:41:28'),
('hulbert', 10, 'edit', '2005-02-02 20:44:51'),
('DURKIN', 139, 'edit', '2005-02-03 20:45:15'),
('HUIZINGA', 162, 'edit', '2005-02-04 13:49:30'),
('HUIZINGA', 87, 'edit', '2005-02-04 14:43:40'),
('HUIZINGA', 151, 'edit', '2005-02-08 16:11:41'),
('HUIZINGA', 150, 'edit', '2005-02-08 16:13:44'),
('HUIZINGA', 132, 'edit', '2005-02-08 18:12:49'),
('HUIZINGA', 130, 'edit', '2005-02-08 18:16:21'),
('HUIZINGA', 130, 'edit', '2005-02-08 18:21:54'),
('HUIZINGA', 130, 'edit', '2005-02-08 18:24:05'),
('HUIZINGA', 130, 'edit', '2005-02-08 18:25:07'),
('JSCOTT', 163, 'addComment', '2005-02-14 16:36:19'),
('JSCOTT', 163, 'updateComment', '2005-02-14 16:36:34'),
('HUIZINGA', 133, 'edit', '2005-02-14 17:05:35'),
('HUIZINGA', 130, 'edit', '2005-02-14 17:12:00'),
('HUIZINGA', 77, 'edit', '2005-02-14 17:13:34'),
('HUIZINGA', 106, 'addComment', '2005-02-14 17:35:40'),
('HUIZINGA', 131, 'edit', '2005-02-14 17:37:06'),
('HUIZINGA', 131, 'addComment', '2005-02-14 17:39:45'),
('HUIZINGA', 162, 'edit', '2005-02-15 14:19:33'),
('HUIZINGA', 162, 'edit', '2005-02-15 14:19:38'),
('HUIZINGA', 87, 'edit', '2005-02-15 14:23:56'),
('HUIZINGA', 87, 'edit', '2005-02-15 14:24:41'),
('HUIZINGA', 130, 'edit', '2005-02-15 14:31:44'),
('HUIZINGA', 77, 'edit', '2005-02-15 15:37:49'),
('HUIZINGA', 131, 'edit', '2005-02-15 15:38:11'),
('HUIZINGA', 133, 'edit', '2005-02-15 15:38:36'),
('HUIZINGA', 133, 'edit', '2005-02-15 15:38:40'),
('HUIZINGA', 133, 'edit', '2005-02-15 15:38:52'),
('SINGER', 164, 'addProject', '2005-02-17 16:22:59'),
('HUIZINGA', 123, 'edit', '2005-02-17 17:43:22'),
('HUIZINGA', 44, 'edit', '2005-02-17 18:44:16'),
('HUIZINGA', 130, 'edit', '2005-02-17 18:54:55'),
('HUIZINGA', 163, 'edit', '2005-02-17 19:03:08'),
('HUIZINGA', 164, 'edit', '2005-02-17 19:04:53'),
('HUIZINGA', 148, 'edit', '2005-02-17 19:11:52'),
('HUIZINGA', 148, 'edit', '2005-02-17 19:12:46'),
('BEASER', 165, 'addProject', '2005-02-17 21:36:37'),
('GOLOMBEK', 166, 'addProject', '2005-02-18 00:04:11'),
('GOLOMBEK', 166, 'edit', '2005-02-18 00:11:37'),
('WOLFFL', 111, 'edit', '2005-02-21 19:39:36'),
('WOLFFL', 75, 'edit', '2005-02-21 19:40:58'),
('WOLFFL', 110, 'edit', '2005-02-21 19:43:54'),
('HUIZINGA', 77, 'edit', '2005-02-22 15:49:11'),
('HUIZINGA', 133, 'edit', '2005-02-22 23:21:02'),
('SINGER', 37, 'edit', '2005-02-25 18:30:56'),
('SINGER', 38, 'edit', '2005-02-25 18:31:58'),
('SINGER', 51, 'edit', '2005-02-25 18:34:18'),
('SINGER', 62, 'edit', '2005-02-25 18:35:00'),
('SINGER', 63, 'edit', '2005-02-25 18:35:29'),
('SINGER', 68, 'edit', '2005-02-25 18:36:02'),
('SINGER', 78, 'edit', '2005-02-25 18:36:31'),
('SINGER', 75, 'edit', '2005-02-25 18:37:08'),
('SINGER', 92, 'edit', '2005-02-25 18:37:57'),
('SINGER', 136, 'edit', '2005-02-25 18:39:19'),
('SINGER', 140, 'edit', '2005-02-25 18:40:27'),
('SINGER', 140, 'edit', '2005-02-25 18:41:09'),
('SINGER', 141, 'edit', '2005-02-25 18:41:55'),
('SINGER', 117, 'edit', '2005-02-25 18:42:51'),
('SINGER', 136, 'edit', '2005-02-25 18:45:49'),
('SINGER', 137, 'edit', '2005-02-25 18:46:19'),
('SINGER', 140, 'edit', '2005-02-25 18:47:49'),
('SINGER', 117, 'edit', '2005-02-25 18:48:26'),
('SINGER', 105, 'edit', '2005-02-25 18:58:10'),
('SINGER', 139, 'edit', '2005-02-25 18:59:42'),
('SINGER', 129, 'edit', '2005-02-25 19:00:18'),
('SINGER', 10, 'edit', '2005-02-25 19:00:55'),
('SINGER', 127, 'edit', '2005-02-25 19:01:28'),
('SINGER', 130, 'edit', '2005-02-25 19:01:50'),
('SINGER', 112, 'edit', '2005-02-25 19:02:18'),
('SINGER', 84, 'edit', '2005-02-25 19:02:49'),
('SINGER', 84, 'edit', '2005-02-25 19:03:00'),
('SINGER', 48, 'edit', '2005-02-25 19:03:41'),
('SINGER', 67, 'edit', '2005-02-25 19:04:22'),
('SINGER', 149, 'edit', '2005-02-25 19:11:58'),
('SINGER', 137, 'edit', '2005-02-25 19:12:31'),
('SINGER', 88, 'edit', '2005-02-25 19:21:37'),
('SINGER', 106, 'edit', '2005-02-25 19:22:09'),
('SINGER', 105, 'edit', '2005-02-25 19:22:44'),
('SINGER', 79, 'edit', '2005-02-25 19:23:13'),
('SINGER', 8, 'edit', '2005-02-25 19:23:51'),
('SINGER', 152, 'edit', '2005-02-25 19:24:22'),
('SINGER', 129, 'edit', '2005-02-25 19:24:56'),
('SINGER', 48, 'edit', '2005-02-25 19:25:51'),
('SINGER', 98, 'edit', '2005-02-25 19:32:50'),
('BEASER', 167, 'addProject', '2005-03-01 15:50:44'),
('BEASER', 168, 'addProject', '2005-03-01 16:14:00'),
('SINGER', 74, 'edit', '2005-03-02 15:14:35'),
('SINGER', 74, 'edit', '2005-03-02 15:17:52'),
('SINGER', 136, 'edit', '2005-03-02 15:37:25'),
('HUIZINGA', 165, 'edit', '2005-03-03 17:30:44'),
('SINGER', 130, 'edit', '2005-03-07 14:31:49'),
('SINGER', 164, 'edit', '2005-03-08 17:57:57'),
('SINGER', 164, 'edit', '2005-03-08 18:01:48'),
('SINGER', 164, 'edit', '2005-03-08 18:16:45'),
('SINGER', 164, 'edit', '2005-03-08 18:19:36'),
('SINGER', 164, 'edit', '2005-03-08 18:26:02'),
('SINGER', 164, 'edit', '2005-03-08 20:03:15'),
('SINGER', 164, 'edit', '2005-03-08 20:04:25'),
('SINGER', 164, 'edit', '2005-03-08 20:04:59'),
('SINGER', 164, 'edit', '2005-03-08 20:11:02'),
('SINGER', 164, 'edit', '2005-03-08 20:17:15'),
('SINGER', 164, 'edit', '2005-03-08 20:17:18'),
('SINGER', 164, 'edit', '2005-03-08 20:19:16'),
('SINGER', 164, 'edit', '2005-03-08 20:23:32'),
('PAYNE', 10, 'edit', '2005-03-10 17:42:16'),
('PAYNE', 10, 'edit', '2005-03-14 18:21:08'),
('SINGER', 164, 'edit', '2005-03-15 14:30:31'),
('SINGER', 164, 'edit', '2005-03-15 14:30:48'),
('SINGER', 164, 'edit', '2005-03-15 14:36:44'),
('SINGER', 106, 'edit', '2005-03-15 20:09:08'),
('PAYNE', 10, 'edit', '2005-03-21 23:23:18'),
('HUIZINGA', 161, 'edit', '2005-03-22 16:07:24'),
('HUIZINGA', 104, 'edit', '2005-03-22 16:46:50'),
('HUIZINGA', 122, 'edit', '2005-03-22 16:53:17'),
('HUIZINGA', 124, 'edit', '2005-03-22 16:56:01'),
('HUIZINGA', 104, 'edit', '2005-03-23 16:48:55'),
('HUIZINGA', 148, 'edit', '2005-03-23 16:51:07'),
('HUIZINGA', 153, 'edit', '2005-03-23 19:18:58'),
('HUIZINGA', 167, 'edit', '2005-03-23 19:25:42'),
('HUIZINGA', 168, 'edit', '2005-03-23 19:26:08'),
('HUIZINGA', 164, 'edit', '2005-03-23 19:26:45'),
('HUIZINGA', 166, 'edit', '2005-03-23 19:27:18'),
('HUIZINGA', 6, 'edit', '2005-03-23 19:28:04'),
('HUIZINGA', 56, 'edit', '2005-03-23 19:28:41'),
('HUIZINGA', 131, 'edit', '2005-03-23 19:29:39'),
('HUIZINGA', 130, 'edit', '2005-03-23 19:32:18'),
('HUIZINGA', 161, 'edit', '2005-03-23 19:33:50'),
('HUIZINGA', 65, 'edit', '2005-03-23 20:03:00'),
('HUIZINGA', 67, 'edit', '2005-03-23 20:05:16'),
('HUIZINGA', 67, 'edit', '2005-03-23 20:05:54'),
('HUIZINGA', 163, 'edit', '2005-03-23 21:21:56'),
('HUIZINGA', 169, 'addProject', '2005-03-24 16:33:58'),
('HUIZINGA', 93, 'edit', '2005-03-24 16:40:22'),
('SINGER', 48, 'edit', '2005-03-28 15:54:31'),
('HUIZINGA', 120, 'edit', '2005-03-28 16:53:50'),
('HUIZINGA', 147, 'edit', '2005-03-29 16:42:59'),
('HUIZINGA', 87, 'edit', '2005-03-30 15:38:25'),
('HUIZINGA', 165, 'edit', '2005-03-30 20:10:02'),
('HUIZINGA', 152, 'edit', '2005-03-30 20:29:10'),
('HUIZINGA', 33, 'edit', '2005-03-30 20:33:48'),
('HUIZINGA', 147, 'edit', '2005-03-30 20:44:27'),
('SINGER', 166, 'edit', '2005-03-31 16:38:00'),
('SINGER', 2, 'edit', '2005-03-31 16:45:07'),
('SINGER', 116, 'edit', '2005-03-31 16:49:51'),
('SINGER', 112, 'edit', '2005-03-31 16:56:12'),
('SINGER', 129, 'edit', '2005-03-31 17:00:41'),
('HUIZINGA', 170, 'addProject', '2005-04-01 20:25:15'),
('HUIZINGA', 171, 'addProject', '2005-04-01 21:15:43'),
('HUIZINGA', 170, 'edit', '2005-04-01 21:26:31'),
('HUIZINGA', 171, 'edit', '2005-04-01 21:28:33'),
('HUIZINGA', 172, 'addProject', '2005-04-01 21:48:40'),
('NAGEL', 173, 'addProject', '2005-04-01 21:55:45'),
('HUIZINGA', 172, 'edit', '2005-04-01 22:05:11'),
('HUIZINGA', 171, 'edit', '2005-04-02 21:53:22'),
('HUIZINGA', 172, 'edit', '2005-04-02 21:53:48'),
('SINGER', 161, 'edit', '2005-04-04 12:43:28'),
('NAGEL', 173, 'addComment', '2005-04-04 15:46:19'),
('BEASER', 53, 'addComment', '2005-04-04 19:02:21'),
('BEASER', 53, 'addComment', '2005-04-04 19:07:08'),
('BEASER', 167, 'addComment', '2005-04-04 19:18:59'),
('JSCOTT', 174, 'addProject', '2005-04-05 13:53:02'),
('HUIZINGA', 56, 'edit', '2005-04-05 15:33:42'),
('JSCOTT', 174, 'edit', '2005-04-05 20:56:58'),
('HUIZINGA', 131, 'edit', '2005-04-07 13:16:13'),
('HUIZINGA', 133, 'edit', '2005-04-07 13:17:13'),
('HUIZINGA', 163, 'edit', '2005-04-07 13:18:56'),
('HUIZINGA', 164, 'edit', '2005-04-07 13:22:20'),
('HUIZINGA', 175, 'addProject', '2005-04-07 13:39:48'),
('HUIZINGA', 176, 'addProject', '2005-04-07 13:46:27'),
('HUIZINGA', 177, 'addProject', '2005-04-07 13:58:47'),
('PANTALONE', 177, 'edit', '2005-04-07 14:48:37');
INSERT INTO "edit_log" ("user", "projectID", "action", "timestamp") VALUES
('SINGER', 15, 'edit', '2005-04-07 18:46:27'),
('HUIZINGA', 133, 'edit', '2005-04-08 18:02:36'),
('TCOMEAU', 178, 'addProject', '2005-04-12 15:49:48'),
('TCOMEAU', 179, 'addProject', '2005-04-12 17:30:53'),
('TCOMEAU', 179, 'edit', '2005-04-12 17:37:27'),
('TCOMEAU', 178, 'addComment', '2005-04-13 03:21:51'),
('PANTALONE', 177, 'edit', '2005-04-14 22:02:18'),
('HUIZINGA', 2, 'edit', '2005-04-19 17:03:16'),
('HUIZINGA', 4, 'edit', '2005-04-19 17:03:42'),
('HUIZINGA', 53, 'edit', '2005-04-19 17:04:46'),
('HUIZINGA', 56, 'edit', '2005-04-19 17:05:13'),
('HUIZINGA', 86, 'edit', '2005-04-19 17:05:42'),
('HUIZINGA', 93, 'edit', '2005-04-19 17:06:10'),
('HUIZINGA', 101, 'edit', '2005-04-19 17:06:41'),
('HUIZINGA', 102, 'edit', '2005-04-19 17:07:03'),
('HUIZINGA', 107, 'edit', '2005-04-19 17:07:43'),
('HUIZINGA', 108, 'edit', '2005-04-19 17:08:02'),
('HUIZINGA', 115, 'edit', '2005-04-19 17:08:55'),
('HUIZINGA', 121, 'edit', '2005-04-19 17:09:25'),
('HUIZINGA', 124, 'edit', '2005-04-19 17:09:51'),
('HUIZINGA', 125, 'edit', '2005-04-19 17:10:12'),
('HUIZINGA', 128, 'edit', '2005-04-19 17:10:44'),
('HUIZINGA', 153, 'edit', '2005-04-19 17:11:15'),
('HUIZINGA', 154, 'edit', '2005-04-19 17:11:39'),
('HUIZINGA', 155, 'edit', '2005-04-19 17:12:02'),
('HUIZINGA', 160, 'edit', '2005-04-19 17:12:31'),
('HUIZINGA', 167, 'edit', '2005-04-19 17:13:55'),
('HUIZINGA', 169, 'edit', '2005-04-19 17:14:43'),
('HUIZINGA', 170, 'edit', '2005-04-19 17:15:07'),
('HUIZINGA', 171, 'edit', '2005-04-19 17:15:32'),
('HUIZINGA', 172, 'edit', '2005-04-19 17:15:48'),
('HUIZINGA', 174, 'edit', '2005-04-19 17:16:15'),
('HUIZINGA', 154, 'edit', '2005-04-19 17:24:50'),
('HUIZINGA', 155, 'edit', '2005-04-19 17:25:24'),
('WOLFFL', 4, 'edit', '2005-04-22 01:22:40'),
('WOLFFL', 2, 'edit', '2005-04-22 01:24:17'),
('WOLFFL', 2, 'edit', '2005-04-22 01:26:11'),
('WOLFFL', 53, 'edit', '2005-04-22 01:30:47'),
('WOLFFL', 56, 'edit', '2005-04-22 01:36:44'),
('WOLFFL', 102, 'edit', '2005-04-22 01:41:31'),
('WOLFFL', 107, 'edit', '2005-04-22 02:04:13'),
('WOLFFL', 108, 'edit', '2005-04-22 02:15:12'),
('WOLFFL', 115, 'edit', '2005-04-22 02:18:45'),
('WOLFFL', 124, 'edit', '2005-04-22 02:44:30'),
('WOLFFL', 125, 'edit', '2005-04-22 02:50:12'),
('HUIZINGA', 4, 'edit', '2005-04-22 13:03:46'),
('SINGER', 2, 'edit', '2005-04-22 14:17:55'),
('SINGER', 175, 'edit', '2005-04-22 14:24:05'),
('SINGER', 175, 'edit', '2005-04-22 14:27:45'),
('SINGER', 128, 'edit', '2005-04-22 14:37:21'),
('SINGER', 169, 'edit', '2005-04-22 14:49:33'),
('SINGER', 176, 'edit', '2005-04-22 14:59:25'),
('SINGER', 177, 'edit', '2005-04-22 15:00:08'),
('SINGER', 112, 'edit', '2005-04-22 15:20:52'),
('WOLFFL', 160, 'edit', '2005-04-22 16:14:02'),
('WOLFFL', 175, 'edit', '2005-04-22 17:26:49'),
('WOLFFL', 86, 'edit', '2005-04-22 17:28:37'),
('WOLFFL', 154, 'edit', '2005-04-22 17:31:55'),
('WOLFFL', 154, 'edit', '2005-04-22 17:38:18'),
('WOLFFL', 154, 'edit', '2005-04-22 17:39:19'),
('WOLFFL', 154, 'edit', '2005-04-22 17:40:20'),
('WOLFFL', 155, 'edit', '2005-04-22 17:42:15'),
('WOLFFL', 160, 'edit', '2005-04-23 03:14:23'),
('WOLFFL', 167, 'edit', '2005-04-23 03:18:09'),
('WOLFFL', 174, 'edit', '2005-04-23 03:21:45'),
('WOLFFL', 16, 'edit', '2005-04-23 04:06:25'),
('WOLFFL', 16, 'edit', '2005-04-23 04:09:45'),
('WOLFFL', 16, 'edit', '2005-04-23 04:12:20'),
('WOLFFL', 85, 'edit', '2005-04-23 04:13:54'),
('WOLFFL', 126, 'edit', '2005-04-23 04:20:23'),
('WOLFFL', 114, 'edit', '2005-04-23 04:24:02'),
('WOLFFL', 128, 'edit', '2005-04-23 04:27:55'),
('WOLFFL', 26, 'edit', '2005-04-23 04:33:41'),
('WOLFFL', 57, 'edit', '2005-04-23 04:34:53'),
('WOLFFL', 93, 'edit', '2005-04-23 04:36:17'),
('WOLFFL', 113, 'edit', '2005-04-23 04:39:22'),
('WOLFFL', 123, 'edit', '2005-04-23 04:41:19'),
('WOLFFL', 146, 'edit', '2005-04-23 04:45:38'),
('WOLFFL', 173, 'edit', '2005-04-23 04:56:43'),
('WOLFFL', 178, 'edit', '2005-04-23 05:02:45'),
('WOLFFL', 44, 'edit', '2005-04-23 05:05:31'),
('WOLFFL', 44, 'edit', '2005-04-23 05:05:42'),
('WOLFFL', 119, 'edit', '2005-04-23 05:07:54'),
('WOLFFL', 138, 'edit', '2005-04-23 05:10:25'),
('WOLFFL', 165, 'edit', '2005-04-23 05:12:37'),
('WOLFFL', 13, 'edit', '2005-04-23 05:14:18'),
('WOLFFL', 56, 'edit', '2005-04-23 05:17:23'),
('WOLFFL', 147, 'edit', '2005-04-23 05:19:26'),
('WOLFFL', 13, 'edit', '2005-04-23 05:22:15'),
('WOLFFL', 16, 'edit', '2005-04-23 05:26:05'),
('WOLFFL', 64, 'edit', '2005-04-23 05:28:16'),
('WOLFFL', 77, 'edit', '2005-04-23 05:34:12'),
('WOLFFL', 124, 'edit', '2005-04-23 05:36:03'),
('WOLFFL', 125, 'edit', '2005-04-23 05:38:35'),
('WOLFFL', 150, 'edit', '2005-04-23 05:40:10'),
('WOLFFL', 151, 'edit', '2005-04-23 05:41:58'),
('WOLFFL', 101, 'edit', '2005-04-23 05:52:40'),
('WOLFFL', 44, 'edit', '2005-04-23 22:47:17'),
('WOLFFL', 16, 'edit', '2005-04-23 22:54:13'),
('WOLFFL', 44, 'edit', '2005-04-23 22:57:19'),
('WOLFFL', 44, 'edit', '2005-04-23 22:57:32'),
('WOLFFL', 86, 'edit', '2005-04-23 23:09:23'),
('WOLFFL', 86, 'edit', '2005-04-23 23:17:05'),
('WOLFFL', 86, 'edit', '2005-04-23 23:17:50'),
('WOLFFL', 93, 'edit', '2005-04-23 23:22:13'),
('WOLFFL', 107, 'edit', '2005-04-24 00:08:58'),
('WOLFFL', 172, 'edit', '2005-04-24 00:14:44'),
('WOLFFL', 115, 'edit', '2005-04-24 00:17:01'),
('WOLFFL', 6, 'edit', '2005-04-24 00:41:57'),
('WOLFFL', 179, 'edit', '2005-04-24 00:45:49'),
('WOLFFL', 147, 'edit', '2005-04-24 00:48:37'),
('WOLFFL', 177, 'edit', '2005-04-24 00:50:38'),
('WOLFFL', 177, 'edit', '2005-04-24 00:51:54'),
('WOLFFL', 48, 'edit', '2005-04-25 23:22:56'),
('WOLFFL', 115, 'edit', '2005-04-25 23:30:44'),
('SINGER', 104, 'edit', '2005-04-26 15:24:25'),
('SINGER', 79, 'edit', '2005-04-27 14:25:41'),
('SINGER', 79, 'edit', '2005-04-27 14:26:40'),
('SINGER', 2, 'edit', '2005-04-27 17:26:26'),
('SINGER', 11, 'edit', '2005-04-27 17:29:16'),
('SINGER', 11, 'edit', '2005-04-27 17:33:26'),
('SINGER', 129, 'edit', '2005-04-27 17:47:25'),
('HUIZINGA', 156, 'edit', '2005-04-27 17:58:51'),
('HUIZINGA', 157, 'edit', '2005-04-27 17:59:29'),
('SINGER', 165, 'edit', '2005-04-27 18:24:54'),
('HUIZINGA', 107, 'edit', '2005-04-27 19:22:50'),
('HUIZINGA', 108, 'edit', '2005-04-27 19:24:55'),
('HUIZINGA', 101, 'edit', '2005-04-27 19:28:03'),
('HUIZINGA', 167, 'edit', '2005-04-27 19:36:09'),
('HUIZINGA', 176, 'edit', '2005-04-27 19:39:05'),
('HUIZINGA', 177, 'edit', '2005-04-27 19:40:22'),
('HUIZINGA', 176, 'edit', '2005-04-27 19:40:52'),
('HUIZINGA', 107, 'edit', '2005-04-27 19:41:49'),
('HUIZINGA', 108, 'edit', '2005-04-27 19:42:14'),
('HUIZINGA', 108, 'edit', '2005-04-27 19:43:10'),
('HUIZINGA', 101, 'edit', '2005-04-27 19:44:16'),
('HUIZINGA', 107, 'edit', '2005-04-27 19:44:38'),
('HUIZINGA', 157, 'edit', '2005-04-27 19:47:56'),
('HUIZINGA', 158, 'edit', '2005-04-27 19:48:51'),
('HUIZINGA', 159, 'edit', '2005-04-27 19:49:10'),
('HUIZINGA', 154, 'edit', '2005-04-27 20:00:28'),
('HUIZINGA', 155, 'edit', '2005-04-27 20:01:42'),
('HUIZINGA', 156, 'edit', '2005-04-27 20:04:12'),
('HUIZINGA', 155, 'edit', '2005-04-27 20:05:34'),
('HUIZINGA', 154, 'edit', '2005-04-27 20:08:08'),
('HUIZINGA', 154, 'edit', '2005-04-27 20:08:43'),
('DURKIN', 176, 'edit', '2005-04-27 21:13:35'),
('DURKIN', 176, 'edit', '2005-04-27 21:21:00'),
('HUIZINGA', 165, 'edit', '2005-04-28 13:17:56'),
('PANTALONE', 121, 'edit', '2005-04-28 21:18:36'),
('PANTALONE', 121, 'addComment', '2005-04-28 21:26:14'),
('PANTALONE', 121, 'addComment', '2005-04-28 21:27:25'),
('PANTALONE', 121, 'deleteComment', '2005-04-28 21:31:55'),
('PANTALONE', 121, 'edit', '2005-04-28 22:28:03'),
('MCCLURE', 153, 'edit', '2005-04-29 15:00:36'),
('PANTALONE', 167, 'edit', '2005-04-29 15:55:07'),
('MCCLURE', 2, 'edit', '2005-04-29 16:40:53'),
('HUIZINGA', 170, 'edit', '2005-05-02 16:35:47'),
('HUIZINGA', 170, 'edit', '2005-05-02 16:37:28'),
('HUIZINGA', 170, 'edit', '2005-05-02 16:47:52'),
('HUIZINGA', 170, 'edit', '2005-05-02 16:54:58'),
('HUIZINGA', 11, 'edit', '2005-05-05 10:29:12'),
('HUIZINGA', 11, 'edit', '2005-05-05 10:30:03'),
('HUIZINGA', 11, 'edit', '2005-05-05 10:33:56'),
('HUIZINGA', 130, 'edit', '2005-05-05 13:51:50'),
('SINGER', 2, 'edit', '2005-05-05 15:09:50'),
('HUIZINGA', 129, 'edit', '2005-05-05 17:28:44'),
('HUIZINGA', 174, 'edit', '2005-05-05 20:06:34'),
('HUIZINGA', 174, 'edit', '2005-05-05 20:21:39'),
('WOLFFL', 16, 'edit', '2005-05-06 13:18:40'),
('WOLFFL', 2, 'edit', '2005-05-06 13:57:57'),
('WOLFFL', 4, 'edit', '2005-05-06 14:28:09'),
('WOLFFL', 44, 'edit', '2005-05-06 14:38:40'),
('WOLFFL', 86, 'edit', '2005-05-06 14:40:48'),
('WOLFFL', 98, 'edit', '2005-05-06 14:43:40'),
('WOLFFL', 24, 'edit', '2005-05-06 14:46:43'),
('WOLFFL', 88, 'edit', '2005-05-06 14:49:57'),
('WOLFFL', 101, 'edit', '2005-05-06 14:54:55'),
('TCOMEAU', 65, 'addComment', '2005-05-06 15:25:45'),
('TCOMEAU', 65, 'updateComment', '2005-05-06 15:26:30'),
('WOLFFL', 113, 'edit', '2005-05-06 16:29:08'),
('WOLFFL', 113, 'edit', '2005-05-06 16:33:29'),
('WOLFFL', 115, 'edit', '2005-05-06 16:37:05'),
('WOLFFL', 121, 'edit', '2005-05-06 16:41:13'),
('WOLFFL', 107, 'edit', '2005-05-06 16:42:49'),
('WOLFFL', 153, 'edit', '2005-05-06 16:47:40'),
('WOLFFL', 121, 'edit', '2005-05-06 16:48:44'),
('WOLFFL', 121, 'edit', '2005-05-06 16:50:44'),
('WOLFFL', 129, 'edit', '2005-05-06 16:57:47'),
('WOLFFL', 156, 'edit', '2005-05-06 17:00:55'),
('WOLFFL', 157, 'edit', '2005-05-06 17:03:06'),
('WOLFFL', 158, 'edit', '2005-05-06 17:07:27'),
('WOLFFL', 158, 'edit', '2005-05-06 17:08:17'),
('WOLFFL', 156, 'edit', '2005-05-06 17:10:45'),
('WOLFFL', 155, 'edit', '2005-05-06 17:12:49'),
('WOLFFL', 154, 'edit', '2005-05-06 17:14:13'),
('WOLFFL', 8, 'edit', '2005-05-06 17:16:46'),
('WOLFFL', 13, 'edit', '2005-05-06 17:17:56'),
('WOLFFL', 65, 'edit', '2005-05-06 17:20:50'),
('WOLFFL', 65, 'edit', '2005-05-06 17:22:15'),
('WOLFFL', 48, 'edit', '2005-05-06 17:29:57'),
('WOLFFL', 75, 'edit', '2005-05-06 17:31:41'),
('WOLFFL', 47, 'edit', '2005-05-06 17:33:59'),
('WOLFFL', 90, 'edit', '2005-05-06 17:40:27'),
('WOLFFL', 53, 'edit', '2005-05-06 17:59:31'),
('WOLFFL', 53, 'edit', '2005-05-06 18:02:24'),
('WOLFFL', 56, 'edit', '2005-05-06 18:07:28'),
('WOLFFL', 95, 'edit', '2005-05-06 18:09:24'),
('WOLFFL', 105, 'edit', '2005-05-06 18:13:01'),
('WOLFFL', 112, 'edit', '2005-05-06 19:19:11'),
('WOLFFL', 112, 'edit', '2005-05-06 19:21:22'),
('WOLFFL', 112, 'edit', '2005-05-06 19:24:03'),
('WOLFFL', 112, 'edit', '2005-05-06 19:25:06'),
('WOLFFL', 112, 'edit', '2005-05-06 19:25:42'),
('WOLFFL', 112, 'edit', '2005-05-06 19:26:16'),
('WOLFFL', 93, 'edit', '2005-05-06 19:31:37'),
('WOLFFL', 108, 'edit', '2005-05-06 19:36:35'),
('WOLFFL', 108, 'edit', '2005-05-06 19:36:50'),
('WOLFFL', 117, 'edit', '2005-05-06 19:42:32'),
('WOLFFL', 131, 'edit', '2005-05-06 19:53:14'),
('WOLFFL', 127, 'edit', '2005-05-06 19:54:08'),
('WOLFFL', 133, 'edit', '2005-05-06 19:55:44'),
('WOLFFL', 125, 'edit', '2005-05-06 19:59:30'),
('WOLFFL', 137, 'edit', '2005-05-06 20:02:22'),
('WOLFFL', 140, 'edit', '2005-05-06 20:05:04'),
('WOLFFL', 147, 'edit', '2005-05-06 20:07:20'),
('WOLFFL', 152, 'edit', '2005-05-06 20:09:05'),
('WOLFFL', 159, 'edit', '2005-05-06 20:13:12'),
('WOLFFL', 160, 'edit', '2005-05-06 20:14:11'),
('WOLFFL', 161, 'edit', '2005-05-06 20:17:38'),
('WOLFFL', 163, 'edit', '2005-05-06 20:19:42'),
('WOLFFL', 164, 'edit', '2005-05-06 20:23:25'),
('WOLFFL', 168, 'edit', '2005-05-06 20:27:24'),
('WOLFFL', 169, 'edit', '2005-05-06 20:39:31'),
('WOLFFL', 173, 'edit', '2005-05-06 20:42:03'),
('WOLFFL', 178, 'edit', '2005-05-06 20:52:20'),
('WOLFFL', 153, 'edit', '2005-05-06 21:10:49'),
('WOLFFL', 171, 'edit', '2005-05-06 21:15:10'),
('WOLFFL', 172, 'edit', '2005-05-06 21:16:16'),
('WOLFFL', 151, 'edit', '2005-05-06 21:45:11'),
('WOLFFL', 150, 'edit', '2005-05-06 21:46:17'),
('WOLFFL', 150, 'edit', '2005-05-06 21:47:36'),
('WOLFFL', 151, 'edit', '2005-05-06 21:50:42'),
('WOLFFL', 151, 'edit', '2005-05-06 21:51:35'),
('WOLFFL', 150, 'edit', '2005-05-06 21:54:15'),
('HUIZINGA', 117, 'edit', '2005-05-08 12:16:14'),
('SINGER', 88, 'edit', '2005-05-09 15:23:17'),
('SINGER', 152, 'edit', '2005-05-09 15:32:04'),
('SINGER', 163, 'edit', '2005-05-09 20:59:48'),
('SINGER', 164, 'edit', '2005-05-09 21:00:31'),
('SINGER', 139, 'edit', '2005-05-09 21:13:29'),
('SINGER', 148, 'edit', '2005-05-09 21:14:07'),
('SINGER', 161, 'edit', '2005-05-09 21:16:18'),
('SINGER', 177, 'edit', '2005-05-09 21:19:29'),
('SINGER', 161, 'edit', '2005-05-09 21:20:08'),
('SINGER', 121, 'edit', '2005-05-09 21:21:29'),
('HUIZINGA', 174, 'edit', '2005-05-10 14:10:25'),
('HUIZINGA', 174, 'edit', '2005-05-10 14:11:00'),
('WOLFFL', 170, 'edit', '2005-05-10 19:04:33'),
('HUIZINGA', 11, 'edit', '2005-05-10 22:44:06'),
('HUIZINGA', 131, 'edit', '2005-05-11 13:51:53'),
('HUIZINGA', 131, 'edit', '2005-05-11 13:54:02'),
('SINGER', 131, 'edit', '2005-05-12 18:58:27'),
('HUIZINGA', 178, 'edit', '2005-05-12 19:11:41'),
('SINGER', 141, 'edit', '2005-05-12 19:13:23'),
('HUIZINGA', 178, 'edit', '2005-05-12 19:14:03'),
('SINGER', 84, 'edit', '2005-05-12 19:24:04'),
('SINGER', 84, 'edit', '2005-05-12 19:25:22'),
('SINGER', 84, 'edit', '2005-05-12 19:26:12'),
('SINGER', 84, 'edit', '2005-05-12 19:26:26'),
('SINGER', 127, 'edit', '2005-05-12 19:29:13'),
('SINGER', 84, 'edit', '2005-05-12 19:30:18'),
('DURKIN', 153, 'edit', '2005-05-12 20:48:49'),
('DURKIN', 153, 'edit', '2005-05-12 20:49:18'),
('DURKIN', 153, 'edit', '2005-05-12 20:50:27'),
('DURKIN', 153, 'edit', '2005-05-13 01:08:41'),
('DURKIN', 153, 'edit', '2005-05-13 01:14:45'),
('WOLFFL', 117, 'edit', '2005-05-13 13:48:49'),
('WOLFFL', 117, 'edit', '2005-05-13 13:48:58'),
('WOLFFL', 84, 'edit', '2005-05-13 13:50:50'),
('SINGER', 115, 'edit', '2005-05-13 19:40:57'),
('SINGER', 121, 'edit', '2005-05-13 19:43:23'),
('HUIZINGA', 179, 'edit', '2005-05-16 13:44:46'),
('HUIZINGA', 179, 'edit', '2005-05-16 13:46:05'),
('HUIZINGA', 179, 'edit', '2005-05-16 13:48:02'),
('HUIZINGA', 179, 'edit', '2005-05-16 13:50:20'),
('HUIZINGA', 179, 'edit', '2005-05-16 13:53:07'),
('HUIZINGA', 179, 'edit', '2005-05-16 13:53:53'),
('HUIZINGA', 179, 'edit', '2005-05-16 13:57:49'),
('HUIZINGA', 179, 'edit', '2005-05-16 13:58:19'),
('HUIZINGA', 179, 'edit', '2005-05-16 14:09:04'),
('WOLFFL', 170, 'edit', '2005-05-16 14:20:18'),
('WOLFFL', 170, 'edit', '2005-05-16 14:37:08'),
('HUIZINGA', 174, 'edit', '2005-05-17 12:48:10'),
('WOLFFL', 179, 'edit', '2005-05-17 13:58:45'),
('HUIZINGA', 93, 'edit', '2005-05-17 15:51:06'),
('SINGER', 105, 'edit', '2005-05-18 13:56:08'),
('SINGER', 130, 'edit', '2005-05-18 13:57:22'),
('SINGER', 117, 'edit', '2005-05-18 14:03:17'),
('SINGER', 163, 'edit', '2005-05-18 14:08:25'),
('SINGER', 170, 'edit', '2005-05-18 14:10:02'),
('SINGER', 164, 'edit', '2005-05-18 14:16:18'),
('SINGER', 133, 'edit', '2005-05-18 14:19:35'),
('HUIZINGA', 93, 'edit', '2005-05-23 14:11:20'),
('HUIZINGA', 93, 'edit', '2005-05-23 14:18:55'),
('HUIZINGA', 93, 'edit', '2005-05-23 14:19:40'),
('WOLFFL', 2, 'edit', '2005-05-25 19:12:18'),
('WOLFFL', 147, 'edit', '2005-05-25 19:22:52'),
('WOLFFL', 154, 'edit', '2005-05-25 19:23:40'),
('WOLFFL', 155, 'edit', '2005-05-25 19:25:13'),
('WOLFFL', 160, 'edit', '2005-05-25 19:26:03'),
('WOLFFL', 93, 'edit', '2005-05-25 19:29:36'),
('WOLFFL', 86, 'edit', '2005-05-25 19:36:00'),
('WOLFFL', 56, 'edit', '2005-05-25 19:36:29'),
('WOLFFL', 125, 'edit', '2005-05-25 19:38:31'),
('WOLFFL', 125, 'edit', '2005-05-25 19:38:50'),
('WOLFFL', 167, 'edit', '2005-05-25 20:24:23'),
('WOLFFL', 167, 'edit', '2005-05-25 20:24:30'),
('WOLFFL', 175, 'edit', '2005-05-25 20:31:03'),
('MCCLURE', 93, 'edit', '2005-05-31 12:14:27'),
('SINGER', 84, 'edit', '2005-06-01 15:22:05'),
('SINGER', 170, 'edit', '2005-06-01 15:25:07'),
('SINGER', 84, 'edit', '2005-06-01 15:26:05'),
('SINGER', 163, 'edit', '2005-06-01 15:27:17'),
('SINGER', 2, 'edit', '2005-06-01 16:39:51'),
('SINGER', 86, 'edit', '2005-06-01 16:40:33'),
('SINGER', 115, 'edit', '2005-06-01 16:41:19'),
('SINGER', 147, 'edit', '2005-06-01 16:45:03'),
('SINGER', 154, 'edit', '2005-06-01 16:56:39'),
('SINGER', 155, 'edit', '2005-06-01 16:57:08'),
('SINGER', 161, 'edit', '2005-06-01 16:57:57'),
('SINGER', 175, 'edit', '2005-06-01 16:59:05'),
('HUIZINGA', 133, 'edit', '2005-06-02 15:19:19'),
('HUIZINGA', 93, 'edit', '2005-06-02 17:42:12'),
('TCOMEAU', 180, 'addProject', '2005-06-03 17:40:58'),
('TCOMEAU', 180, 'addComment', '2005-06-03 17:55:22'),
('TCOMEAU', 180, 'updateComment', '2005-06-03 17:57:06'),
('SINGER', 147, 'edit', '2005-06-09 13:19:58'),
('DURKIN', 175, 'edit', '2005-06-14 19:30:49'),
('DURKIN', 147, 'edit', '2005-06-14 19:32:10'),
('SINGER', 172, 'edit', '2005-06-22 20:02:11'),
('SINGER', 171, 'edit', '2005-06-22 20:03:57'),
('SINGER', 181, 'addProject', '2005-06-23 14:49:26'),
('SINGER', 181, 'edit', '2005-06-23 14:50:38'),
('HUIZINGA', 182, 'addProject', '2005-07-06 16:52:04'),
('SINGER', 75, 'edit', '2005-07-11 21:06:05'),
('SINGER', 105, 'edit', '2005-07-11 21:09:41'),
('SINGER', 75, 'edit', '2005-07-11 21:11:42'),
('TCOMEAU', 183, 'addProject', '2005-07-15 21:56:47'),
('TCOMEAU', 184, 'addProject', '2005-07-21 14:45:10'),
('WOLFFL', 184, 'edit', '2005-07-21 18:46:55'),
('WOLFFL', 181, 'edit', '2005-07-21 18:56:17'),
('WOLFFL', 182, 'edit', '2005-07-21 19:45:05'),
('HUIZINGA', 185, 'addProject', '2005-07-26 20:54:44'),
('HUIZINGA', 185, 'edit', '2005-07-26 20:59:03'),
('HUIZINGA', 185, 'edit', '2005-07-26 21:23:05'),
('DURKIN', 4, 'edit', '2005-08-10 21:43:55'),
('SINGER', 186, 'addProject', '2005-08-17 20:03:20'),
('SINGER', 186, 'edit', '2005-08-17 20:05:23'),
('SINGER', 187, 'addProject', '2005-08-17 20:08:41'),
('SINGER', 186, 'edit', '2005-08-17 20:10:25'),
('SINGER', 106, 'edit', '2005-08-17 20:12:36'),
('SINGER', 187, 'edit', '2005-08-17 20:16:19'),
('TCOMEAU', 187, 'addComment', '2005-08-18 18:24:11'),
('WMILLER', 188, 'addProject', '2005-09-02 18:44:06'),
('SINGER', 189, 'addProject', '2005-09-02 19:39:11'),
('payne', 115, 'edit', '2005-09-19 14:50:43'),
('DURKIN', 190, 'addProject', '2005-09-20 21:38:48'),
('WMILLER', 191, 'addProject', '2005-09-22 18:37:01'),
('SINGER', 84, 'edit', '2005-09-22 20:07:22'),
('SINGER', 115, 'edit', '2005-09-22 20:08:53'),
('SINGER', 121, 'edit', '2005-09-22 20:09:57'),
('SINGER', 181, 'edit', '2005-09-22 20:10:56'),
('SINGER', 181, 'edit', '2005-09-22 20:11:12'),
('SINGER', 84, 'edit', '2005-09-22 20:15:09'),
('SINGER', 181, 'edit', '2005-09-22 20:16:37'),
('SINGER', 140, 'edit', '2005-09-22 20:31:34'),
('SINGER', 170, 'edit', '2005-09-22 20:33:57'),
('SINGER', 170, 'edit', '2005-09-22 20:34:52'),
('SINGER', 2, 'edit', '2005-09-22 20:36:36'),
('SINGER', 86, 'edit', '2005-09-22 20:37:14'),
('SINGER', 93, 'edit', '2005-09-22 20:37:47'),
('SINGER', 115, 'edit', '2005-09-22 20:45:49'),
('SINGER', 121, 'edit', '2005-09-22 20:46:27'),
('SINGER', 129, 'edit', '2005-09-22 20:46:57'),
('SINGER', 153, 'edit', '2005-09-22 20:47:51'),
('SINGER', 154, 'edit', '2005-09-22 20:48:44'),
('SINGER', 155, 'edit', '2005-09-22 20:49:16'),
('SINGER', 160, 'edit', '2005-09-22 20:49:41'),
('SINGER', 172, 'edit', '2005-09-22 20:53:44'),
('SINGER', 133, 'edit', '2005-09-22 20:56:30'),
('SINGER', 8, 'edit', '2005-09-22 21:00:08'),
('SINGER', 47, 'edit', '2005-09-22 21:01:31'),
('SINGER', 65, 'edit', '2005-09-22 21:02:07'),
('SINGER', 65, 'edit', '2005-09-22 21:02:50'),
('SINGER', 84, 'edit', '2005-09-22 21:03:55'),
('SINGER', 164, 'edit', '2005-09-22 21:05:55'),
('SINGER', 95, 'edit', '2005-09-22 21:06:59'),
('GOLOMBEK', 192, 'addProject', '2005-09-22 21:18:14'),
('SINGER', 106, 'edit', '2005-09-23 15:13:36'),
('SINGER', 106, 'edit', '2005-09-23 15:15:08'),
('SINGER', 127, 'edit', '2005-09-23 15:21:37'),
('SINGER', 129, 'edit', '2005-09-23 15:22:05'),
('SINGER', 139, 'edit', '2005-09-23 15:23:29'),
('SINGER', 148, 'edit', '2005-09-23 15:24:27'),
('SINGER', 161, 'edit', '2005-09-23 15:31:34'),
('SINGER', 163, 'edit', '2005-09-23 15:41:38'),
('WMILLER', 193, 'addProject', '2005-09-23 16:15:39'),
('WMILLER', 193, 'edit', '2005-09-23 16:47:56'),
('SINGER', 170, 'edit', '2005-09-23 18:04:51'),
('SINGER', 172, 'edit', '2005-09-23 18:05:36'),
('WOLFFL', 4, 'edit', '2005-09-25 21:58:07'),
('PAYNE', 46, 'edit', '2005-09-27 13:41:31'),
('HUIZINGA', 194, 'addProject', '2005-09-27 15:12:40'),
('HUIZINGA', 194, 'edit', '2005-09-27 15:16:03'),
('HUIZINGA', 194, 'edit', '2005-09-27 15:22:30'),
('HUIZINGA', 194, 'edit', '2005-09-27 15:27:36'),
('HUIZINGA', 194, 'edit', '2005-09-27 15:31:50'),
('HUIZINGA', 102, 'addComment', '2005-09-27 15:39:41'),
('HUIZINGA', 194, 'edit', '2005-09-27 15:59:36'),
('DURKIN', 195, 'addProject', '2005-09-28 13:45:04'),
('DURKIN', 196, 'addProject', '2005-09-28 13:46:41'),
('DURKIN', 197, 'addProject', '2005-09-28 13:48:09'),
('DURKIN', 198, 'addProject', '2005-09-28 13:48:57'),
('DURKIN', 199, 'addProject', '2005-09-28 13:50:29'),
('PAYNE', 16, 'edit', '2005-09-28 15:07:55'),
('PAYNE', 16, 'edit', '2005-09-28 15:09:16'),
('NAGEL', 4, 'edit', '2005-09-29 17:23:42'),
('NAGEL', 4, 'edit', '2005-09-29 17:25:48'),
('NAGEL', 4, 'edit', '2005-09-29 17:28:14'),
('HUIZINGA', 200, 'addProject', '2005-09-29 20:33:23'),
('HUIZINGA', 200, 'edit', '2005-09-29 20:37:36'),
('HUIZINGA', 106, 'edit', '2005-09-29 20:46:22'),
('HUIZINGA', 187, 'edit', '2005-09-29 21:03:54'),
('SINGER', 67, 'edit', '2005-10-04 14:37:17'),
('SINGER', 57, 'edit', '2005-10-04 14:39:45'),
('SINGER', 168, 'edit', '2005-10-04 14:44:28'),
('SINGER', 171, 'edit', '2005-10-04 14:46:22'),
('SINGER', 178, 'edit', '2005-10-04 14:47:20'),
('SINGER', 130, 'edit', '2005-10-04 14:56:12'),
('SINGER', 115, 'edit', '2005-10-04 14:56:51'),
('SINGER', 10, 'edit', '2005-10-05 18:57:18'),
('SINGER', 24, 'edit', '2005-10-05 19:01:15'),
('SINGER', 84, 'edit', '2005-10-05 19:03:24'),
('SINGER', 198, 'edit', '2005-10-05 19:08:11'),
('SINGER', 129, 'edit', '2005-10-05 19:11:02'),
('SINGER', 133, 'edit', '2005-10-05 19:12:02'),
('SINGER', 161, 'edit', '2005-10-05 19:12:58'),
('SINGER', 194, 'edit', '2005-10-05 19:14:21'),
('SINGER', 201, 'addProject', '2005-10-05 19:33:22'),
('MATTS', 195, 'edit', '2005-10-06 16:04:33'),
('MATTS', 198, 'edit', '2005-10-06 16:10:09'),
('MATTS', 198, 'edit', '2005-10-06 16:10:43'),
('MATTS', 196, 'edit', '2005-10-06 19:14:29'),
('MATTS', 197, 'edit', '2005-10-06 19:46:58'),
('MATTS', 199, 'edit', '2005-10-06 20:08:01'),
('SINGER', 175, 'edit', '2005-10-07 14:23:54'),
('SINGER', 201, 'edit', '2005-10-07 14:24:54'),
('SINGER', 189, 'edit', '2005-10-07 14:26:24'),
('SINGER', 192, 'edit', '2005-10-07 14:27:53'),
('SINGER', 195, 'edit', '2005-10-07 14:31:16'),
('SINGER', 196, 'edit', '2005-10-07 14:36:22'),
('SINGER', 197, 'edit', '2005-10-07 14:38:11'),
('SINGER', 190, 'edit', '2005-10-07 14:39:49'),
('WMILLER', 149, 'edit', '2005-10-10 15:01:48'),
('WMILLER', 150, 'edit', '2005-10-10 15:05:31'),
('WMILLER', 150, 'edit', '2005-10-10 15:06:19'),
('WMILLER', 149, 'edit', '2005-10-10 15:07:23'),
('SINGER', 172, 'edit', '2005-10-11 18:16:59'),
('SINGER', 127, 'edit', '2005-10-11 18:25:09'),
('WOLFFL', 2, 'edit', '2005-10-12 00:17:34'),
('WOLFFL', 4, 'edit', '2005-10-12 00:27:46'),
('WOLFFL', 26, 'edit', '2005-10-12 00:38:35'),
('MCCLURE', 202, 'addProject', '2005-10-12 18:54:29'),
('WOLFFL', 182, 'edit', '2005-10-13 12:23:08'),
('SINGER', 13, 'edit', '2005-10-17 12:48:15'),
('SINGER', 16, 'edit', '2005-10-17 12:50:56'),
('SINGER', 44, 'edit', '2005-10-17 12:51:37'),
('SINGER', 48, 'edit', '2005-10-17 12:52:22'),
('SINGER', 53, 'edit', '2005-10-17 12:52:57'),
('SINGER', 56, 'edit', '2005-10-17 12:53:43'),
('SINGER', 64, 'edit', '2005-10-17 12:54:14'),
('SINGER', 90, 'edit', '2005-10-17 12:55:09'),
('SINGER', 101, 'edit', '2005-10-17 12:56:39'),
('SINGER', 102, 'edit', '2005-10-17 12:57:36'),
('SINGER', 107, 'edit', '2005-10-17 12:58:39'),
('SINGER', 108, 'edit', '2005-10-17 13:08:26'),
('SINGER', 112, 'edit', '2005-10-17 13:08:59'),
('SINGER', 113, 'edit', '2005-10-17 13:12:13'),
('SINGER', 114, 'edit', '2005-10-17 13:12:49'),
('SINGER', 123, 'edit', '2005-10-17 13:13:24'),
('SINGER', 124, 'edit', '2005-10-17 13:14:10'),
('SINGER', 125, 'edit', '2005-10-17 13:15:08'),
('SINGER', 126, 'edit', '2005-10-17 13:15:39'),
('SINGER', 128, 'edit', '2005-10-17 16:00:41'),
('SINGER', 147, 'edit', '2005-10-17 16:05:38'),
('SINGER', 146, 'edit', '2005-10-17 16:09:57'),
('SINGER', 157, 'edit', '2005-10-17 17:35:34'),
('SINGER', 158, 'edit', '2005-10-17 17:36:16'),
('TCOMEAU', 203, 'addProject', '2005-10-17 17:46:26'),
('SINGER', 159, 'edit', '2005-10-17 17:48:43'),
('SINGER', 167, 'edit', '2005-10-17 17:49:22'),
('SINGER', 174, 'edit', '2005-10-17 17:50:27'),
('SINGER', 176, 'edit', '2005-10-17 17:51:02'),
('SINGER', 177, 'edit', '2005-10-17 17:51:37'),
('SINGER', 179, 'edit', '2005-10-17 17:52:16'),
('SINGER', 202, 'edit', '2005-10-17 17:52:55'),
('SINGER', 180, 'edit', '2005-10-17 18:00:29'),
('SINGER', 183, 'edit', '2005-10-17 18:01:05'),
('SINGER', 184, 'edit', '2005-10-17 18:01:40'),
('SINGER', 185, 'edit', '2005-10-17 18:02:12'),
('SINGER', 186, 'edit', '2005-10-17 18:02:53'),
('SINGER', 188, 'edit', '2005-10-17 18:03:27'),
('SINGER', 188, 'edit', '2005-10-17 18:04:17'),
('SINGER', 199, 'edit', '2005-10-17 18:05:01'),
('MATTS', 199, 'edit', '2005-10-17 20:04:57'),
('MATTS', 197, 'edit', '2005-10-17 20:07:46'),
('DURKIN', 204, 'addProject', '2005-10-18 15:00:55'),
('KAYLOR', 205, 'addProject', '2005-10-18 17:59:59'),
('KAYLOR', 205, 'edit', '2005-10-18 18:02:59'),
('KAYLOR', 205, 'edit', '2005-10-18 18:03:12'),
('KAYLOR', 205, 'edit', '2005-10-18 18:05:56'),
('DURKIN', 204, 'edit', '2005-10-18 20:17:59'),
('payne', 194, 'edit', '2005-10-19 19:58:50'),
('HUIZINGA', 163, 'edit', '2005-10-20 14:20:03'),
('PANTALONE', 206, 'addProject', '2005-10-20 18:51:01'),
('PANTALONE', 206, 'edit', '2005-10-20 19:33:56'),
('DURKIN', 8, 'edit', '2005-10-21 11:27:49'),
('DURKIN', 207, 'addProject', '2005-10-21 11:33:37'),
('DURKIN', 207, 'edit', '2005-10-21 11:35:55'),
('WOLFFL', 13, 'edit', '2005-10-21 14:32:01'),
('SINGER', 196, 'edit', '2005-10-24 12:57:37'),
('SINGER', 204, 'edit', '2005-10-24 12:58:34'),
('SINGER', 190, 'edit', '2005-10-24 12:59:27'),
('SINGER', 195, 'edit', '2005-10-24 13:00:05'),
('SINGER', 201, 'edit', '2005-10-24 13:00:55'),
('SINGER', 86, 'edit', '2005-10-24 13:03:14'),
('SINGER', 93, 'edit', '2005-10-24 13:03:55'),
('SINGER', 93, 'edit', '2005-10-24 13:06:08'),
('SINGER', 86, 'edit', '2005-10-24 13:07:04'),
('SINGER', 127, 'edit', '2005-10-24 13:08:30'),
('SINGER', 129, 'edit', '2005-10-24 13:09:30'),
('SINGER', 153, 'edit', '2005-10-24 13:13:00'),
('SINGER', 154, 'edit', '2005-10-24 13:14:53'),
('SINGER', 155, 'edit', '2005-10-24 13:16:11'),
('SINGER', 156, 'edit', '2005-10-24 13:20:42'),
('SINGER', 156, 'edit', '2005-10-24 13:21:29'),
('SINGER', 160, 'edit', '2005-10-24 13:22:05'),
('SINGER', 154, 'edit', '2005-10-24 13:25:58'),
('SINGER', 163, 'edit', '2005-10-24 13:26:54'),
('SINGER', 93, 'edit', '2005-10-24 13:27:52'),
('SINGER', 190, 'edit', '2005-10-24 13:29:16'),
('SINGER', 195, 'edit', '2005-10-24 13:29:52'),
('SINGER', 201, 'edit', '2005-10-24 13:30:50'),
('SINGER', 178, 'edit', '2005-10-24 13:31:48'),
('SINGER', 182, 'edit', '2005-10-24 13:32:26'),
('SINGER', 182, 'edit', '2005-10-24 13:32:36'),
('SINGER', 182, 'edit', '2005-10-24 13:32:45'),
('SINGER', 130, 'edit', '2005-10-24 13:35:24'),
('SINGER', 148, 'edit', '2005-10-24 13:36:18'),
('SINGER', 181, 'edit', '2005-10-24 13:37:43'),
('SINGER', 170, 'edit', '2005-10-24 13:39:12'),
('SINGER', 156, 'edit', '2005-10-24 13:40:47'),
('SINGER', 201, 'edit', '2005-10-24 13:41:32'),
('SINGER', 171, 'edit', '2005-10-24 13:42:54'),
('SINGER', 178, 'edit', '2005-10-24 13:43:22'),
('SINGER', 201, 'edit', '2005-10-24 13:43:53'),
('SINGER', 182, 'edit', '2005-10-24 13:50:24'),
('SINGER', 190, 'edit', '2005-10-24 13:50:52'),
('SINGER', 195, 'edit', '2005-10-24 13:51:25'),
('SINGER', 115, 'edit', '2005-10-24 14:41:38'),
('SINGER', 202, 'edit', '2005-10-24 18:52:20'),
('SINGER', 205, 'edit', '2005-10-24 18:54:01'),
('SINGER', 207, 'edit', '2005-10-24 18:54:43'),
('WOLFFL', 26, 'edit', '2005-10-25 01:08:16'),
('WOLFFL', 16, 'edit', '2005-10-25 01:11:56'),
('WOLFFL', 44, 'edit', '2005-10-25 01:13:58'),
('WOLFFL', 48, 'edit', '2005-10-25 01:16:48'),
('WOLFFL', 53, 'edit', '2005-10-25 01:20:48'),
('WOLFFL', 56, 'edit', '2005-10-25 01:23:04'),
('WOLFFL', 64, 'edit', '2005-10-25 01:25:46'),
('WOLFFL', 53, 'edit', '2005-10-25 01:27:03'),
('WOLFFL', 86, 'edit', '2005-10-25 01:32:59'),
('WOLFFL', 90, 'edit', '2005-10-25 01:36:32'),
('WOLFFL', 93, 'edit', '2005-10-25 01:38:51'),
('WOLFFL', 93, 'edit', '2005-10-25 01:40:24'),
('WOLFFL', 102, 'edit', '2005-10-25 02:03:11'),
('WOLFFL', 107, 'edit', '2005-10-25 02:20:27'),
('WOLFFL', 108, 'edit', '2005-10-25 02:26:23'),
('WOLFFL', 121, 'edit', '2005-10-25 02:28:27'),
('TCOMEAU', 203, 'addComment', '2005-10-25 15:15:37'),
('TCOMEAU', 203, 'edit', '2005-10-25 15:17:16'),
('SINGER', 182, 'edit', '2005-10-25 15:38:34'),
('TCOMEAU', 102, 'addComment', '2005-10-25 15:46:29'),
('SINGER', 130, 'edit', '2005-10-26 14:11:06'),
('SINGER', 98, 'edit', '2005-10-26 14:12:20'),
('SINGER', 181, 'edit', '2005-10-26 14:52:52'),
('HUIZINGA', 208, 'addProject', '2005-11-01 18:49:57'),
('WMILLER', 209, 'addProject', '2005-11-03 21:55:59'),
('HUIZINGA', 210, 'addProject', '2005-11-04 19:38:33'),
('HUIZINGA', 210, 'edit', '2005-11-04 19:42:37'),
('HUIZINGA', 210, 'edit', '2005-11-04 20:44:00'),
('HUIZINGA', 210, 'edit', '2005-11-07 14:22:05'),
('KAYLOR', 205, 'addComment', '2005-11-08 19:40:04'),
('payne', 4, 'edit', '2005-11-08 23:48:17'),
('PAYNE', 121, 'edit', '2005-11-10 17:31:24'),
('SINGER', 211, 'addProject', '2005-11-16 20:26:45'),
('SINGER', 211, 'edit', '2005-11-16 20:28:20'),
('HUIZINGA', 157, 'edit', '2005-11-18 14:43:17'),
('HUIZINGA', 177, 'edit', '2005-11-18 14:44:05'),
('HUIZINGA', 176, 'edit', '2005-11-18 14:44:48'),
('HUIZINGA', 201, 'edit', '2005-11-18 14:45:26'),
('HUIZINGA', 202, 'edit', '2005-11-18 14:46:15'),
('HUIZINGA', 180, 'edit', '2005-11-18 14:47:14'),
('HUIZINGA', 188, 'edit', '2005-11-18 14:49:48'),
('HUIZINGA', 189, 'edit', '2005-11-18 14:51:39'),
('HUIZINGA', 199, 'edit', '2005-11-18 14:52:17'),
('HUIZINGA', 197, 'edit', '2005-11-18 14:52:52'),
('HUIZINGA', 204, 'edit', '2005-11-18 14:53:34'),
('HUIZINGA', 209, 'edit', '2005-11-18 14:54:13'),
('HUIZINGA', 208, 'edit', '2005-11-18 14:54:45'),
('HUIZINGA', 207, 'edit', '2005-11-18 14:55:55'),
('HUIZINGA', 191, 'edit', '2005-11-18 14:56:46'),
('HUIZINGA', 192, 'edit', '2005-11-18 14:57:20'),
('HUIZINGA', 93, 'edit', '2005-11-28 14:42:23'),
('HUIZINGA', 121, 'edit', '2005-11-28 14:43:13'),
('HUIZINGA', 127, 'edit', '2005-11-28 14:44:00'),
('HUIZINGA', 153, 'edit', '2005-11-28 14:46:54'),
('HUIZINGA', 154, 'edit', '2005-11-28 14:48:04'),
('HUIZINGA', 155, 'edit', '2005-11-28 14:48:48'),
('HUIZINGA', 156, 'edit', '2005-11-28 14:49:08'),
('HUIZINGA', 160, 'edit', '2005-11-28 14:49:46'),
('HUIZINGA', 161, 'edit', '2005-11-28 14:50:12'),
('HUIZINGA', 163, 'edit', '2005-11-28 14:50:36'),
('HUIZINGA', 170, 'edit', '2005-11-28 14:51:34'),
('HUIZINGA', 182, 'edit', '2005-11-28 14:56:47'),
('HUIZINGA', 194, 'edit', '2005-11-28 14:57:37'),
('HUIZINGA', 204, 'edit', '2005-11-30 10:34:52'),
('HUIZINGA', 204, 'edit', '2005-11-30 10:57:26'),
('HUIZINGA', 170, 'edit', '2005-11-30 11:05:31'),
('HUIZINGA', 93, 'edit', '2005-11-30 11:06:19'),
('HUIZINGA', 139, 'edit', '2005-11-30 11:06:59'),
('HUIZINGA', 154, 'edit', '2005-11-30 11:38:23'),
('HUIZINGA', 155, 'edit', '2005-11-30 11:38:43'),
('HUIZINGA', 156, 'edit', '2005-11-30 11:39:09'),
('HUIZINGA', 160, 'edit', '2005-11-30 11:39:40'),
('HUIZINGA', 47, 'edit', '2005-11-30 11:41:24'),
('HUIZINGA', 8, 'edit', '2005-11-30 11:42:20'),
('HUIZINGA', 190, 'edit', '2005-11-30 15:36:08'),
('HUIZINGA', 190, 'edit', '2005-11-30 15:37:00'),
('HUIZINGA', 204, 'edit', '2005-11-30 21:50:43'),
('HUIZINGA', 204, 'edit', '2005-11-30 21:51:23'),
('SINGER', 175, 'edit', '2005-12-02 15:23:42'),
('SINGER', 192, 'edit', '2005-12-02 15:24:18'),
('SINGER', 197, 'edit', '2005-12-02 15:24:49'),
('SINGER', 202, 'edit', '2005-12-02 15:25:21'),
('SINGER', 207, 'edit', '2005-12-02 15:26:02'),
('SINGER', 175, 'edit', '2005-12-02 15:29:04'),
('SINGER', 190, 'edit', '2005-12-02 16:06:41'),
('SINGER', 190, 'edit', '2005-12-02 16:06:54'),
('SINGER', 137, 'edit', '2005-12-02 16:12:42'),
('SINGER', 8, 'edit', '2005-12-02 16:14:27'),
('SINGER', 192, 'edit', '2005-12-02 16:18:28'),
('SINGER', 202, 'edit', '2005-12-02 16:19:06'),
('SINGER', 197, 'edit', '2005-12-02 16:19:39'),
('SINGER', 207, 'edit', '2005-12-02 16:20:12'),
('HUIZINGA', 207, 'edit', '2005-12-05 18:50:22'),
('HUIZINGA', 212, 'addProject', '2005-12-05 19:51:26'),
('HUIZINGA', 212, 'edit', '2005-12-05 19:54:13'),
('HUIZINGA', 212, 'edit', '2005-12-05 19:58:51'),
('HUIZINGA', 127, 'edit', '2005-12-05 20:00:50'),
('HUIZINGA', 212, 'edit', '2005-12-05 20:02:03'),
('HUIZINGA', 212, 'edit', '2005-12-05 20:03:00'),
('HUIZINGA', 171, 'edit', '2005-12-05 20:03:57'),
('HUIZINGA', 213, 'addProject', '2005-12-05 20:44:26'),
('HUIZINGA', 213, 'edit', '2005-12-05 20:47:52'),
('HUIZINGA', 213, 'edit', '2005-12-05 20:56:09'),
('HUIZINGA', 213, 'edit', '2005-12-05 20:58:03'),
('HUIZINGA', 213, 'edit', '2005-12-05 20:58:59'),
('HUIZINGA', 214, 'addProject', '2005-12-06 21:21:16'),
('HUIZINGA', 214, 'edit', '2005-12-06 21:24:15'),
('HUIZINGA', 214, 'edit', '2005-12-06 21:25:54'),
('HUIZINGA', 215, 'addProject', '2005-12-06 21:41:22'),
('SINGER', 170, 'edit', '2005-12-07 15:31:11'),
('HUIZINGA', 202, 'edit', '2005-12-08 20:40:56'),
('HUIZINGA', 201, 'edit', '2005-12-08 20:41:26'),
('HUIZINGA', 207, 'edit', '2005-12-08 20:42:48'),
('HUIZINGA', 207, 'edit', '2005-12-08 20:43:03'),
('HUIZINGA', 212, 'edit', '2005-12-08 20:43:52'),
('HUIZINGA', 215, 'edit', '2005-12-14 15:33:15'),
('HUIZINGA', 153, 'edit', '2005-12-14 15:49:00'),
('HUIZINGA', 185, 'edit', '2005-12-15 14:58:48'),
('HUIZINGA', 216, 'addProject', '2005-12-15 15:00:39'),
('HUIZINGA', 216, 'edit', '2005-12-15 15:22:52'),
('HUIZINGA', 217, 'addProject', '2005-12-15 16:23:12'),
('HUIZINGA', 217, 'edit', '2005-12-15 17:11:35'),
('HUIZINGA', 218, 'addProject', '2005-12-15 17:45:33'),
('HUIZINGA', 218, 'edit', '2005-12-15 17:49:41'),
('HUIZINGA', 218, 'edit', '2005-12-15 17:51:25'),
('HUIZINGA', 219, 'addProject', '2005-12-15 21:02:16'),
('HUIZINGA', 219, 'edit', '2005-12-15 21:07:08'),
('HUIZINGA', 212, 'edit', '2005-12-21 19:28:03'),
('HUIZINGA', 201, 'edit', '2005-12-21 19:32:25'),
('HUIZINGA', 194, 'edit', '2005-12-21 19:36:32'),
('HUIZINGA', 161, 'edit', '2005-12-21 19:37:29'),
('HUIZINGA', 190, 'edit', '2005-12-22 18:13:22'),
('HUIZINGA', 190, 'edit', '2005-12-22 18:14:46'),
('HUIZINGA', 167, 'edit', '2006-01-11 14:48:52'),
('HUIZINGA', 167, 'edit', '2006-01-11 14:49:37'),
('HUIZINGA', 93, 'edit', '2006-01-11 15:26:25'),
('HUIZINGA', 153, 'edit', '2006-01-12 17:51:07'),
('HUIZINGA', 139, 'edit', '2006-01-12 17:51:56'),
('HUIZINGA', 137, 'edit', '2006-01-12 17:52:38'),
('HUIZINGA', 215, 'edit', '2006-01-12 17:53:40'),
('HUIZINGA', 175, 'edit', '2006-01-12 17:58:08'),
('HUIZINGA', 212, 'edit', '2006-01-12 17:59:55'),
('HUIZINGA', 200, 'edit', '2006-01-12 18:18:22'),
('HUIZINGA', 192, 'edit', '2006-01-12 18:26:01'),
('HUIZINGA', 220, 'addProject', '2006-01-18 17:00:15'),
('HUIZINGA', 220, 'edit', '2006-01-18 17:05:58'),
('HUIZINGA', 215, 'edit', '2006-01-18 19:10:21'),
('MATTS', 221, 'addProject', '2006-01-18 19:21:43'),
('HUIZINGA', 208, 'edit', '2006-01-20 17:03:29'),
('HUIZINGA', 219, 'edit', '2006-01-27 17:00:00'),
('HUIZINGA', 178, 'edit', '2006-01-27 17:09:19'),
('HUIZINGA', 2, 'edit', '2006-01-27 17:12:08'),
('HUIZINGA', 47, 'edit', '2006-01-27 17:14:21'),
('HUIZINGA', 163, 'edit', '2006-01-27 17:16:17'),
('HUIZINGA', 220, 'edit', '2006-01-30 15:15:11'),
('HUIZINGA', 8, 'edit', '2006-02-14 11:30:05'),
('HUIZINGA', 167, 'edit', '2006-02-14 11:32:45'),
('HUIZINGA', 178, 'edit', '2006-02-14 11:34:18'),
('HUIZINGA', 121, 'edit', '2006-02-14 11:35:45'),
('HUIZINGA', 154, 'edit', '2006-02-14 11:36:28'),
('HUIZINGA', 215, 'edit', '2006-02-14 11:37:23'),
('HUIZINGA', 194, 'edit', '2006-02-14 11:38:53'),
('HUIZINGA', 161, 'edit', '2006-02-14 11:40:25'),
('HUIZINGA', 182, 'edit', '2006-02-14 11:41:49'),
('HUIZINGA', 129, 'edit', '2006-02-14 11:42:41'),
('HUIZINGA', 47, 'edit', '2006-02-14 11:43:20'),
('HUIZINGA', 200, 'edit', '2006-02-14 11:44:30'),
('HUIZINGA', 200, 'edit', '2006-02-14 11:45:10'),
('HUIZINGA', 204, 'edit', '2006-02-14 11:45:50'),
('HUIZINGA', 148, 'edit', '2006-02-14 11:47:47'),
('HUIZINGA', 167, 'edit', '2006-02-14 14:11:01'),
('HUIZINGA', 222, 'addProject', '2006-02-14 19:57:00'),
('HUIZINGA', 222, 'edit', '2006-02-14 19:57:34'),
('HUIZINGA', 222, 'edit', '2006-02-14 20:01:46'),
('HUIZINGA', 222, 'edit', '2006-02-16 14:18:20'),
('HUIZINGA', 208, 'edit', '2006-02-24 16:18:27'),
('HUIZINGA', 214, 'edit', '2006-02-24 16:24:48'),
('PANTALONE', 177, 'edit', '2006-02-27 18:19:45'),
('PANTALONE', 167, 'edit', '2006-02-27 18:28:08'),
('MATTS', 223, 'addProject', '2006-03-06 20:38:46'),
('MATTS', 224, 'addProject', '2006-03-07 13:19:27'),
('MATTS', 225, 'addProject', '2006-03-07 13:40:55'),
('WMILLER', 224, 'addComment', '2006-03-07 13:53:22'),
('HUIZINGA', 223, 'edit', '2006-03-07 14:24:54'),
('HUIZINGA', 224, 'edit', '2006-03-07 14:26:52'),
('HUIZINGA', 225, 'edit', '2006-03-07 14:28:23'),
('MATTS', 224, 'edit', '2006-03-07 14:56:49'),
('HUIZINGA', 223, 'edit', '2006-03-07 14:58:59'),
('MATTS', 224, 'edit', '2006-03-07 18:17:41'),
('MATTS', 221, 'edit', '2006-03-07 18:21:44'),
('MATTS', 221, 'edit', '2006-03-07 18:23:51'),
('HUIZINGA', 204, 'edit', '2006-03-07 19:08:23'),
('HUIZINGA', 214, 'edit', '2006-03-07 19:10:57'),
('HUIZINGA', 215, 'edit', '2006-03-07 19:12:01'),
('HUIZINGA', 178, 'edit', '2006-03-07 19:21:14'),
('HUIZINGA', 226, 'addProject', '2006-03-08 20:35:36'),
('HUIZINGA', 226, 'edit', '2006-03-08 20:42:18'),
('HUIZINGA', 227, 'addProject', '2006-03-13 14:08:14'),
('HUIZINGA', 227, 'edit', '2006-03-13 14:15:16'),
('HUIZINGA', 228, 'addProject', '2006-03-13 23:33:13'),
('HUIZINGA', 228, 'edit', '2006-03-13 23:35:04'),
('HUIZINGA', 223, 'edit', '2006-03-14 18:31:10'),
('HUIZINGA', 118, 'edit', '2006-03-15 19:01:21'),
('HUIZINGA', 118, 'edit', '2006-03-15 19:02:40'),
('HUIZINGA', 131, 'edit', '2006-03-15 19:03:40'),
('HUIZINGA', 131, 'edit', '2006-03-15 20:23:23'),
('HUIZINGA', 229, 'addProject', '2006-03-22 15:24:18'),
('HUIZINGA', 229, 'edit', '2006-03-22 15:26:54'),
('MATTS', 230, 'addProject', '2006-04-03 14:15:28'),
('MATTS', 230, 'edit', '2006-04-03 14:17:25'),
('MATTS', 230, 'edit', '2006-04-03 14:18:59'),
('payne', 231, 'addProject', '2006-04-06 20:51:43'),
('payne', 231, 'edit', '2006-04-06 20:52:16'),
('payne', 231, 'edit', '2006-04-06 20:54:03'),
('payne', 231, 'edit', '2006-04-06 21:08:05'),
('payne', 232, 'addProject', '2006-04-06 21:23:19'),
('payne', 232, 'edit', '2006-04-06 21:24:13'),
('MATTS', 233, 'addProject', '2006-04-12 16:53:11'),
('MATTS', 234, 'addProject', '2006-04-12 20:06:05'),
('PANTALONE', 235, 'addProject', '2006-04-14 16:26:29'),
('PANTALONE', 235, 'edit', '2006-04-14 16:46:46'),
('HUIZINGA', 175, 'edit', '2006-04-20 17:09:11'),
('HUIZINGA', 200, 'edit', '2006-04-20 17:13:18'),
('HUIZINGA', 208, 'edit', '2006-04-20 17:14:23'),
('HUIZINGA', 167, 'edit', '2006-04-20 17:15:43'),
('HUIZINGA', 219, 'edit', '2006-04-20 17:16:30'),
('HUIZINGA', 86, 'edit', '2006-04-20 17:18:15'),
('HUIZINGA', 185, 'edit', '2006-04-20 17:19:47'),
('HUIZINGA', 220, 'edit', '2006-04-20 17:20:35'),
('HUIZINGA', 223, 'edit', '2006-04-20 17:22:59'),
('TCOMEAU', 102, 'addComment', '2006-04-25 18:14:25'),
('payne', 185, 'edit', '2006-04-26 16:00:13'),
('payne', 185, 'edit', '2006-04-26 16:01:34'),
('HUIZINGA', 236, 'addProject', '2006-04-27 17:33:23'),
('PANTALONE', 237, 'addProject', '2006-05-01 21:59:08'),
('PANTALONE', 237, 'edit', '2006-05-01 22:32:56'),
('PANTALONE', 237, 'edit', '2006-05-01 22:37:16'),
('PANTALONE', 237, 'edit', '2006-05-01 22:41:59'),
('PANTALONE', 237, 'edit', '2006-05-01 22:44:17'),
('HUIZINGA', 238, 'addProject', '2006-05-02 13:14:32'),
('HUIZINGA', 238, 'edit', '2006-05-02 13:20:44'),
('HUIZINGA', 239, 'addProject', '2006-05-02 14:11:30'),
('HUIZINGA', 232, 'edit', '2006-05-03 16:18:44'),
('HUIZINGA', 229, 'edit', '2006-05-03 16:22:05'),
('HUIZINGA', 86, 'edit', '2006-05-03 16:22:50'),
('HUIZINGA', 223, 'edit', '2006-05-03 16:24:37'),
('payne', 102, 'addComment', '2006-11-08 16:24:07'),
('payne', 25, 'edit', '2006-11-24 20:28:58'),
('payne', 1, 'addComment', '2006-11-24 22:06:38'),
('payne', 1, 'addComment', '2006-11-24 22:07:19'),
('payne', 1, 'addComment', '2006-11-24 22:11:19'),
('payne', 1, 'addComment', '2006-11-24 22:11:36'),
('payne', 1, 'addComment', '2006-11-24 22:14:23'),
('payne', 1, 'addComment', '2006-11-24 22:14:32'),
('payne', 1, 'addComment', '2006-11-24 22:15:46'),
('payne', 25, 'edit', '2006-11-26 21:17:07'),
('payne', 25, 'edit', '2006-11-26 21:20:13'),
('payne', 25, 'edit', '2006-11-26 21:21:05'),
('payne', 25, 'edit', '2006-11-26 21:30:50'),
('payne', 25, 'edit', '2006-11-26 21:34:14'),
('payne', 25, 'edit', '2006-11-26 21:34:41'),
('payne', 25, 'edit', '2006-11-26 21:35:19'),
('payne', 25, 'edit', '2006-11-26 21:35:56'),
('payne', 25, 'edit', '2006-11-26 21:38:29'),
('payne', 25, 'edit', '2006-11-26 21:39:27'),
('payne', 25, 'edit', '2006-11-26 21:40:16'),
('payne', 25, 'edit', '2006-11-26 23:23:55'),
('payne', 25, 'edit', '2006-11-26 23:26:37'),
('payne', 25, 'edit', '2006-11-26 23:28:11'),
('payne', 25, 'edit', '2006-11-26 23:28:28'),
('payne', 25, 'edit', '2006-11-26 23:36:48'),
('payne', 25, 'edit', '2006-11-26 23:36:55'),
('payne', 25, 'edit', '2006-11-27 00:07:22'),
('payne', 288, 'editComment', '2009-08-14 03:28:55'),
('payne', 288, 'addComment', '2009-08-14 03:26:45'),
('payne', 25, 'edit', '2006-11-27 00:25:47'),
('payne', 25, 'addComment', '2006-11-27 00:49:36'),
('payne', 25, 'addComment', '2006-11-27 00:49:47'),
('payne', 25, 'addComment', '2006-11-27 00:49:47'),
('payne', 1, 'addComment', '2006-11-27 00:50:22'),
('payne', 25, 'addComment', '2006-11-27 00:51:58'),
('payne', 25, 'addComment', '2006-11-27 00:56:17'),
('payne', 25, 'addComment', '2006-11-27 00:58:08'),
('payne', 25, 'addComment', '2006-11-27 00:59:05'),
('payne', 25, 'addComment', '2006-11-27 00:59:37'),
('payne', 25, 'addComment', '2006-11-27 00:59:59'),
('payne', 288, 'edit', '2009-08-14 03:26:19'),
('payne', 288, 'edit', '2009-08-14 03:25:02'),
('payne', 289, 'edit', '2009-08-14 03:13:16'),
('payne', 289, 'addProject', '2009-08-14 03:09:13'),
('payne', 25, 'addComment', '2006-11-27 01:07:44'),
('payne', 25, 'addComment', '2006-11-27 01:08:06'),
('payne', 25, 'addComment', '2006-11-27 01:08:51'),
('payne', 25, 'addComment', '2006-11-27 01:09:08'),
('payne', 25, 'addComment', '2006-11-27 01:09:08'),
('payne', 25, 'addComment', '2006-11-27 01:09:21'),
('payne', 25, 'addComment', '2006-11-27 01:09:35'),
('payne', 25, 'addComment', '2006-11-27 01:09:39'),
('payne', 25, 'addComment', '2006-11-27 01:09:40'),
('payne', 25, 'addComment', '2006-11-27 01:12:57'),
('payne', 25, 'addComment', '2006-11-27 01:13:01'),
('payne', 25, 'addComment', '2006-11-27 01:13:04'),
('payne', 25, 'addComment', '2006-11-27 01:13:05'),
('payne', 25, 'addComment', '2006-11-27 01:13:29'),
('payne', 25, 'addComment', '2006-11-27 01:13:45'),
('payne', 25, 'addComment', '2006-11-27 01:13:54'),
('payne', 25, 'addComment', '2006-11-27 01:13:55'),
('payne', 25, 'addComment', '2006-11-27 01:20:12'),
('payne', 25, 'addComment', '2006-11-27 01:25:50'),
('payne', 25, 'addComment', '2006-11-27 01:25:55'),
('payne', 25, 'addComment', '2006-11-27 01:26:06'),
('payne', 25, 'addComment', '2006-11-27 01:26:57'),
('payne', 25, 'addComment', '2006-11-27 01:27:03'),
('payne', 25, 'addComment', '2006-11-27 01:28:26'),
('payne', 25, 'addComment', '2006-11-27 01:28:37'),
('payne', 25, 'addComment', '2006-11-27 01:29:38'),
('payne', 25, 'addComment', '2006-11-27 01:29:53'),
('payne', 25, 'addComment', '2006-11-27 01:30:03'),
('payne', 25, 'addComment', '2006-11-27 01:31:36'),
('payne', 25, 'addComment', '2006-11-27 01:38:32'),
('payne', 25, 'addComment', '2006-11-27 01:39:36'),
('payne', 25, 'addComment', '2006-11-27 01:39:43'),
('payne', 25, 'addComment', '2006-11-27 01:42:09'),
('payne', 25, 'addComment', '2006-11-27 01:43:48'),
('payne', 25, 'addComment', '2006-11-27 01:43:52'),
('payne', 25, 'addComment', '2006-11-27 01:44:18'),
('payne', 25, 'addComment', '2006-11-27 01:44:25'),
('payne', 25, 'addComment', '2006-11-27 01:48:20'),
('payne', 25, 'addComment', '2006-11-27 01:48:35'),
('payne', 25, 'addComment', '2006-11-27 01:48:45'),
('payne', 25, 'addComment', '2006-11-27 01:48:53'),
('payne', 25, 'addComment', '2006-11-27 01:50:07'),
('payne', 25, 'addComment', '2006-11-27 01:50:16'),
('payne', 25, 'addComment', '2006-11-27 01:50:23'),
('payne', 25, 'addComment', '2006-11-27 01:50:30'),
('payne', 25, 'addComment', '2006-11-27 01:50:31'),
('payne', 25, 'addComment', '2006-11-27 01:50:38'),
('payne', 25, 'addComment', '2006-11-27 01:50:41'),
('payne', 25, 'addComment', '2006-11-27 01:50:41'),
('payne', 25, 'addComment', '2006-11-27 01:50:56'),
('payne', 25, 'addComment', '2006-11-27 01:51:01'),
('payne', 25, 'addComment', '2006-11-27 01:53:50'),
('payne', 25, 'addComment', '2006-11-27 01:55:09'),
('payne', 1, 'addComment', '2006-11-27 01:55:19'),
('payne', 25, 'addComment', '2006-11-27 01:56:13'),
('payne', 25, 'addComment', '2006-11-27 01:56:20'),
('payne', 25, 'addComment', '2006-11-27 01:56:20'),
('payne', 25, 'addComment', '2006-11-27 02:00:32'),
('payne', 25, 'addComment', '2006-11-27 02:10:21'),
('payne', 25, 'addComment', '2006-11-27 02:16:39'),
('payne', 25, 'addComment', '2006-11-27 02:17:08'),
('payne', 25, 'addComment', '2006-11-27 02:18:44'),
('payne', 25, 'addComment', '2006-11-27 02:18:58'),
('payne', 25, 'addComment', '2006-11-27 22:37:20'),
('payne', 1, 'addComment', '2006-11-27 22:38:10'),
('payne', 1, 'addComment', '2006-11-27 22:38:35'),
('payne', 25, 'addComment', '2006-11-28 00:45:10'),
('payne', 25, 'addComment', '2006-11-28 00:45:41'),
('payne', 25, 'addComment', '2006-11-28 00:47:05'),
('payne', 1, 'addComment', '2006-11-28 00:47:13'),
('payne', 1, 'addComment', '2006-11-28 00:47:33'),
('payne', 1, 'addComment', '2006-11-28 00:47:47'),
('payne', 25, 'addComment', '2006-11-28 00:49:48'),
('payne', 25, 'addComment', '2006-11-28 00:52:12'),
('payne', 25, 'addComment', '2006-11-28 00:58:11'),
('payne', 25, 'addComment', '2006-11-28 00:58:24'),
('payne', 25, 'addComment', '2006-11-28 01:00:36'),
('payne', 25, 'addComment', '2006-11-28 01:02:56'),
('payne', 25, 'addComment', '2006-11-28 01:03:06'),
('payne', 1, 'addComment', '2006-11-28 01:05:19'),
('payne', 1, 'addComment', '2006-11-28 01:05:33'),
('payne', 1, 'addComment', '2006-11-28 01:07:37'),
('payne', 1, 'addComment', '2006-11-28 01:07:58'),
('payne', 1, 'addComment', '2006-11-28 01:08:06'),
('payne', 1, 'addComment', '2006-11-28 01:08:09'),
('payne', 1, 'addComment', '2006-11-28 01:08:18'),
('payne', 1, 'addComment', '2006-11-28 01:10:09'),
('payne', 1, 'addComment', '2006-11-28 01:10:33'),
('payne', 1, 'addComment', '2006-11-28 01:10:45'),
('payne', 1, 'addComment', '2006-11-28 01:10:47'),
('payne', 1, 'addComment', '2006-11-28 01:10:56'),
('payne', 1, 'addComment', '2006-11-28 01:11:00'),
('payne', 1, 'addComment', '2006-11-28 01:11:10'),
('payne', 1, 'addComment', '2006-11-28 01:20:07'),
('payne', 1, 'addComment', '2006-11-28 01:20:19'),
('payne', 1, 'addComment', '2006-11-28 01:20:19'),
('payne', 1, 'addComment', '2006-11-28 01:22:18'),
('payne', 1, 'addComment', '2006-11-28 01:24:00'),
('payne', 25, 'addComment', '2006-11-28 01:24:10'),
('payne', 25, 'addComment', '2006-11-28 01:24:19'),
('payne', 1, 'addComment', '2006-11-28 01:24:37'),
('payne', 1, 'addComment', '2006-11-28 01:24:37'),
('payne', 25, 'addComment', '2006-11-28 01:29:36'),
('payne', 25, 'addComment', '2006-11-28 01:29:44'),
('payne', 25, 'addComment', '2006-11-28 01:29:58'),
('payne', 25, 'addComment', '2006-11-28 01:29:58'),
('payne', 25, 'addComment', '2006-11-28 01:30:46'),
('payne', 25, 'addComment', '2006-11-28 01:33:01'),
('payne', 25, 'addComment', '2006-11-28 01:33:02'),
('payne', 25, 'addComment', '2006-11-28 01:35:23'),
('payne', 25, 'addComment', '2006-11-28 01:35:43'),
('payne', 25, 'addComment', '2006-11-28 01:38:31'),
('payne', 25, 'addComment', '2006-11-28 01:38:58'),
('payne', 25, 'addComment', '2006-11-28 01:38:59'),
('payne', 25, 'addComment', '2006-11-28 01:40:09'),
('payne', 25, 'addComment', '2006-11-28 01:40:39'),
('payne', 25, 'addComment', '2006-11-28 01:40:47'),
('payne', 25, 'addComment', '2006-11-28 01:40:58'),
('payne', 25, 'addComment', '2006-11-28 01:41:30'),
('payne', 25, 'addComment', '2006-11-28 01:41:31'),
('payne', 25, 'addComment', '2006-11-28 01:45:22'),
('payne', 25, 'addComment', '2006-11-28 01:45:29'),
('payne', 25, 'addComment', '2006-11-28 01:45:58'),
('payne', 25, 'addComment', '2006-11-28 01:45:58'),
('payne', 25, 'addComment', '2006-11-28 01:51:02'),
('payne', 25, 'addComment', '2006-11-28 01:51:08'),
('payne', 25, 'addComment', '2006-11-28 01:51:21'),
('payne', 25, 'addComment', '2006-11-28 01:51:21'),
('payne', 25, 'addComment', '2006-11-28 01:54:57'),
('payne', 25, 'addComment', '2006-11-28 01:54:59'),
('payne', 25, 'addComment', '2006-11-28 01:55:14'),
('payne', 25, 'addComment', '2006-11-28 01:55:21'),
('payne', 25, 'addComment', '2006-11-28 01:55:30'),
('payne', 25, 'addComment', '2006-11-28 01:55:30'),
('payne', 25, 'addComment', '2006-11-28 01:56:30'),
('payne', 25, 'addComment', '2006-11-28 01:56:54'),
('payne', 25, 'addComment', '2006-11-28 01:57:18'),
('payne', 25, 'addComment', '2006-11-28 01:59:48'),
('payne', 25, 'addComment', '2006-11-28 01:59:56'),
('payne', 25, 'addComment', '2006-11-28 02:00:22'),
('payne', 25, 'addComment', '2006-11-28 02:02:18'),
('payne', 25, 'addComment', '2006-11-28 02:02:29'),
('payne', 25, 'addComment', '2006-11-28 02:44:55'),
('payne', 25, 'addComment', '2006-11-28 02:46:31'),
('payne', 25, 'deleteComment', '2006-11-28 02:46:41'),
('payne', 25, 'addComment', '2006-11-28 02:47:01'),
('payne', 25, 'editComment', '2006-11-28 02:47:30'),
('payne', 25, 'editComment', '2006-11-28 02:48:03'),
('payne', 25, 'uploadFile', '2006-11-28 02:59:59'),
('payne', 25, 'uploadFile', '2006-11-28 03:03:10'),
('payne', 25, 'deleteUpload', '2006-11-28 03:36:50'),
('payne', 25, 'uploadFile', '2006-11-28 03:58:43'),
('payne', 25, 'deleteUpload', '2006-11-28 03:59:20'),
('payne', 25, 'uploadFile', '2006-11-28 03:59:30'),
('payne', 25, 'updateUpload', '2006-11-28 04:19:59'),
('payne', 25, 'updateUpload', '2006-11-28 04:22:04'),
('payne', 25, 'updateUpload', '2006-11-28 04:26:02'),
('payne', 25, 'updateUpload', '2006-11-28 04:26:02'),
('payne', 25, 'updateUpload', '2006-11-28 04:29:48'),
('payne', 25, 'updateUpload', '2006-11-28 04:29:48'),
('payne', 25, 'updateUpload', '2006-11-28 04:30:58'),
('payne', 25, 'updateUpload', '2006-11-28 04:30:58'),
('payne', 25, 'updateUpload', '2006-11-28 04:32:05'),
('payne', 25, 'updateUpload', '2006-11-28 04:32:05'),
('payne', 25, 'updateUpload', '2006-11-28 04:32:55'),
('payne', 25, 'updateUpload', '2006-11-28 04:32:55'),
('payne', 25, 'updateUpload', '2006-11-28 04:35:17'),
('payne', 25, 'updateUpload', '2006-11-28 04:35:17'),
('payne', 25, 'updateUpload', '2006-11-28 04:36:42'),
('payne', 25, 'updateUpload', '2006-11-28 04:36:42'),
('payne', 25, 'updateUpload', '2006-11-28 04:39:25'),
('payne', 25, 'updateUpload', '2006-11-28 04:41:57'),
('payne', 25, 'updateUpload', '2006-11-28 04:43:31'),
('payne', 25, 'updateUpload', '2006-11-28 04:47:35'),
('payne', 25, 'uploadFile', '2006-11-28 04:49:52'),
('payne', 25, 'deleteUpload', '2006-11-28 04:50:03'),
('payne', 25, 'uploadFile', '2006-11-28 04:58:56'),
('payne', 25, 'addComment', '2006-11-28 17:49:06'),
('payne', 25, 'addComment', '2006-11-28 17:49:17'),
('payne', 25, 'addComment', '2006-11-28 17:58:42'),
('payne', 25, 'addComment', '2006-11-28 17:58:58'),
('payne', 25, 'uploadFile', '2006-11-28 18:06:38'),
('payne', 25, 'uploadFile', '2006-11-28 18:07:31'),
('payne', 25, 'uploadFile', '2006-11-28 18:07:53');
INSERT INTO "edit_log" ("user", "projectID", "action", "timestamp") VALUES
('payne', 25, 'deleteUpload', '2006-11-28 18:11:17'),
('payne', 25, 'deleteUpload', '2006-11-28 18:11:22'),
('payne', 25, 'deleteUpload', '2006-11-28 18:11:26'),
('payne', 25, 'updateUpload', '2006-11-28 18:54:57'),
('payne', 25, 'updateUpload', '2006-11-28 19:04:24'),
('payne', 25, 'updateUpload', '2006-11-28 19:04:25'),
('payne', 25, 'uploadFile', '2006-11-28 19:56:55'),
('payne', 25, 'deleteComment', '2006-11-28 19:59:59'),
('payne', 25, 'deleteComment', '2006-11-28 20:00:03'),
('payne', 25, 'deleteComment', '2006-11-28 20:00:11'),
('payne', 25, 'addComment', '2006-11-28 20:00:31'),
('payne', 25, 'deleteComment', '2006-11-28 20:21:45'),
('payne', 25, 'deleteUpload', '2006-11-29 01:17:24'),
('payne', 1, 'uploadFile', '2006-11-29 01:27:14'),
('payne', 25, 'uploadFile', '2006-11-29 01:47:46'),
('payne', 25, 'uploadFile', '2006-11-29 01:50:50'),
('payne', 25, 'uploadFile', '2006-11-29 02:16:20'),
('payne', 25, 'deleteUpload', '2006-11-29 02:17:03'),
('payne', 25, 'deleteUpload', '2006-11-29 02:17:18'),
('payne', 25, 'uploadFile', '2006-11-29 02:17:56'),
('payne', 25, 'uploadFile', '2006-11-29 02:18:06'),
('payne', 25, 'uploadFile', '2006-11-29 02:30:10'),
('payne', 25, 'deleteUpload', '2006-11-29 02:30:29'),
('payne', 25, 'deleteUpload', '2006-11-29 02:33:20'),
('payne', 25, 'uploadFile', '2006-11-29 02:33:37'),
('payne', 25, 'uploadFile', '2006-11-29 02:33:44'),
('payne', 25, 'deleteUpload', '2006-11-29 02:33:53'),
('payne', 25, 'deleteUpload', '2006-11-29 02:36:47'),
('payne', 25, 'deleteUpload', '2006-11-29 02:36:53'),
('payne', 25, 'deleteUpload', '2006-11-29 02:37:00'),
('payne', 25, 'uploadFile', '2006-11-29 02:37:22'),
('payne', 25, 'uploadFile', '2006-11-29 02:37:29'),
('payne', 25, 'uploadFile', '2006-11-29 02:37:36'),
('payne', 25, 'deleteUpload', '2006-11-29 02:37:44'),
('payne', 25, 'deleteUpload', '2006-11-29 02:37:54'),
('payne', 25, 'uploadFile', '2006-11-29 02:43:44'),
('payne', 25, 'uploadFile', '2006-11-29 02:43:51'),
('payne', 25, 'uploadFile', '2006-11-29 02:43:58'),
('payne', 25, 'deleteUpload', '2006-11-29 02:44:09'),
('payne', 25, 'uploadFile', '2006-11-29 02:53:08'),
('payne', 25, 'uploadFile', '2006-11-29 03:06:43'),
('payne', 25, 'deleteUpload', '2006-11-29 03:07:01'),
('payne', 25, 'uploadFile', '2006-11-29 03:09:41'),
('payne', 25, 'deleteUpload', '2006-11-29 03:09:55'),
('payne', 25, 'uploadFile', '2006-11-29 03:10:07'),
('payne', 25, 'uploadFile', '2006-11-29 03:12:58'),
('payne', 25, 'uploadFile', '2006-11-29 03:31:44'),
('payne', 25, 'deleteUpload', '2006-11-29 03:31:56'),
('payne', 25, 'deleteUpload', '2006-11-29 03:32:03'),
('payne', 25, 'uploadFile', '2006-11-29 03:33:30'),
('payne', 25, 'uploadFile', '2006-11-29 03:38:06'),
('payne', 25, 'uploadFile', '2006-11-29 03:41:00'),
('payne', 25, 'deleteUpload', '2006-11-29 03:42:10'),
('payne', 25, 'deleteUpload', '2006-11-29 03:42:19'),
('payne', 25, 'deleteUpload', '2006-11-29 03:42:25'),
('payne', 25, 'uploadFile', '2006-11-29 03:48:24'),
('payne', 25, 'uploadFile', '2006-11-29 03:49:21'),
('payne', 25, 'uploadFile', '2006-11-29 03:53:25'),
('payne', 25, 'deleteUpload', '2006-11-29 03:53:34'),
('payne', 25, 'deleteUpload', '2006-11-29 03:53:40'),
('payne', 25, 'deleteUpload', '2006-11-29 03:53:47'),
('payne', 25, 'uploadFile', '2006-11-29 04:01:55'),
('payne', 25, 'deleteUpload', '2006-11-29 04:02:42'),
('payne', 25, 'deleteUpload', '2006-11-29 04:02:49'),
('payne', 25, 'edit', '2006-12-03 20:38:21'),
('payne', 25, 'edit', '2006-12-03 20:38:45'),
('payne', 25, 'addComment', '2006-12-04 00:42:13'),
('payne', 25, 'deleteComment', '2006-12-04 00:42:21'),
('payne', 25, 'updateComment', '2006-12-04 21:30:49'),
('payne', 25, 'deleteComment', '2006-12-04 21:46:41'),
('payne', 25, 'deleteComment', '2006-12-04 21:46:41'),
('payne', 25, 'deleteComment', '2006-12-04 21:46:41'),
('payne', 102, 'deleteComment', '2006-12-04 21:46:41'),
('payne', 101, 'deleteComment', '2006-12-04 21:46:41'),
('payne', 64, 'deleteComment', '2006-12-04 21:46:41'),
('payne', 48, 'deleteComment', '2006-12-04 21:46:41'),
('payne', 1, 'editComment', '2006-12-08 22:42:14'),
('payne', 1, 'deleteComment', '2006-12-08 22:42:45'),
('payne', 1, 'deleteComment', '2006-12-08 22:43:05'),
('payne', 1, 'deleteComment', '2006-12-08 22:43:15'),
('payne', 1, 'deleteComment', '2006-12-08 22:47:31'),
('payne', 1, 'deleteComment', '2006-12-08 22:47:35'),
('payne', 1, 'deleteComment', '2006-12-08 22:47:39'),
('payne', 1, 'deleteComment', '2006-12-08 22:54:20'),
('payne', 1, 'deleteComment', '2006-12-08 22:54:29'),
('payne', 1, 'deleteComment', '2006-12-08 22:54:41'),
('payne', 1, 'deleteComment', '2006-12-08 22:54:58'),
('payne', 1, 'deleteComment', '2006-12-08 22:55:04'),
('payne', 1, 'editComment', '2006-12-08 22:55:23'),
('payne', 1, 'deleteComment', '2007-03-15 22:10:34'),
('payne', 1, 'editComment', '2007-06-05 22:53:49'),
('payne', 1, 'editComment', '2007-06-05 22:54:26'),
('payne', 1, 'uploadFile', '2007-06-05 22:55:22'),
('payne', 1, 'deleteUpload', '2007-06-05 22:55:49'),
('payne', 1, 'uploadFile', '2008-04-27 02:17:59'),
('payne', 1, 'uploadFile', '2008-04-27 17:31:21'),
('payne', 1, 'uploadFile', '2008-04-27 17:42:31'),
('payne', 1, 'uploadFile', '2008-04-27 18:18:55'),
('payne', 1, 'uploadFile', '2008-04-27 18:47:10'),
('payne', 1, 'deleteUpload', '2008-04-27 18:51:25'),
('payne', 1, 'deleteUpload', '2008-04-27 18:53:52'),
('payne', 1, 'uploadFile', '2008-04-27 20:11:01'),
('payne', 1, 'uploadFile', '2008-04-27 21:43:34'),
('payne', 1, 'uploadFile', '2008-04-27 21:50:50'),
('payne', 1, 'deleteUpload', '2008-04-27 21:54:03'),
('payne', 1, 'deleteUpload', '2008-04-27 21:54:10'),
('payne', 1, 'deleteUpload', '2008-04-27 21:54:18'),
('payne', 1, 'uploadFile', '2008-04-27 21:54:29'),
('payne', 1, 'uploadFile', '2008-04-27 21:56:01'),
('payne', 1, 'deleteUpload', '2008-04-27 21:57:05'),
('payne', 1, 'uploadFile', '2008-04-27 21:57:38'),
('payne', 1, 'uploadFile', '2008-04-27 23:29:14'),
('payne', 1, 'deleteUpload', '2008-04-27 23:31:57'),
('payne', 1, 'deleteUpload', '2008-04-27 23:32:38'),
('payne', 1, 'uploadFile', '2008-04-27 23:49:15'),
('payne', 1, 'deleteUpload', '2008-04-27 23:49:33'),
('payne', 1, 'uploadFile', '2008-04-27 23:54:53'),
('payne', 1, 'deleteUpload', '2008-04-27 23:55:07'),
('payne', 1, 'deleteUpload', '2008-04-28 00:56:05'),
('payne', 1, 'uploadFile', '2008-04-28 00:56:26'),
('payne', 1, 'uploadFile', '2008-04-28 00:57:16'),
('payne', 1, 'uploadFile', '2008-04-28 01:23:14'),
('payne', 1, 'deleteUpload', '2008-04-28 01:24:02'),
('payne', 1, 'uploadFile', '2008-04-28 01:31:51'),
('payne', 1, 'deleteUpload', '2008-04-28 01:32:11'),
('payne', 1, 'uploadFile', '2008-04-28 01:41:03'),
('payne', 1, 'deleteUpload', '2008-04-28 01:41:29'),
('payne', 1, 'uploadFile', '2008-04-28 04:41:42'),
('payne', 1, 'uploadFile', '2008-04-28 04:50:07'),
('payne', 1, 'deleteUpload', '2008-04-28 04:50:53'),
('payne', 1, 'deleteUpload', '2008-04-28 04:50:59'),
('payne', 1, 'deleteUpload', '2008-04-28 04:51:05'),
('payne', 1, 'uploadFile', '2008-04-28 04:52:32'),
('payne', 1, 'uploadFile', '2008-04-28 04:55:55'),
('payne', 1, 'uploadFile', '2008-04-29 02:47:24'),
('payne', 1, 'deleteUpload', '2008-04-29 02:47:40'),
('payne', 1, 'uploadFile', '2008-04-29 02:49:16'),
('payne', 1, 'uploadFile', '2008-04-29 02:53:10'),
('payne', 1, 'uploadFile', '2008-04-29 02:59:46'),
('payne', 1, 'deleteUpload', '2008-04-29 03:02:56'),
('payne', 1, 'deleteUpload', '2008-04-29 03:03:56'),
('payne', 1, 'deleteUpload', '2008-04-29 03:04:11'),
('payne', 1, 'deleteUpload', '2008-04-29 03:04:28'),
('payne', 1, 'deleteUpload', '2008-04-29 03:04:41'),
('payne', 1, 'uploadFile', '2008-04-29 03:05:01'),
('payne', 1, 'uploadFile', '2008-04-29 03:07:21'),
('payne', 1, 'uploadFile', '2008-04-29 03:08:19'),
('payne', 1, 'uploadFile', '2008-04-29 03:09:43'),
('payne', 1, 'deleteUpload', '2008-04-29 03:16:58'),
('payne', 1, 'deleteUpload', '2008-04-29 03:17:07'),
('payne', 1, 'deleteUpload', '2008-04-29 03:17:17'),
('payne', 1, 'deleteUpload', '2008-04-29 03:17:38'),
('payne', 1, 'deleteUpload', '2008-04-29 03:18:13'),
('payne', 1, 'deleteUpload', '2008-04-29 03:18:34'),
('payne', 1, 'uploadFile', '2008-04-30 22:11:11'),
('payne', 1, 'uploadFile', '2008-05-01 00:54:57'),
('payne', 1, 'uploadFile', '2008-05-01 01:33:30'),
('payne', 1, 'uploadFile', '2008-05-01 01:34:33'),
('payne', 1, 'uploadFile', '2008-05-01 01:37:48'),
('payne', 1, 'uploadFile', '2008-05-01 01:38:16'),
('payne', 1, 'uploadFile', '2008-05-01 01:46:40'),
('payne', 1, 'uploadFile', '2008-05-01 01:47:52'),
('payne', 1, 'uploadFile', '2008-05-01 01:55:12'),
('payne', 1, 'uploadFile', '2008-05-01 01:55:38'),
('payne', 1, 'uploadFile', '2008-05-01 01:57:12'),
('payne', 1, 'uploadFile', '2008-05-01 01:58:24'),
('payne', 1, 'uploadFile', '2008-05-01 02:02:09'),
('payne', 1, 'deleteUpload', '2008-05-01 02:03:14'),
('payne', 1, 'deleteUpload', '2008-05-01 02:03:29'),
('payne', 1, 'deleteUpload', '2008-05-01 02:03:40'),
('payne', 1, 'deleteUpload', '2008-05-01 02:03:51'),
('payne', 1, 'deleteUpload', '2008-05-01 02:04:10'),
('payne', 1, 'uploadFile', '2008-05-01 02:04:41'),
('payne', 1, 'uploadFile', '2008-05-01 02:11:43'),
('payne', 1, 'uploadFile', '2008-05-01 02:12:08'),
('payne', 1, 'deleteUpload', '2008-05-01 02:20:42'),
('payne', 1, 'deleteUpload', '2008-05-01 02:21:29'),
('payne', 1, 'deleteUpload', '2008-05-01 02:21:40'),
('payne', 1, 'deleteUpload', '2008-05-01 02:22:13'),
('payne', 1, 'uploadFile', '2008-05-01 02:23:28'),
('payne', 1, 'uploadFile', '2008-05-02 13:41:06'),
('payne', 1, 'uploadFile', '2008-05-02 13:46:42'),
('payne', 1, 'uploadFile', '2008-05-02 13:48:50'),
('payne', 1, 'uploadFile', '2008-05-02 21:18:02'),
('payne', 1, 'uploadFile', '2008-05-02 21:20:21'),
('payne', 1, 'uploadFile', '2008-05-02 21:25:11'),
('payne', 1, 'uploadFile', '2008-05-02 21:30:45'),
('payne', 1, 'uploadFile', '2008-05-02 21:52:49'),
('payne', 1, 'uploadFile', '2008-05-02 22:03:21'),
('payne', 1, 'uploadFile', '2008-05-02 22:11:06'),
('payne', 1, 'deleteUpload', '2008-05-02 22:12:26'),
('payne', 1, 'deleteUpload', '2008-05-02 22:12:37'),
('payne', 1, 'deleteUpload', '2008-05-02 22:12:47'),
('payne', 1, 'deleteUpload', '2008-05-02 22:12:56'),
('payne', 1, 'deleteUpload', '2008-05-02 22:13:04'),
('payne', 1, 'deleteUpload', '2008-05-02 22:13:16'),
('payne', 1, 'uploadFile', '2008-05-02 22:14:14'),
('payne', 1, 'uploadFile', '2008-05-02 22:28:11'),
('payne', 1, 'uploadFile', '2008-05-02 22:35:43'),
('payne', 1, 'uploadFile', '2008-05-02 22:36:36'),
('payne', 1, 'uploadFile', '2008-05-02 22:38:46'),
('payne', 1, 'uploadFile', '2008-05-02 23:32:34'),
('payne', 1, 'uploadFile', '2008-05-02 23:40:24'),
('payne', 1, 'uploadFile', '2008-05-02 23:41:51'),
('payne', 1, 'uploadFile', '2008-05-02 23:43:26'),
('payne', 1, 'deleteUpload', '2008-05-03 01:03:09'),
('payne', 1, 'deleteUpload', '2008-05-03 01:15:23'),
('payne', 1, 'deleteUpload', '2008-05-03 02:11:50'),
('payne', 1, 'deleteUpload', '2008-05-03 02:27:26'),
('payne', 1, 'deleteUpload', '2008-05-03 02:29:53'),
('payne', 1, 'uploadFile', '2008-05-03 02:30:22'),
('payne', 1, 'deleteUpload', '2008-05-03 02:37:36'),
('payne', 1, 'uploadFile', '2008-05-03 02:38:54'),
('payne', 1, 'uploadFile', '2008-05-03 02:39:07'),
('payne', 1, 'uploadFile', '2008-05-03 02:39:33'),
('payne', 1, 'deleteUpload', '2008-05-03 02:40:20'),
('payne', 1, 'uploadFile', '2008-05-03 02:44:23'),
('payne', 1, 'uploadFile', '2008-05-03 02:49:03'),
('payne', 1, 'uploadFile', '2008-05-03 02:51:33'),
('payne', 1, 'deleteUpload', '2008-05-03 02:57:26'),
('payne', 1, 'uploadFile', '2008-05-03 02:57:45'),
('payne', 1, 'uploadFile', '2008-05-03 03:03:39'),
('payne', 1, 'uploadFile', '2008-05-03 03:09:16'),
('payne', 1, 'deleteUpload', '2008-05-03 03:09:32'),
('payne', 0, 'deleteUpload', '2008-05-03 03:16:55'),
('payne', 1, 'uploadFile', '2008-05-05 02:09:14'),
('payne', 1, 'uploadFile', '2008-05-05 02:09:39'),
('payne', 1, 'uploadFile', '2008-05-05 02:14:00'),
('payne', 1, 'deleteUpload', '2008-05-05 02:14:35'),
('payne', 1, 'uploadFile', '2008-05-05 02:22:28'),
('payne', 1, 'uploadFile', '2008-05-05 02:25:11'),
('payne', 0, 'deleteUpload', '2008-05-05 12:12:10'),
('payne', 1, 'uploadFile', '2008-11-24 14:02:15'),
('payne', 147, 'edit', '2009-07-11 04:59:24'),
('payne', 1, 'editComment', '2009-08-04 16:40:38'),
('payne', 25, 'editComment', '2009-08-08 01:54:18'),
('payne', 25, 'deleteComment', '2009-08-08 01:55:02'),
('payne', 25, 'editComment', '2009-08-09 17:19:03'),
('payne', 25, 'editComment', '2009-08-09 20:32:43'),
('payne', 25, 'editComment', '2009-08-09 20:36:12'),
('payne', 25, 'editComment', '2009-08-09 20:41:47'),
('payne', 25, 'editComment', '2009-08-09 20:46:56'),
('payne', 25, 'addComment', '2009-08-09 20:47:24'),
('payne', 25, 'editComment', '2009-08-09 20:57:09'),
('payne', 25, 'editComment', '2009-08-09 21:02:57'),
('payne', 25, 'editComment', '2009-08-09 21:10:51'),
('payne', 25, 'editComment', '2009-08-09 21:13:57'),
('payne', 25, 'editComment', '2009-08-09 21:26:16'),
('payne', 25, 'editComment', '2009-08-09 21:27:16'),
('payne', 25, 'editComment', '2009-08-11 01:34:16'),
('payne', 25, 'editComment', '2009-08-11 01:55:03'),
('payne', 25, 'editComment', '2009-08-11 17:03:09'),
('payne', 25, 'editComment', '2009-08-11 17:16:54');

--
-- Truncate table before insert "finallist"
--

--
-- Dumping data for table "finallist"
--

INSERT INTO "finallist" ("finalID", "finalDesc", "finalText") VALUES
(0, 'still alive', ''),
(1, 'completed', 'This project reached a successful conclusion.'),
(3, 'terminated', 'At any stage to up to completion, an idea or project can be terminated.  All work is stopped or to be stopped, and the project will not be reconsidered in this form.'),
(4, 'absorbed', 'This project has been absorbed into an existing project, or has been merged with one or more other projects into a new project.  The children attribute identifies this new project.'),
(5, 'split', 'This project has been split in to smaller pieces or multiple phases.  The children attribute identifies these new projects.');

--
-- Truncate table before insert "fiscalyears"
--

--
-- Dumping data for table "fiscalyears"
--

INSERT INTO "fiscalyears" ("fiscalyearID", "fiscalyearDesc") VALUES
(0, ''),
(2004, 'FY2004'),
(2005, 'FY2005'),
(2006, 'FY2006'),
(2007, 'FY2007'),
(2008, 'FY2008'),
(2009, 'FY2009'),
(2010, 'FY2010'),
(2011, 'FY2011'),
(2012, 'FY2012'),
(2013, 'FY2013'),
(2014, 'FY2014'),
(2015, 'FY2015'),
(2016, 'FY2016'),
(2017, 'FY2017');

--
-- Truncate table before insert "flavorlist"
--

--
-- Dumping data for table "flavorlist"
--

INSERT INTO "flavorlist" ("flavorID", "flavorDesc", "flavorText") VALUES
(0, '', ''),
(1, 'run the Institute', 'These are "keep the lights on" projects that we have to do to stay in business and meet our obligations, i.e., keep doing the work we are contracted to do.'),
(2, 'grow the Institute', 'These are the projects that allow us to anticipate and provide the extra capacity required to keep up with increasing demands on the kinds of work we are already doing.'),
(3, 'transform the Institute', 'These are the projects that qualitatively change the work that we do, or the way we do it, as an Institute.');

--
-- Truncate table before insert "fundingsourcelist"
--

--
-- Dumping data for table "fundingsourcelist"
--

INSERT INTO "fundingsourcelist" ("fundingsourceID", "fundingsourceDesc", "fundingsourceText") VALUES
(0, '', ''),
(1, 'HST direct', 'A direct charge to the HST mission contract.'),
(2, 'JWST direct', 'A direct charge to the JWST mission contract.'),
(6, 'Kepler direct', 'A direct charge to the Kepler mission contract.'),
(254, 'indirect', 'A charge to indirect funds.'),
(255, 'other', 'Charge to grant(s), or contract other than HST or JWST.');

--
-- Truncate table before insert "history"
--

--
-- Dumping data for table "history"
--

ALTER TABLE "history" DISABLE TRIGGER ALL;
INSERT INTO "history" ("historyID", "projectID", "attributeName", "oldValue", "newValue", "lastModified", "lastModifiedBy") VALUES
(22, 76, 'phase', 0, 5, '2004-06-16 15:01:31', 'DURKIN'),
(23, 76, 'final', 0, 1, '2004-06-19 20:29:24', 'DURKIN'),
(24, 8, 'phase', 0, 2, '2004-06-16 15:03:45', 'DURKIN'),
(25, 15, 'phase', 0, 2, '2004-06-16 15:05:27', 'DURKIN'),
(26, 21, 'phase', 0, 2, '2004-06-16 15:05:59', 'DURKIN'),
(27, 38, 'phase', 0, 2, '2004-06-16 15:06:35', 'DURKIN'),
(28, 56, 'phase', 0, 2, '2004-06-16 15:07:19', 'DURKIN'),
(29, 78, 'phase', 0, 2, '2004-06-16 15:07:55', 'DURKIN'),
(30, 79, 'phase', 0, 2, '2004-06-16 15:08:14', 'DURKIN'),
(31, 89, 'phase', 0, 2, '2004-06-16 15:08:58', 'DURKIN'),
(38, 10, 'stage', 6, 5, '2004-06-17 13:50:58', 'HUIZINGA'),
(39, 21, 'phase', 2, 4, '2004-06-17 13:55:46', 'HUIZINGA'),
(40, 37, 'phase', 3, 4, '2004-06-17 13:57:29', 'HUIZINGA'),
(41, 83, 'final', 0, 1, '2004-06-19 20:29:24', 'HUIZINGA'),
(44, 79, 'phase', 2, 4, '2004-06-17 14:06:59', 'HUIZINGA'),
(51, 60, 'phase', 0, 4, '2004-06-17 14:22:31', 'HUIZINGA'),
(53, 24, 'phase', 4, 5, '2004-06-17 14:25:52', 'HUIZINGA'),
(54, 24, 'phase', 5, 4, '2004-06-17 14:26:20', 'HUIZINGA'),
(55, 96, 'phase', 5, 4, '2004-06-17 14:30:57', 'HUIZINGA'),
(57, 98, 'phase', 0, 2, '2004-06-17 14:31:59', 'HUIZINGA'),
(59, 48, 'stage', 6, 3, '2004-06-17 19:50:06', 'DURKIN'),
(61, 5, 'final', 0, 1, '2004-06-19 13:53:22', 'payne'),
(62, 12, 'final', 0, 1, '2004-06-19 13:54:26', 'payne'),
(63, 18, 'final', 0, 1, '2004-06-19 13:55:04', 'payne'),
(64, 20, 'final', 0, 1, '2004-06-19 13:55:42', 'payne'),
(65, 31, 'final', 0, 1, '2004-06-19 13:56:21', 'payne'),
(66, 35, 'final', 0, 1, '2004-06-19 13:56:48', 'payne'),
(67, 45, 'final', 0, 1, '2004-06-19 13:57:18', 'payne'),
(68, 61, 'final', 0, 1, '2004-06-19 13:57:50', 'payne'),
(69, 76, 'final', 0, 1, '2004-06-19 13:59:05', 'payne'),
(70, 80, 'final', 0, 1, '2004-06-19 13:59:50', 'payne'),
(71, 83, 'final', 0, 1, '2004-06-19 14:00:44', 'payne'),
(72, 82, 'final', 0, 3, '2004-06-19 14:03:16', 'payne'),
(73, 1, 'final', 0, 4, '2004-06-19 14:05:45', 'payne'),
(74, 9, 'final', 0, 4, '2004-06-19 14:06:24', 'payne'),
(75, 22, 'final', 0, 4, '2004-06-19 14:07:04', 'payne'),
(76, 28, 'final', 0, 4, '2004-06-19 14:08:06', 'payne'),
(77, 40, 'final', 0, 4, '2004-06-19 14:08:52', 'payne'),
(78, 54, 'final', 0, 4, '2004-06-19 14:10:18', 'payne'),
(79, 66, 'final', 0, 4, '2004-06-19 14:11:02', 'payne'),
(80, 81, 'final', 0, 5, '2004-06-19 14:12:58', 'payne'),
(81, 14, 'stage', 0, 5, '2004-06-22 22:45:21', 'HUIZINGA'),
(82, 14, 'phase', 0, 4, '2004-06-23 11:50:12', 'HUIZINGA'),
(83, 51, 'phase', 0, 2, '2004-06-23 11:53:57', 'HUIZINGA'),
(84, 50, 'final', 0, 3, '2004-06-23 13:04:48', 'HUIZINGA'),
(85, 39, 'final', 0, 3, '2004-06-23 13:05:33', 'HUIZINGA'),
(86, 27, 'final', 0, 3, '2004-06-23 13:07:02', 'HUIZINGA'),
(87, 4, 'stage', 5, 3, '2004-06-23 13:10:37', 'HUIZINGA'),
(88, 6, 'stage', 5, 3, '2004-06-23 13:11:11', 'HUIZINGA'),
(89, 102, 'stage', 0, 1, '2004-06-23 13:24:19', 'HUIZINGA'),
(90, 103, 'stage', 0, 1, '2004-06-23 19:03:17', 'HUIZINGA'),
(91, 104, 'stage', 0, 1, '2004-06-23 19:17:09', 'HUIZINGA'),
(92, 105, 'stage', 0, 1, '2004-06-24 16:50:01', 'HUIZINGA'),
(93, 2, 'stage', 5, 2, '2004-06-29 14:58:47', 'HUIZINGA'),
(94, 10, 'stage', 5, 3, '2004-06-29 15:06:42', 'HUIZINGA'),
(95, 11, 'stage', 5, 1, '2004-06-29 15:26:08', 'HUIZINGA'),
(96, 13, 'stage', 5, 3, '2004-06-29 15:40:02', 'HUIZINGA'),
(97, 16, 'stage', 5, 1, '2004-06-29 15:45:38', 'HUIZINGA'),
(98, 23, 'stage', 5, 1, '2004-06-29 15:55:05', 'HUIZINGA'),
(99, 106, 'stage', 0, 1, '2004-06-29 19:51:37', 'HUIZINGA'),
(100, 26, 'stage', 5, 1, '2004-06-29 20:09:23', 'HUIZINGA'),
(101, 34, 'stage', 5, 1, '2004-06-29 20:35:01', 'HUIZINGA'),
(102, 36, 'stage', 5, 3, '2004-06-29 20:45:16', 'HUIZINGA'),
(103, 42, 'final', 0, 3, '2004-06-29 20:53:12', 'HUIZINGA'),
(104, 43, 'stage', 5, 3, '2004-06-29 21:07:15', 'HUIZINGA'),
(105, 44, 'stage', 5, 1, '2004-06-29 21:17:28', 'HUIZINGA'),
(106, 107, 'stage', 0, 1, '2004-06-30 10:49:23', 'HUIZINGA'),
(107, 107, 'stage', 0, 1, '2004-06-30 10:50:31', 'HUIZINGA'),
(108, 108, 'stage', 0, 1, '2004-06-30 10:59:28', 'HUIZINGA'),
(109, 46, 'final', 0, 4, '2004-06-30 16:37:18', 'HUIZINGA'),
(110, 49, 'stage', 5, 1, '2004-06-30 16:50:18', 'HUIZINGA'),
(111, 48, 'stage', 5, 1, '2004-06-30 16:58:18', 'HUIZINGA'),
(112, 107, 'stage', 0, 1, '2004-06-30 17:59:27', 'HUIZINGA'),
(113, 108, 'stage', 0, 1, '2004-06-30 18:25:44', 'HUIZINGA'),
(114, 109, 'stage', 0, 1, '2004-06-30 19:19:35', 'HUIZINGA'),
(115, 109, 'phase', 0, 2, '2004-06-30 19:37:48', 'HUIZINGA'),
(116, 109, 'stage', 1, 5, '2004-06-30 19:56:15', 'HUIZINGA'),
(117, 52, 'stage', 5, 1, '2004-06-30 23:06:26', 'HUIZINGA'),
(118, 53, 'stage', 5, 1, '2004-06-30 23:19:02', 'HUIZINGA'),
(119, 57, 'stage', 5, 1, '2004-06-30 23:30:02', 'HUIZINGA'),
(120, 62, 'stage', 5, 1, '2004-06-30 23:30:39', 'HUIZINGA'),
(121, 64, 'stage', 5, 1, '2004-06-30 23:53:43', 'HUIZINGA'),
(122, 69, 'final', 0, 3, '2004-06-30 23:55:39', 'HUIZINGA'),
(123, 70, 'final', 0, 3, '2004-07-01 00:00:46', 'HUIZINGA'),
(124, 77, 'stage', 5, 1, '2004-07-01 00:11:04', 'HUIZINGA'),
(125, 84, 'stage', 5, 1, '2004-07-01 00:17:49', 'HUIZINGA'),
(126, 93, 'stage', 5, 1, '2004-07-01 00:30:07', 'HUIZINGA'),
(127, 4, 'stage', 3, 1, '2004-07-01 00:36:44', 'HUIZINGA'),
(128, 2, 'stage', 2, 1, '2004-07-01 00:40:31', 'HUIZINGA'),
(129, 106, 'stage', 1, 2, '2004-07-02 16:54:22', 'HUIZINGA'),
(130, 8, 'stage', 5, 6, '2004-07-02 18:47:41', 'PAYNE'),
(131, 14, 'stage', 5, 6, '2004-07-02 18:48:12', 'PAYNE'),
(132, 15, 'stage', 5, 6, '2004-07-02 18:48:30', 'PAYNE'),
(133, 17, 'stage', 5, 6, '2004-07-02 18:48:47', 'PAYNE'),
(134, 19, 'stage', 5, 6, '2004-07-02 18:49:04', 'PAYNE'),
(135, 21, 'stage', 5, 6, '2004-07-02 18:49:22', 'PAYNE'),
(136, 24, 'stage', 5, 6, '2004-07-02 18:49:39', 'PAYNE'),
(137, 25, 'stage', 5, 6, '2004-07-02 18:49:56', 'PAYNE'),
(138, 37, 'stage', 5, 6, '2004-07-02 18:50:14', 'PAYNE'),
(139, 38, 'stage', 5, 6, '2004-07-02 18:50:31', 'PAYNE'),
(140, 47, 'stage', 5, 6, '2004-07-02 18:50:48', 'PAYNE'),
(141, 51, 'stage', 5, 6, '2004-07-02 18:51:04', 'PAYNE'),
(142, 56, 'stage', 5, 6, '2004-07-02 18:51:50', 'PAYNE'),
(143, 58, 'stage', 5, 6, '2004-07-02 18:52:05', 'PAYNE'),
(144, 60, 'stage', 5, 6, '2004-07-02 18:52:23', 'PAYNE'),
(145, 63, 'stage', 5, 6, '2004-07-02 18:52:40', 'PAYNE'),
(146, 65, 'stage', 5, 6, '2004-07-02 18:52:54', 'PAYNE'),
(147, 67, 'stage', 5, 6, '2004-07-02 18:53:09', 'PAYNE'),
(148, 68, 'stage', 5, 6, '2004-07-02 18:53:39', 'PAYNE'),
(149, 73, 'stage', 5, 6, '2004-07-02 18:53:56', 'PAYNE'),
(150, 74, 'stage', 5, 6, '2004-07-02 18:54:11', 'PAYNE'),
(151, 75, 'stage', 5, 6, '2004-07-02 18:54:29', 'PAYNE'),
(152, 78, 'stage', 5, 6, '2004-07-02 18:54:46', 'PAYNE'),
(153, 79, 'stage', 5, 6, '2004-07-02 18:55:01', 'PAYNE'),
(154, 88, 'stage', 5, 6, '2004-07-02 18:55:16', 'PAYNE'),
(155, 89, 'stage', 5, 6, '2004-07-02 18:55:32', 'PAYNE'),
(156, 90, 'stage', 5, 6, '2004-07-02 18:55:59', 'PAYNE'),
(157, 92, 'stage', 5, 6, '2004-07-02 18:56:14', 'PAYNE'),
(158, 94, 'stage', 5, 6, '2004-07-02 18:56:31', 'PAYNE'),
(159, 95, 'stage', 5, 6, '2004-07-02 18:56:56', 'PAYNE'),
(160, 96, 'stage', 5, 6, '2004-07-02 18:57:14', 'PAYNE'),
(161, 97, 'stage', 5, 6, '2004-07-02 18:57:30', 'PAYNE'),
(162, 98, 'stage', 5, 6, '2004-07-02 18:57:45', 'PAYNE'),
(163, 109, 'stage', 5, 6, '2004-07-02 18:58:05', 'PAYNE'),
(164, 127, 'maturity', 1, 2, '2004-07-15 20:13:19', 'WOLFFL'),
(165, 125, 'maturity', 1, 2, '2004-07-19 18:42:27', 'WOLFFL'),
(166, 122, 'maturity', 1, 2, '2004-07-19 18:46:58', 'WOLFFL'),
(167, 120, 'maturity', 1, 3, '2004-07-19 19:26:23', 'WOLFFL'),
(168, 119, 'maturity', 1, 2, '2004-07-19 19:30:20', 'WOLFFL'),
(169, 118, 'maturity', 1, 2, '2004-07-19 19:40:10', 'WOLFFL'),
(170, 108, 'maturity', 1, 2, '2004-07-19 19:45:23', 'WOLFFL'),
(171, 107, 'maturity', 1, 2, '2004-07-19 19:46:57', 'WOLFFL'),
(172, 2, 'maturity', 1, 2, '2004-07-19 19:55:51', 'WOLFFL'),
(173, 103, 'maturity', 1, 2, '2004-07-19 20:07:16', 'WOLFFL'),
(174, 14, 'progress', 4, 5, '2004-07-20 13:10:50', 'SINGER'),
(175, 122, 'maturity', 2, 1, '2004-07-20 15:46:38', 'HUIZINGA'),
(176, 58, 'final', 0, 1, '2004-07-21 13:02:40', 'SINGER'),
(177, 58, 'progress', 4, 5, '2004-07-21 13:02:40', 'SINGER'),
(178, 17, 'progress', 5, 4, '2004-07-21 13:06:06', 'SINGER'),
(179, 65, 'progress', 2, 4, '2004-07-21 13:06:45', 'SINGER'),
(180, 68, 'progress', 2, 4, '2004-07-21 13:10:30', 'SINGER'),
(181, 89, 'progress', 2, 4, '2004-07-21 20:20:16', 'SINGER'),
(182, 92, 'progress', 0, 2, '2004-07-21 20:22:34', 'SINGER'),
(183, 94, 'progress', 5, 4, '2004-07-21 20:23:34', 'SINGER'),
(184, 25, 'final', 0, 1, '2004-07-21 20:26:30', 'SINGER'),
(185, 97, 'final', 0, 1, '2004-07-21 20:34:29', 'SINGER'),
(186, 14, 'final', 0, 1, '2004-07-21 20:40:28', 'SINGER'),
(187, 73, 'final', 0, 1, '2004-07-21 20:42:02', 'SINGER'),
(188, 5, 'final', 0, 1, '2004-07-22 13:57:36', 'HUIZINGA'),
(189, 130, 'maturity', 1, 4, '2004-07-26 17:20:03', 'SINGER'),
(190, 130, 'maturity', 4, 1, '2004-07-26 17:20:47', 'SINGER'),
(191, 88, 'progress', 0, 2, '2004-07-27 21:06:40', 'DURKIN'),
(192, 103, 'maturity', 2, 6, '2004-07-28 20:50:26', 'HUIZINGA'),
(193, 103, 'progress', 0, 2, '2004-07-28 20:50:26', 'HUIZINGA'),
(194, 106, 'maturity', 2, 6, '2004-07-28 21:29:33', 'HUIZINGA'),
(195, 23, 'final', 0, 4, '2004-08-02 15:16:35', 'PAYNE'),
(196, 44, 'maturity', 1, 2, '2004-08-02 15:31:02', 'PAYNE'),
(197, 49, 'final', 0, 4, '2004-08-02 15:35:32', 'PAYNE'),
(198, 48, 'maturity', 1, 4, '2004-08-02 15:42:28', 'PAYNE'),
(199, 62, 'maturity', 1, 4, '2004-08-02 15:56:37', 'PAYNE'),
(200, 64, 'maturity', 1, 4, '2004-08-02 16:02:23', 'PAYNE'),
(201, 84, 'maturity', 1, 2, '2004-08-02 16:06:34', 'PAYNE'),
(202, 86, 'maturity', 1, 2, '2004-08-02 16:08:01', 'PAYNE'),
(203, 101, 'maturity', 1, 4, '2004-08-02 16:32:25', 'PAYNE'),
(204, 105, 'maturity', 1, 2, '2004-08-02 16:37:14', 'PAYNE'),
(205, 115, 'maturity', 1, 2, '2004-08-02 16:38:29', 'PAYNE'),
(206, 118, 'maturity', 2, 5, '2004-08-03 20:10:45', 'HUIZINGA'),
(207, 109, 'progress', 2, 4, '2004-08-04 00:06:02', 'HUIZINGA'),
(208, 118, 'final', 0, 3, '2004-08-04 21:16:14', 'HUIZINGA'),
(209, 17, 'progress', 4, 5, '2004-08-09 13:48:21', 'SINGER'),
(210, 135, 'maturity', 1, 6, '2004-08-16 14:41:29', 'SINGER'),
(211, 135, 'final', 0, 3, '2004-08-16 14:41:29', 'SINGER'),
(212, 43, 'final', 0, 4, '2004-08-18 20:23:04', 'HUIZINGA'),
(213, 138, 'maturity', 1, 2, '2004-08-18 20:23:32', 'HUIZINGA'),
(214, 137, 'maturity', 1, 2, '2004-08-18 20:24:18', 'HUIZINGA'),
(215, 129, 'maturity', 1, 2, '2004-08-19 22:37:24', 'HUIZINGA'),
(216, 112, 'maturity', 1, 2, '2004-08-23 20:10:20', 'SINGER'),
(217, 132, 'maturity', 1, 4, '2004-08-23 20:22:56', 'SINGER'),
(218, 136, 'maturity', 1, 4, '2004-08-23 20:23:57', 'SINGER'),
(219, 139, 'maturity', 1, 4, '2004-08-23 20:25:27', 'SINGER'),
(220, 2, 'maturity', 2, 1, '2004-08-23 20:28:05', 'HUIZINGA'),
(221, 86, 'maturity', 2, 4, '2004-08-23 20:30:07', 'HUIZINGA'),
(222, 84, 'maturity', 2, 4, '2004-08-23 20:30:12', 'SINGER'),
(223, 105, 'maturity', 2, 4, '2004-08-23 20:31:06', 'HUIZINGA'),
(224, 107, 'maturity', 2, 3, '2004-08-23 20:32:03', 'SINGER'),
(225, 108, 'maturity', 2, 3, '2004-08-23 20:32:53', 'HUIZINGA'),
(226, 129, 'maturity', 2, 4, '2004-08-23 20:40:06', 'HUIZINGA'),
(227, 137, 'maturity', 2, 4, '2004-08-23 20:41:05', 'HUIZINGA'),
(228, 10, 'maturity', 3, 5, '2004-08-23 20:43:59', 'HUIZINGA'),
(229, 140, 'maturity', 1, 4, '2004-08-24 12:39:55', 'HUIZINGA'),
(230, 117, 'maturity', 1, 4, '2004-08-24 15:14:27', 'HUIZINGA'),
(231, 121, 'maturity', 1, 4, '2004-08-24 15:42:44', 'HUIZINGA'),
(232, 141, 'maturity', 1, 4, '2004-08-27 15:05:53', 'HUIZINGA'),
(233, 142, 'maturity', 0, 1, '2004-08-27 16:48:22', 'HUIZINGA'),
(234, 142, 'final', 0, 3, '2004-08-27 17:00:18', 'HUIZINGA'),
(235, 52, 'final', 0, 3, '2004-08-30 02:09:40', 'WOLFFL'),
(236, 34, 'final', 0, 3, '2004-08-30 02:15:26', 'WOLFFL'),
(237, 77, 'maturity', 1, 2, '2004-08-30 03:08:37', 'WOLFFL'),
(238, 110, 'maturity', 1, 2, '2004-08-30 03:22:27', 'WOLFFL'),
(239, 77, 'maturity', 2, 4, '2004-08-30 13:52:51', 'HUIZINGA'),
(240, 139, 'maturity', 4, 5, '2004-09-01 02:41:13', 'WOLFFL'),
(241, 10, 'progress', 0, 2, '2004-09-01 03:06:30', 'WOLFFL'),
(242, 145, 'final', 0, 3, '2004-09-01 20:32:45', 'HUIZINGA'),
(243, 144, 'final', 0, 3, '2004-09-01 20:33:06', 'HUIZINGA'),
(244, 143, 'final', 0, 3, '2004-09-01 20:33:25', 'HUIZINGA'),
(245, 4, 'maturity', 1, 4, '2004-09-14 15:25:11', 'HUIZINGA'),
(246, 19, 'progress', 4, 5, '2004-10-27 14:22:06', 'SINGER'),
(247, 38, 'progress', 2, 4, '2004-10-27 14:31:54', 'SINGER'),
(248, 8, 'progress', 2, 4, '2004-10-27 14:36:49', 'SINGER'),
(249, 94, 'progress', 4, 5, '2004-10-27 14:37:51', 'SINGER'),
(250, 78, 'progress', 2, 4, '2004-10-27 14:39:35', 'SINGER'),
(251, 21, 'progress', 4, 5, '2004-10-27 14:46:36', 'SINGER'),
(252, 51, 'progress', 2, 4, '2004-10-27 14:48:19', 'SINGER'),
(253, 56, 'maturity', 6, 5, '2004-10-27 14:51:24', 'SINGER'),
(254, 141, 'maturity', 4, 6, '2004-10-28 12:58:31', 'HUIZINGA'),
(255, 141, 'progress', 0, 4, '2004-10-28 12:58:31', 'HUIZINGA'),
(256, 149, 'maturity', 1, 6, '2004-10-29 13:27:09', 'WMILLER'),
(257, 149, 'progress', 0, 4, '2004-10-29 13:27:09', 'WMILLER'),
(258, 150, 'maturity', 1, 2, '2004-10-29 17:41:29', 'WMILLER'),
(259, 150, 'progress', 0, 2, '2004-10-29 17:41:29', 'WMILLER'),
(260, 151, 'maturity', 1, 5, '2004-10-29 18:16:48', 'WMILLER'),
(261, 151, 'progress', 0, 3, '2004-10-29 18:16:48', 'WMILLER'),
(262, 105, 'progress', 0, 2, '2004-11-15 18:31:32', 'HUIZINGA'),
(263, 152, 'maturity', 1, 6, '2004-11-18 16:22:20', 'HUIZINGA'),
(264, 153, 'maturity', 1, 4, '2004-11-18 17:06:36', 'SINGER'),
(265, 103, 'progress', 2, 4, '2004-11-23 16:16:18', 'DURKIN'),
(266, 106, 'progress', 0, 4, '2004-11-23 16:27:05', 'DURKIN'),
(267, 136, 'progress', 0, 2, '2004-11-23 16:27:43', 'DURKIN'),
(268, 140, 'progress', 0, 2, '2004-11-23 16:28:45', 'DURKIN'),
(269, 137, 'progress', 0, 2, '2004-11-23 20:19:57', 'DURKIN'),
(270, 60, 'progress', 4, 5, '2004-11-23 21:10:00', 'DURKIN'),
(271, 88, 'progress', 2, 4, '2004-11-23 21:11:14', 'DURKIN'),
(272, 89, 'progress', 4, 5, '2004-11-23 21:11:45', 'DURKIN'),
(273, 92, 'progress', 2, 4, '2004-11-23 21:12:18', 'DURKIN'),
(274, 19, 'final', 0, 1, '2004-11-23 21:14:12', 'DURKIN'),
(275, 94, 'final', 0, 1, '2004-11-23 21:15:07', 'DURKIN'),
(276, 96, 'final', 0, 1, '2004-11-23 21:15:58', 'DURKIN'),
(277, 96, 'progress', 4, 5, '2004-11-23 21:15:58', 'DURKIN'),
(278, 109, 'final', 0, 1, '2004-11-23 21:16:47', 'DURKIN'),
(279, 109, 'progress', 4, 5, '2004-11-23 21:16:47', 'DURKIN'),
(280, 17, 'final', 0, 1, '2004-11-23 21:17:24', 'DURKIN'),
(281, 58, 'final', 0, 1, '2004-11-23 21:18:44', 'DURKIN'),
(282, 60, 'final', 0, 1, '2004-11-23 21:19:34', 'DURKIN'),
(283, 21, 'final', 0, 1, '2004-11-23 21:20:20', 'DURKIN'),
(284, 89, 'final', 0, 1, '2004-11-23 21:20:48', 'DURKIN'),
(285, 105, 'progress', 2, 4, '2004-12-07 12:51:05', 'HUIZINGA'),
(286, 62, 'progress', 0, 2, '2004-12-07 12:52:56', 'HUIZINGA'),
(287, 78, 'progress', 4, 5, '2004-12-07 12:55:47', 'HUIZINGA'),
(288, 51, 'progress', 4, 5, '2004-12-07 12:56:38', 'HUIZINGA'),
(289, 38, 'progress', 4, 5, '2004-12-07 12:57:53', 'HUIZINGA'),
(290, 68, 'progress', 4, 5, '2004-12-07 12:59:02', 'HUIZINGA'),
(291, 152, 'progress', 0, 2, '2004-12-20 15:35:46', 'HUIZINGA'),
(292, 104, 'progress', 0, 4, '2005-01-10 21:42:32', 'HUIZINGA'),
(293, 134, 'final', 0, 3, '2005-01-14 18:52:35', 'HUIZINGA'),
(294, 148, 'maturity', 1, 6, '2005-01-20 16:21:34', 'HUIZINGA'),
(295, 148, 'progress', 0, 2, '2005-01-20 16:21:34', 'HUIZINGA'),
(296, 62, 'progress', 2, 5, '2005-01-20 17:00:05', 'HUIZINGA'),
(297, 137, 'progress', 2, 4, '2005-01-20 17:02:34', 'HUIZINGA'),
(298, 136, 'progress', 2, 4, '2005-01-20 17:03:20', 'HUIZINGA'),
(299, 63, 'progress', 4, 5, '2005-01-20 17:04:03', 'HUIZINGA'),
(300, 103, 'final', 0, 1, '2005-01-20 17:24:46', 'HUIZINGA'),
(301, 103, 'progress', 4, 5, '2005-01-20 17:24:46', 'HUIZINGA'),
(302, 36, 'final', 0, 4, '2005-01-27 19:23:32', 'HUIZINGA'),
(303, 92, 'progress', 4, 5, '2005-01-27 19:32:09', 'HUIZINGA'),
(304, 139, 'progress', 0, 2, '2005-02-03 20:45:14', 'DURKIN'),
(305, 151, 'maturity', 5, 6, '2005-02-08 16:11:41', 'HUIZINGA'),
(306, 151, 'progress', 3, 4, '2005-02-08 16:11:41', 'HUIZINGA'),
(307, 150, 'maturity', 2, 6, '2005-02-08 16:13:44', 'HUIZINGA'),
(308, 132, 'final', 0, 4, '2005-02-08 18:12:49', 'HUIZINGA'),
(309, 133, 'maturity', 1, 2, '2005-02-14 17:05:35', 'HUIZINGA'),
(310, 162, 'final', 0, 4, '2005-02-15 14:19:33', 'HUIZINGA'),
(311, 130, 'maturity', 1, 5, '2005-02-15 14:31:44', 'HUIZINGA'),
(312, 77, 'maturity', 4, 5, '2005-02-15 15:37:49', 'HUIZINGA'),
(313, 131, 'maturity', 1, 5, '2005-02-15 15:38:11', 'HUIZINGA'),
(314, 133, 'maturity', 2, 5, '2005-02-15 15:38:36', 'HUIZINGA'),
(315, 166, 'maturity', 1, 5, '2005-02-18 00:11:37', 'GOLOMBEK'),
(316, 111, 'final', 0, 3, '2005-02-21 19:39:17', 'WOLFFL'),
(317, 110, 'final', 0, 3, '2005-02-21 19:43:54', 'WOLFFL'),
(318, 37, 'final', 0, 1, '2005-02-25 18:30:56', 'SINGER'),
(319, 37, 'progress', 4, 5, '2005-02-25 18:30:56', 'SINGER'),
(320, 38, 'final', 0, 1, '2005-02-25 18:31:58', 'SINGER'),
(321, 51, 'final', 0, 1, '2005-02-25 18:34:18', 'SINGER'),
(322, 62, 'final', 0, 1, '2005-02-25 18:35:00', 'SINGER'),
(323, 63, 'final', 0, 1, '2005-02-25 18:35:29', 'SINGER'),
(324, 68, 'final', 0, 1, '2005-02-25 18:36:02', 'SINGER'),
(325, 78, 'final', 0, 1, '2005-02-25 18:36:31', 'SINGER'),
(326, 75, 'progress', 4, 5, '2005-02-25 18:37:08', 'SINGER'),
(327, 92, 'final', 0, 1, '2005-02-25 18:37:57', 'SINGER'),
(328, 136, 'progress', 4, 5, '2005-02-25 18:39:19', 'SINGER'),
(329, 140, 'progress', 2, 4, '2005-02-25 18:41:08', 'SINGER'),
(330, 141, 'progress', 4, 5, '2005-02-25 18:41:55', 'SINGER'),
(331, 117, 'progress', 0, 4, '2005-02-25 18:42:50', 'SINGER'),
(332, 136, 'maturity', 4, 6, '2005-02-25 18:45:49', 'SINGER'),
(333, 137, 'maturity', 4, 6, '2005-02-25 18:46:19', 'SINGER'),
(334, 140, 'maturity', 4, 6, '2005-02-25 18:47:49', 'SINGER'),
(335, 117, 'maturity', 4, 6, '2005-02-25 18:48:26', 'SINGER'),
(336, 105, 'maturity', 4, 6, '2005-02-25 18:58:09', 'SINGER'),
(337, 139, 'maturity', 5, 6, '2005-02-25 18:59:42', 'SINGER'),
(338, 129, 'maturity', 4, 6, '2005-02-25 19:00:18', 'SINGER'),
(339, 10, 'maturity', 5, 6, '2005-02-25 19:00:55', 'SINGER'),
(340, 127, 'maturity', 2, 6, '2005-02-25 19:01:28', 'SINGER'),
(341, 130, 'maturity', 5, 6, '2005-02-25 19:01:50', 'SINGER'),
(342, 112, 'maturity', 2, 6, '2005-02-25 19:02:18', 'SINGER'),
(343, 84, 'maturity', 4, 6, '2005-02-25 19:03:00', 'SINGER'),
(344, 48, 'maturity', 4, 6, '2005-02-25 19:03:41', 'SINGER'),
(345, 67, 'progress', 0, 4, '2005-02-25 19:04:22', 'SINGER'),
(346, 74, 'progress', 4, 5, '2005-03-02 15:14:35', 'SINGER'),
(347, 74, 'final', 0, 1, '2005-03-02 15:17:52', 'SINGER'),
(348, 136, 'final', 0, 1, '2005-03-02 15:37:25', 'SINGER'),
(349, 165, 'maturity', 1, 2, '2005-03-03 17:30:43', 'HUIZINGA'),
(350, 10, 'progress', 2, 3, '2005-03-14 18:21:07', 'PAYNE'),
(351, 164, 'maturity', 1, 5, '2005-03-15 14:30:31', 'SINGER'),
(352, 106, 'final', 0, 3, '2005-03-15 20:09:08', 'SINGER'),
(353, 10, 'progress', 3, 4, '2005-03-21 23:23:17', 'PAYNE'),
(354, 122, 'final', 0, 3, '2005-03-22 16:53:16', 'HUIZINGA'),
(355, 161, 'maturity', 1, 6, '2005-03-23 19:33:50', 'HUIZINGA'),
(356, 163, 'maturity', 1, 5, '2005-03-23 21:21:56', 'HUIZINGA'),
(357, 120, 'final', 0, 4, '2005-03-28 16:53:50', 'HUIZINGA'),
(358, 147, 'maturity', 1, 6, '2005-03-29 16:42:59', 'HUIZINGA'),
(359, 87, 'final', 0, 4, '2005-03-30 15:38:25', 'HUIZINGA'),
(360, 152, 'progress', 2, 5, '2005-03-30 20:29:09', 'HUIZINGA'),
(361, 33, 'final', 0, 3, '2005-03-30 20:33:48', 'HUIZINGA'),
(362, 147, 'maturity', 6, 4, '2005-03-30 20:44:27', 'HUIZINGA'),
(363, 166, 'final', 0, 3, '2005-03-31 16:38:00', 'SINGER'),
(364, 116, 'final', 0, 3, '2005-03-31 16:49:51', 'SINGER'),
(365, 112, 'final', 0, 4, '2005-03-31 16:56:12', 'SINGER'),
(366, 170, 'maturity', 1, 5, '2005-04-01 21:26:31', 'HUIZINGA'),
(367, 171, 'maturity', 1, 3, '2005-04-01 21:28:32', 'HUIZINGA'),
(368, 172, 'maturity', 1, 3, '2005-04-01 22:05:10', 'HUIZINGA'),
(369, 131, 'maturity', 5, 6, '2005-04-07 13:16:13', 'HUIZINGA'),
(370, 131, 'progress', 0, 2, '2005-04-07 13:16:13', 'HUIZINGA'),
(371, 133, 'maturity', 5, 6, '2005-04-07 13:17:13', 'HUIZINGA'),
(372, 133, 'progress', 0, 2, '2005-04-07 13:17:13', 'HUIZINGA'),
(373, 177, 'progress', 0, 2, '2005-04-07 14:48:37', 'PANTALONE'),
(374, 15, 'final', 0, 1, '2005-04-07 18:46:27', 'SINGER'),
(375, 154, 'maturity', 1, 5, '2005-04-19 17:24:50', 'HUIZINGA'),
(376, 155, 'maturity', 1, 5, '2005-04-19 17:25:24', 'HUIZINGA'),
(377, 2, 'maturity', 1, 4, '2005-04-22 01:24:16', 'WOLFFL'),
(378, 53, 'maturity', 1, 4, '2005-04-22 01:30:47', 'WOLFFL'),
(379, 56, 'maturity', 5, 4, '2005-04-22 01:36:43', 'WOLFFL'),
(380, 107, 'maturity', 3, 4, '2005-04-22 02:04:13', 'WOLFFL'),
(381, 108, 'maturity', 3, 4, '2005-04-22 02:15:12', 'WOLFFL'),
(382, 115, 'maturity', 2, 5, '2005-04-22 02:18:45', 'WOLFFL'),
(383, 124, 'maturity', 1, 2, '2005-04-22 02:44:30', 'WOLFFL'),
(384, 160, 'maturity', 1, 5, '2005-04-22 16:14:01', 'WOLFFL'),
(385, 175, 'maturity', 1, 5, '2005-04-22 17:26:49', 'WOLFFL'),
(386, 167, 'maturity', 1, 4, '2005-04-23 03:18:09', 'WOLFFL'),
(387, 174, 'maturity', 1, 4, '2005-04-23 03:21:45', 'WOLFFL'),
(388, 16, 'maturity', 1, 5, '2005-04-23 04:12:20', 'WOLFFL'),
(389, 85, 'final', 0, 1, '2005-04-23 04:13:54', 'WOLFFL'),
(390, 93, 'maturity', 1, 4, '2005-04-23 04:36:17', 'WOLFFL'),
(391, 113, 'maturity', 1, 5, '2005-04-23 04:39:21', 'WOLFFL'),
(392, 44, 'maturity', 2, 4, '2005-04-23 05:05:31', 'WOLFFL'),
(393, 119, 'final', 0, 3, '2005-04-23 05:07:54', 'WOLFFL'),
(394, 138, 'final', 0, 4, '2005-04-23 05:10:25', 'WOLFFL'),
(395, 165, 'final', 0, 1, '2005-04-23 05:12:36', 'WOLFFL'),
(396, 13, 'maturity', 3, 5, '2005-04-23 05:22:15', 'WOLFFL'),
(397, 77, 'final', 0, 3, '2005-04-23 05:34:12', 'WOLFFL'),
(398, 124, 'maturity', 2, 4, '2005-04-23 05:36:03', 'WOLFFL'),
(399, 125, 'maturity', 2, 3, '2005-04-23 05:38:35', 'WOLFFL'),
(400, 44, 'maturity', 4, 5, '2005-04-23 22:57:19', 'WOLFFL'),
(401, 107, 'maturity', 4, 3, '2005-04-24 00:08:58', 'WOLFFL'),
(402, 6, 'final', 0, 3, '2005-04-24 00:41:57', 'WOLFFL'),
(403, 179, 'maturity', 1, 4, '2005-04-24 00:45:49', 'WOLFFL'),
(404, 147, 'maturity', 4, 5, '2005-04-24 00:48:37', 'WOLFFL'),
(405, 48, 'maturity', 6, 5, '2005-04-25 23:22:56', 'WOLFFL'),
(406, 104, 'final', 0, 1, '2005-04-26 15:24:24', 'SINGER'),
(407, 104, 'progress', 4, 5, '2005-04-26 15:24:24', 'SINGER'),
(408, 79, 'progress', 4, 5, '2005-04-27 14:25:40', 'SINGER'),
(409, 79, 'final', 0, 1, '2005-04-27 14:26:39', 'SINGER'),
(410, 11, 'final', 0, 3, '2005-04-27 17:33:26', 'SINGER'),
(411, 156, 'maturity', 1, 5, '2005-04-27 17:58:51', 'HUIZINGA'),
(412, 157, 'maturity', 1, 5, '2005-04-27 17:59:29', 'HUIZINGA'),
(413, 158, 'maturity', 1, 5, '2005-04-27 19:48:51', 'HUIZINGA'),
(414, 159, 'maturity', 1, 5, '2005-04-27 19:49:10', 'HUIZINGA'),
(415, 121, 'maturity', 0, 4, '2005-04-28 22:28:03', 'PANTALONE'),
(416, 121, 'progress', 0, 2, '2005-04-28 22:28:03', 'PANTALONE'),
(417, 130, 'progress', 0, 2, '2005-05-05 13:51:50', 'HUIZINGA'),
(418, 129, 'maturity', 6, 5, '2005-05-05 17:28:43', 'HUIZINGA'),
(419, 2, 'maturity', 0, 5, '2005-05-06 13:57:57', 'WOLFFL'),
(420, 98, 'progress', 2, 5, '2005-05-06 14:43:40', 'WOLFFL'),
(421, 107, 'maturity', 3, 4, '2005-05-06 16:42:49', 'WOLFFL'),
(422, 153, 'maturity', 0, 2, '2005-05-06 16:47:40', 'WOLFFL'),
(423, 121, 'maturity', 4, 5, '2005-05-06 16:48:44', 'WOLFFL'),
(424, 90, 'maturity', 6, 5, '2005-05-06 17:40:27', 'WOLFFL'),
(425, 53, 'maturity', 4, 5, '2005-05-06 17:59:31', 'WOLFFL'),
(426, 164, 'progress', 0, 4, '2005-05-06 20:23:25', 'WOLFFL'),
(427, 169, 'maturity', 1, 3, '2005-05-06 20:39:31', 'WOLFFL'),
(428, 173, 'final', 0, 3, '2005-05-06 20:42:03', 'WOLFFL'),
(429, 178, 'maturity', 1, 3, '2005-05-06 20:52:20', 'WOLFFL'),
(430, 171, 'maturity', 3, 5, '2005-05-06 21:15:09', 'WOLFFL'),
(431, 172, 'maturity', 3, 5, '2005-05-06 21:16:16', 'WOLFFL'),
(432, 88, 'final', 0, 1, '2005-05-09 15:23:17', 'SINGER'),
(433, 152, 'final', 0, 1, '2005-05-09 15:32:03', 'SINGER'),
(434, 163, 'maturity', 5, 6, '2005-05-09 20:59:47', 'SINGER'),
(435, 164, 'maturity', 5, 6, '2005-05-09 21:00:31', 'SINGER'),
(436, 139, 'progress', 2, 4, '2005-05-09 21:13:29', 'SINGER'),
(437, 148, 'progress', 2, 4, '2005-05-09 21:14:07', 'SINGER'),
(438, 161, 'progress', 0, 2, '2005-05-09 21:16:18', 'SINGER'),
(439, 131, 'progress', 2, 5, '2005-05-11 13:54:02', 'HUIZINGA'),
(440, 131, 'final', 0, 3, '2005-05-12 18:58:26', 'SINGER'),
(441, 141, 'final', 0, 1, '2005-05-12 19:13:22', 'SINGER'),
(442, 117, 'final', 0, 1, '2005-05-18 14:03:17', 'SINGER'),
(443, 86, 'maturity', 4, 5, '2005-05-25 19:35:59', 'WOLFFL'),
(444, 167, 'maturity', 4, 5, '2005-05-25 20:24:23', 'WOLFFL'),
(445, 84, 'progress', 0, 2, '2005-06-01 15:22:05', 'SINGER'),
(446, 170, 'progress', 0, 4, '2005-06-01 15:25:07', 'SINGER'),
(447, 163, 'progress', 0, 2, '2005-06-01 15:27:17', 'SINGER'),
(448, 181, 'maturity', 1, 6, '2005-06-23 14:50:37', 'SINGER'),
(449, 75, 'final', 0, 1, '2005-07-11 21:06:04', 'SINGER'),
(450, 105, 'final', 0, 1, '2005-07-11 21:09:41', 'SINGER'),
(451, 105, 'progress', 4, 5, '2005-07-11 21:09:41', 'SINGER'),
(452, 182, 'maturity', 1, 3, '2005-07-21 19:45:04', 'WOLFFL'),
(453, 84, 'progress', 2, 4, '2005-09-22 20:07:22', 'SINGER'),
(454, 115, 'progress', 0, 4, '2005-09-22 20:08:53', 'SINGER'),
(455, 121, 'progress', 0, 2, '2005-09-22 20:09:57', 'SINGER'),
(456, 181, 'progress', 0, 4, '2005-09-22 20:11:11', 'SINGER'),
(457, 140, 'final', 0, 1, '2005-09-22 20:31:34', 'SINGER'),
(458, 140, 'progress', 4, 5, '2005-09-22 20:31:34', 'SINGER'),
(459, 170, 'maturity', 5, 6, '2005-09-22 20:34:52', 'SINGER'),
(460, 2, 'maturity', 5, 6, '2005-09-22 20:36:35', 'SINGER'),
(461, 86, 'maturity', 5, 6, '2005-09-22 20:37:13', 'SINGER'),
(462, 93, 'maturity', 4, 6, '2005-09-22 20:37:47', 'SINGER'),
(463, 115, 'maturity', 5, 6, '2005-09-22 20:45:49', 'SINGER'),
(464, 121, 'maturity', 5, 6, '2005-09-22 20:46:26', 'SINGER'),
(465, 129, 'maturity', 5, 6, '2005-09-22 20:46:57', 'SINGER'),
(466, 153, 'maturity', 2, 6, '2005-09-22 20:47:50', 'SINGER'),
(467, 154, 'maturity', 5, 6, '2005-09-22 20:48:43', 'SINGER'),
(468, 155, 'maturity', 5, 6, '2005-09-22 20:49:16', 'SINGER'),
(469, 160, 'maturity', 5, 6, '2005-09-22 20:49:40', 'SINGER'),
(470, 172, 'maturity', 5, 6, '2005-09-22 20:53:44', 'SINGER'),
(471, 164, 'final', 0, 3, '2005-09-22 21:05:55', 'SINGER'),
(472, 95, 'final', 0, 1, '2005-09-22 21:06:59', 'SINGER'),
(473, 193, 'progress', 0, 4, '2005-09-23 16:47:56', 'WMILLER'),
(474, 194, 'maturity', 1, 6, '2005-09-27 15:16:03', 'HUIZINGA'),
(475, 200, 'maturity', 1, 6, '2005-09-29 20:37:36', 'HUIZINGA'),
(476, 200, 'progress', 0, 2, '2005-09-29 20:37:36', 'HUIZINGA'),
(477, 106, 'final', 0, 5, '2005-09-29 20:46:22', 'HUIZINGA'),
(478, 187, 'final', 0, 1, '2005-09-29 21:03:54', 'HUIZINGA'),
(479, 67, 'final', 0, 1, '2005-10-04 14:37:17', 'SINGER'),
(480, 57, 'final', 0, 3, '2005-10-04 14:39:45', 'SINGER'),
(481, 168, 'final', 0, 1, '2005-10-04 14:44:28', 'SINGER'),
(482, 130, 'progress', 2, 4, '2005-10-04 14:56:12', 'SINGER'),
(483, 115, 'progress', 4, 5, '2005-10-04 14:56:51', 'SINGER'),
(484, 10, 'final', 0, 1, '2005-10-05 18:57:18', 'SINGER'),
(485, 10, 'progress', 4, 5, '2005-10-05 18:57:18', 'SINGER'),
(486, 24, 'final', 0, 1, '2005-10-05 19:01:14', 'SINGER'),
(487, 24, 'progress', 4, 5, '2005-10-05 19:01:14', 'SINGER'),
(488, 84, 'final', 0, 1, '2005-10-05 19:03:24', 'SINGER'),
(489, 84, 'progress', 4, 5, '2005-10-05 19:03:24', 'SINGER'),
(490, 198, 'final', 0, 4, '2005-10-05 19:08:10', 'SINGER'),
(491, 129, 'progress', 0, 2, '2005-10-05 19:11:02', 'SINGER'),
(492, 133, 'progress', 0, 4, '2005-10-05 19:12:02', 'SINGER'),
(493, 161, 'progress', 2, 4, '2005-10-05 19:12:58', 'SINGER'),
(494, 194, 'progress', 0, 4, '2005-10-05 19:14:21', 'SINGER'),
(495, 149, 'progress', 4, 5, '2005-10-10 15:01:47', 'WMILLER'),
(496, 150, 'progress', 2, 5, '2005-10-10 15:05:31', 'WMILLER'),
(497, 150, 'final', 0, 1, '2005-10-10 15:06:19', 'WMILLER'),
(498, 149, 'final', 0, 1, '2005-10-10 15:07:23', 'WMILLER'),
(499, 172, 'final', 0, 4, '2005-10-11 18:16:58', 'SINGER'),
(500, 205, 'maturity', 1, 4, '2005-10-18 18:05:56', 'KAYLOR'),
(501, 205, 'progress', 0, 2, '2005-10-18 18:05:56', 'KAYLOR'),
(502, 163, 'progress', 2, 4, '2005-10-20 14:20:03', 'HUIZINGA'),
(503, 86, 'progress', 0, 2, '2005-10-24 13:03:14', 'SINGER'),
(504, 93, 'progress', 0, 2, '2005-10-24 13:03:55', 'SINGER'),
(505, 127, 'progress', 0, 2, '2005-10-24 13:08:30', 'SINGER'),
(506, 129, 'progress', 2, 4, '2005-10-24 13:09:30', 'SINGER'),
(507, 153, 'progress', 0, 2, '2005-10-24 13:13:00', 'SINGER'),
(508, 154, 'progress', 0, 2, '2005-10-24 13:14:53', 'SINGER'),
(509, 155, 'progress', 0, 2, '2005-10-24 13:16:10', 'SINGER'),
(510, 156, 'progress', 0, 2, '2005-10-24 13:21:29', 'SINGER'),
(511, 160, 'progress', 0, 2, '2005-10-24 13:22:04', 'SINGER'),
(512, 130, 'progress', 4, 5, '2005-10-24 13:35:24', 'SINGER'),
(513, 148, 'progress', 4, 5, '2005-10-24 13:36:18', 'SINGER'),
(514, 181, 'progress', 4, 5, '2005-10-24 13:37:43', 'SINGER'),
(515, 115, 'final', 0, 1, '2005-10-24 14:41:38', 'SINGER'),
(516, 26, 'maturity', 1, 5, '2005-10-25 01:08:16', 'WOLFFL'),
(517, 64, 'maturity', 4, 5, '2005-10-25 01:25:46', 'WOLFFL'),
(518, 102, 'maturity', 1, 5, '2005-10-25 02:03:11', 'WOLFFL'),
(519, 203, 'final', 0, 4, '2005-10-25 15:17:16', 'TCOMEAU'),
(520, 182, 'progress', 0, 2, '2005-10-25 15:38:34', 'SINGER'),
(521, 130, 'final', 0, 1, '2005-10-26 14:11:06', 'SINGER'),
(522, 98, 'final', 0, 1, '2005-10-26 14:12:20', 'SINGER'),
(523, 181, 'final', 0, 1, '2005-10-26 14:52:52', 'SINGER'),
(524, 189, 'final', 0, 1, '2005-11-18 14:51:39', 'HUIZINGA'),
(525, 182, 'progress', 2, 4, '2005-11-28 14:56:46', 'HUIZINGA'),
(526, 204, 'maturity', 1, 6, '2005-11-30 10:34:52', 'HUIZINGA'),
(527, 170, 'progress', 4, 5, '2005-11-30 11:05:31', 'HUIZINGA'),
(528, 93, 'progress', 2, 5, '2005-11-30 11:06:19', 'HUIZINGA'),
(529, 139, 'progress', 4, 5, '2005-11-30 11:06:59', 'HUIZINGA'),
(530, 204, 'progress', 0, 2, '2005-11-30 21:50:43', 'HUIZINGA'),
(531, 175, 'progress', 0, 2, '2005-12-02 15:29:04', 'SINGER'),
(532, 190, 'progress', 0, 5, '2005-12-02 16:06:41', 'SINGER'),
(533, 137, 'progress', 4, 5, '2005-12-02 16:12:42', 'SINGER'),
(534, 8, 'progress', 4, 5, '2005-12-02 16:14:27', 'SINGER'),
(535, 212, 'maturity', 1, 6, '2005-12-05 19:54:13', 'HUIZINGA'),
(536, 212, 'progress', 0, 2, '2005-12-05 19:54:13', 'HUIZINGA'),
(537, 127, 'final', 0, 4, '2005-12-05 20:00:50', 'HUIZINGA'),
(538, 171, 'final', 0, 4, '2005-12-05 20:03:56', 'HUIZINGA'),
(539, 170, 'final', 0, 1, '2005-12-07 15:30:59', 'SINGER'),
(540, 215, 'maturity', 1, 6, '2005-12-14 15:33:14', 'HUIZINGA'),
(541, 215, 'progress', 0, 2, '2005-12-14 15:33:14', 'HUIZINGA'),
(542, 153, 'progress', 2, 4, '2005-12-14 15:49:00', 'HUIZINGA'),
(543, 185, 'maturity', 1, 6, '2005-12-15 14:58:48', 'HUIZINGA'),
(544, 216, 'final', 0, 3, '2005-12-15 15:22:52', 'HUIZINGA'),
(545, 217, 'maturity', 1, 3, '2005-12-15 17:11:35', 'HUIZINGA'),
(546, 218, 'maturity', 1, 6, '2005-12-15 17:49:41', 'HUIZINGA'),
(547, 218, 'progress', 0, 4, '2005-12-15 17:49:41', 'HUIZINGA'),
(548, 219, 'maturity', 1, 6, '2005-12-15 21:07:08', 'HUIZINGA'),
(549, 212, 'progress', 2, 4, '2005-12-21 19:28:02', 'HUIZINGA'),
(550, 201, 'final', 0, 1, '2005-12-21 19:32:24', 'HUIZINGA'),
(551, 194, 'progress', 4, 5, '2005-12-21 19:36:32', 'HUIZINGA'),
(552, 161, 'progress', 4, 5, '2005-12-21 19:37:29', 'HUIZINGA'),
(553, 93, 'final', 0, 1, '2006-01-11 15:26:25', 'HUIZINGA'),
(554, 153, 'final', 0, 1, '2006-01-12 17:51:06', 'HUIZINGA'),
(555, 153, 'progress', 4, 5, '2006-01-12 17:51:06', 'HUIZINGA'),
(556, 139, 'final', 0, 1, '2006-01-12 17:51:56', 'HUIZINGA'),
(557, 137, 'final', 0, 1, '2006-01-12 17:52:37', 'HUIZINGA'),
(558, 175, 'progress', 2, 4, '2006-01-12 17:58:08', 'HUIZINGA'),
(559, 192, 'maturity', 1, 6, '2006-01-12 18:26:01', 'HUIZINGA'),
(560, 220, 'maturity', 1, 6, '2006-01-18 17:05:57', 'HUIZINGA'),
(561, 220, 'progress', 0, 2, '2006-01-18 17:05:57', 'HUIZINGA'),
(562, 219, 'progress', 0, 2, '2006-01-27 17:00:00', 'HUIZINGA'),
(563, 178, 'progress', 0, 2, '2006-01-27 17:09:19', 'HUIZINGA'),
(564, 47, 'progress', 4, 5, '2006-01-27 17:14:21', 'HUIZINGA'),
(565, 163, 'final', 0, 1, '2006-01-27 17:16:17', 'HUIZINGA'),
(566, 8, 'final', 0, 1, '2006-02-14 11:30:04', 'HUIZINGA'),
(567, 167, 'progress', 0, 2, '2006-02-14 11:32:45', 'HUIZINGA'),
(568, 178, 'progress', 2, 4, '2006-02-14 11:34:18', 'HUIZINGA'),
(569, 121, 'progress', 2, 4, '2006-02-14 11:35:45', 'HUIZINGA'),
(570, 154, 'progress', 2, 4, '2006-02-14 11:36:28', 'HUIZINGA'),
(571, 215, 'progress', 2, 4, '2006-02-14 11:37:23', 'HUIZINGA'),
(572, 194, 'final', 0, 1, '2006-02-14 11:38:53', 'HUIZINGA'),
(573, 161, 'final', 0, 1, '2006-02-14 11:40:25', 'HUIZINGA'),
(574, 182, 'final', 0, 1, '2006-02-14 11:41:49', 'HUIZINGA'),
(575, 129, 'final', 0, 1, '2006-02-14 11:42:41', 'HUIZINGA'),
(576, 47, 'final', 0, 1, '2006-02-14 11:43:20', 'HUIZINGA'),
(577, 200, 'final', 0, 1, '2006-02-14 11:44:30', 'HUIZINGA'),
(578, 200, 'progress', 2, 4, '2006-02-14 11:45:10', 'HUIZINGA'),
(579, 204, 'progress', 2, 4, '2006-02-14 11:45:50', 'HUIZINGA'),
(580, 148, 'final', 0, 1, '2006-02-14 11:47:47', 'HUIZINGA'),
(581, 208, 'maturity', 1, 6, '2006-02-24 16:18:25', 'HUIZINGA'),
(582, 208, 'progress', 0, 2, '2006-02-24 16:18:26', 'HUIZINGA'),
(583, 214, 'maturity', 1, 6, '2006-02-24 16:24:47', 'HUIZINGA'),
(584, 214, 'progress', 0, 4, '2006-02-24 16:24:47', 'HUIZINGA'),
(585, 167, 'maturity', 5, 2, '2006-02-27 18:28:08', 'PANTALONE'),
(586, 223, 'maturity', 1, 6, '2006-03-07 14:24:54', 'HUIZINGA'),
(587, 224, 'maturity', 1, 5, '2006-03-07 14:26:52', 'HUIZINGA'),
(588, 225, 'maturity', 1, 5, '2006-03-07 14:28:23', 'HUIZINGA'),
(589, 223, 'progress', 0, 2, '2006-03-07 14:58:58', 'HUIZINGA'),
(590, 118, 'final', 0, 3, '2006-03-15 19:02:40', 'HUIZINGA'),
(591, 229, 'maturity', 1, 6, '2006-03-22 15:26:54', 'HUIZINGA'),
(592, 175, 'final', 0, 1, '2006-04-20 17:09:11', 'HUIZINGA'),
(593, 175, 'progress', 4, 5, '2006-04-20 17:09:11', 'HUIZINGA'),
(594, 200, 'final', 0, 1, '2006-04-20 17:13:17', 'HUIZINGA'),
(595, 208, 'progress', 2, 5, '2006-04-20 17:14:23', 'HUIZINGA'),
(596, 167, 'progress', 2, 4, '2006-04-20 17:15:42', 'HUIZINGA'),
(597, 219, 'progress', 2, 4, '2006-04-20 17:16:29', 'HUIZINGA'),
(598, 86, 'progress', 0, 4, '2006-04-20 17:18:14', 'HUIZINGA'),
(599, 185, 'progress', 0, 2, '2006-04-20 17:19:47', 'HUIZINGA'),
(600, 220, 'progress', 2, 4, '2006-04-20 17:20:35', 'HUIZINGA'),
(601, 223, 'progress', 2, 4, '2006-04-20 17:22:59', 'HUIZINGA'),
(602, 237, 'progress', 0, 2, '2006-05-01 22:32:56', 'PANTALONE'),
(603, 238, 'maturity', 1, 6, '2006-05-02 13:20:43', 'HUIZINGA'),
(604, 232, 'maturity', 1, 6, '2006-05-03 16:18:44', 'HUIZINGA'),
(605, 232, 'progress', 0, 2, '2006-05-03 16:18:44', 'HUIZINGA'),
(606, 86, 'progress', 4, 5, '2006-05-03 16:22:50', 'HUIZINGA'),
(607, 223, 'progress', 4, 5, '2006-05-03 16:24:37', 'HUIZINGA'),
(608, 25, 'maturity', 0, 3, '2006-12-03 20:38:21', 'payne'),
(609, 25, 'maturity', 3, 4, '2006-12-03 20:38:45', 'payne');

--
-- Truncate table before insert "hostlist"
--

--
-- Dumping data for table "hostlist"
--

INSERT INTO "hostlist" ("hostID", "hostDesc", "hostText") VALUES
(0, 'none', ''),
(1, 'CPT/ITS', ''),
(2, 'CPT/TIM', ''),
(3, 'CPT/TS', ''),
(4, 'CPT/TSD', ''),
(5, 'CPT/SIPE', ''),
(6, 'ESS/DMS', ''),
(7, 'ESS/PRD', ''),
(8, 'OT', ''),
(9, 'CPT', ''),
(10, 'ESS', ''),
(11, 'ODM', ''),
(12, 'HST-MO', '');

--
-- Truncate table before insert "initiativelist"
--

--
-- Dumping data for table "initiativelist"
--

INSERT INTO "initiativelist" ("initiativeID", "initiativeDesc", "initiativeText") VALUES
(0, '', 'In this context, the term "initiative" refers to a statement of high-level objectives with a unifying theme. An initiative will spawn a number of projects, with each project addressing one or more objectives of the initiative in detail.

    Normally, initiatives are a natural product of the formal process of strategic planning. In the case of Technology Initiatives, their definition depends upon a flow-down of objectives from the Office of Technology Strategic Plan, which in turn depends upon a flow-down of objectives from the Institute Strategic Plan.

    Such a formal hierarchy of objectives for the Institute and Office of Technology has not yet been created. Strategic planning at the Institute and Office of Technology is expected to be completed for 2004. In the meantime, the CIO will maintain a set of Technology Initiatives that, while independent of a formal flow-down of objectives, are clearly critical to the ongoing success of the Institute. '),
(1, 'Institute Architecture Planning', 'This initiative encompasses all activities to improve our understanding of the Institute''s business and technical infrastructures, architecting an infrastructure for the future, and planning projects for achieving it. Initial projects related to this initiative include completing the rollout of the technology governance structure, incorporating the technology values and principles into division''s strategic planning processes and documenting our current infrastructures in the State of Technology report.'),
(2, 'Information Management and Process Planning', 'Many of our current and future challenges in information management dictate that we pay close attention to the information management schemes we embed in our software systems and business processes. This initiative encompasses projects that transform the processes and technologies of information management.'),
(3, 'Infrastructure', 'This initiative encompasses projects to augment the capacity and reliability of our current business, mission and scientific technology infrastructure, including IT security challenges.'),
(4, 'Software and Systems Lifecycle Management', 'The OT Systems and Software Engineering Officer will be working closely with the CIO to address the challenges of software and systems lifecycle management. This initiative focuses on the development, and implementation of STScI-wide approaches to systems development and life-cycle management.'),
(5, 'Optimize with Technology', 'Adapt or die.....the Institute must always strive to optimize and improve in many areas. In FY2004, we will focus on using technologies to improve communications between missions, divisions and individuals such as scheduling events, calendaring, remote collaborations and visibility into various business and program management functions.');

--
-- Truncate table before insert "maturitylist"
--

--
-- Dumping data for table "maturitylist"
--

INSERT INTO "maturitylist" ("maturityID", "maturityDesc", "maturityText") VALUES
(0, '', ''),
(1, 'idea', 'This is the primordial state of all projects. An idea describes a current problem and/or an alternative future. Ideas need to be fleshed out and vetted before they become visible in the portfolio.  That is, ideas are not visible in the tool unless you explicitly ask for them.

    Required Metadata: Proposer, Project Name, Description, Rationale.'),
(2, 'scoping', 'Work toward promotion to concept has been approved.  This work requires developing a brief description of what the project would involve, and a rationale describing why this would be beneficial to the Institute. The rationale explains the links between the work and STScI strategic goals, deliverables in support of the Missions (HST, JWST, CMO, OPO) or Division level strategies and goals.  At a minimum, the original sponsor or customer need to clarify the rationale; the hosting organization (e.g., CPT or ESS) needs to describe what the project would involve. For many ideas this scoping activity can take place at TC meetings. If necessary, additional business or technical experts can be invited to these meetings. For more complex ideas, a TC member can be assigned to coordinate the scoping effort.'),
(3, 'concept', 'The original idea has been documented in sufficient detail that the project could remain in this state without key ideas being forgotten.  This is the stage where synergies and shared interests between similar or related concepts and proposals will become apparent, stakeholders can be identified, and stakeholders can negotiate concepts to maximize the overall benefit to the Institute.

    Required Metadata: Idea + Customer, Stakeholders, Host, Technology, Strategies, Initiative, Project Type, Drivers, Portfolio Category'),
(4, 'business case', 'Work to develop a business case has been approved.  The CIO decides how much detail is required, and the customer and hosting division are responsible for developing it.  A business case compares the costs (labor, non-labor, opportunity) of doing the work with the potential benefits, and the risk of not doing, the work to show a return on investments. For projects that require significant investments, the funding source(s) and type(s) must also be identified at this stage.'),
(5, 'proposal', 'The original idea has now been defined in sufficient detail that it can be considered for implementation in the current or next cycle. At this stage it is still a proposed project, since there is no guarantee that we have the resources to implement it.

    Required Metadata: Concept + Risk levels, Sponsor, Funding type, Portfolio Category'),
(6, 'project', 'The proposal has been committed to an implementation plan, and has been handed off to its host division for execution as a project.');

--
-- Truncate table before insert "migrate_version"
--

--
-- Truncate table before insert "months"
--

--
-- Dumping data for table "months"
--

INSERT INTO "months" ("monthID", "monthDesc") VALUES
(0, ''),
(1, 'Jan'),
(2, 'Feb'),
(3, 'Mar'),
(4, 'Apr'),
(5, 'May'),
(6, 'Jun'),
(7, 'Jul'),
(8, 'Aug'),
(9, 'Sep'),
(10, 'Oct'),
(11, 'Nov'),
(12, 'Dec');

--
-- Truncate table before insert "portfolio"
--

--
-- Dumping data for table "portfolio"
--

ALTER TABLE "portfolio" DISABLE TRIGGER ALL;
INSERT INTO "portfolio" ("projectID", "flavorID", "initiativeID", "scopeID", "complexityID", "visibilityID", "risklevelID", "costlevelID", "rpu", "budgetInFY", "budgetInQ", "lastModified", "lastModifiedBy") VALUES
(1, 0, 3, 0, 0, 0, 0, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'PAYNE'),
(2, 1, 3, 1, 2, 3, 1, 1, 0, 2006, 1, '2006-01-27 17:12:08', 'HUIZINGA'),
(4, 1, 5, 3, 3, 3, 3, 3, 0, 2005, 4, '2005-11-08 23:48:17', 'payne'),
(5, 0, 3, 3, 0, 0, 0, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(6, 0, 5, 2, 0, 0, 0, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'WOLFFL'),
(8, 1, 5, 3, 3, 3, 2, 3, 0.5, NULL, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(9, 0, 5, 3, 0, 0, 0, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'PAYNE'),
(10, 3, 1, 2, 2, 2, 2, 2, 0, NULL, NULL, '2015-06-25 13:36:57', 'SINGER'),
(11, 3, 5, 3, 2, 3, 3, 3, 0, NULL, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(12, 0, 5, 3, 0, 0, 0, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'payne'),
(13, 1, 3, 3, 3, 3, 3, 3, 0, NULL, NULL, '2015-06-25 13:36:57', 'WOLFFL'),
(14, 0, 3, 0, 0, 0, 0, 0, 0.5, NULL, NULL, '2015-06-25 13:36:57', 'SINGER'),
(15, 0, 3, 0, 0, 0, 0, 0, 1, NULL, NULL, '2015-06-25 13:36:57', 'SINGER'),
(16, 2, 2, 3, 3, 3, 2, 3, 0, NULL, NULL, '2015-06-25 13:36:57', 'WOLFFL'),
(17, 0, 5, 0, 0, 0, 0, 0, 1, NULL, NULL, '2015-06-25 13:36:57', 'DURKIN'),
(18, 0, 3, 0, 0, 0, 0, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'payne'),
(19, 0, 3, 3, 0, 0, 0, 0, 0.25, NULL, NULL, '2015-06-25 13:36:57', 'DURKIN'),
(20, 0, 3, 0, 0, 0, 0, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'payne'),
(21, 0, 3, 2, 0, 0, 0, 0, 0.25, NULL, NULL, '2015-06-25 13:36:57', 'DURKIN'),
(22, 0, 3, 2, 0, 0, 0, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'PAYNE'),
(23, 1, 3, 3, 3, 1, 1, 2, 0, 2005, NULL, '2015-06-25 13:36:57', 'PAYNE'),
(24, 1, 3, 3, 3, 3, 2, 3, 0.25, NULL, NULL, '2015-06-25 13:36:57', 'SINGER'),
(25, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'payne'),
(26, 1, 3, 3, 3, 2, 2, 3, 0, 2005, NULL, '2015-06-25 13:36:57', 'WOLFFL'),
(27, 0, 3, 1, 0, 0, 0, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(28, 0, 2, 2, 0, 0, 0, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'PAYNE'),
(31, 0, 3, 2, 0, 0, 0, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'payne'),
(33, 1, 3, 3, 3, 2, 2, 3, 0, 2005, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(34, 2, 2, 2, 3, 3, 2, 0, 0, 2005, NULL, '2015-06-25 13:36:57', 'WOLFFL'),
(35, 0, 3, 2, 0, 0, 0, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'payne'),
(36, 1, 3, 3, 2, 3, 3, 3, 0, NULL, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(37, 0, 2, 3, 0, 0, 0, 0, 1, NULL, NULL, '2015-06-25 13:36:57', 'SINGER'),
(38, 0, 3, 2, 0, 0, 0, 0, 0.5, NULL, NULL, '2015-06-25 13:36:57', 'SINGER'),
(39, 0, 5, 3, 0, 0, 0, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(40, 0, 2, 3, 0, 0, 0, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'PAYNE'),
(42, 0, 3, 2, 0, 0, 0, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(43, 1, 3, 2, 3, 2, 2, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(44, 1, 5, 3, 3, 2, 2, 3, 0, NULL, NULL, '2015-06-25 13:36:57', 'WOLFFL'),
(45, 0, 3, 2, 0, 0, 0, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'payne'),
(46, 0, 2, 2, 0, 0, 0, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'PAYNE'),
(47, 1, 2, 3, 2, 3, 2, 2, 0.25, NULL, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(48, 1, 2, 3, 3, 3, 2, 3, 0, NULL, NULL, '2015-06-25 13:36:57', 'WOLFFL'),
(49, 1, 3, 3, 3, 3, 2, 3, 0, 2005, NULL, '2015-06-25 13:36:57', 'PAYNE'),
(50, 0, 3, 1, 0, 0, 0, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(51, 0, 3, 3, 0, 0, 0, 0, 1, NULL, NULL, '2015-06-25 13:36:57', 'SINGER'),
(52, 0, 4, 3, 3, 3, 2, 3, 0, NULL, NULL, '2015-06-25 13:36:57', 'WOLFFL'),
(53, 1, 1, 2, 3, 2, 2, 1, 0, 2006, 3, '2005-10-25 01:20:48', 'WOLFFL'),
(54, 0, 3, 2, 0, 0, 0, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'PAYNE'),
(56, 1, 5, 2, 3, 3, 3, 3, 0.25, 2006, 3, '2005-10-25 01:23:04', 'WOLFFL'),
(57, 1, 3, 3, 3, 1, 2, 3, 0, 2005, NULL, '2015-06-25 13:36:57', 'SINGER'),
(58, 0, 3, 3, 0, 0, 0, 0, 0.25, NULL, NULL, '2015-06-25 13:36:57', 'DURKIN'),
(60, 0, 3, 2, 0, 0, 0, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'DURKIN'),
(61, 0, 3, 2, 0, 0, 0, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'payne'),
(62, 1, 3, 3, 3, 2, 2, 2, 0, 2005, NULL, '2015-06-25 13:36:57', 'SINGER'),
(63, 0, 3, 1, 0, 0, 0, 0, 0.25, NULL, NULL, '2015-06-25 13:36:57', 'SINGER'),
(64, 1, 5, 2, 2, 3, 2, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'WOLFFL'),
(65, 3, 5, 1, 3, 2, 1, 2, 0.5, NULL, NULL, '2015-06-25 13:36:57', 'SINGER'),
(66, 0, 3, 3, 0, 0, 0, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'PAYNE'),
(67, 0, 3, 2, 0, 0, 0, 0, 0.25, NULL, NULL, '2015-06-25 13:36:57', 'SINGER'),
(68, 0, 3, 2, 0, 0, 0, 0, 0.75, NULL, NULL, '2015-06-25 13:36:57', 'SINGER'),
(69, 0, 3, 2, 0, 0, 0, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(70, 0, 5, 1, 0, 0, 0, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(73, 0, 3, 1, 0, 0, 0, 0, 1.5, NULL, NULL, '2015-06-25 13:36:57', 'SINGER'),
(74, 0, 3, 1, 0, 0, 0, 0, 1, NULL, NULL, '2015-06-25 13:36:57', 'SINGER'),
(75, 2, 2, 1, 1, 1, 1, 1, 0.5, NULL, NULL, '2015-06-25 13:36:57', 'SINGER'),
(76, 0, 3, 1, 0, 0, 0, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'payne'),
(77, 1, 4, 3, 3, 3, 2, 3, 0, NULL, NULL, '2015-06-25 13:36:57', 'WOLFFL'),
(78, 0, 3, 2, 0, 0, 0, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'SINGER'),
(79, 0, 3, 2, 0, 0, 0, 0, 0.5, NULL, NULL, '2015-06-25 13:36:57', 'SINGER'),
(80, 0, 3, 2, 0, 0, 0, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'payne'),
(81, 0, 3, 2, 0, 0, 0, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'PAYNE'),
(82, 0, 3, 3, 0, 0, 0, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'PAYNE'),
(83, 0, 3, 3, 0, 0, 0, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'payne'),
(84, 1, 3, 3, 3, 1, 2, 2, 0, NULL, NULL, '2015-06-25 13:36:57', 'SINGER'),
(85, 1, 3, 3, 3, 2, 3, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'WOLFFL'),
(86, 2, 1, 2, 3, 3, 3, 3, 0, NULL, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(87, 1, 3, 3, 3, 3, 2, 3, 0, NULL, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(88, 1, 3, 0, 3, 2, 1, 3, 0.25, NULL, NULL, '2015-06-25 13:36:57', 'SINGER'),
(89, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'DURKIN'),
(90, 1, 3, 2, 2, 1, 3, 1, 0.5, NULL, NULL, '2015-06-25 13:36:57', 'WOLFFL'),
(92, 0, 3, 3, 0, 0, 0, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'SINGER'),
(93, 1, 1, 3, 2, 2, 2, 2, 0, 2005, 4, '2005-11-28 14:42:23', 'HUIZINGA'),
(94, 0, 2, 2, 0, 0, 0, 0, 0.25, NULL, NULL, '2015-06-25 13:36:57', 'DURKIN'),
(95, 1, 2, 3, 3, 1, 1, 3, 0, NULL, NULL, '2015-06-25 13:36:57', 'SINGER'),
(96, 0, 5, 0, 0, 0, 0, 0, 0.5, NULL, NULL, '2015-06-25 13:36:57', 'DURKIN'),
(97, 0, 5, 3, 0, 0, 0, 0, 1, NULL, NULL, '2015-06-25 13:36:57', 'SINGER'),
(98, 1, 3, 2, 1, 2, 1, 3, 0, NULL, NULL, '2015-06-25 13:36:57', 'SINGER'),
(101, 1, 3, 3, 3, 3, 2, 2, 0, 2005, NULL, '2015-06-25 13:36:57', 'SINGER'),
(102, 1, 3, 1, 2, 1, 1, 2, 0, NULL, NULL, '2015-06-25 13:36:57', 'WOLFFL'),
(103, 1, 3, 2, 3, 1, 1, 3, 0.5, NULL, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(104, 1, 2, 3, 2, 2, 3, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'SINGER'),
(105, 1, 3, 3, 3, 3, 3, 3, 0, NULL, NULL, '2015-06-25 13:36:57', 'SINGER'),
(106, 2, 5, 3, 3, 1, 2, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(107, 1, 3, 2, 2, 1, 2, 2, 0, 2004, 4, '2005-10-25 02:20:27', 'WOLFFL'),
(108, 1, 3, 3, 3, 3, 2, 2, 0, 2005, 4, '2005-10-25 02:26:23', 'WOLFFL'),
(109, 1, 3, 3, 3, 2, 2, 3, 0.25, NULL, NULL, '2015-06-25 13:36:57', 'DURKIN'),
(110, 1, 5, 3, 2, 3, 2, 0, 0, 2005, NULL, '2015-06-25 13:36:57', 'WOLFFL'),
(111, 1, 4, 1, 1, 1, 3, 1, 0, 2005, NULL, '2015-06-25 13:36:57', 'WOLFFL'),
(112, 1, 3, 3, 3, 3, 3, 3, 0, NULL, NULL, '2015-06-25 13:36:57', 'SINGER'),
(113, 1, 5, 3, 3, 2, 2, 3, 0, NULL, NULL, '2015-06-25 13:36:57', 'SINGER'),
(114, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'SINGER'),
(115, 1, 2, 3, 3, 3, 3, 2, 0, 2005, 3, '2005-09-22 20:08:53', 'SINGER'),
(116, 1, 5, 3, 2, 1, 3, 2, 0, NULL, NULL, '2015-06-25 13:36:57', 'SINGER'),
(117, 1, 3, 3, 3, 3, 2, 3, 0, 2005, NULL, '2015-06-25 13:36:57', 'SINGER'),
(118, 1, 1, 2, 3, 3, 2, 0, 0, 2004, 4, '2004-07-21 15:24:17', 'HUIZINGA'),
(119, 2, 5, 2, 2, 2, 3, 0, 0, 2004, 4, '2005-04-23 05:07:54', 'WOLFFL'),
(120, 1, 3, 3, 3, 3, 2, 0, 0, 2004, 4, '2005-01-21 20:49:43', 'HUIZINGA'),
(121, 1, 5, 3, 3, 3, 3, 3, 0, 2005, 3, '2005-11-28 14:43:13', 'HUIZINGA'),
(122, 1, 2, 2, 2, 1, 2, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(123, 1, 5, 2, 3, 3, 3, 2, 0, NULL, NULL, '2015-06-25 13:36:57', 'SINGER'),
(124, 1, 5, 3, 3, 3, 3, 2, 0, NULL, NULL, '2015-06-25 13:36:57', 'SINGER'),
(125, 1, 3, 3, 3, 3, 3, 1, 0, 2005, NULL, '2015-06-25 13:36:57', 'SINGER'),
(126, 1, 3, 3, 3, 3, 3, 3, 0, 2005, NULL, '2015-06-25 13:36:57', 'SINGER'),
(127, 1, 3, 3, 0, 2, 2, 2, 0, 2004, 4, '2005-11-28 14:44:00', 'HUIZINGA'),
(128, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'SINGER'),
(129, 1, 3, 3, 3, 3, 3, 3, 0, NULL, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(130, 1, 3, 3, 3, 3, 2, 3, 0, 2005, NULL, '2015-06-25 13:36:57', 'SINGER'),
(131, 1, 3, 2, 2, 1, 2, 2, 0, NULL, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(132, 1, 3, 3, 3, 3, 2, 3, 0, 2005, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(133, 2, 3, 2, 2, 3, 2, 2, 0, 2005, NULL, '2015-06-25 13:36:57', 'SINGER'),
(134, 1, 5, 1, 2, 1, 3, 0, 0, 2005, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(135, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(136, 1, 3, 3, 3, 3, 3, 3, 0, NULL, NULL, '2015-06-25 13:36:57', 'SINGER'),
(137, 1, 3, 3, 3, 3, 3, 3, 0, NULL, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(138, 0, 2, 2, 2, 3, 3, 2, 0, NULL, NULL, '2015-06-25 13:36:57', 'WOLFFL'),
(139, 1, 3, 2, 2, 3, 2, 3, 0, NULL, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(140, 1, 3, 3, 3, 2, 2, 3, 0, NULL, NULL, '2015-06-25 13:36:57', 'SINGER'),
(141, 2, 1, 3, 2, 1, 2, 3, 0, NULL, NULL, '2015-06-25 13:36:57', 'SINGER'),
(142, 1, 3, 1, 2, 3, 2, 0, 0, 2005, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(143, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(144, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(145, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(146, 1, 5, 2, 2, 3, 2, 2, 0, NULL, NULL, '2015-06-25 13:36:57', 'SINGER'),
(147, 2, 2, 3, 3, 1, 3, 3, 0, NULL, NULL, '2015-06-25 13:36:57', 'payne'),
(148, 2, 3, 2, 2, 1, 1, 2, 0, NULL, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(149, 0, 0, 3, 3, 2, 2, 3, 0, NULL, NULL, '2015-06-25 13:36:57', 'WMILLER'),
(150, 1, 4, 3, 2, 3, 3, 3, 0, NULL, NULL, '2015-06-25 13:36:57', 'WMILLER'),
(151, 1, 2, 3, 3, 3, 3, 3, 0, NULL, NULL, '2015-06-25 13:36:57', 'WOLFFL'),
(152, 1, 3, 3, 3, 3, 3, 2, 0, 2004, 1, '2005-05-09 15:32:03', 'SINGER'),
(153, 1, 3, 3, 3, 1, 1, 1, 0, 2005, 3, '2005-11-28 14:46:54', 'HUIZINGA'),
(154, 2, 3, 2, 2, 3, 2, 2, 0, NULL, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(155, 2, 3, 2, 2, 3, 2, 2, 0, NULL, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(156, 2, 3, 1, 1, 2, 1, 2, 0, 2006, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(157, 0, 0, 0, 0, 0, 0, 0, 0, 2006, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(158, 2, 3, 2, 2, 3, 2, 2, 0, NULL, NULL, '2015-06-25 13:36:57', 'SINGER'),
(159, 2, 3, 2, 2, 3, 1, 2, 0, NULL, NULL, '2015-06-25 13:36:57', 'SINGER'),
(160, 2, 3, 2, 2, 1, 1, 1, 0, NULL, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(161, 1, 5, 3, 3, 3, 3, 3, 0, NULL, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(162, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(163, 1, 3, 3, 3, 3, 3, 3, 0, NULL, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(164, 3, 2, 0, 0, 0, 0, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'SINGER'),
(165, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(166, 0, 4, 2, 3, 1, 3, 2, 0, NULL, NULL, '2015-06-25 13:36:57', 'SINGER'),
(167, 1, 2, 2, 3, 2, 1, 2, 0, NULL, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(168, 1, 5, 2, 2, 3, 3, 2, 0, NULL, NULL, '2015-06-25 13:36:57', 'SINGER'),
(169, 1, 3, 3, 2, 3, 3, 3, 0, NULL, NULL, '2015-06-25 13:36:57', 'WOLFFL'),
(170, 1, 3, 3, 3, 3, 3, 3, 0, NULL, NULL, '2015-06-25 13:36:57', 'SINGER'),
(171, 1, 3, 3, 3, 3, 2, 1, 0, 2005, 3, '2005-12-05 20:03:56', 'HUIZINGA'),
(172, 1, 3, 3, 3, 3, 2, 1, 0, NULL, NULL, '2015-06-25 13:36:57', 'SINGER'),
(173, 1, 2, 2, 3, 3, 3, 2, 0, NULL, NULL, '2015-06-25 13:36:57', 'WOLFFL'),
(174, 1, 3, 3, 3, 2, 3, 2, 0, NULL, NULL, '2015-06-25 13:36:57', 'SINGER'),
(175, 1, 3, 3, 3, 2, 2, 3, 0, NULL, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(176, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(177, 1, 0, 2, 2, 3, 1, 2, 0, NULL, NULL, '2015-06-25 13:36:57', 'PANTALONE'),
(178, 1, 3, 2, 2, 3, 3, 2, 0, NULL, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(179, 1, 3, 2, 2, 3, 3, 1, 0, 2006, 1, '2005-10-17 17:52:16', 'SINGER'),
(180, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(181, 1, 3, 2, 2, 3, 2, 3, 0, NULL, NULL, '2015-06-25 13:36:57', 'SINGER'),
(182, 1, 3, 3, 3, 3, 1, 2, 0, NULL, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(183, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'SINGER'),
(184, 1, 3, 3, 3, 2, 2, 3, 0, NULL, NULL, '2015-06-25 13:36:57', 'SINGER'),
(185, 1, 3, 3, 2, 2, 2, 2, 0, 2006, NULL, '2015-06-25 13:36:57', 'payne'),
(186, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'SINGER'),
(187, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(188, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(189, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(190, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(191, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(192, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(193, 2, 0, 3, 2, 3, 3, 3, 0, NULL, NULL, '2015-06-25 13:36:57', 'WMILLER'),
(194, 1, 3, 3, 3, 3, 2, 3, 0, NULL, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(195, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'SINGER'),
(196, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'SINGER'),
(197, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'SINGER'),
(198, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'MATTS'),
(199, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(200, 1, 2, 2, 3, 3, 3, 2, 0, NULL, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(201, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(202, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(203, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'TCOMEAU'),
(204, 1, 3, 3, 3, 3, 3, 3, 0, NULL, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(205, 1, 0, 2, 2, 3, 0, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'SINGER'),
(206, 1, 5, 0, 3, 3, 3, 3, 0, 2006, 3, '2005-10-20 19:33:56', 'PANTALONE'),
(207, 1, 0, 3, 3, 3, 3, 3, 0, NULL, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(208, 1, 3, 3, 3, 3, 3, 3, 0, NULL, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(209, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(210, 1, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(211, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'SINGER'),
(212, 1, 3, 3, 2, 2, 2, 2, 0, NULL, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(213, 1, 3, 3, 3, 2, 2, 2, 0, NULL, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(214, 3, 3, 1, 1, 1, 1, 1, 0, NULL, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(215, 0, 0, 3, 3, 2, 3, 3, 0, NULL, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(216, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(217, 0, 3, 3, 3, 3, 3, 3, 0, NULL, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(218, 1, 3, 3, 3, 3, 3, 3, 0, NULL, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(219, 1, 2, 3, 3, 2, 3, 3, 0, NULL, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(220, 0, 0, 1, 1, 1, 2, 1, 0, NULL, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(221, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'MATTS'),
(222, 0, 3, 3, 3, 3, 3, 3, 0, NULL, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(223, 1, 3, 3, 3, 3, 2, 3, 0, NULL, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(224, 1, 3, 3, 3, 3, 3, 3, 0, NULL, NULL, '2015-06-25 13:36:57', 'MATTS'),
(225, 1, 3, 3, 3, 3, 3, 3, 0, NULL, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(226, 1, 3, 3, 3, 3, 3, 3, 0, NULL, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(227, 1, 5, 3, 3, 3, 3, 3, 0, NULL, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(228, 1, 3, 3, 3, 3, 2, 3, 0, NULL, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(229, 1, 3, 3, 3, 3, 3, 3, 0, NULL, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(230, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'MATTS'),
(231, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'payne'),
(232, 1, 2, 3, 3, 3, 3, 3, 0, NULL, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(233, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'MATTS'),
(234, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'MATTS'),
(235, 1, 0, 2, 3, 2, 1, 2, 0, NULL, NULL, '2015-06-25 13:36:57', 'PANTALONE'),
(236, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(237, 1, 0, 2, 3, 2, 2, 2, 0, NULL, NULL, '2015-06-25 13:36:57', 'PANTALONE'),
(238, 1, 3, 3, 3, 3, 3, 3, 0, NULL, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(239, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'HUIZINGA'),
(288, 0, 0, 0, 0, 0, 2, 0, 0, 2010, 1, '2015-08-01 21:57:02', 'payne'),
(289, 1, 1, 2, 2, 2, 2, 2, NULL, 2015, 4, '2015-11-08 18:05:26', 'payne'),
(303, 0, 1, 2, 2, 0, 0, 0, 0, NULL, NULL, '2015-06-25 13:36:57', 'payne'),
(304, 1, 0, 0, 2, 2, 3, 3, 1, NULL, NULL, '2015-06-25 13:36:57', 'payne'),
(305, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2015-08-03 20:25:07', 'payne'),
(306, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2015-08-03 21:13:10', 'payne'),
(307, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2015-08-03 21:16:02', 'payne'),
(308, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2015-08-03 21:51:58', 'payne'),
(309, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2015-08-03 21:51:58', 'payne'),
(310, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2015-08-03 21:53:03', 'payne'),
(311, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2015-08-03 22:44:29', 'payne'),
(312, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2015-08-03 22:47:56', 'payne'),
(313, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2015-08-03 22:48:46', 'payne');

--
-- Truncate table before insert "progresslist"
--

--
-- Dumping data for table "progresslist"
--

INSERT INTO "progresslist" ("progressID", "progressDesc", "progressText") VALUES
(0, 'none', ''),
(2, 'definition', 'In this phase, the work to be done by the project is specified in sufficient detail that it can be scheduled for execution, but without doing any of the work that belongs in the planning or execution phase.  A defined project has resource requirements, schedule constraints, and risks specified in sufficient detail for sequencing with respect to other projects, and for loading into an integrated schedule.'),
(3, 'scheduling', 'In this phase the WBS is transformed into a schedule by assigning resources to the project, satisfying schedule constraints, and eliminating resource conflicts.  A planned project will start executing when the schedule says so.'),
(4, 'executing', 'In this phase the work of the project gets done.  The design work of finding a solution occurs in this phase.  A variety of project management tools is available to accommodate the wide variety of projects: system design reviews for new hardware installations, code reviews for software projects, Institute architecture reviews for projects with a broad impact, readiness reviews, and acceptance reviews may all take place before the end of the execution phase.'),
(5, 'closeout', 'In this phase the lessons learned meeting is held, along with other evaluations that may be called for.');

--
-- Truncate table before insert "project"
--

--
-- Dumping data for table "project"
--

ALTER TABLE "project" DISABLE TRIGGER ALL;
INSERT INTO "project" ("projectID", "project_url", "progressID", "proj_manager", "tech_manager", "proj_visibilityID", "startedOn", "finishedOn", "lastModified", "lastModifiedBy") VALUES
(1, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'PAYNE'),
(2, '', 0, '', '', 1, NULL, NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(4, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'payne'),
(5, '', 0, 'John Gfeller', 'John Gfeller', 0, NULL, NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(6, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'WOLFFL'),
(8, '', 5, 'Craig Hollinshead', '', 1, '2004-09-21', NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(9, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'PAYNE'),
(10, 'http://www.stsci.edu/wiki/ot/StaffComputingStrategy', 5, 'Carl Johnson', 'Edwin Huizinga', 1, '2005-02-27', NULL, '2013-04-28 05:25:53', 'SINGER'),
(11, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(12, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'payne'),
(13, '', 0, '', '', 2, NULL, NULL, '2013-04-28 05:25:53', 'WOLFFL'),
(14, '', 5, 'Matt Divens', 'Phil Grant', 2, NULL, NULL, '2013-04-28 05:25:53', 'SINGER'),
(15, '', 2, '?', 'Lynn Bogovich', 1, NULL, NULL, '2013-04-28 05:25:53', 'SINGER'),
(16, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'WOLFFL'),
(17, '', 5, 'Greg McLeskey', '', 1, NULL, NULL, '2013-04-28 05:25:53', 'DURKIN'),
(18, '', 0, 'Jamie Lipinski', 'Lynn Bogovich', 1, NULL, NULL, '2013-04-28 05:25:53', 'payne'),
(19, '', 5, 'Jim Grice', 'Tim Kimball', 1, NULL, NULL, '2013-04-28 05:25:53', 'DURKIN'),
(20, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'payne'),
(21, '', 5, 'Tom Matthiesen', '', 2, NULL, NULL, '2013-04-28 05:25:53', 'DURKIN'),
(22, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'PAYNE'),
(23, '', 0, '', '', 1, NULL, NULL, '2013-04-28 05:25:53', 'PAYNE'),
(24, '', 5, 'Gary Gladney', 'Gary Gladney', 3, NULL, NULL, '2013-04-28 05:25:53', 'SINGER'),
(25, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'payne'),
(26, '', 0, '', '', 1, NULL, NULL, '2013-04-28 05:25:53', 'WOLFFL'),
(27, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(28, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'PAYNE'),
(31, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'payne'),
(33, '', 0, '', '', 2, NULL, NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(34, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'WOLFFL'),
(35, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'payne'),
(36, '', 0, '', '', 1, NULL, NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(37, '', 5, 'Lynn Bogovich', 'Dave Unger', 1, NULL, NULL, '2013-04-28 05:25:53', 'SINGER'),
(38, '', 5, 'Otto Wassenius', 'Phil Grant', 1, NULL, NULL, '2013-04-28 05:25:53', 'SINGER'),
(39, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(40, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'PAYNE'),
(42, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(43, '', 0, '', '', 1, NULL, NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(44, '', 0, '', '', 1, NULL, NULL, '2013-04-28 05:25:53', 'WOLFFL'),
(45, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'payne'),
(46, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'PAYNE'),
(47, '', 5, 'Matt Sienkiewicz', '', 1, '2005-03-21', NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(48, '', 0, '', '', 1, NULL, NULL, '2013-04-28 05:25:53', 'WOLFFL'),
(49, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'PAYNE'),
(50, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(51, '', 5, 'Tony Nueslein', 'Leyla Rutz', 1, NULL, NULL, '2013-04-28 05:25:53', 'SINGER'),
(52, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'WOLFFL'),
(53, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'WOLFFL'),
(54, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'PAYNE'),
(56, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'WOLFFL'),
(57, '', 0, '', '', 2, NULL, NULL, '2013-04-28 05:25:53', 'SINGER'),
(58, '', 5, 'Lisa Kleinwort', 'Joy Hale', 1, NULL, NULL, '2013-04-28 05:25:53', 'DURKIN'),
(60, '', 5, 'Ron Russell', '', 3, NULL, NULL, '2013-04-28 05:25:53', 'DURKIN'),
(61, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'payne'),
(62, '', 5, 'Tom Matthiesen', '', 1, NULL, NULL, '2013-04-28 05:25:53', 'SINGER'),
(63, '', 5, 'Jim Grice', 'Tom Walker', 3, NULL, NULL, '2013-04-28 05:25:53', 'SINGER'),
(64, '', 0, '', '', 1, NULL, NULL, '2013-04-28 05:25:53', 'WOLFFL'),
(65, '', 4, 'Rick Singer', 'Joy Hale', 1, '2005-01-03', NULL, '2013-04-28 05:25:53', 'SINGER'),
(66, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'PAYNE'),
(67, '', 0, 'Tom Walker', '', 2, NULL, NULL, '2013-04-28 05:25:53', 'SINGER'),
(68, '', 5, 'Lynn Bogovich', 'Jamie Lipinski', 1, NULL, NULL, '2013-04-28 05:25:53', 'SINGER'),
(69, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(70, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(73, '', 5, 'Lynn Bogovich', '', 1, NULL, NULL, '2013-04-28 05:25:53', 'SINGER'),
(74, '', 5, 'Mark Calvin', 'Ron Russell', 1, NULL, '2005-03-02', '2013-04-28 05:25:53', 'SINGER'),
(75, '', 5, 'Pam Bresnahan', 'Rick Singer', 1, NULL, NULL, '2013-04-28 05:25:53', 'SINGER'),
(76, '', 5, 'Rick Singer', 'Matt Sienkiewicz', 2, NULL, NULL, '2013-04-28 05:25:53', 'payne'),
(77, '', 0, '', '', 1, NULL, NULL, '2013-04-28 05:25:53', 'WOLFFL'),
(78, '', 5, 'Carey Myers', 'Mike Chyatte', 2, NULL, NULL, '2013-04-28 05:25:53', 'SINGER'),
(79, '', 5, 'Ron Russell', 'Tony Roman', 1, NULL, '2005-04-27', '2013-04-28 05:25:53', 'SINGER'),
(80, '', 0, 'Bernie Simon', 'Bernie Simon', 0, NULL, NULL, '2013-04-28 05:25:53', 'payne'),
(81, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'PAYNE'),
(82, '', 0, 'Carl Biagetti', '?', 3, NULL, NULL, '2013-04-28 05:25:53', 'PAYNE'),
(83, '', 4, 'John Will, Price', '', 2, NULL, NULL, '2013-04-28 05:25:53', 'payne'),
(84, '', 5, 'Otto Wassenius', '', 1, '2005-06-17', NULL, '2013-04-28 05:25:53', 'SINGER'),
(85, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'WOLFFL'),
(86, '', 5, 'JHU Capstone Project', '', 1, NULL, NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(87, '', 0, 'Tony Nueslein', 'Cindy Pantalone', 0, NULL, NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(88, '', 4, 'Tony Nueslein', 'Leyla Rutz', 1, NULL, NULL, '2013-04-28 05:25:53', 'SINGER'),
(89, '', 5, 'Gary Gladney', '', 2, NULL, NULL, '2013-04-28 05:25:53', 'DURKIN'),
(90, '', 0, '', '', 1, NULL, NULL, '2013-04-28 05:25:53', 'WOLFFL'),
(92, '', 5, 'Faith Abney', 'Elena Sody', 2, NULL, NULL, '2013-04-28 05:25:53', 'SINGER'),
(93, 'http://www.stsci.edu/wiki/cisd/WebProxyServerLimitedImplementation/WikiHome', 5, 'Mike Watterson', '', 1, NULL, NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(94, '', 5, 'Jim Younger', '', 2, NULL, NULL, '2013-04-28 05:25:53', 'DURKIN'),
(95, '', 4, 'Jim Younger', '', 3, NULL, NULL, '2013-04-28 05:25:53', 'SINGER'),
(96, '', 5, 'Leigh McCuen', '', 2, NULL, NULL, '2013-04-28 05:25:53', 'DURKIN'),
(97, '', 5, 'Craig Hollinshead', '', 2, NULL, NULL, '2013-04-28 05:25:53', 'SINGER'),
(98, '', 5, 'Warren Miller', '', 3, NULL, NULL, '2013-04-28 05:25:53', 'SINGER'),
(101, '', 0, '', '', 1, NULL, NULL, '2013-04-28 05:25:53', 'SINGER'),
(102, '', 0, '', '', 3, NULL, NULL, '2013-04-28 05:25:53', 'WOLFFL'),
(103, '', 5, 'Jamie Lipinski', '', 1, '2004-08-01', '2004-11-30', '2013-04-28 05:25:53', 'HUIZINGA'),
(104, '', 5, 'Craig Hollinshead', '', 3, NULL, NULL, '2013-04-28 05:25:53', 'SINGER'),
(105, '', 5, 'Gary Gladney', 'Gary Gladney', 1, NULL, '2005-05-23', '2013-04-28 05:25:53', 'SINGER'),
(106, '', 4, 'Lynn Barranger', '', 1, NULL, NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(107, '', 0, '', '', 1, NULL, NULL, '2013-04-28 05:25:53', 'WOLFFL'),
(108, '', 0, '', '', 1, NULL, NULL, '2013-04-28 05:25:53', 'WOLFFL'),
(109, '', 5, 'Jim Grice', '', 2, NULL, NULL, '2013-04-28 05:25:53', 'DURKIN'),
(110, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'WOLFFL'),
(111, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'WOLFFL'),
(112, '', 0, '', '', 1, NULL, NULL, '2013-04-28 05:25:53', 'SINGER'),
(113, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'SINGER'),
(114, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'SINGER'),
(115, 'http://www.stsci.edu/wiki/cisd/Webinatorimplementation/WikiHome', 5, 'Mike Watterson', '', 1, NULL, NULL, '2013-04-28 05:25:53', 'SINGER'),
(116, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'SINGER'),
(117, 'http://www.stsci.edu/wiki/cisd/SolarisUsbLacie/WikiHome', 4, 'Matt Divens', '', 1, NULL, NULL, '2013-04-28 05:25:53', 'SINGER'),
(118, '', 0, '', '', 1, NULL, NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(119, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'WOLFFL'),
(120, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(121, 'http://www.stsci.edu/wiki/cisd/CopyAndPrintServices/WikiHome', 4, 'Cindy Pantalone', '', 1, NULL, NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(122, '', 0, '', '', 1, NULL, NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(123, '', 0, '', '', 1, NULL, NULL, '2013-04-28 05:25:53', 'SINGER'),
(124, '', 0, '', '', 2, NULL, NULL, '2013-04-28 05:25:53', 'SINGER'),
(125, '', 0, '', '', 1, NULL, NULL, '2013-04-28 05:25:53', 'SINGER'),
(126, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'SINGER'),
(127, 'http://www.stsci.edu/wiki/cisd/RedundantMainNetworkSwitch/WikiHome', 2, 'Gary Gladney', '', 1, NULL, NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(128, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'SINGER'),
(129, '', 4, 'capstone', '', 1, NULL, NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(130, 'http://www.stsci.edu/wiki/cisd/CompassUpgrade/WikiHome', 5, 'Mark Calvin', 'Sarah Chichester', 1, '2005-04-15', '2005-10-26', '2013-04-28 05:25:53', 'SINGER'),
(131, '', 0, '', '', 1, NULL, NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(132, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(133, '', 4, 'Edwin Huizinga', '', 1, NULL, NULL, '2013-04-28 05:25:53', 'SINGER'),
(134, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(135, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(136, '', 5, 'John Jasen', '', 1, NULL, '2005-03-02', '2013-04-28 05:25:53', 'SINGER'),
(137, '', 5, 'Greg McLeskey', '', 1, '2004-11-22', NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(138, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'WOLFFL'),
(139, '', 5, 'Jim Grice', '', 1, '2005-03-15', NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(140, '', 5, 'Tom Matthiesen', '', 1, NULL, NULL, '2013-04-28 05:25:53', 'SINGER'),
(141, 'http://www.stsci.edu/wiki/cisd/KeplerArchitecture', 5, 'Harry Payne', 'John Scott', 1, '2004-09-20', NULL, '2013-04-28 05:25:53', 'SINGER'),
(142, '', 0, '', '', 1, NULL, NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(143, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(144, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(145, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(146, '', 0, '', '', 2, NULL, NULL, '2013-04-28 05:25:53', 'SINGER'),
(147, '', 0, '', '', 1, NULL, NULL, '2013-04-28 05:25:53', 'payne'),
(148, '', 5, 'Lynn Bogovich', '', 1, '2005-01-24', NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(149, '', 5, 'Warren Miller', 'Rich Kidwell', 3, '2004-07-27', '2005-10-03', '2013-04-28 05:25:53', 'WMILLER'),
(150, '', 5, 'Warren Miller', 'John Schultz', 3, '2004-07-15', '2005-09-30', '2013-04-28 05:25:53', 'WMILLER'),
(151, '', 4, 'Warren Miller', 'Rusty Whitman', 2, '2004-10-01', NULL, '2013-04-28 05:25:53', 'WOLFFL'),
(152, '', 5, 'Faith Abney', '', 1, NULL, NULL, '2013-04-28 05:25:53', 'SINGER'),
(153, 'http://www.stsci.edu/wiki/cisd/SogsUpsReplacement/WikiHome', 5, 'Tom Mathiesen', '', 1, NULL, NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(154, 'http://www.stsci.edu/wiki/cisd/Kepler/WikiHome', 4, 'Rick Singer', '', 1, NULL, NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(155, 'http://www.stsci.edu/wiki/cisd/Kepler/WikiHome', 2, 'Rick Singer', '', 1, NULL, NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(156, 'http://www.stsci.edu/wiki/cisd/Kepler/WikiHome', 2, 'Rick Singer', '', 1, NULL, NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(157, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(158, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'SINGER'),
(159, '', 0, '', '', 1, NULL, NULL, '2013-04-28 05:25:53', 'SINGER'),
(160, 'http://www.stsci.edu/wiki/cisd/Kepler/WikiHome', 2, 'Rick Singer', '', 1, NULL, NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(161, 'http://www.stsci.edu/wiki/cisd/StreamingInfrastructureRevamp/WikiHome', 5, 'Calvin Tullos', '', 1, '2005-05-23', NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(162, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(163, 'http://www.stsci.edu/wiki/cisd/SybaseReplicationServerSystemsUpgrade/WikiHome', 4, 'Tony Nueslein', '', 1, '2005-08-01', '2006-01-25', '2013-04-28 05:25:53', 'HUIZINGA'),
(164, 'http://www.stsci.edu/wiki/ot/StudyStsciInformationManagementagile164/WikiHome', 4, 'Rick Singer', 'Rick Singer', 3, NULL, NULL, '2013-04-28 05:25:53', 'SINGER'),
(165, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(166, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'SINGER'),
(167, 'http://www.stsci.edu/wiki/cisd/HrisStrategy/WikiHome', 4, 'Steve Hulbert', '', 1, NULL, NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(168, '', 0, '', '', 2, NULL, NULL, '2013-04-28 05:25:53', 'SINGER'),
(169, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'WOLFFL'),
(170, 'http://www.stsci.edu/wiki/cisd/GoodsExpansionProject/WikiHome', 5, 'John Jasen', '', 1, '2005-06-06', '2005-12-07', '2013-04-28 05:25:53', 'SINGER'),
(171, '', 0, '', '', 1, NULL, NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(172, '', 0, '', '', 0, '2005-08-11', NULL, '2013-04-28 05:25:53', 'SINGER'),
(173, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'WOLFFL'),
(174, '', 0, '', '', 1, NULL, NULL, '2013-04-28 05:25:53', 'SINGER'),
(175, 'http://www.stsci.edu/wiki/cisd/MacAndLinuxVpn/WikiHome', 5, 'Gary Gladney', '', 1, '2005-10-30', '2006-04-17', '2013-04-28 05:25:53', 'HUIZINGA'),
(176, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(177, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'PANTALONE'),
(178, 'http://www.stsci.edu/wiki/cisd/MacOsxUpgradeToTiger/WikiHome', 4, 'Jim Grice', 'Mark Calvin', 1, '2006-01-23', NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(179, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'SINGER'),
(180, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(181, '', 5, 'John Jasen', '', 1, NULL, '2005-10-26', '2013-04-28 05:25:53', 'SINGER'),
(182, 'http://www.stsci.edu/wiki/cisd/WorkgroupStorageForInsInstallationAndIntegration/WikiHome', 4, 'Tom Walker', '', 1, NULL, NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(183, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'SINGER'),
(184, '', 0, '', '', 1, NULL, NULL, '2013-04-28 05:25:53', 'SINGER'),
(185, 'http://www.stsci.edu/wiki/cisd/ReplacePqm/WikiHome', 2, 'Harry Payne', '', 1, NULL, NULL, '2013-04-28 05:25:53', 'payne'),
(186, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'SINGER'),
(187, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(188, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(189, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(190, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(191, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(192, '', 0, '', '', 1, NULL, NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(193, '', 4, 'Warren Miller', 'Alberto Conti', 3, NULL, NULL, '2013-04-28 05:25:53', 'WMILLER'),
(194, 'http://www.stsci.edu/wiki/cisd/MacPilot/WikiHome', 5, 'Valerie Ausherman', 'Ron Russell', 3, NULL, NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(195, '', 0, '', '', 1, NULL, NULL, '2013-04-28 05:25:53', 'SINGER'),
(196, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'SINGER'),
(197, '', 0, '', '', 1, NULL, NULL, '2013-04-28 05:25:53', 'SINGER'),
(198, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'MATTS'),
(199, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(200, 'http://www.stsci.edu/wiki/cisd/AvlVideoStorage/WikiHome', 4, 'Lynn Barranger', 'Hugh Wilson', 1, NULL, '2006-03-20', '2013-04-28 05:25:53', 'HUIZINGA'),
(201, '', 0, '', '', 1, NULL, NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(202, '', 0, '', '', 3, NULL, NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(203, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'TCOMEAU'),
(204, 'http://www.stsci.edu/wiki/cisd/WindowsDomainServersUpgrade/WikiHome', 4, 'Ron Russell', 'Hugh Wilson', 1, '2005-11-30', NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(205, '', 2, 'John Kaylor', 'TBD', 0, NULL, NULL, '2013-04-28 05:25:53', 'SINGER'),
(206, '', 0, '', 'Dave Unger', 0, NULL, NULL, '2013-04-28 05:25:53', 'PANTALONE'),
(207, '', 0, '', '', 1, NULL, NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(208, '', 5, 'Bernie Simon', '', 3, '2006-02-22', NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(209, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(210, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(211, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'SINGER'),
(212, 'http://www.stsci.edu/wiki/cisd/RedundantMainNetworkSwitch/WikiHome', 4, 'Gary Gladney', '', 1, NULL, NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(213, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(214, 'http://www.stsci.edu/wiki/cisd/CentralizedDataStorage/WikiHome', 4, 'Carl Johnson', 'Edwin Huizinga', 1, '2006-02-01', NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(215, 'http://www.stsci.edu/wiki/cisd/OpoAvidReplacement/WikiHome', 4, 'Jim Grice', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(216, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(217, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(218, 'http://www.stsci.edu/wiki/cisd/MigrationOfPrimaryWebService/WikiHome', 4, 'Dan Deighton', '', 1, NULL, NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(219, 'http://www.stsci.edu/wiki/cisd/OpoBandwidthSolution/WikiHome', 4, 'Doris McClure', 'Kelly Williamson', 1, '2006-01-19', NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(220, '', 4, 'Helmut Jenkner', '', 3, NULL, NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(221, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'MATTS'),
(222, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(223, 'http://www.stsci.edu/wiki/cisd/Replacethorinbackupdlt/WikiHome', 5, 'Adam Spickler', '', 3, NULL, NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(224, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'MATTS'),
(225, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(226, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(227, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(228, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(229, 'http://www.stsci.edu/wiki/cisd/InsMacInlineIntegration/WikiHome', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(230, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'MATTS'),
(231, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'payne'),
(232, 'http://www.stsci.edu/wiki/cisd/Bulletinboardsystem/WikiHome', 2, 'Leigh McCuen', '', 1, '2006-05-02', NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(233, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', ''),
(234, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', ''),
(235, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', 'PANTALONE'),
(236, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', ''),
(237, '', 2, '', '', 1, NULL, NULL, '2013-04-28 05:25:53', 'PANTALONE'),
(238, '', 0, '', '', 1, NULL, NULL, '2013-04-28 05:25:53', 'HUIZINGA'),
(239, '', 0, '', '', 0, NULL, NULL, '2013-04-28 05:25:53', ''),
(288, '', 0, '', '', 1, NULL, NULL, '2015-07-29 00:37:42', 'payne'),
(289, '', 2, '', '', 2, '2015-07-01', NULL, '2015-11-08 19:10:46', 'payne'),
(303, '', 0, '', '', 0, NULL, NULL, '2015-06-15 17:43:58', 'payne'),
(304, '', 0, '', '', 2, NULL, NULL, '2015-06-22 05:03:40', 'payne'),
(305, '', 0, '', '', 0, NULL, NULL, '2015-08-03 20:25:08', 'payne'),
(306, '', 0, '', '', 0, NULL, NULL, '2015-08-03 21:13:10', 'payne'),
(307, '', 0, '', '', 0, NULL, NULL, '2015-08-03 21:16:02', 'payne'),
(308, '', 0, '', '', 0, NULL, NULL, '2015-08-03 21:51:58', 'payne'),
(309, '', 0, '', '', 0, NULL, NULL, '2015-08-03 21:51:58', 'payne'),
(310, '', 0, '', '', 0, NULL, NULL, '2015-08-03 21:53:03', 'payne'),
(311, '', 0, '', '', 0, NULL, NULL, '2015-08-03 22:44:29', 'payne'),
(312, '', 0, '', '', 0, NULL, NULL, '2015-08-03 22:47:56', 'payne'),
(313, '', 0, '', '', 0, NULL, NULL, '2015-08-03 22:48:46', 'payne');
ALTER TABLE "project" DISABLE TRIGGER ALL;

--
-- Truncate table before insert "proj_visibilitylist"
--

--
-- Dumping data for table "proj_visibilitylist"
--

INSERT INTO "proj_visibilitylist" ("proj_visibilityID", "proj_visibilityDesc", "proj_visibilityText") VALUES
(0, 'none', ''),
(1, 'integrated', ''),
(2, 'regular', ''),
(3, 'other', '');

--
-- Truncate table before insert "quarters"
--

--
-- Dumping data for table "quarters"
--

INSERT INTO "quarters" ("quarterID", "quarterDesc") VALUES
(0, ''),
(1, 'Q1 (Fall)'),
(2, 'Q2 (Winter)'),
(3, 'Q3 (Spring)'),
(4, 'Q4 (Summer)');

--
-- Truncate table before insert "risklevellist"
--

--
-- Dumping data for table "risklevellist"
--

INSERT INTO "risklevellist" ("risklevelID", "risklevelDesc", "risklevelText") VALUES
(0, 'none', ''),
(1, 'high', ''),
(2, 'medium', ''),
(3, 'low', '');

--
-- Truncate table before insert "scopelist"
--

--
-- Dumping data for table "scopelist"
--

INSERT INTO "scopelist" ("scopeID", "scopeDesc", "scopeText") VALUES
(0, 'none', ''),
(1, 'large', ''),
(2, 'medium', ''),
(3, 'small', '');

--
-- Truncate table before insert "sponsorlist"
--

--
-- Dumping data for table "sponsorlist"
--

INSERT INTO "sponsorlist" ("sponsorID", "sponsorDesc", "sponsorText") VALUES
(0, 'none', ''),
(1, 'HST', 'The HST mission'),
(2, 'JWST', 'The JWST mission'),
(3, 'CMO', 'The Community Missions Office'),
(4, 'BRC', 'The Business Resource Center'),
(5, 'OT', 'The Office of Technology'),
(6, 'CPT', 'The Center for Process and Technology'),
(7, 'DO', 'The Director''s Office'),
(8, 'ESS', 'The Engineering and Software Services Division'),
(9, 'INS', 'The Instruments Division'),
(10, 'ODM', 'The Operations & Data Management Division'),
(11, 'PM', 'Program Management'),
(12, 'SD', 'The Science Division'),
(13, 'OPO', 'The Office of Public Outreach'),
(14, 'PI', 'A principal investigator of a grant or contract.'),
(15, 'STScI', 'The Institute as a whole.');

--
-- Truncate table before insert "stakeholder"
--

--
-- Dumping data for table "stakeholder"
--

ALTER TABLE "stakeholder" DISABLE TRIGGER ALL;
INSERT INTO "stakeholder" ("projectID", "stakeholderID") VALUES
(34, 14),
(34, 10),
(34, 1),
(101, 2),
(101, 8),
(101, 4),
(53, 6),
(53, 5),
(53, 4),
(75, 2),
(75, 8),
(75, 6),
(75, 5),
(26, 12),
(26, 14),
(26, 10),
(26, 1),
(2, 15),
(26, 8),
(26, 6),
(8, 12),
(8, 6),
(8, 5),
(8, 4),
(4, 15),
(93, 12),
(84, 12),
(84, 10),
(84, 1),
(84, 6),
(124, 12),
(10, 15),
(11, 12),
(11, 8),
(11, 6),
(110, 10),
(64, 15),
(62, 10),
(62, 9),
(110, 9),
(110, 8),
(110, 6),
(102, 6),
(77, 15),
(62, 1),
(62, 8),
(62, 6),
(57, 15),
(13, 15),
(16, 11),
(16, 10),
(16, 8),
(16, 6),
(23, 12),
(23, 14),
(23, 10),
(23, 1),
(23, 8),
(23, 6),
(33, 10),
(33, 1),
(33, 8),
(33, 6),
(33, 3),
(34, 3),
(36, 4),
(43, 10),
(43, 9),
(43, 1),
(43, 8),
(43, 6),
(43, 4),
(44, 10),
(44, 9),
(44, 1),
(44, 8),
(44, 6),
(44, 4),
(109, 15),
(111, 10),
(111, 2),
(111, 1),
(111, 8),
(111, 6),
(111, 3),
(111, 5),
(127, 15),
(125, 12),
(106, 13),
(120, 15),
(119, 15),
(118, 10),
(118, 1),
(118, 8),
(118, 6),
(118, 3),
(130, 10),
(130, 1),
(130, 6),
(133, 10),
(103, 6),
(108, 10),
(108, 9),
(108, 1),
(108, 8),
(108, 6),
(108, 5),
(133, 2),
(133, 9),
(133, 1),
(133, 8),
(133, 6),
(133, 3),
(133, 5),
(86, 15),
(126, 12),
(126, 14),
(126, 13),
(51, 10),
(51, 1),
(51, 8),
(51, 6),
(51, 5),
(51, 4),
(129, 6),
(112, 12),
(112, 9),
(117, 12),
(117, 9),
(136, 15),
(137, 13),
(137, 10),
(137, 9),
(137, 1),
(137, 8),
(137, 6),
(137, 4),
(139, 15),
(141, 10),
(141, 2),
(141, 9),
(141, 1),
(141, 8),
(141, 6),
(141, 3),
(141, 5),
(121, 6),
(121, 4),
(132, 10),
(132, 1),
(132, 3),
(115, 15),
(142, 15),
(104, 16),
(87, 15),
(140, 15),
(123, 15),
(116, 15),
(147, 15),
(149, 10),
(149, 1),
(149, 8),
(149, 6),
(150, 10),
(150, 1),
(150, 8),
(150, 6),
(151, 10),
(151, 2),
(151, 9),
(151, 8),
(152, 10),
(152, 1),
(152, 6),
(152, 3),
(152, 5),
(153, 10),
(153, 9),
(153, 1),
(153, 8),
(153, 6),
(154, 10),
(154, 2),
(154, 1),
(154, 8),
(154, 6),
(154, 3),
(154, 5),
(148, 10),
(148, 2),
(148, 9),
(148, 1),
(148, 8),
(148, 6),
(148, 5),
(162, 4),
(163, 10),
(163, 8),
(163, 6),
(163, 3),
(163, 5),
(166, 15),
(124, 8),
(124, 6),
(124, 5),
(104, 1),
(161, 15),
(170, 12),
(170, 6),
(171, 15),
(172, 15),
(177, 11),
(177, 6),
(177, 4),
(179, 16),
(179, 9),
(179, 1),
(179, 8),
(107, 10),
(107, 8),
(107, 6),
(107, 3),
(125, 6),
(160, 10),
(160, 1),
(160, 8),
(160, 6),
(160, 3),
(175, 16),
(175, 12),
(175, 10),
(175, 2),
(175, 9),
(175, 1),
(175, 8),
(175, 6),
(167, 15),
(174, 10),
(174, 1),
(174, 8),
(174, 6),
(16, 4),
(173, 11),
(173, 4),
(178, 12),
(178, 13),
(178, 10),
(178, 9),
(178, 8),
(24, 15),
(158, 10),
(158, 1),
(158, 8),
(158, 6),
(158, 3),
(156, 10),
(156, 1),
(156, 8),
(156, 6),
(156, 3),
(65, 15),
(56, 15),
(95, 16),
(95, 1),
(105, 15),
(93, 10),
(93, 1),
(93, 8),
(93, 3),
(117, 1),
(117, 8),
(131, 10),
(131, 1),
(131, 8),
(131, 6),
(131, 3),
(131, 5),
(159, 10),
(159, 1),
(159, 8),
(159, 6),
(159, 3),
(164, 13),
(168, 4),
(169, 15),
(84, 5),
(164, 1),
(164, 8),
(164, 6),
(164, 3),
(164, 4),
(184, 10),
(184, 1),
(184, 8),
(184, 6),
(184, 3),
(184, 5),
(181, 12),
(181, 14),
(181, 6),
(193, 5),
(193, 6),
(193, 8),
(193, 10),
(193, 12),
(194, 15),
(200, 13),
(200, 10),
(200, 1),
(200, 6),
(200, 5),
(206, 4),
(206, 6),
(102, 8),
(102, 1),
(102, 9),
(102, 10),
(102, 13),
(210, 2),
(210, 8),
(204, 15),
(212, 15),
(213, 15),
(214, 15),
(215, 13),
(185, 10),
(185, 2),
(185, 1),
(185, 8),
(185, 6),
(185, 3),
(217, 3),
(217, 6),
(217, 8),
(217, 1),
(217, 9),
(217, 2),
(217, 10),
(218, 15),
(219, 13),
(219, 10),
(219, 2),
(219, 1),
(219, 6),
(219, 3),
(219, 5),
(192, 4),
(192, 11),
(220, 10),
(220, 2),
(220, 9),
(220, 8),
(220, 6),
(220, 3),
(220, 5),
(208, 14),
(208, 10),
(208, 1),
(208, 8),
(208, 3),
(222, 12),
(222, 9),
(222, 8),
(223, 15),
(224, 15),
(225, 15),
(226, 6),
(226, 1),
(226, 13),
(227, 3),
(227, 1),
(227, 2),
(227, 13),
(228, 15),
(229, 9),
(229, 1),
(235, 15),
(237, 6),
(237, 4),
(238, 3),
(238, 6),
(238, 8),
(238, 1),
(238, 10),
(232, 15),
(25, 0),
(303, 3),
(303, 2),
(303, 1),
(288, 4),
(288, 3),
(288, 5),
(304, 5);

--
-- Truncate table before insert "stakeholderlist"
--

--
-- Dumping data for table "stakeholderlist"
--

INSERT INTO "stakeholderlist" ("stakeholderID", "stakeholderDesc", "stakeholderText") VALUES
(1, 'HST', 'The HST mission'),
(2, 'JWST', 'The JWST mission'),
(3, 'CMO', 'The Community Missions Office'),
(4, 'BRC', 'The Business Resource Center'),
(5, 'CIO', 'The Chief Information Officer'),
(6, 'CPT', 'The Center for Process and Technology'),
(7, 'DO', 'The Director''s Office'),
(8, 'ESS', 'The Engineering and Software Services Division'),
(9, 'INS', 'The Instruments Division'),
(10, 'ODM', 'The Operations & Data Management Division'),
(11, 'PM', 'Program Management'),
(12, 'SD', 'The Science Division'),
(13, 'OPO', 'The Office of Public Outreach'),
(14, 'PI', 'A principal investigator of a grant or contract.'),
(15, 'STScI', 'The Institute as a whole.'),
(16, 'SPD', 'The Science Policies Division');

--
-- Truncate table before insert "strategy"
--

--
-- Dumping data for table "strategy"
--

ALTER TABLE "strategy" DISABLE TRIGGER ALL;
INSERT INTO "strategy" ("projectID", "strategyID") VALUES
(8, 3),
(11, 1),
(28, 3),
(15, 2),
(37, 2),
(38, 2),
(46, 2),
(51, 1),
(62, 5),
(82, 2),
(1, 1),
(2, 280),
(4, 280),
(5, 1),
(6, 1),
(9, 1),
(10, 4),
(12, 1),
(13, 280),
(14, 1),
(16, 290),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(26, 280),
(27, 1),
(31, 1),
(33, 1),
(34, 5),
(35, 1),
(36, 1),
(39, 1),
(40, 1),
(42, 1),
(43, 5),
(94, 2),
(45, 1),
(47, 1),
(48, 290),
(49, 1),
(50, 1),
(52, 1),
(86, 300),
(54, 1),
(56, 280),
(57, 1),
(58, 1),
(60, 1),
(61, 1),
(63, 1),
(64, 280),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 5),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(83, 1),
(84, 1),
(102, 220),
(85, 1),
(161, 1),
(95, 2),
(97, 3),
(96, 2),
(92, 1),
(101, 1),
(105, 1),
(10, 1),
(11, 3),
(34, 1),
(34, 6),
(43, 2),
(43, 1),
(43, 6),
(130, 5),
(164, 1),
(44, 280),
(106, 6),
(109, 1),
(62, 1),
(77, 4),
(77, 2),
(77, 1),
(111, 4),
(111, 1),
(127, 1),
(125, 1),
(125, 3),
(122, 6),
(120, 1),
(119, 2),
(119, 3),
(118, 5),
(118, 1),
(103, 1),
(108, 110),
(133, 5),
(133, 4),
(133, 1),
(115, 1),
(86, 330),
(126, 3),
(129, 1),
(112, 1),
(117, 1),
(136, 1),
(137, 1),
(139, 1),
(140, 1),
(141, 7),
(121, 1),
(132, 1),
(142, 1),
(102, 110),
(110, 1),
(104, 2),
(104, 3),
(87, 1),
(123, 1),
(116, 1),
(131, 2),
(131, 1),
(131, 3),
(134, 2),
(134, 1),
(149, 5),
(150, 5),
(150, 2),
(151, 7),
(152, 1),
(153, 1),
(148, 4),
(163, 5),
(170, 3),
(171, 1),
(172, 1),
(177, 1),
(107, 300),
(107, 330),
(107, 110),
(124, 3),
(160, 7),
(160, 5),
(175, 1),
(167, 1),
(174, 2),
(113, 1),
(113, 6),
(146, 1),
(173, 1),
(178, 1),
(138, 1),
(179, 2),
(98, 5),
(158, 7),
(158, 5),
(156, 7),
(156, 5),
(155, 7),
(155, 5),
(154, 7),
(154, 5),
(147, 1),
(147, 3),
(159, 7),
(159, 5),
(168, 1),
(169, 3),
(151, 4),
(184, 5),
(184, 2),
(181, 2),
(181, 3),
(182, 2),
(185, 1),
(193, 340),
(194, 270),
(200, 220),
(206, 1),
(16, 280),
(48, 300),
(48, 280),
(53, 290),
(86, 320),
(86, 230),
(90, 240),
(90, 230),
(90, 250),
(90, 330),
(90, 300),
(93, 280),
(102, 270),
(107, 280),
(108, 330),
(108, 290),
(108, 300),
(108, 280),
(121, 280),
(121, 290),
(210, 280),
(210, 160),
(204, 260),
(207, 280),
(212, 260),
(213, 110),
(214, 270),
(215, 220),
(217, 260),
(218, 260),
(219, 220),
(192, 260),
(220, 320),
(220, 110),
(208, 310),
(214, 110),
(226, 230),
(226, 250),
(227, 230),
(229, 110),
(235, 1),
(237, 1),
(238, 110),
(232, 260);
ALTER TABLE "strategy" DISABLE TRIGGER ALL;

--
-- Truncate table before insert "strategylist"
--

--
-- Dumping data for table "strategylist"
--

INSERT INTO "strategylist" ("strategyID", "strategyDesc", "strategyText") VALUES
(1, '_(2002 goal) Operate STScI', 'We recognize the importance of supporting and advancing all our missions - HST, NGST, the Archive, our Outreach programs - to enable our vision.  We will continue to work with the community to investigate and advocate new missions, to enable forefront scientific advances and continue to change humankind''s view of its place in the universe.'),
(2, '_(2002 goal) Optimize scientific return of HST', 'Hubble is our first telescope. In 1990, it launched a new era of astronomical research from space with unprecedented capability, data quality, and data volume. We will optimize the science program of Hubble''s second ten years and continue to serve the community in its best scientific use of the facility.'),
(3, '_(2002 goal) Be among top research institutions', 'Our excellent astronomy and support staff has made us a first rank research institute. We will continue to attract excellent scientists and provide them with an academic environment that nourishes superlative research.'),
(4, '_(2002 goal) Plan for JWST', 'JWST will be our second major telescope. Starting in this next decade, it will explore the universe at infrared wavelengths. We will help develop-then operate-the best JWST possible, with full inheritance of Hubble lessons-learned and full engagement of the community in its development.'),
(5, '_(2002 goal) Run a world-class data archive', 'Our archive has become a first-rank research facility in its own right, providing unique research and outreach opportunities. We will continue to run the best astronomical data archive in the world, adding new data sets, providing new research tools, and collaborating with other data centers to provide an international astronomy data system.'),
(6, '_(2002 goal) Improve and extend outreach', 'Our education and public outreach programs have engaged the public and made Hubble a household word. We will improve these programs, extend them to NGST and make them available to the rest of astronomy, assuring maximum benefit from the research enterprise to the public.'),
(7, '_(2002 goal) Technology transfer', 'Our new technologies to improve Hubble operations have been applied beyond astronomy; we expect this trend to continue, increasing the benefit to society as a whole.  We will continue to facilitate the transfer of our technical innovations to other fields of research and to the private sector.'),
(8, '_(2002 goal) State-of-the-art technical staff', 'Our approaches and solutions to technical, operational and procedural challenges have changed the way astronomy is done and have been adopted by observatories worldwide.  We will continue to attract the best technical staff to advance and apply the state of the art for astronomy.'),
(100, 'Business Base', 'I. Business base (retention, enhancement, or acquisition of missions that support substantial fractions of the Institute’s workforce.)'),
(110, 'Business Base:HST', 'I.1. Maintain HST as the world’s leading observatory at least until JWST operations begin.'),
(120, 'Business Base:HST:Advocate Servicing', 'I.1.a. Advocate for Hubble servicing as supported by NASA and the NRC (Lanzerotti report).'),
(130, 'Business Base:HST:Extend Lifetime', 'I.1.b. Enhance the scientific impact of HST by extending its operational lifetime.'),
(140, 'Business Base:HST:Create Rebid Proposal', 'I.1.c. Create AURA proposal for next HST contract.'),
(150, 'Business Base:JWST', 'I.2. Ensure that JWST meets its science goals.'),
(160, 'Business Base:JWST:Operations Systems', 'I.2.a. Develop JWST operations systems that ensure productive use of the observatory for its science goals.'),
(170, 'Business Base:JWST:Build Public Support', 'I.2.b. Build public support for JWST through coordinated approaches to the community, NASA, &amp; the public.'),
(180, 'Business Base:Next UVOIR', 'I.3. Compete to be the S&amp;OC for the next major UVOIR mission(s).'),
(190, 'Business Base:Next UVOIR:TPF-C Mission Def', 'I.3.a. Work with NASA on TPF-C mission definition.'),
(200, 'Business Base:Next UVOIR:TPF-C S&amp;OC', 'I.3.b. Create proposal team and support to bid for the TPF-C S&amp;OC.'),
(210, 'Business Base:Next UVOIR:Other Mission Defs', 'I.3.c. Work with NASA and the community on definition of other (than TPF-C) large UVOIR missions.'),
(220, 'Business Base:OPO', 'I.4. Make OPO a national center for education and outreach in astronomy.'),
(230, 'Business Base:OPO:HST at Forefront', 'I.4.a. Keep HST at the forefront of astronomy in the public mind.'),
(240, 'Business Base:OPO:Broaden Reach', 'I.4.b. Expand the cross-section of the American public that we reach.'),
(250, 'Business Base:OPO:Support Teaching', 'I.4.c. Provide resources and tools across multiple NASA missions to support teaching of science, technology, engineering, and mathematics.'),
(260, 'Competitiveness', 'II. Competitiveness (ways we carry out our work or acquisition of special work that improves the likelihood of enhancing our business base).'),
(270, 'Competitiveness:Costs', 'II.1. Decrease costs at STScI while preserving the scientific and technical excellence that gives us a competitive advantage for mission support.'),
(280, 'Competitiveness:Costs:Process Improvement', 'II.1.a. Improve STScI processes to comply with all major mission performance, cost, &amp; schedule requirements.'),
(290, 'Competitiveness:Costs:Full Cost Evaluations', 'II.1.b. Use full cost evaluations of our work to guide strategic choices of the systems and services we will support and the evolution of those systems and services.'),
(300, 'Competitiveness:Costs:Optimize Across Missions', 'II.1.c. Coordinate HST and JWST best practices and investments to optimize work across both missions.'),
(310, 'Competitiveness:Community', 'II.2. Support community-led astronomy programs that enhance our core competencies &amp; contributions.'),
(320, 'Competitiveness:Community:NVO Leadership', 'II.2.a.  Make STScI a leader of the NVO operational facility.'),
(330, 'Competitiveness:Community:Small Mission Costs', 'II.2.b. Reduce costs for small mission support by leveraging our expertise and infrastructure.'),
(340, 'Competitiveness:Community:Partnerships', 'II.2.c. Seek partnerships on community projects that focus on key scientific and technological areas relevant to large astronomy programs.');

--
-- Truncate table before insert "technologylist"
--

--
-- Dumping data for table "technologylist"
--

INSERT INTO "technologylist" ("technologyID", "technologyDesc", "technologyText", "technologyRationale") VALUES
(0, 'none', '', ''),
(1, '1. Security', 'The current security model for the Institute is primarily host based (i.e., defending each host independently), with additional layers of security provided by a firewall and filtering routers.  The internal network is defended by prohibiting connections from untrusted machines (like personal laptops).

    Users have multiple accounts, basically one for each operating system and service.  A number of services use LDAP for authentication, but in general, a user will have many independent authentication records.  There is a password policy.', 'Implementing the requirements of NASA Procedures and Guidelines (NPG) 2810 is a key contractual obligation, as well as a way of mitigating risk.  Process improvements that automate those procedures have a significant potential for labor savings.  Applying security patches is now a labor-intensive procedure.  A virtual private network (VPN) can provide secure off-site access to critical information, which would otherwise be impossible or require labor-intensive access control configuration.

    Implementing IT security is a CPT responsibility.'),
(2, '2. Network', 'The Network Infrastructure encompasses all hardware, software and services required to provide communication paths between internal and external IT equipment. Hardware includes the cabling plant, routers, swThe Network Infrastructure encompasses all hardware, software and services required to provide communication paths between internal and external IT equipment. Hardware includes the cabling plant, routers, switches, wireless stations and servers. Software includes the various services, and network traffic and security monitoring and management tools. Services include DNS, DHCP, RADIUS and Dialup modem access.

    STScI’s network is based on a Gigabit backbone that serves the two main locations: Muller and Bloomberg. Our connection to the Internet is provided through GSFC and NISN. The Institute has a dedicated OC12/OC3 connection over AT&T’s SONET to GSFC, which supports both the HST data connections and the connections to and from the Internet at large. For our connection to the Internet, GSFC provides us with a 26Mbit connection through NISN. The Network provides internal and external users and processes access to information,  compute resources and services. External access to our network is essential to our contractual obligation to provide HST and MAST data products, public outreach content, and other information to the astronomical community and the public at large.', 'The Network provides internal and external users and processes access to information and compute resources and services. External access to our network is essential to our contractual obligation to provide HST and MAST data products, public outreach content, and other information to the astronomical community and the public at large.  The Network is also crucial to our staff in the performance of its duties, and any network outage results in lost productivity.  So the entire Institute, at least, is a stakeholder in the maintenance of the network.

    Demand for network bandwidth increases with time; it is important to monitor network activity and to main a safety margin of available bandwidth.  Continuous, incremental increases in network performance and reliability generally have a lower overall cost than painful, dramatic upgrades.  Leveraging our network infrastructure to support new services, such as wireless or Voice-over-IP (VoIP) telephony, has a potential for labor and cost savings.'),
(3, '3. Science Computing', 'Science computing supports independent scientific research by staff members.  This is distinct from the computing for functional science that supports the missions, described separately under the heading Mission Systems.  Science computing covers a broad range problems, from those that fit easily within the capability of a functional desktop to those just on the edge of being technically feasible.  It covers a range of collaboration from that of an individual researcher, with perhaps a student or off-site collaborators, to large groups (e.g., GOODS) that need to process, share, and visualize huge amounts of data.  It covers a range of activity from writing proposals to writing papers, along with everything in between, like analysis, software development, budgets, etc.  On the other hand, science computing may not have the rigorous (and expensive) uptime and configuration control requirements of the production environment of the mission systems.', 'One of the Institute strategic business drivers is the desire that the Institute be among the top research institutions.  Establishing an IT environment to support the computing needs of cutting edge scientific research is one response to this desire.'),
(4, '4. Business Systems', 'Business Systems are employed by the Business Resources Center (BRC) and Program Management staff to support STScI business functions such as:  accounting, budgets, contracts, facilities management, finance, grants administration, human resources, procurement, property administration, publications, travel support, and the tracking and reporting of contractual requirements.', 'Business systems must conform to best practices and contractual requirements, operate effectively, and be kept up to supported versions and recent technologies.  Business information needs to be shared to avoid duplication and inconsistency, and to enable Institute staff and customers.  As such, the Institute as a whole is a stakeholder in the success of projects that support the business systems infrastructure.'),
(5, '5. Mission Systems', 'Supporting the operation of the HST mission and planning for the JWST mission are two key Institute functions.  The ability to support and plan for multiple missions (e.g., FUSE, GALEX, Kepler) is a key Institute strategy.  Many of our contractual obligations are associated with mission support, especially the HST mission.  There is IT infrastructure critical to fulfilling these obligations, and managing the risk associated with that infrastructure has a high priority.  There is also a high cost associated with this infrastructure, and cost reductions are also a high priority.

    The Planning and Scheduling system supports development, testing, and operations of HST observing.  This includes proposal solicitation and selection, command development and command load generation, mission planning and scheduling, servicing mission support, safe mode re-planning, and target of opportunity observations.

    The Data Management Systems (DMS) process the science and engineering data from HST and other missions, store data and derived metadata, and support data retrieval and distribution to observers and the community at large. The current operational environment is dominated by a Solaris Sunfire 15K and an EMC storage device, and includes a mix of Solaris and Windows systems.  The live Archive is stored on the EMC (“Data Depot”) and backed up on MO platter jukeboxes. Duplicate platters are kept in a physically separate location for permanent storage. HST data are also replicated to the ST-ECF in Germany and the CADC in Canada.  For every system in the operational environment, there is a comparable system in the development environment, which is also used for unit testing and very limited integration testing.  An <a href="http://www.stsci.edu/institute/center/docs/sunFire15kOCD.pdf">
    Operations Concept Document</a> describes the governance of the DMS.', 'The data management systems are critical to ingest and processing of HST data, and in providing the astronomical community with access to their observations and to the MAST Archive as a whole.  These projects protect our investment in those systems by making sure that changes are made in a carefully controlled and tested manner.'),
(6, '6. Staff Computing', 'The computer environment that most STScI staff members encounter every day consists largely of desktop workstations, laptops, and centralized file servers.  Users at their desks need access to all of the resources required to perform their jobs.  Some users need access to some resources when they are away from their desks, while for others this access is at least a convenience.  In the past, our response to this matrix of different kinds of users with different kinds of requirements and varying levels of mobility has been a proliferation of solutions.  Many users have more than one system, often side-by-side on the same desktop.  The number of choices complicates procurement, maintenance, and support, which leads to cost and to risk.

    In addition, CPT provides some (low) level of services for users with platforms other than those CPT supports.  Network access, hardware support, and software support for personal mobile and wireless computers of staff and visitors are commonly requested services.', 'Our staff computer environment has suffered from a piecemeal approach to parts of the solution space, especially from a platform (operating-system) specific approach to solutions.  One project here would develop a a strategy for a holistic approach, driven by the need to reduce the cost of procurement and support for these systems.  The other projects address needs that are too urgent to wait for the strategy project to finish.'),
(7, '7. IT Administration', 'IT Administration consists of the set of methodologies, processes, and techniques that the Center for Process and Technology employs to provide IT support and services to all areas and missions of STScI.', 'We don’t always like to acknowledge it, but it costs something to use technology to do our jobs. One of the most basic costs for STScI is the overhead of administering our IT environment.  These projects are intended to derive the most benefit from these costs.'),
(9, '8.a. E-mail', 'Electronic mail is a mainstay of communications among STScI staff and the astronomical community. Tens of thousands of messages, and hundreds of megabytes of content are sent and received every business day.  Almost all e-mail traffic is handled by Mirapoint appliances. Staff access to e-mail is provided by platform-dependent clients and web browsers.  Mailing lists are handled in Majordomo, outside of the Mirapoint appliances.', 'Communication is a requirement for STScI staff to carry out their functional and scientific tasks. It is imperative that the e-mail service be robust, responsive, and highly available.  It is desirable to reduce the impact of unsolicited commercial e-mail (spam).'),
(10, '8.b. Web', 'The Institute’s web content is served by a mix of Apache, Zope, IIS, PHP, and Tomcat servers.  Apache is mainly for serving static content.  It runs under Windows and many flavors of Unix, including Mac OS X. The main web site is an Apache site, but the Institute’s “top level” pages are generated dynamically in Zope and served out by reverse proxy from Apache. IIS is generally reserved for Web applications that must run under Windows. Apache/PHP drives the dynamic web site of the Archive. Tomcat provides web access to APT. Other content is spread out over dozens of Apache/Solaris systems–a historical situation traceable to chronic disk space shortages on the central server. ', 'Information provided by way of the Web is a vital service to the astronomical community, our staff, and the public.  This information is expected to be available at all times, current, easy to navigate, searchable, and under appropriate access control.  Employees expect access to job-related information, even when they are off-site.  The infrastructure required to support this service must be highly available (always up), must be secure against abuse, must have sufficient computing capacity to generate dynamic content, and must allow content providers to control access to their content.'),
(11, '8.c. Enterprise Directory', 'The Enterprise Directory is a centralized, authoritative source of staff information.  Data were recently migrated from Remedy to LDAP, and made available for a number of read-only applications, such as e-mail address books. LDAP is used to authenticate users of our central e-mail servers. A web interface is available for divisional administrators to manage basic employee information.  Users can manage some of their own information (password, contact information, photo).', 'A single source for staff information eliminates duplication and inconsistency, and LDAP makes this information more accessible by many applications.'),
(12, '8.d. Backups', 'Centrally controlled and routinely scheduled backups occur for a large collection of STScI file servers, data storage areas, and desktop machines. Additionally. STScI staff personally backup data on a variety of media (floppy, Zip, CD, DVD disks, external drives FireWire drives, etc.) ', 'Routine backup of local and central storage guarantees data integrity and provides a low-level of security for data critical to staff activities. With the current resources, it is impossible to backup all data files currently on the STScI network.'),
(13, '8.e. Streaming', 'CPT provides routine real-time webcasting services for events in the STScI auditorium and delayed broadcast of events in other locations. An archive of webcasts is maintained. Video conferencing is available in several locations within STScI although responsibilities for maintenance are unclear and JWST has a requirement to communicate with NGST via video conferencing. Desktop conferencing has been installed in various places around STScI without any particular plan or evaluation of the impact on the STScI network. ', 'This technology (webcasting, video/desktop conferencing) expands the spectrum of available communication channels. It provides a way to communicate visually in a geographically distributed manner. In a time of shrinking budgets, it may provide an alternative to travel when ‘face-to-face’ meetings are needed. In this regard, this technology begins to converge with other collaboration technologies being investigated below.'),
(14, '8.f. Collaboration Tools', 'The Institute has a centralized service for reserving meeting rooms, and another for reporting staff absences.  Staff have a variety of tools for managing appointments, but there is no comprehensive solution for bringing people and rooms together, sharing calendars, allowing someone else to manage your meetings, and syncing to PDAs. Staff work while traveling and telecommuting; often they need to communicate and collaborate with colleagues off-site. In times of shrinking budgets it needs to be easier to work with colleagues without needing to travel across the country.', 'STScI staff meet and work together. There needs to be an easier and cheaper way to do this.'),
(15, '8.g. Databases', 'Data critical to the operation STScI are stored in relational databases on a half dozen Sybase servers, a few Oracle servers, and nearly two dozen Microsoft SQLServer servers.', 'Centralized data storage is a fundamental service that enables data integrity and provides the first level of security to important data used by our customers.'),
(16, '8.h. Printers', 'Each year, STScI produces approximately 2 million pages from about 200 printers scattered around the Muller and Bloomberg buildings.  Printers are being used for some jobs that a copier could do more inexpensively.', 'Hardcopy output remains an important means of managing and sharing information and complements increasingly powerful electronic means. To operate STScI we must continue to support public and private printing.'),
(17, '8.i. Help Desk', 'The Remedy Help Desk system supports many functions within the Institute (HST observer support, computer support, and public outreach) by providing a system for categorizing and tracking support requests, especially those in the form of e-mail messages.', 'Evolving the Remedy Help Desk support is driven by routine maintenance and cost reduction needs.'),
(18, '8.j. FTP', 'The institute maintains a centralized FTP server for general use, and a server optimized for the distribution of data from MAST.', 'MAST is faced with increased demand for the transfer of large proprietary data sets, and needs an FTP server with the flexibility to handle these special requirements.');

--
-- Truncate table before insert "typelist"
--

--
-- Dumping data for table "typelist"
--

INSERT INTO "typelist" ("typeID", "typeDesc", "typeText") VALUES
(0, 'none', ''),
(1, 'process engineering', 'These are projects that focus on people and systems processes. These may include migration, upgrade, or new functionality type work in an implementation phase (or follow-on project).'),
(2, 'maintenance', 'These are "keep the lights on" projects. Most maintenance work is not run as projects, however. Maintenance would include items like OS patching, servicing jukebox mechanics, or replacing faulty memory, power supplies, or UPS. Replacing a broken system with an identical replacement without making any significant changes to the infrastructure may be maintenance, but see below under upgrade. Maintenance projects do not add any new systems or functionality to the environment. '),
(3, 'migration', 'These are projects that rearrange existing hardware, software or processes, and may consist of re-configuration, consolidation, optimization, porting, or physical relocation.  Examples include consolidating storage on the EMC, or moving the last processing off of VMS. Although they do not necessarily add new things, these projects do change the infrastructure. '),
(4, 'new functionality', 'These projects add a new service or capability (e.g., event manager) or new functionality (Covalent), as distinct from upgrades of existing products. These are generally software development or COTS integration and deployment type projects. '),
(5, 'strategy', 'Strategy projects produce Institute wide, multi-year strategic technology plans.'),
(6, 'evaluation', 'These are projects that evaluate new technologies or processes, perform applicability studies, etc. Results may include pilot implementations or white papers. '),
(7, 'upgrade', 'Upgrade projects are not limited to system or software upgrades, but also include upgrading or augmenting capacity, reliability, etc., such as adding servers to a farm.  Replacing aging systems may be seen as maintenance, but often these are not one-on-one replacements but involve upgrades or re-engineering the current system to take advantage of new technology and performance. OS upgrades from Solaris 8 to 10, or to Windows XP would likely be handled as a planning or strategy project followed by an upgrade project.'),
(8, 'planning', 'Planning projects collect information to produce a document that will be used to decide on follow on work. They are tactical in nature.'),
(9, 'management', 'These are management activity projects that support the delivery of services, such as new maintenance contracts or ISP selection.'),
(10, 'service', 'These are projects to provide an agreed up on service. This includes building new websites, supporting workshops and conferences, proceedings, etc. They produce deliverables, such as web content, using existing tools and infrastructure.');

--
-- Truncate table before insert "upload"
--

--
-- Dumping data for table "upload"
--

-- ALTER TABLE "upload" DISABLE TRIGGER ALL;
-- INSERT INTO "upload" ("uploadID", "projectID", "uploadName", "uploadType", "uploadDesc", "uploadData", "lastModifiedBy", "lastModified") VALUES
-- (43, 25, 'AAI_cover.doc', 'application/msword', '', 0xd0cf11e0a1b11ae1000000000000000000000000000000003e000300feff0900060000000000000000000000010000005c00000000000000001000005e00000001000000feffffff000000005b000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffeca5c100016109040000f012bf000000000001110001000100060000fc0b00000e006a626a62877487740000000000000000000000000000000000000904160024140000ed160100ed160100fc05000000000000000000000000000000000000000000000000000000000000ffff0f000000000000000000ffff0f000000000000000000ffff0f00000000000000000000000000000000008800000000002a010000000000002a0100002a010000000000002a010000000000002a010000000000002a010000000000002a0100001400000000000000000000006001000000000000480600000000000048060000000000004806000000000000480600000c000000540600000c000000600100000000000021070000b60000006c060000000000006c060000000000006c060000000000006c060000000000006c060000000000006c060000000000006c060000000000006c0600000000000098060000020000009a060000000000009a060000000000009a060000000000009a060000000000009a060000000000009a0600002c000000d707000052020000290a000056000000c606000015000000000000000000000000000000000000002a010000000000006c06000000000000000000000000000000000000000000006c060000000000006c060000000000006c060000000000006c06000000000000c60600000000000098060000000000002a010000000000002a010000000000006c0600000000000000000000000000006c06000000000000db060000160000009806000000000000980600000000000098060000000000006c060000160000002a010000000000006c060000000000002a010000000000006c060000000000009806000000000000000000000000000098060000000000003e01000014000000520100000e0000002a010000000000002a010000000000002a010000000000002a010000000000006c06000000000000980600000000000000000000000000009806000000000000000000000000000098060000000000002a010000000000002a01000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000098060000000000000000000000000000600600000c00000052626dc100000000000000000000000048060000000000008206000016000000980600000000000000000000000000009806000000000000f106000030000000210700000000000098060000000000007f0a00000000000098060000000000007f0a0000000000009806000000000000980600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002a0100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000060010000000000006001000064030000c4040000840100000000000000000000000000000000000060010000000000006001000000000000c404000000000000040001010f000401000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d0d0d0d486172727920452e205061796e650d38332043726f737377696e642044726976650d536872657773627572792c2050412031373336310d4e6f76656d62657220312c20323030360d0d41414920436f72706f726174696f6e0d31323420496e647573747279204c616e650d48756e742056616c6c65792c204d442032313033302d303132360d0d446561722048756d616e205265736f75726365732050726f66657373696f6e616c3a0d0d4920616d2077726974696e6720696e2072656761726420746f20656d706c6f796d656e74206174204141492e2020492062656c69657665206d792062726f616420746563686e6963616c20736b696c6c73206d616b65206d652061207374726f6e672063616e64696461746520666f72206120706f736974696f6e20696e766f6c76656420776974682073747261746567792c20706c616e6e696e672c206172636869746563747572652c20616e642064657369676e206f662074686520495420696e6672617374727563747572652c20616e64207769746820737570706f7274696e6720627573696e657373206465636973696f6e732061626f757420696e766573746d656e747320696e2074686f73652061726561732e0d0d4920616d206120746563686e6f6c6f67697374207769746820657870657269656e636520696e2070726f766964696e6720736f6c7574696f6e73206174206c6576656c732066726f6d2074686520656e746572707269736520286d75636820736d616c6c6572207468616e20796f757220656e74657270726973652920646f776e20746f2074686520696e646976696475616c2e2020492068656c70656420696e74726f6475636520656e74657270726973652061726368697465637475726520746f206d7920636f6d70616e792e20204172656173206f66207370656369666963206b6e6f776c6564676520696e636c756465206469726563746f72792073657276696365732c20776562206170706c69636174696f6e20646576656c6f706d656e742c20616e64206170706c69636174696f6e20736572766572732e2020492063616e2074616c6b207769746820616e796f6e6520696e2074686520636f6d70616e7920746f2067617468657220616e6420636f6e76657920696e666f726d6174696f6e2e20204f6e206120726563656e742073747261746567792070726f6a6563742c204920776f726b65642061742074686520696e74657273656374696f6e206f6620636f6d6d756e69636174696f6e2077697468206d616e7920696e646976696475616c7320616e642067726f7570732c20616e642068656c7065642064657369676e2061206675747572652073797374656d206261736564206f6e207468652063726561746564206b6e6f776c656467652e0d0d54686520726577617264732070616765206f6e20796f7572205765622073697465206465736372696265732061206d616a6f72207265736f75726365206d616e6167656d656e742070726f6a65637420616e64207265616368696e67204c6576656c2035206f6620434d4d206c61737420796561722e2020497420697320636c656172207468617420796f757220636f6d70616e79206973206d616b696e67206d616a6f7220696e766573746d656e747320696e20746865206172656173204920616d20696e746572657374656420696e2e2020416e6420796574204920646f206e6f7420736565207468652043494f9273206e616d65206f6e207468652077656220736974652c207768696368206d616b6573206d6520776f6e6465722e20204d61796265204920636f756c6420676976652068696d20736f6d6520737570706f72742e0d0d4920776f756c64206c696b6520746865206f70706f7274756e69747920746f206d656574207769746820796f7520616e642064697363757373206120706f737369626c65206669742c20776869636820776f756c6420616c6c6f77206d6520746f2068656c7020414149206d6565742069747320676f616c732c20616e642074686f7365206f662069747320637573746f6d6572732e0d0d53696e636572656c792c0d0d0d4861727279205061796e650d000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000600004d0600008a060000fc0b0000fcf5fc0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c1568c36a640016680f6a4a00000616680f6a4a0003000600000106000002060000030600000406000013060000260600003b0600004c0600004d0600005d0600006f0600008a0600008b060000ae060000af060000c9070000ca070000030a0000040a00004a0b00004b0b0000e20b0000e30b0000ee0b0000ef0b0000f00b0000fc0b0000f6000000000000000000000000f6000000000000000000000000f6000000000000000000000000f6000000000000000000000000f6000000000000000000000000f6000000000000000000000000f6000000000000000000000000f6000000000000000000000000f4000000000000000000000000ef000000000000000000000000ef000000000000000000000000ef000000000000000000000000f4000000000000000000000000ef000000000000000000000000ef000000000000000000000000f4000000000000000000000000f4000000000000000000000000ef000000000000000000000000ef000000000000000000000000ef000000000000000000000000ef000000000000000000000000f4000000000000000000000000f6000000000000000000000000f6000000000000000000000000f6000000000000000000000000f6000000000000000000000000f60000000000000000000000000000000000000000000000000000000004000067640f6a4a0000010000000800000f8418155e84181567640f6a4a00001b00060000fc0b0000fe000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000201010122003a700f6a4a001fb0d02f20b0e03d21b0080722b008072390a0052490a00525b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000014000f0012000100a5000f000200000000000000000038000040f1ff020038000c000000c36a6400000006004e006f0072006d0061006c000000020000001000434a18006d480904734809047448090400000000000000000000000000000000000044004140f2ffa10044000c0100000000000000001600440065006600610075006c0074002000500061007200610067007200610070006800200046006f006e0074000000000052006940f3ffb30052000c0100000000000000000c005400610062006c00650020004e006f0072006d0061006c0000001c0017f603000034d60600010a036c0034d60600010503000061f603000002000b00000028006b40f4ffc10028000001000000000000000007004e006f0020004c006900730074000000020000000000000000000000fc0500000800001400000700ffffffff0100000004200000ffff0100a07a99000000000000000000fc050000000000000000000000000100000002000000030000000400000013000000260000003b0000004c0000004d0000005d0000006f0000008a0000008b000000ae000000af000000c9010000ca01000003040000040400004a0500004b050000e2050000e3050000ee050000ef050000f0050000fe05000098000000003000000000000000800000008000000070000080c6000098000000003000000000000000800000008000000070000080c6000098000000003000000000000000800000008000000070000080c6000098000000003000000000000000800000008000000070000080c60000980000000030000000000000008000000080000000b80000f0a2000098000000003000000000000000800000008000000070000080c6800098000000003000000000000000800000008000000070000080c6800098000000003000000000000000800000008000000070000080c6000098000000003000000000000000800000008000000070000080c6800098000000003000000000000000800000008000000070000080c6800098000000003000000000000000800000008000000070000080c6800098000000003000000000000000800000008000000070000080c6800098000000003000000000000000800000008000000070000080c6800098000000003000000000000000800000008000000070000080c6800098000000003000000000000000800000008000000070000080c6800098000000003000000000000000800000008000000070000080c6000098000000003000000000000000800000008000000070000080c6000098000000003000000000000000800000008000000070000080c6000098000000003000000000000000800000008000000070000080c6000098000000003000000000000000800000008000000070000080c6000098000000003000000000000000800000008000000070000080c6000098000000003000000000000000800000008000000070000080c6000098000000003000000000000000800000008000000070000080c6000098000000003000000000000000800000008000000070000080c6000098000000003000000000000000800000008000000070000080c6000098000000003000000000000000800000008000000070000080c6000098000000003000000000000000800000008000000070000080c600000000000013000000260000003b0000004c0000004d0000005d0000006f0000008b000000ae000000af00000003040000fe050000ffff80aa6c3000000060000000000000060000000000ffbf01008007ffff80aa6c3000000060000000000000060000000000ffbf01008007ffff80aa6c3000000060000000000000060000000000ffbf01008007ffff80aa6c3000000060000000000000060000000000ffbf01008007ffbfc0b400300000c021000048000000060000000000ffbf01008007ffffc0b400300000c021000048000000060000000000ffbf01008007ffff80aa6c3000000060000000000000060000000000ffbf01008007ffff80aa6c3000000060000000000000060000000000ffbf01008007ffff80aa6c3000000060000000000000060000000000ffbf01008007ffff80aa6c3000000060000000000000060000000000ffbf01008007ffff80aa6c3000000060000000000000060000000000ffbf010080070a000000003000000000000000000000000000003095200905001f0700060000fc0b00000700000000060000fc0b00000800000000060000fc0b000009000000000000000400000009000000fe05000007000400070000000000040000000d000000fe050000070004000700ff40018001000400000004000000e089271701005201040000000000000004000000000000000300030050036c02021000000000000000fc0500008000000c00400000ffff01000000070055006e006b006e006f0077006e00ffff0100080000000000000000000000ffff010000000000ffff00000200ffff00000000ffff00000200ffff000000000300000047069001000000020206030504050203000000030000000000000000000000000100000000000000540069006d006500730020004e0065007700200052006f006d0061006e00000035069001020000020005000000000000000000000000000000010000000000000000008000000000530079006d0062006f006c00000033069001000000020b0604020202020200000003000000000000000000000000010000000000000041007200690061006c00000020000400f108881800f0d0020000680100000000cbfaaa46dcfbaa460000000003002c0000000000000000000000010001000000040003100100000000000000000000000100010000000100000000000000e90300f01000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a506c007b400b40080007e3400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020000002702000000000801006000f0100008000000000000000000000000000000000000000000000000000000000000000000000000f0ff0f00000000000000000000ffffff7fffffff7fffffff7fffffff7fffffff7fffffff7fffffff7f97754700ffff120000000000000000000000000000000b004800610072007200790020005000610079006e0065000b004800610072007200790020005000610079006e00650000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000feff0000030a01000000000000000000000000000000000001000000e0859ff2f94f6810ab9108002b27b3d930000000387e0000110000000100000090000000020000009800000003000000a400000004000000b000000005000000c400000007000000d000000008000000e000000009000000f400000012000000000100000a0000001c0100000c000000280100000d000000340100000e000000400100000f0000004801000010000000500100001300000058010000110000006001000002000000102700001e0000000100000000d2ea001e0000000100000000d2ea001e0000000c0000004861727279205061796e65001e00000001000000002c6dc01e000000070000004e6f726d616c00011e0000000c0000004861727279205061796e65001e0000000200000033006dc01e000000140000004d6963726f736f667420576f72642031312e3200400000000008902506000000400000000002be2707fdc601400000000048c70e2bfdc601030000000100000003000000000000000300000000000000030000000000000047000000d07c0000feffffff504943547cc60000000003180264001102ff0c00fffe0000012c0000012c0000000000000ce409f60000000000a101f200044d535744001e0001000a000000000ce409f6002c001207da0f54696d6573204e657720526f6d616e000307da000d0032000600180000002d00080017ffc000000000002e000400000000001607ae0028015a05dc0120002a39012000002a3a012000002a39012000000600000000002d0008000000000000000000160000002a3a0448617272000600020000002d00080001fd6000000000001600a300295c017900000600000000002d00080000000000000000001600000029190120000006ffff0000002d0008fffeffc0000000000016ffae00290d014500000600000000002d000800000000000000000016000000291e042e205061000600020000002d00080001fd6000000000001600a300294b017900000600010000002d00080000fd200000000000160051002919016e00000600000000002d0008000000000000000000160000002919016500000600180000002d00080017ffc000000000001607ae002916012000000600000000002d00080000000000000000001600000028027905dc0538332043720006ffff0000002d0008fffeffc0000000000016ffae002971016f00000600000000002d00080000000000000000001600000029190373737700000600020000002d00080001fd6000000000001600a300294a016900000600010000002d00080000fd20000000000016005100290e016e00000600000000002d00080000000000000000001600000029190164000006ffff0000002d0008fffeffc0000000000016ffae002919012000000600000000002d000800000000000000000016000000290d024472000600020000002d00080001fd6000000000001600a3002935016900000600010000002d00080000fd20000000000016005100290e017600000600000000002d0008000000000000000000160000002919016500000600180000002d00080017ffc000000000001607ae002916012000000600000000002d0008000000000000000000160000002802b305dc0153000600010000002d00080000fd20000000000016005100291c016800000600000000002d00080000000000000000001600000029190472657773000600010000002d00080000fd20000000000016005100295e016200000600000000002d0008000000000000000000160000002919027572000600020000002d00080001fd6000000000001600a300292a017900000600000000002d0008000000000000000000160000002919012c000006fffe0000002d0008fffdff80000000000016ff5c00290d012000000600000000002d000800000000000000000016000000290d025041000600020000002d00080001fd6000000000001600a300293f012000000600000000002d000800000000000000000016000000290d05313733363100000600170000002d00080016ff80000000000016075c00297d012000000600000000002d0008000000000000000000160000002802ec05dc014e0006ffff0000002d0008fffeffc0000000000016ffae002924016f00000600010000002d00080000fd200000000000160051002919017600000600000000002d0008000000000000000000160000002919016500000600020000002d00080001fd6000000000001600a3002916016d00000600010000002d00080000fd200000000000160051002927016200000600000000002d00080000000000000000001600000029190265720006ffff0000002d0008fffeffc0000000000016ffae002927012000000600000000002d000800000000000000000016000000290d0131000006ffff0000002d0008fffeffc0000000000016ffae002919012c00000600000000002d000800000000000000000016000000290c05203230303600000600170000002d00080016ff80000000000016075c002971012000000600180000002d00080017ffc000000000001607ae0028032601770120000600010000002d00080000fd200000000000160051002a39024141000600000000002d00080000000000000000001600000029480149000006ffff0000002d0008fffeffc0000000000016ffae002911012000000600000000002d000800000000000000000016000000290d0143000006ffff0000002d0008fffeffc0000000000016ffae002921016f00000600000000002d00080000000000000000001600000029190272700006ffff0000002d0008fffeffc0000000000016ffae00292a016f00000600000000002d00080000000000000000001600000029190272610006ffff0000002d0008fffeffc0000000000016ffae002927017400000600020000002d00080001fd6000000000001600a300290e0169000006ffff0000002d0008fffeffc0000000000016ffae00290e016f00000600010000002d00080000fd200000000000160051002919016e00000600170000002d00080016ff80000000000016075c002919012000000600000000002d0008000000000000000000160000002803990177053132342049000600010000002d00080000fd200000000000160051002969016e00000600000000002d000800000000000000000016000000291903647573000006ffff0000002d0008fffeffc0000000000016ffae002945017400000600000000002d000800000000000000000016000000290e017200000600020000002d00080001fd6000000000001600a30029110179000006ffff0000002d0008fffeffc0000000000016ffae002919012000000600010000002d00080000fd20000000000016005100290c014c00000600000000002d000800000000000000000016000000291f016100000600010000002d00080000fd200000000000160051002916016e00000600000000002d0008000000000000000000160000002919016500000600180000002d00080017ffc000000000001607ae002916012000000600000000002d0008000000000000000000160000002803d2017702487500000600010000002d00080000fd20000000000016005100293d016e000006ffff0000002d0008fffeffc0000000000016ffae002919027420000600000000002d000800000000000000000016000000291b025661000600020000002d00080001fd6000000000001600a300293a026c6c000600000000002d000800000000000000000016000000291c016500000600020000002d00080001fd6000000000001600a3002916017900000600000000002d0008000000000000000000160000002919012c000006fffe0000002d0008fffdff80000000000016ff5c00290d012000000600000000002d000800000000000000000016000000290d024d44000600020000002d00080001fd6000000000001600a3002950012000000600000000002d000800000000000000000016000000290d04323130330006ffff0000002d0008fffeffc0000000000016ffae002964013000000600000000002d0008000000000000000000160000002918012d000029110430313236000600170000002d00080016ff80000000000016075c002964012000000600180000002d00080017ffc000000000001607ae0028040c01770120000600000000002d0008000000000000000000160000002a39074465617220487500000600020000002d00080001fd6000000000001600a30029ab016d00000600000000002d0008000000000000000000160000002927016100000600010000002d00080000fd200000000000160051002916016e00000600000000002d000800000000000000000016000000291904205265730006ffff0000002d0008fffeffc0000000000016ffae002957016f00000600000000002d000800000000000000000016000000291905757263657300000600010000002d00080000fd200000000000160051002969012000000600000000002d000800000000000000000016000000290d0250720006ffff0000002d0008fffeffc0000000000016ffae00292d016f00000600020000002d00080001fd6000000000001600a3002919016600000600000000002d00080000000000000000001600000029110365737300000600020000002d00080001fd6000000000001600a300293c0169000006ffff0000002d0008fffeffc0000000000016ffae00290e016f00000600010000002d00080000fd200000000000160051002919016e00000600000000002d0008000000000000000000160000002919016100000600020000002d00080001fd6000000000001600a3002916016c00000600000000002d000800000000000000000016000000290e013a00000600180000002d00080017ffc000000000001607ae00290e0120000028047f01770120000600000000002d0008000000000000000000160000002a390349206100000600020000002d00080001fd6000000000001600a3002934016d00000600000000002d00080000000000000000001600000029270120000006ffff0000002d0008fffeffc0000000000016ffae00290d017700000600000000002d0008000000000000000000160000002923017200000600020000002d00080001fd6000000000001600a30029110169000006ffff0000002d0008fffeffc0000000000016ffae00290e017400000600020000002d00080001fd6000000000001600a300290e016900000600010000002d00080000fd20000000000016005100290e016e00000600000000002d00080000000000000000001600000029190167000006ffff0000002d0008fffeffc0000000000016ffae002919012000000600020000002d00080001fd6000000000001600a300290d016900000600000000002d000800000000000000000016000000290e016e000006fffe0000002d0008fffdff80000000000016ff5c002918012000000600000000002d000800000000000000000016000000290d057265676172000006ffff0000002d0008fffeffc0000000000016ffae002967016400000600000000002d00080000000000000000001600000029180120000006ffff0000002d0008fffeffc0000000000016ffae00290d02746f000600000000002d0008000000000000000000160000002927022065000600020000002d00080001fd6000000000001600a3002923016d00000600000000002d0008000000000000000000160000002927017000000600020000002d00080001fd6000000000001600a3002919016c000006ffff0000002d0008fffeffc0000000000016ffae00290e016f00000600010000002d00080000fd200000000000160051002919017900000600020000002d00080001fd6000000000001600a3002918016d00000600000000002d0008000000000000000000160000002927016500000600010000002d00080000fd200000000000160051002916016e000006ffff0000002d0008fffeffc0000000000016ffae002919027420000600000000002d000800000000000000000016000000291b0161000006ffff0000002d0008fffeffc0000000000016ffae002916017400000600000000002d000800000000000000000016000000290e012000000600010000002d00080000fd20000000000016005100290d014100000600000000002d00080000000000000000001600000029240241490006ffff0000002d0008fffeffc0000000000016ffae002934012e00000600000000002d000800000000000000000016000000290c012000000600010000002d00080000fd20000000000016005100290d0120000006ffff0000002d0008fffeffc0000000000016ffae00290d024920000600010000002d00080000fd20000000000016005100291d0162000006ffff0000002d0008fffeffc0000000000016ffae002919016500000600020000002d00080001fd6000000000001600a3002915026c69000600000000002d000800000000000000000016000000291c016500000600010000002d00080000fd200000000000160051002916017600000600000000002d00080000000000000000001600000029190165000006ffff0000002d0008fffeffc0000000000016ffae002916012000000600020000002d00080001fd6000000000001600a300290d026d79000600010000002d00080000fd200000000000160051002940022062000600000000002d00080000000000000000001600000029260172000006ffff0000002d0008fffeffc0000000000016ffae002911016f00000600000000002d00080000000000000000001600000029190161000006ffff0000002d0008fffeffc0000000000016ffae002916016400000600000000002d00080000000000000000001600000029180120000006ffff0000002d0008fffeffc0000000000016ffae00290d017400000600000000002d000800000000000000000016000000290e026563000600010000002d00080000fd20000000000016005100292c02686e000600020000002d00080001fd6000000000001600a3002932016900000600000000002d000800000000000000000016000000290e026361000600020000002d00080001fd6000000000001600a300292c016c00000600000000002d000800000000000000000016000000290e0320736b00000600020000002d00080001fd6000000000001600a300293903696c6c00000600000000002d000800000000000000000016000000292a0173000006fffe0000002d0008fffdff80000000000016ff5c002913012000000600020000002d00080001fd6000000000001600a300290d016d00000600000000002d000800000000000000000016000000292702616b00292f0165000006ffff0000002d0008fffeffc0000000000016ffae002916012000000600020000002d00080001fd6000000000001600a3002804f20177016d000600000000002d00080000000000000000001600000029270165000006fffe0000002d0008fffdff80000000000016ff5c002916012000000600000000002d000800000000000000000016000000290d016100000600020000002d00080001fd6000000000001600a3002916012000000600000000002d000800000000000000000016000000290d0173000006ffff0000002d0008fffeffc0000000000016ffae002913017400000600000000002d000800000000000000000016000000290e0172000006ffff0000002d0008fffeffc0000000000016ffae002911016f00000600010000002d00080000fd200000000000160051002919016e00000600000000002d00080000000000000000001600000029190167000006ffff0000002d0008fffeffc0000000000016ffae002919012000000600000000002d000800000000000000000016000000290d026361000600010000002d00080000fd20000000000016005100292c016e00000600000000002d0008000000000000000000160000002919016400000600020000002d00080001fd6000000000001600a3002919016900000600000000002d000800000000000000000016000000290e0264610006ffff0000002d0008fffeffc0000000000016ffae00292f017400000600000000002d000800000000000000000016000000290e026520000600020000002d00080001fd6000000000001600a30029220166000006ffff0000002d0008fffeffc0000000000016ffae002911016f00000600000000002d0008000000000000000000160000002919017200000600010000002d00080000fd2000000000001600510029110120000006ffff0000002d0008fffeffc0000000000016ffae00290d026120000600000000002d00080000000000000000001600000029220170000006ffff0000002d0008fffeffc0000000000016ffae002919016f00000600000000002d0008000000000000000000160000002919017300000600020000002d00080001fd6000000000001600a30029130169000006ffff0000002d0008fffeffc0000000000016ffae00290e017400000600020000002d00080001fd6000000000001600a300290e0169000006ffff0000002d0008fffeffc0000000000016ffae00290e016f00000600010000002d00080000fd200000000000160051002919026e20000600020000002d00080001fd6000000000001600a3002926016900000600010000002d00080000fd20000000000016005100290e026e760006ffff0000002d0008fffeffc0000000000016ffae002932016f00000600020000002d00080001fd6000000000001600a3002919016c00000600010000002d00080000fd20000000000016005100290e017600000600000000002d00080000000000000000001600000029190165000006ffff0000002d0008fffeffc0000000000016ffae002916016400000600000000002d0008000000000000000000160000002918022077000600020000002d00080001fd6000000000001600a30029310169000006ffff0000002d0008fffeffc0000000000016ffae00290e017400000600010000002d00080000fd20000000000016005100290e016800000600000000002d00080000000000000000001600000029190220730006ffff0000002d0008fffeffc0000000000016ffae00291f017400000600000000002d000800000000000000000016000000290e0272610006ffff0000002d0008fffeffc0000000000016ffae002927017400000600000000002d000800000000000000000016000000290e026567000600020000002d00080001fd6000000000001600a300292f017900000600000000002d0008000000000000000000160000002919012c000006fffe0000002d0008fffdff80000000000016ff5c00290d012000000600000000002d000800000000000000000016000000290d017000000600020000002d00080001fd6000000000001600a3002919016c00000600000000002d000800000000000000000016000000290e016100000600010000002d00080000fd200000000000160051002916026e6e000600020000002d00080001fd6000000000001600a3002932016900000600010000002d00080000fd20000000000016005100290e016e00000600000000002d00080000000000000000001600000029190167000006ffff0000002d0008fffeffc0000000000016ffae002919012c00000600000000002d000800000000000000000016000000290c0420617263000600010000002d00080000fd20000000000016005100294a016800000600020000002d00080001fd6000000000001600a30029190169000006ffff0000002d0008fffeffc0000000000016ffae00290e017400000600000000002d000800000000000000000016000000290e0265630006ffff0000002d0008fffeffc0000000000016ffae00292c017400000600000000002d000800000000000000000016000000290e03757265000006ffff0000002d0008fffeffc0000000000016ffae002940012c00000600000000002d000800000000000000000016000000290c022061000600010000002d00080000fd200000000000160051002923016e00000600000000002d00080000000000000000001600000029190164000006fffe0000002d0008fffdff80000000000016ff5c002919012000000600000000002d00080000000000000000001600000028052b017703646573000600020000002d00080001fd6000000000001600a3002942016900000600000000002d000800000000000000000016000000290e016700000600010000002d00080000fd200000000000160051002919016e00000600000000002d00080000000000000000001600000029190120000006ffff0000002d0008fffeffc0000000000016ffae00290d016f00000600020000002d00080001fd6000000000001600a3002919016600000600010000002d00080000fd2000000000001600510029110120000006ffff0000002d0008fffeffc0000000000016ffae00290d017400000600010000002d00080000fd20000000000016005100290e016800000600000000002d00080000000000000000001600000029190165000006fffe0000002d0008fffdff80000000000016ff5c002916012000000600000000002d000800000000000000000016000000290c0149000006ffff0000002d0008fffeffc0000000000016ffae002911015400000600000000002d000800000000000000000016000000291e012000000600020000002d00080001fd6000000000001600a300290d016900000600010000002d00080000fd20000000000016005100290e016e00000600020000002d00080001fd6000000000001600a3002919016600000600000000002d000800000000000000000016000000291103726173000006ffff0000002d0008fffeffc0000000000016ffae00293a017400000600000000002d000800000000000000000016000000290e03727563000006ffff0000002d0008fffeffc0000000000016ffae002940017400000600000000002d000800000000000000000016000000290e0275720006ffff0000002d0008fffeffc0000000000016ffae00292a016500000600000000002d0008000000000000000000160000002915012c00000600010000002d00080000fd20000000000016005100290d012000000600000000002d000800000000000000000016000000290d016100000600010000002d00080000fd200000000000160051002916016e000006ffff0000002d0008fffeffc0000000000016ffae002919026420000600000000002d0008000000000000000000160000002925017700000600020000002d00080001fd6000000000001600a30029240169000006ffff0000002d0008fffeffc0000000000016ffae00290e017400000600010000002d00080000fd20000000000016005100290e026820000600000000002d000800000000000000000016000000292604737570700006ffff0000002d0008fffeffc0000000000016ffae00295e016f00000600000000002d00080000000000000000001600000029190172000006ffff0000002d0008fffeffc0000000000016ffae002911017400000600020000002d00080001fd6000000000001600a300290e016900000600000000002d000800000000000000000016000000290e026e670006fffe0000002d0008fffdff80000000000016ff5c002931012000000600010000002d00080000fd20000000000016005100290d016200000600000000002d0008000000000000000000160000002919027573000600020000002d00080001fd6000000000001600a300292c016900000600010000002d00080000fd20000000000016005100290e016e00000600000000002d000800000000000000000016000000291903657373000006ffff0000002d0008fffeffc0000000000016ffae00293c012000000600000000002d000800000000000000000016000000290d0364656300000600020000002d00080001fd6000000000001600a3002945016900000600000000002d000800000000000000000016000000290e017300000600020000002d00080001fd6000000000001600a30029130169000006ffff0000002d0008fffeffc0000000000016ffae00290e016f00000600010000002d00080000fd200000000000160051002919016e00000600000000002d00080000000000000000001600000029190173000006ffff0000002d0008fffeffc0000000000016ffae002913012000000600000000002d000800000000000000000016000000290d016100000600010000002d00080000fd2000000000001600510029160162000006ffff0000002d0008fffeffc0000000000016ffae002919016f00000600000000002d00080000000000000000001600000029190175000006ffff0000002d0008fffeffc0000000000016ffae002919017400000600000000002d000800000000000000000016000000290e012000000600020000002d00080001fd6000000000001600a300290d016900000600010000002d00080000fd20000000000016005100290e026e76000600000000002d00080000000000000000001600000029320265730006ffff0000002d0008fffeffc0000000000016ffae002929017400000600020000002d00080001fd6000000000001600a300290e016d00000600000000002d0008000000000000000000160000002927016500000600010000002d00080000fd200000000000160051002916016e000006ffff0000002d0008fffeffc0000000000016ffae002919017400000600000000002d000800000000000000000016000000290e017300000600020000002d00080001fd6000000000001600a30029130120000028056501770169000600010000002d00080000fd20000000000016005100290e016e000006fffe0000002d0008fffdff80000000000016ff5c0029190120000006ffff0000002d0008fffeffc0000000000016ffae00290d017400000600010000002d00080000fd20000000000016005100290e0168000006ffff0000002d0008fffeffc0000000000016ffae002919016f00000600000000002d0008000000000000000000160000002919027365000600010000002d00080000fd200000000000160051002929012000000600000000002d000800000000000000000016000000290d0661726561732e000600180000002d00080017ffc000000000001607ae0029730120000028059e01770120000600000000002d0008000000000000000000160000002a3a0349206100000600020000002d00080001fd6000000000001600a3002934016d00000600000000002d00080000000000000000001600000029270120000006ffff0000002d0008fffeffc0000000000016ffae00290d016100000600000000002d00080000000000000000001600000029150120000006ffff0000002d0008fffeffc0000000000016ffae00290d017400000600000000002d000800000000000000000016000000290e026563000600010000002d00080000fd20000000000016005100292c02686e0006ffff0000002d0008fffeffc0000000000016ffae002932016f00000600020000002d00080001fd6000000000001600a3002919016c000006ffff0000002d0008fffeffc0000000000016ffae00290e016f00000600000000002d0008000000000000000000160000002919016700000600020000002d00080001fd6000000000001600a3002919016900000600000000002d000800000000000000000016000000290e0173000006ffff0000002d0008fffeffc0000000000016ffae002913017400000600000000002d000800000000000000000016000000290e022077000600020000002d00080001fd6000000000001600a30029310169000006ffff0000002d0008fffeffc0000000000016ffae00290e017400000600010000002d00080000fd20000000000016005100290e026820000600000000002d0008000000000000000000160000002926016500000600010000002d00080000fd200000000000160051002916017800000600000000002d00080000000000000000001600000029190370657200000600020000002d00080001fd6000000000001600a3002940016900000600000000002d000800000000000000000016000000290e016500000600010000002d00080000fd200000000000160051002916016e00000600000000002d00080000000000000000001600000029190263650006ffff0000002d0008fffeffc0000000000016ffae00292c012000000600020000002d00080001fd6000000000001600a300290d016900000600000000002d000800000000000000000016000000290e016e000006fffe0000002d0008fffdff80000000000016ff5c002918012000000600000000002d000800000000000000000016000000290d0270720006ffff0000002d0008fffeffc0000000000016ffae00292a016f00000600010000002d00080000fd200000000000160051002919017600000600020000002d00080001fd6000000000001600a30029190169000006ffff0000002d0008fffeffc0000000000016ffae00290e016400000600020000002d00080001fd6000000000001600a3002918016900000600010000002d00080000fd20000000000016005100290e016e00000600000000002d00080000000000000000001600000029190167000006ffff0000002d0008fffeffc0000000000016ffae0029190320736f00000600020000002d00080001fd6000000000001600a3002938016c00000600000000002d000800000000000000000016000000290e0175000006ffff0000002d0008fffeffc0000000000016ffae002919017400000600020000002d00080001fd6000000000001600a300290e0169000006ffff0000002d0008fffeffc0000000000016ffae00290e016f00000600010000002d00080000fd200000000000160051002919016e00000600000000002d00080000000000000000001600000029190173000029130220610006ffff0000002d0008fffeffc0000000000016ffae002923017400000600000000002d000800000000000000000016000000290e012000000600020000002d00080001fd6000000000001600a300290d016c00000600000000002d000800000000000000000016000000290e016500000600010000002d00080000fd200000000000160051002916017600000600000000002d0008000000000000000000160000002919016500000600020000002d00080001fd6000000000001600a3002916016c00000600000000002d000800000000000000000016000000290e0173000006fffe0000002d0008fffdff80000000000016ff5c002913012000000600020000002d00080001fd6000000000001600a300290d016600000600000000002d00080000000000000000001600000029110172000006fffe0000002d0008fffdff80000000000016ff5c002911016f00000600020000002d00080001fd6000000000001600a3002918026d200006ffff0000002d0008fffeffc0000000000016ffae002934017400000600010000002d00080000fd20000000000016005100290e016800000600000000002d00080000000000000000001600000029190165000006ffff0000002d0008fffeffc0000000000016ffae002916012000000600000000002d000800000000000000000016000000290d016500000600010000002d00080000fd200000000000160051002916016e000006ffff0000002d0008fffeffc0000000000016ffae002919027465000600000000002d00080000000000000000001600000029230372707200000600020000002d00080001fd6000000000001600a300293b016900000600000000002d000800000000000000000016000000290e0273650006fffd0000002d0008fffcff40000000000016ff0a002929012000000600000000002d00080000000000000000001600000028061101770128000600020000002d00080001fd6000000000001600a3002911016d00000600000000002d0008000000000000000000160000002927027563000600010000002d00080000fd20000000000016005100292f016800000600000000002d0008000000000000000000160000002919022073000600020000002d00080001fd6000000000001600a3002920016d00000600000000002d0008000000000000000000160000002927016100000600020000002d00080001fd6000000000001600a3002916026c6c000600000000002d000800000000000000000016000000291c0265720006fffe0000002d0008fffdff80000000000016ff5c0029270120000006ffff0000002d0008fffeffc0000000000016ffae00290d017400000600010000002d00080000fd20000000000016005100290e016800000600000000002d000800000000000000000016000000291902616e0006ffff0000002d0008fffeffc0000000000016ffae00292e012000000600020000002d00080001fd6000000000001600a300290d0179000006ffff0000002d0008fffeffc0000000000016ffae002919016f00000600000000002d0008000000000000000000160000002919027572000600010000002d00080000fd20000000000016005100292a012000000600000000002d000800000000000000000016000000290d016500000600010000002d00080000fd200000000000160051002916016e000006ffff0000002d0008fffeffc0000000000016ffae002919027465000600000000002d00080000000000000000001600000029230372707200000600020000002d00080001fd6000000000001600a300293b016900000600000000002d000800000000000000000016000000290e03736529000006fffe0000002d0008fffdff80000000000016ff5c00293a012000000600000000002d000800000000000000000016000000290d0164000006ffff0000002d0008fffeffc0000000000016ffae002919016f00000600000000002d000800000000000000000016000000291902776e000600010000002d00080000fd20000000000016005100293c0120000006ffff0000002d0008fffeffc0000000000016ffae00290d04746f2074000600010000002d00080000fd2000000000001600510029420168000006ffff0000002d0008fffeffc0000000000016ffae002919026520000600020000002d00080001fd6000000000001600a3002922016900000600000000002d000800000000000000000016000000290e026e64000600020000002d00080001fd6000000000001600a3002931016900000600010000002d00080000fd20000000000016005100290e017600000600020000002d00080001fd6000000000001600a3002919016900000600000000002d000800000000000000000016000000290e0364756100000600020000002d00080001fd6000000000001600a3002948016c00000600000000002d000800000000000000000016000000290e012e000006fffd0000002d0008fffcff40000000000016ff0a00290d012000000600000000002d000800000000000000000016000000290c0120000006ffff0000002d0008fffeffc0000000000016ffae00290d014900000600000000002d0008000000000000000000160000002910012000000600010000002d00080000fd20000000000016005100290d016800000600000000002d0008000000000000000000160000002919016500000600020000002d00080001fd6000000000001600a3002916016c00000600000000002d000800000000000000000016000000290e03706564000006fffe0000002d0008fffdff80000000000016ff5c002948012000000600020000002d00080001fd6000000000001600a300290d016900000600010000002d00080000fd20000000000016005100290e016e000006ffff0000002d0008fffeffc0000000000016ffae002919017400000600000000002d000800000000000000000016000000290e0172000006ffff0000002d0008fffeffc0000000000016ffae002911016f00000600000000002d00080000000000000000001600000029190464756365000600010000002d00080000fd20000000000016005100295e012000000600000000002d000800000000000000000016000000290d016500000600010000002d00080000fd200000000000160051002916016e000006ffff0000002d0008fffeffc0000000000016ffae002919027465000600000000002d00080000000000000000001600000029230372707200000600020000002d00080001fd6000000000001600a300293b016900000600000000002d000800000000000000000016000000290e0273650006fffd0000002d0008fffcff40000000000016ff0a002929012000000600000000002d00080000000000000000001600000028064b017703617263000600010000002d00080000fd20000000000016005100293d016800000600020000002d00080001fd6000000000001600a30029190169000006ffff0000002d0008fffeffc0000000000016ffae00290e017400000600000000002d000800000000000000000016000000290e0265630006ffff0000002d0008fffeffc0000000000016ffae00292c017400000600000000002d000800000000000000000016000000290e0375726500000600010000002d00080000fd2000000000001600510029400120000006ffff0000002d0008fffeffc0000000000016ffae00290d03746f2000000600020000002d00080001fd6000000000001600a3002934016d00000600010000002d00080000fd2000000000001600510029270179000006fffe0000002d0008fffdff80000000000016ff5c002918012000000600000000002d000800000000000000000016000000290d0163000006ffff0000002d0008fffeffc0000000000016ffae002916016f00000600020000002d00080001fd6000000000001600a3002919016d00000600000000002d0008000000000000000000160000002927027061000600010000002d00080000fd20000000000016005100292f016e00000600020000002d00080001fd6000000000001600a30029190179000006ffff0000002d0008fffeffc0000000000016ffae002919012e000006fffe0000002d0008fffdff80000000000016ff5c00290c012000000600010000002d00080000fd20000000000016005100290d022041000600000000002d000800000000000000000016000000293104726561730006ffff0000002d0008fffeffc0000000000016ffae00295002206f000600010000002d00080000fd200000000000160051002926026620000600000000002d000800000000000000000016000000291d0473706563000600020000002d00080001fd6000000000001600a30029580369666900000600000000002d000800000000000000000016000000292d0163000006fffe0000002d0008fffdff80000000000016ff5c002916012000000600000000002d000800000000000000000016000000290d016b00000600010000002d00080000fd200000000000160051002919016e000006fffe0000002d0008fffdff80000000000016ff5c002919016f00000600000000002d0008000000000000000000160000002918017700000600020000002d00080001fd6000000000001600a3002924016c00000600000000002d000800000000000000000016000000290e04656467650006fffe0000002d0008fffdff80000000000016ff5c00295e012000000600020000002d00080001fd6000000000001600a300290d016900000600010000002d00080000fd20000000000016005100290e016e00000600000000002d0008000000000000000000160000002919016300000600020000002d00080001fd6000000000001600a3002916016c00000600000000002d000800000000000000000016000000290e03756465000006fffe0000002d0008fffdff80000000000016ff5c002948012000000600000000002d000800000000000000000016000000290d016400000600020000002d00080001fd6000000000001600a3002919016900000600000000002d000800000000000000000016000000290e03726563000006ffff0000002d0008fffeffc0000000000016ffae00293d02746f000600000000002d0008000000000000000000160000002927017200000600010000002d00080000fd200000000000160051002911017900000600000000002d00080000000000000000001600000029180420736572000600010000002d00080000fd200000000000160051002947017600000600020000002d00080001fd6000000000001600a3002919016900000600000000002d000800000000000000000016000000290e046365732c0006fffd0000002d0008fffcff40000000000016ff0a00294c012000000600000000002d000800000000000000000016000000280684017702776500000600010000002d00080000fd20000000000016005100293a016200000600000000002d00080000000000000000001600000029190420617070000600020000002d00080001fd6000000000001600a3002955026c69000600000000002d000800000000000000000016000000291c0263610006ffff0000002d0008fffeffc0000000000016ffae00292c017400000600020000002d00080001fd6000000000001600a300290e0169000006ffff0000002d0008fffeffc0000000000016ffae00290e016f00000600010000002d00080000fd200000000000160051002919026e20000600000000002d0008000000000000000000160000002926026465000600010000002d00080000fd20000000000016005100292f017600000600000000002d0008000000000000000000160000002919016500000600020000002d00080001fd6000000000001600a3002916016c000006ffff0000002d0008fffeffc0000000000016ffae00290e016f00000600000000002d0008000000000000000000160000002919017000000600020000002d00080001fd6000000000001600a3002919016d00000600000000002d0008000000000000000000160000002927016500000600010000002d00080000fd200000000000160051002916016e000006ffff0000002d0008fffeffc0000000000016ffae002919017400000600000000002d000800000000000000000016000000290e012c00000600010000002d00080000fd20000000000016005100290d012000000600000000002d000800000000000000000016000000290d016100000600010000002d00080000fd200000000000160051002916016e000006ffff0000002d0008fffeffc0000000000016ffae002919026420000600000000002d00080000000000000000001600000029250361707000000600020000002d00080001fd6000000000001600a3002948026c69000600000000002d000800000000000000000016000000291c0263610006ffff0000002d0008fffeffc0000000000016ffae00292c017400000600020000002d00080001fd6000000000001600a300290e0169000006ffff0000002d0008fffeffc0000000000016ffae00290e016f00000600010000002d00080000fd200000000000160051002919026e20000600000000002d00080000000000000000001600000029260473657276002952056572732e20000006ffff0000002d0008fffeffc0000000000016ffae002954012000000600000000002d000800000000000000000016000000290c014900000600010000002d00080000fd200000000000160051002911012000000600000000002d000800000000000000000016000000290d026361000600010000002d00080000fd20000000000016005100292c016e00000600000000002d00080000000000000000001600000029190120000006ffff0000002d0008fffeffc0000000000016ffae00290d017400000600000000002d000800000000000000000016000000290e016100000600020000002d00080001fd6000000000001600a3002916016c000006ffff0000002d0008fffeffc0000000000016ffae00290e016b000006fffe0000002d0008fffdff80000000000016ff5c002918012000000600000000002d000800000000000000000016000000290d017700000600020000002d00080001fd6000000000001600a30029240169000006ffff0000002d0008fffeffc0000000000016ffae00290e017400000600010000002d00080000fd20000000000016005100290e026820000600000000002d0008000000000000000000160000002926016100000600010000002d00080000fd200000000000160051002916016e00000600020000002d00080001fd6000000000001600a30029190179000006ffff0000002d0008fffeffc0000000000016ffae002919016f00000600010000002d00080000fd200000000000160051002919016e00000600000000002d00080000000000000000001600000029190165000006fffe0000002d0008fffdff80000000000016ff5c002916012000000600020000002d00080001fd6000000000001600a300290c016900000600010000002d00080000fd20000000000016005100290e016e000006fffe0000002d0008fffdff80000000000016ff5c0029190120000006ffff0000002d0008fffeffc0000000000016ffae00290d017400000600010000002d00080000fd20000000000016005100290e0168000006ffff0000002d0008fffeffc0000000000016ffae0029190165000006fffe0000002d0008fffdff80000000000016ff5c002915012000000600000000002d0008000000000000000000160000002806be017701630006ffff0000002d0008fffeffc0000000000016ffae002916016f00000600020000002d00080001fd6000000000001600a3002919016d00000600000000002d0008000000000000000000160000002927027061000600010000002d00080000fd20000000000016005100292f016e00000600020000002d00080001fd6000000000001600a30029190179000006ffff0000002d0008fffeffc0000000000016ffae0029190320746f000006fffe0000002d0008fffdff80000000000016ff5c002934012000000600000000002d000800000000000000000016000000290d0267610006ffff0000002d0008fffeffc0000000000016ffae00292f017400000600010000002d00080000fd20000000000016005100290e016800000600000000002d00080000000000000000001600000029190265720006ffff0000002d0008fffeffc0000000000016ffae002927012000000600000000002d000800000000000000000016000000290d016100000600010000002d00080000fd200000000000160051002916016e000006ffff0000002d0008fffeffc0000000000016ffae002919026420000600000000002d00080000000000000000001600000029250163000006ffff0000002d0008fffeffc0000000000016ffae002916016f00000600010000002d00080000fd200000000000160051002919026e76000600000000002d0008000000000000000000160000002932016500000600020000002d00080001fd6000000000001600a3002916017900000600000000002d0008000000000000000000160000002919012000000600020000002d00080001fd6000000000001600a300290d016900000600010000002d00080000fd20000000000016005100290e016e00000600020000002d00080001fd6000000000001600a30029190166000006fffe0000002d0008fffdff80000000000016ff5c002911016f00000600000000002d0008000000000000000000160000002918017200000600020000002d00080001fd6000000000001600a3002911016d00000600000000002d00080000000000000000001600000029270161000006ffff0000002d0008fffeffc0000000000016ffae002916017400000600020000002d00080001fd6000000000001600a300290e0169000006ffff0000002d0008fffeffc0000000000016ffae00290e016f00000600010000002d00080000fd200000000000160051002919016e000006ffff0000002d0008fffeffc0000000000016ffae002919032e202000000600000000002d0008000000000000000000160000002926024f6e000600010000002d00080000fd20000000000016005100293c012000000600000000002d000800000000000000000016000000290d0161000006fffe0000002d0008fffdff80000000000016ff5c002916012000000600000000002d000800000000000000000016000000290c0472656365000600010000002d00080000fd200000000000160051002953016e000006ffff0000002d0008fffeffc0000000000016ffae002919027420000600000000002d000800000000000000000016000000291b0173000006ffff0000002d0008fffeffc0000000000016ffae002913017400000600000000002d000800000000000000000016000000290e0272610006ffff0000002d0008fffeffc0000000000016ffae002927017400000600000000002d000800000000000000000016000000290e026567000600020000002d00080001fd6000000000001600a300292f017900000600000000002d000800000000000000000016000000291903207072000006ffff0000002d0008fffeffc0000000000016ffae002937016f00000600020000002d00080001fd6000000000001600a3002919016a00000600000000002d000800000000000000000016000000290e0265630006ffff0000002d0008fffeffc0000000000016ffae00292c02742c000600000000002d000800000000000000000016000000291a0120000006ffff0000002d0008fffeffc0000000000016ffae00290d014900000600000000002d00080000000000000000001600000029100220770006ffff0000002d0008fffeffc0000000000016ffae002931016f00000600000000002d000800000000000000000016000000291904726b6564000600010000002d00080000fd200000000000160051002959012000000600000000002d000800000000000000000016000000290d0161000006fffe0000002d0008fffdff80000000000016ff5c002916017400000600000000002d000800000000000000000016000000290d0120000006ffff0000002d0008fffeffc0000000000016ffae00290d017400000600010000002d00080000fd20000000000016005100290e016800000600000000002d00080000000000000000001600000029190165000006fffe0000002d0008fffdff80000000000016ff5c002916012000000600020000002d00080001fd6000000000001600a3002806f701770169000600010000002d00080000fd20000000000016005100290e016e000006ffff0000002d0008fffeffc0000000000016ffae002919017400000600000000002d000800000000000000000016000000290e056572736563000006ffff0000002d0008fffeffc0000000000016ffae002966017400000600020000002d00080001fd6000000000001600a300290e0169000006ffff0000002d0008fffeffc0000000000016ffae00290e016f00000600010000002d00080000fd200000000000160051002919026e200006ffff0000002d0008fffeffc0000000000016ffae002926016f00000600020000002d00080001fd6000000000001600a3002919016600000600010000002d00080000fd200000000000160051002911012000000600000000002d000800000000000000000016000000290d0163000006ffff0000002d0008fffeffc0000000000016ffae002916016f00000600020000002d00080001fd6000000000001600a3002919026d6d000600000000002d000800000000000000000016000000294e017500000600010000002d00080000fd200000000000160051002919016e00000600020000002d00080001fd6000000000001600a3002919016900000600000000002d000800000000000000000016000000290e0263610006ffff0000002d0008fffeffc0000000000016ffae00292c017400000600020000002d00080001fd6000000000001600a300290e0169000006ffff0000002d0008fffeffc0000000000016ffae00290e016f00000600000000002d0008000000000000000000160000002919016e00000600010000002d00080000fd200000000000160051002918012000000600000000002d000800000000000000000016000000290d017700000600020000002d00080001fd6000000000001600a30029240169000006ffff0000002d0008fffeffc0000000000016ffae00290e017400000600010000002d00080000fd20000000000016005100290e026820000600020000002d00080001fd6000000000001600a3002926016d00000600000000002d0008000000000000000000160000002927016100000600010000002d00080000fd200000000000160051002916026e79000600000000002d0008000000000000000000160000002931012000000600020000002d00080001fd6000000000001600a300290d016900000600010000002d00080000fd20000000000016005100290e016e00000600000000002d0008000000000000000000160000002919016400000600020000002d00080001fd6000000000001600a3002919016900000600010000002d00080000fd20000000000016005100290e017600000600020000002d00080001fd6000000000001600a3002919016900000600000000002d000800000000000000000016000000290e0164000006ffff0000002d0008fffeffc0000000000016ffae002919017500000600000000002d0008000000000000000000160000002918016100000600020000002d00080001fd6000000000001600a3002916016c00000600000000002d000800000000000000000016000000290e0173000006fffe0000002d0008fffdff80000000000016ff5c002913012000000600000000002d000800000000000000000016000000290d016100000600010000002d00080000fd200000000000160051002916016e00000600000000002d00080000000000000000001600000029190164000006ffff0000002d0008fffeffc0000000000016ffae002919012000000600000000002d000800000000000000000016000000290d0267720006ffff0000002d0008fffeffc0000000000016ffae00292a016f00000600000000002d0008000000000000000000160000002919047570732c000600010000002d00080000fd200000000000160051002952012000000600000000002d000800000000000000000016000000290d016100000600010000002d00080000fd200000000000160051002916016e000006ffff0000002d0008fffeffc0000000000016ffae002919026420000600010000002d00080000fd200000000000160051002925016800000600000000002d0008000000000000000000160000002919016500000600020000002d00080001fd6000000000001600a3002916016c00000600000000002d000800000000000000000016000000290e03706564000006fffe0000002d0008fffdff80000000000016ff5c002948012000000600000000002d000800000000000000000016000000290d0364657300000600020000002d00080001fd6000000000001600a3002942016900000600000000002d000800000000000000000016000000290e016700000600010000002d00080000fd200000000000160051002919016e00000600000000002d00080000000000000000001600000029190220610006fffe0000002d0008fffdff80000000000016ff5c002923012000000600020000002d00080001fd6000000000001600a30028073101770166000600000000002d00080000000000000000001600000029110175000006ffff0000002d0008fffeffc0000000000016ffae002919017400000600000000002d000800000000000000000016000000290e0375726500000600010000002d00080000fd200000000000160051002940012000000600000000002d000800000000000000000016000000290d017300000600020000002d00080001fd6000000000001600a3002913017900000600000000002d00080000000000000000001600000029190173000006ffff0000002d0008fffeffc0000000000016ffae002913017400000600000000002d000800000000000000000016000000290e016500000600020000002d00080001fd6000000000001600a3002916016d00000600000000002d0008000000000000000000160000002927012000000600010000002d00080000fd20000000000016005100290d016200000600000000002d000800000000000000000016000000291904617365640006ffff0000002d0008fffeffc0000000000016ffae00295802206f000600010000002d00080000fd200000000000160051002926026e200006ffff0000002d0008fffeffc0000000000016ffae002926017400000600010000002d00080000fd20000000000016005100290e016800000600000000002d00080000000000000000001600000029190165000006ffff0000002d0008fffeffc0000000000016ffae002916022063000600000000002d000800000000000000000016000000292203726561000006ffff0000002d0008fffeffc0000000000016ffae00293d017400000600000000002d000800000000000000000016000000290e026564000600010000002d00080000fd20000000000016005100292f012000000600000000002d000800000000000000000016000000290d016b00000600010000002d00080000fd200000000000160051002919016e000006ffff0000002d0008fffeffc0000000000016ffae002919016f00000600000000002d0008000000000000000000160000002919017700000600020000002d00080001fd6000000000001600a3002924016c00000600000000002d000800000000000000000016000000290e05656467652e00000600170000002d00080016ff80000000000016075c00296b012000000600180000002d00080017ffc000000000001607ae0028076a01770120000600000000002d0008000000000000000000160000002a3a015400000600010000002d00080000fd20000000000016005100291f016800000600000000002d00080000000000000000001600000029190165000006ffff0000002d0008fffeffc0000000000016ffae002916012000000600000000002d000800000000000000000016000000290d077265776172647300000600010000002d00080000fd20000000000016005100299e012000000600000000002d000800000000000000000016000000290d04706167650006ffff0000002d0008fffeffc0000000000016ffae00295e02206f000600000000002d0008000000000000000000160000002926016e00000600010000002d00080000fd200000000000160051002918012000000600020000002d00080001fd6000000000001600a300290d0179000006ffff0000002d0008fffeffc0000000000016ffae002919016f00000600000000002d00080000000000000000001600000029190175000006ffff0000002d0008fffeffc0000000000016ffae002919017200000600000000002d0008000000000000000000160000002910012000000600010000002d00080000fd20000000000016005100290d015700000600000000002d000800000000000000000016000000292f016500000600010000002d00080000fd200000000000160051002916016200000600000000002d0008000000000000000000160000002919022073000600020000002d00080001fd6000000000001600a30029200169000006ffff0000002d0008fffeffc0000000000016ffae00290e017400000600000000002d000800000000000000000016000000290e016500000600010000002d00080000fd200000000000160051002916012000000600000000002d000800000000000000000016000000290d05646573637200000600020000002d00080001fd6000000000001600a3002969016900000600010000002d00080000fd20000000000016005100290e016200000600000000002d00080000000000000000001600000029190265730006ffff0000002d0008fffeffc0000000000016ffae002929012000000600000000002d000800000000000000000016000000290d016100000600010000002d00080000fd200000000000160051002916012000000600020000002d00080001fd6000000000001600a300290d016d000006ffff0000002d0008fffeffc0000000000016ffae002927016100000600020000002d00080001fd6000000000001600a3002915016a000006ffff0000002d0008fffeffc0000000000016ffae00290e016f00000600000000002d0008000000000000000000160000002919017200000600010000002d00080000fd200000000000160051002911012000000600000000002d000800000000000000000016000000290d03726573000006ffff0000002d0008fffeffc0000000000016ffae00293a016f00000600000000002d00080000000000000000001600000029190475726365000600010000002d00080000fd200000000000160051002956012000000600020000002d00080001fd6000000000001600a300290d016d00000600000000002d0008000000000000000000160000002927016100000600010000002d00080000fd200000000000160051002916016e00000600000000002d00080000000000000000001600000029190361676500000600020000002d00080001fd6000000000001600a3002945016d00000600000000002d0008000000000000000000160000002927016500000600010000002d00080000fd200000000000160051002916016e000006ffff0000002d0008fffeffc0000000000016ffae0029190374207000000600000000002d00080000000000000000001600000029330172000006ffff0000002d0008fffeffc0000000000016ffae002911016f00000600020000002d00080001fd6000000000001600a3002919016a00000600000000002d000800000000000000000016000000290e0265630006ffff0000002d0008fffeffc0000000000016ffae00292c017400000600000000002d000800000000000000000016000000290e022061000600010000002d00080000fd200000000000160051002923016e00000600000000002d00080000000000000000001600000029190164000006fffe0000002d0008fffdff80000000000016ff5c002919012000000600000000002d0008000000000000000000160000002807dd0177047265616300000600010000002d00080000fd200000000000160051002953016800000600020000002d00080001fd6000000000001600a3002919016900000600010000002d00080000fd20000000000016005100290e016e00000600000000002d00080000000000000000001600000029190167000006ffff0000002d0008fffeffc0000000000016ffae002919012000000600010000002d00080000fd20000000000016005100290d014c00000600000000002d000800000000000000000016000000291f016500000600010000002d00080000fd200000000000160051002916017600000600000000002d0008000000000000000000160000002919016500000600020000002d00080001fd6000000000001600a3002916016c00000600000000002d000800000000000000000016000000290e0120000006ffff0000002d0008fffeffc0000000000016ffae00290d013500000600000000002d00080000000000000000001600000029180120000006ffff0000002d0008fffeffc0000000000016ffae00290d016f00000600020000002d00080001fd6000000000001600a3002919016600000600010000002d00080000fd200000000000160051002911012000000600000000002d000800000000000000000016000000290d03434d4d000006ffff0000002d0008fffeffc0000000000016ffae002979012000000600020000002d00080001fd6000000000001600a300290d016c00000600000000002d000800000000000000000016000000290e0261730006ffff0000002d0008fffeffc0000000000016ffae002929017400000600000000002d000800000000000000000016000000290e012000000600020000002d00080001fd6000000000001600a300290d017900000600000000002d000800000000000000000016000000291903656172000006ffff0000002d0008fffeffc0000000000016ffae00293d012e00000600000000002d000800000000000000000016000000290c03202049000006ffff0000002d0008fffeffc0000000000016ffae00292a017400000600000000002d000800000000000000000016000000290e012000000600020000002d00080001fd6000000000001600a300290d016900000600000000002d000800000000000000000016000000290e0173000006fffe0000002d0008fffdff80000000000016ff5c002913012000000600000000002d000800000000000000000016000000290d016300000600020000002d00080001fd6000000000001600a3002916016c00000600000000002d000800000000000000000016000000290e0265610006ffff0000002d0008fffeffc0000000000016ffae00292c017200000600000000002d00080000000000000000001600000029100120000006ffff0000002d0008fffeffc0000000000016ffae00290d017400000600010000002d00080000fd20000000000016005100290e016800000600000000002d00080000000000000000001600000029190161000006fffe0000002d0008fffdff80000000000016ff5c002916017400000600000000002d000800000000000000000016000000290d012000000600020000002d00080001fd6000000000001600a300290d0179000006ffff0000002d0008fffeffc0000000000016ffae002919016f00000600000000002d0008000000000000000000160000002919027572000600010000002d00080000fd20000000000016005100292a012000000600000000002d000800000000000000000016000000290d0163000006ffff0000002d0008fffeffc0000000000016ffae002916016f00000600020000002d00080001fd6000000000001600a3002919016d00000600000000002d0008000000000000000000160000002927027061000600010000002d00080000fd20000000000016005100292f026e79000600000000002d0008000000000000000000160000002931012000000600020000002d00080001fd6000000000001600a300290d016900000600000000002d000800000000000000000016000000290e0173000006fffe0000002d0008fffdff80000000000016ff5c002913012000000600020000002d00080001fd6000000000001600a300290d016d00000600000000002d000800000000000000000016000000292702616b000600020000002d00080001fd6000000000001600a300292f016900000600010000002d00080000fd20000000000016005100290e016e00000600000000002d00080000000000000000001600000029190167000006ffff0000002d0008fffeffc0000000000016ffae002919012000000600020000002d00080001fd6000000000001600a300290d016d00000600000000002d0008000000000000000000160000002927016100000600020000002d00080001fd6000000000001600a3002916016a000006fffe0000002d0008fffdff80000000000016ff5c00290e016f00000600000000002d0008000000000000000000160000002918017200000600010000002d00080000fd200000000000160051002911012000000600020000002d00080001fd6000000000001600a30028081701770169000600010000002d00080000fd20000000000016005100290e026e76000600000000002d00080000000000000000001600000029320265730006ffff0000002d0008fffeffc0000000000016ffae002929017400000600020000002d00080001fd6000000000001600a300290e016d00000600000000002d0008000000000000000000160000002927016500000600010000002d00080000fd200000000000160051002916016e000006ffff0000002d0008fffeffc0000000000016ffae002919017400000600000000002d000800000000000000000016000000290e017300000600010000002d00080000fd200000000000160051002913012000000600020000002d00080001fd6000000000001600a300290d016900000600010000002d00080000fd20000000000016005100290e016e000006fffe0000002d0008fffdff80000000000016ff5c0029190120000006ffff0000002d0008fffeffc0000000000016ffae00290d017400000600010000002d00080000fd20000000000016005100290e016800000600000000002d00080000000000000000001600000029190165000006ffff0000002d0008fffeffc0000000000016ffae002916012000000600000000002d000800000000000000000016000000290d05617265617300000600010000002d00080000fd200000000000160051002966012000000600000000002d000800000000000000000016000000290d0149000006ffff0000002d0008fffeffc0000000000016ffae002911012000000600000000002d000800000000000000000016000000290d016100000600010000002d00080000fd200000000000160051002916016d00000600000000002d0008000000000000000000160000002926012000000600020000002d00080001fd6000000000001600a300290d016900000600010000002d00080000fd20000000000016005100290e016e000006ffff0000002d0008fffeffc0000000000016ffae002919017400000600000000002d000800000000000000000016000000290e04657265730006ffff0000002d0008fffeffc0000000000016ffae002950017400000600000000002d000800000000000000000016000000290e026564000600010000002d00080000fd20000000000016005100292f012000000600020000002d00080001fd6000000000001600a300290d016900000600000000002d000800000000000000000016000000290e026e2e0006fffd0000002d0008fffcff40000000000016ff0a002925012000000600000000002d000800000000000000000016000000290c012000000600010000002d00080000fd20000000000016005100290d02416e000600000000002d000800000000000000000016000000293d0164000006ffff0000002d0008fffeffc0000000000016ffae002919012000000600020000002d00080001fd6000000000001600a300290d0179000006ffff0000002d0008fffeffc0000000000016ffae0029190265740006fffe0000002d0008fffdff80000000000016ff5c002923012000000600000000002d000800000000000000000016000000290d014900000600020000002d00080001fd6000000000001600a3002911012000000600000000002d000800000000000000000016000000290d0164000006fffe0000002d0008fffdff80000000000016ff5c002919016f00000600000000002d0008000000000000000000160000002918012000000600010000002d00080000fd20000000000016005100290d016e000006ffff0000002d0008fffeffc0000000000016ffae002919016f000006fffe0000002d0008fffdff80000000000016ff5c002919017400000600010000002d00080000fd20000000000016005100290d012000000600000000002d000800000000000000000016000000290d03736565000006ffff0000002d0008fffeffc0000000000016ffae00293f022074000600010000002d00080000fd20000000000016005100291b016800000600000000002d00080000000000000000001600000029190165000006ffff0000002d0008fffeffc0000000000016ffae002916012000000600000000002d000800000000000000000016000000290d0343494f00000600010000002d00080000fd20000000000016005100295601d500000600000000002d00080000000000000000001600000029110173000006ffff0000002d0008fffeffc0000000000016ffae002913012000000600010000002d00080000fd20000000000016005100290d016e00000600000000002d0008000000000000000000160000002919016100000600020000002d00080001fd6000000000001600a3002916016d00000600000000002d00080000000000000000001600000029270165000006fffe0000002d0008fffdff80000000000016ff5c0029160120000006ffff0000002d0008fffeffc0000000000016ffae00290d016f00000600000000002d0008000000000000000000160000002919016e00000600010000002d00080000fd2000000000001600510029180120000006ffff0000002d0008fffeffc0000000000016ffae00290d017400000600010000002d00080000fd20000000000016005100290e016800000600000000002d00080000000000000000001600000029190165000006fffe0000002d0008fffdff80000000000016ff5c002916012000000600000000002d00080000000000000000001600000028085001770177002924016500000600010000002d00080000fd200000000000160051002916016200000600000000002d0008000000000000000000160000002919022073000600020000002d00080001fd6000000000001600a30029200169000006ffff0000002d0008fffeffc0000000000016ffae00290e017400000600000000002d000800000000000000000016000000290e02652c000600010000002d00080000fd200000000000160051002923012000000600000000002d000800000000000000000016000000290d017700000600010000002d00080000fd200000000000160051002924016800000600020000002d00080001fd6000000000001600a3002919016900000600000000002d000800000000000000000016000000290e016300000600010000002d00080000fd200000000000160051002916016800000600000000002d0008000000000000000000160000002919012000000600020000002d00080001fd6000000000001600a300290d016d00000600000000002d000800000000000000000016000000292704616b65730006fffe0000002d0008fffdff80000000000016ff5c002958012000000600020000002d00080001fd6000000000001600a300290d016d00000600000000002d00080000000000000000001600000029270165000006fffe0000002d0008fffdff80000000000016ff5c002916012000000600000000002d000800000000000000000016000000290d0177000006ffff0000002d0008fffeffc0000000000016ffae002924016f00000600010000002d00080000fd200000000000160051002919016e00000600000000002d00080000000000000000001600000029190264650006ffff0000002d0008fffeffc0000000000016ffae00292f017200000600000000002d0008000000000000000000160000002910022e20000600010000002d00080000fd200000000000160051002919012000000600000000002d000800000000000000000016000000290d024d61000600020000002d00080001fd6000000000001600a3002942017900000600010000002d00080000fd200000000000160051002919016200000600000000002d00080000000000000000001600000029190165000006ffff0000002d0008fffeffc0000000000016ffae002916012000000600000000002d000800000000000000000016000000290d014900000600010000002d00080000fd200000000000160051002911012000000600000000002d000800000000000000000016000000290d0163000006ffff0000002d0008fffeffc0000000000016ffae002916016f00000600000000002d0008000000000000000000160000002919017500000600020000002d00080001fd6000000000001600a3002919016c000006ffff0000002d0008fffeffc0000000000016ffae00290e0164000006fffe0000002d0008fffdff80000000000016ff5c002918012000000600000000002d000800000000000000000016000000290d016700000600020000002d00080001fd6000000000001600a3002919016900000600010000002d00080000fd20000000000016005100290e017600000600000000002d00080000000000000000001600000029190165000006ffff0000002d0008fffeffc0000000000016ffae002916012000000600010000002d00080000fd20000000000016005100290d016800000600020000002d00080001fd6000000000001600a3002919016900000600010000002d00080000fd20000000000016005100290e016d000006fffe0000002d0008fffdff80000000000016ff5c002926012000000600000000002d000800000000000000000016000000290d0173000006ffff0000002d0008fffeffc0000000000016ffae002913016f00000600020000002d00080001fd6000000000001600a3002919016d00000600000000002d00080000000000000000001600000029270165000006fffe0000002d0008fffdff80000000000016ff5c002916012000000600000000002d000800000000000000000016000000290d04737570700006ffff0000002d0008fffeffc0000000000016ffae00295e016f00000600000000002d00080000000000000000001600000029190172000006ffff0000002d0008fffeffc0000000000016ffae002911017400000600000000002d000800000000000000000016000000290e012e00000600170000002d00080016ff80000000000016075c00290d012000000600180000002d00080017ffc000000000001607ae0028088a01770120000600000000002d0008000000000000000000160000002a3903492077000006ffff0000002d0008fffeffc0000000000016ffae002942016f00000600000000002d0008000000000000000000160000002919017500000600020000002d00080001fd6000000000001600a3002919016c00000600000000002d000800000000000000000016000000290e0164000006fffe0000002d0008fffdff80000000000016ff5c002919012000000600010000002d00080000fd20000000000016005100290d016c00000600020000002d00080001fd6000000000001600a300290d016900000600000000002d000800000000000000000016000000290e026b650006fffe0000002d0008fffdff80000000000016ff5c00292f0120000006ffff0000002d0008fffeffc0000000000016ffae00290d017400000600010000002d00080000fd20000000000016005100290e016800000600000000002d00080000000000000000001600000029190165000006ffff0000002d0008fffeffc0000000000016ffae00291602206f000600000000002d00080000000000000000001600000029260270700006fffe0000002d0008fffdff80000000000016ff5c002932016f00000600000000002d00080000000000000000001600000029180172000006ffff0000002d0008fffeffc0000000000016ffae002911017400000600000000002d000800000000000000000016000000290e017500000600010000002d00080000fd200000000000160051002919016e00000600020000002d00080001fd6000000000001600a30029190169000006ffff0000002d0008fffeffc0000000000016ffae00290e017400000600010000002d00080000fd20000000000016005100290e0279200006ffff0000002d0008fffeffc0000000000016ffae00292503746f2000000600020000002d00080001fd6000000000001600a3002934016d00000600000000002d00080000000000000000001600000029270265650006fffe0000002d0008fffdff80000000000016ff5c00292c017400000600000000002d000800000000000000000016000000290d022077000600020000002d00080001fd6000000000001600a30029310169000006ffff0000002d0008fffeffc0000000000016ffae00290e017400000600010000002d00080000fd20000000000016005100290e026820000600020000002d00080001fd6000000000001600a30029260179000006ffff0000002d0008fffeffc0000000000016ffae002919026f750006fffe0000002d0008fffdff80000000000016ff5c002931012000000600000000002d000800000000000000000016000000290d016100000600010000002d00080000fd200000000000160051002916016e00000600000000002d00080000000000000000001600000029190164000006fffe0000002d0008fffdff80000000000016ff5c002919012000000600000000002d000800000000000000000016000000290c016400000600020000002d00080001fd6000000000001600a3002919016900000600000000002d000800000000000000000016000000290e057363757373000006fffe0000002d0008fffdff80000000000016ff5c002968012000000600000000002d000800000000000000000016000000290d016100000600020000002d00080001fd6000000000001600a3002916012000000600000000002d000800000000000000000016000000290d0170000006ffff0000002d0008fffeffc0000000000016ffae002919016f00000600010000002d00080000fd200000000000160051002919017300000600000000002d0008000000000000000000160000002914017300000600020000002d00080001fd6000000000001600a3002913016900000600010000002d00080000fd20000000000016005100290e016200000600020000002d00080001fd6000000000001600a3002919016c00000600000000002d000800000000000000000016000000290e0165000006fffe0000002d0008fffdff80000000000016ff5c002916012000000600020000002d00080001fd6000000000001600a300290d0266690006ffff0000002d0008fffeffc0000000000016ffae00291f02742c0006fffe0000002d0008fffdff80000000000016ff5c00291a012000000600000000002d000800000000000000000016000000290d017700000600010000002d00080000fd200000000000160051002924016800000600020000002d00080001fd6000000000001600a3002919016900000600000000002d000800000000000000000016000000290e016300000600010000002d00080000fd200000000000160051002916016800000600000000002d00080000000000000000001600000029190220770006ffff0000002d0008fffeffc0000000000016ffae002931016f00000600000000002d0008000000000000000000160000002919017500000600020000002d00080001fd6000000000001600a3002919016c00000600000000002d000800000000000000000016000000290e0164000006fffd0000002d0008fffcff40000000000016ff0a002919012000000600000000002d0008000000000000000000160000002808fd01770161000600020000002d00080001fd6000000000001600a3002916026c6c0006ffff0000002d0008fffeffc0000000000016ffae00291c016f00000600000000002d0008000000000000000000160000002919017700000600010000002d00080000fd200000000000160051002924012000000600020000002d00080001fd6000000000001600a300290d016d00000600000000002d00080000000000000000001600000029270165000006fffe0000002d0008fffdff80000000000016ff5c0029160120000006ffff0000002d0008fffeffc0000000000016ffae00290d02746f000600020000002d00080001fd6000000000001600a3002927012000000600010000002d00080000fd20000000000016005100290d016800000600000000002d0008000000000000000000160000002919016500000600020000002d00080001fd6000000000001600a3002916016c000006ffff0000002d0008fffeffc0000000000016ffae00290e0170000006fffe0000002d0008fffdff80000000000016ff5c002918012000000600010000002d00080000fd20000000000016005100290d0241410006ffff0000002d0008fffeffc0000000000016ffae002948024920000600020000002d00080001fd6000000000001600a300291d016d00000600000000002d00080000000000000000001600000029270265650006ffff0000002d0008fffeffc0000000000016ffae00292c017400000600000000002d000800000000000000000016000000290e012000000600020000002d00080001fd6000000000001600a300290d0169000006ffff0000002d0008fffeffc0000000000016ffae00290e017400000600000000002d000800000000000000000016000000290e017300000600010000002d00080000fd200000000000160051002913012000000600000000002d000800000000000000000016000000290d0167000006ffff0000002d0008fffeffc0000000000016ffae002919016f00000600000000002d0008000000000000000000160000002919016100000600020000002d00080001fd6000000000001600a3002916016c00000600000000002d000800000000000000000016000000290e0173000006ffff0000002d0008fffeffc0000000000016ffae002913012c00000600000000002d000800000000000000000016000000290c022061000600010000002d00080000fd200000000000160051002923016e00000600000000002d00080000000000000000001600000029190164000006ffff0000002d0008fffeffc0000000000016ffae002919022074000600010000002d00080000fd20000000000016005100291b0168000006ffff0000002d0008fffeffc0000000000016ffae002919016f00000600000000002d0008000000000000000000160000002919027365000600010000002d00080000fd2000000000001600510029290120000006ffff0000002d0008fffeffc0000000000016ffae00290d016f00000600010000002d00080000fd20000000000016005100291903662069000006ffff0000002d0008fffeffc0000000000016ffae00292a017400000600000000002d000800000000000000000016000000290e017300000600010000002d00080000fd200000000000160051002913012000000600000000002d000800000000000000000016000000290d03637573000006ffff0000002d0008fffeffc0000000000016ffae00294202746f000600020000002d00080001fd6000000000001600a3002927016d00000600000000002d0008000000000000000000160000002927046572732e000600180000002d00080017ffc000000000001607ae0029470120000028093605dc0120000600000000002d0008000000000000000000160000002a3a015300000600020000002d00080001fd6000000000001600a300291c016900000600010000002d00080000fd20000000000016005100290e016e00000600000000002d00080000000000000000001600000029190463657265000600020000002d00080001fd6000000000001600a3002953026c79000600000000002d0008000000000000000000160000002927012c00000600170000002d00080016ff80000000000016075c00290d012000000600180000002d00080017ffc000000000001607ae002809a905dc0120002a3a012000000600000000002d0008000000000000000000160000002a390448617272000600020000002d00080001fd6000000000001600a300295c017900000600000000002d00080000000000000000001600000029190320506100000600020000002d00080001fd6000000000001600a300293f017900000600010000002d00080000fd200000000000160051002919016e00000600000000002d0008000000000000000000160000002919016500000600170000002d00080016ff80000000000016075c0029160120000001000a800180017fff7fff00210ce4000000210ce409f60021000009f60021000000000020000100010ce3000100210ce309f50021000109f50021000100010020000200020ce2000200210ce209f40021000209f40021000200020020000300030ce1000300210ce109f30021000309f30021000300030020000400040ce0000400210ce009f20021000409f20021000400040020000500050cdf000500210cdf09f10021000509f10021000500050020000600060cde000600210cde09f00021000609f00021000600060020000700070cdd000700210cdd09ef0021000709ef0021000700070020000800080cdc000800210cdc09ee0021000809ee00210008000800ff0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000feff0000030a0100000000000000000000000000000000000100000002d5cdd59c2e1b10939708002b2cf9ae30000000ec0000000c00000001000000680000000f0000007000000005000000800000000600000088000000110000009000000017000000980000000b000000a000000010000000a800000013000000b000000016000000b80000000d000000c00000000c000000cd00000002000000102700001e0000000600000053545363490000010300000001000000030000000100000003000000000000000300000000020b000b000000000000000b000000000000000b000000000000000b000000000000001e1000000100000001000000000c100000020000001e000000060000005469746c650003000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000002000000030000000400000005000000060000000700000008000000090000000a000000feffffff0c0000000d0000000e0000000f000000100000001100000012000000feffffff1400000015000000160000001700000018000000190000001a0000001b0000001c0000001d0000001e0000001f000000200000002100000022000000230000002400000025000000260000002700000028000000290000002a0000002b0000002c0000002d0000002e0000002f000000300000003100000032000000330000003400000035000000360000003700000038000000390000003a0000003b0000003c0000003d0000003e0000003f000000400000004100000042000000430000004400000045000000460000004700000048000000490000004a0000004b0000004c0000004d0000004e0000004f000000500000005100000052000000feffffff5400000055000000560000005700000058000000590000005a000000fefffffffdffffff5d000000fefffffffefffffffeffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff52006f006f007400200045006e00740072007900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000016000501ffffffffffffffff030000000609020000000000c000000000000046000000000000000000000000006d222701fdc6015f000000800000000000000031005400610062006c006500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e000201ffffffff05000000ffffffff0000000000000000000000000000000000000000000000000000000000000000000000000b000000001000000000000057006f007200640044006f00630075006d0065006e007400000000000000000000000000000000000000000000000000000000000000000000000000000000001a00020101000000ffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000000000000000000024140000000000000500530075006d006d0061007200790049006e0066006f0072006d006100740069006f006e000000000000000000000000000000000000000000000000000000280002010200000004000000ffffffff00000000000000000000000000000000000000000000000000000000000000000000000013000000687e000000000000050044006f00630075006d0065006e007400530075006d006d0061007200790049006e0066006f0072006d006100740069006f006e000000000000000000000038000201ffffffffffffffffffffffff000000000000000000000000000000000000000000000000000000000000000000000000530000000010000000000000010043006f006d0070004f0062006a0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000012000200ffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000000000000000000058000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffffffffffffffff00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000feffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff0100feff02000100ffffffff0609020000000000c000000000000046180000004d6963726f736f667420576f726420446f63756d656e7400feffffff4e42365710000000576f72642e446f63756d656e742e38000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 'payne', '2006-11-29 02:43:44');
-- INSERT INTO "upload" ("uploadID", "projectID", "uploadName", "uploadType", "uploadDesc", "uploadData", "lastModifiedBy", "lastModified") VALUES
-- (44, 25, 'APSHealthcare_cover.doc', 'application/msword', 'Updated', 0xd0cf11e0a1b11ae1000000000000000000000000000000003e000300feff0900060000000000000000000000010000003200000000000000001000003400000001000000feffffff0000000031000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffeca5c100016109040000f012bf000000000001110001000100060000390d00000e006a626a62877487740000000000000000000000000000000000000904160024160000ed160100ed1601003907000000000000000000000000000000000000000000000000000000000000ffff0f000000000000000000ffff0f000000000000000000ffff0f0000000000000000000000000000000000880000000000860900000000000086090000860900000000000086090000000000008609000000000000860900000000000086090000140000000000000000000000bc09000000000000441100000000000044110000000000004411000000000000441100000c0000005011000014000000bc090000000000006e1a00009c02000070110000000000007011000000000000701100000000000070110000000000007011000000000000701100000000000070110000000000007011000000000000e519000002000000e719000000000000e719000000000000e719000000000000e719000000000000e719000000000000e71900002c0000000a1d0000520200005c1f000064000000131a0000150000000000000000000000000000000000000086090000000000007011000000000000000000000000000000000000000000007011000000000000701100000000000070110000000000007011000000000000131a000000000000e41100000000000086090000000000008609000000000000701100000000000000000000000000007011000000000000281a000016000000e411000000000000e411000000000000e411000000000000701100005e0000008609000000000000701100000000000086090000000000007011000000000000e5190000000000000000000000000000e4110000000000009a09000014000000ae0900000e00000086090000000000008609000000000000860900000000000086090000000000007011000000000000e5190000000000000000000000000000e411000000000000e4110000aa000000bd180000e0000000860900000000000086090000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e5190000000000000000000000000000641100000c0000008c8676c10000000000000000000000004411000000000000ce110000160000009d190000120000000000000000000000e5190000000000003e1a0000300000006e1a000000000000af19000036000000c01f000000000000e411000000000000c01f000024000000e519000000000000e41100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008609000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bc09000000000000bc090000c4030000800d0000c403000000000000000000000000000000000000bc09000000000000bc09000000000000800d000000000000040001010f000401000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d0d486172727920452e205061796e650d38332043726f737377696e642044726976650d536872657773627572792c2050412031373336310d4e6f76656d62657220372c20323030360d0d415053204865616c7468636172650d3834303320436f6c657376696c6c6520526f61642c20537569746520313630300d53696c76657220537072696e672c204d442032303931300d0d446561722048756d616e205265736f75726365732050726f66657373696f6e616c3a0d0d4920616d2077726974696e6720696e2072656761726420746f20796f757220706f7374656420495320546563686e6963616c204c6561642f4d616e6167657220706f736974696f6e2e2020492062656c69657665206d792062726f616420746563686e6963616c20736b696c6c7320616e64205a6f70652f507974686f6e20657870657269656e6365206d616b65206d652061207374726f6e672063616e64696461746520666f722074686520706f736974696f6e2e0d0d4920616d206120746563686e6f6c6f67697374207769746820657870657269656e636520696e2070726f766964696e6720736f6c7574696f6e73206174206c6576656c732066726f6d2074686520656e746572707269736520646f776e20746f2074686520696e646976696475616c2e20204920696e74726f6475636564205a6f7065206174206d79206c61737420656d706c6f79657220696e20323030302e20204920646576656c6f7065642061206e756d626572206f66205a6f70652070726f647563747320696e20507974686f6e2c20696e636c7564696e673a0d0d436f6e74656e74206f626a656374732077697468204475626c696e20436f7265206d6574616461746120706c7573207573657220646566696e6564206d657461646174612c20746f20737570706f727420696e666f726d6174696f6e20617263686974656374757265206170706c69656420746f2077656220636f6e74656e742e0d412070726f6475637420746f2070726f7669646520726f6c652d62617365642061636365737320746f20696e666f726d6174696f6e20696e204c4441502c207468617420616c6c6f7773206d61696e7461696e696e672074686520696e666f726d6174696f6e20746f2062652064656c65676174656420746f20746865206d6f737420617070726f70726961746520706572736f6e2c20617474726962757465206279206174747269627574652e0d412070726f6a65637420706f7274666f6c696f206d616e6167656d656e7420746f6f6c2c2064657369676e656420746f20737570706f72742074686520706c616e6e696e672070726f6365737320696e20706c616365206174207468652074696d652e0d0d416674657220323030332c2049207475726e6564206f766572206d6f7374205a6f706520646576656c6f706d656e7420746f2070656f706c6520492068616420747261696e65642c20616e64207468657920636f6e73756c7465642077697468206d65207768656e206e65656465642e20204d79207072696d61727920696e7465726573747320626563616d6520746563686e6f6c6f677920706c616e6e696e6720616e64206172636869746563747572652c20616e642070726f6a656374206d616e6167656d656e742e20204d7920737472656e6774682069732067657474696e672066726f6d20636f6e766572736174696f6e73207769746820637573746f6d65727320616e6420757365727320746f2073636f7065642d6f75742070726f6a65637420706c616e732e20204f6e206120726563656e742073747261746567792070726f6a6563742c204920776f726b65642061742074686520696e74657273656374696f6e206f6620636f6d6d756e69636174696f6e2077697468206d616e7920696e646976696475616c7320616e642067726f7570732c20616e642068656c7065642064657369676e2061206675747572652073797374656d206261736564206f6e207468652063726561746564206b6e6f776c656467652e0d0d5468652070726f64756374696f6e2076657273696f6e73206f6620746865205a6f70652070726f6475637473204920646573637269626564206172652068696464656e20626568696e6420746865206669726577616c6c2061726f756e64206d79206c61737420656d706c6f796572927320696e7472616e65742e2020486f77657665722c204920776f756c642062652064656c69676874656420746f206272696e67206d79206c6170746f7020616e642073686f7720796f7520646576656c6f706d656e742076657273696f6e732061732070617274206f6620612064697363757373696f6e206f66206d792066697420746f20796f7572206f7267616e697a6174696f6e2c20616e64206d79206162696c69747920746f2068656c7020415053204865616c746863617265206d6565742069747320676f616c732c20616e642074686f7365206f662069747320637573746f6d6572732e0d0d53696e636572656c792c0d0d0d4861727279205061796e650d0d00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000600004b06000093060000390d0000fcf3fc0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000101568f22810001668f2281000614a180000061668f2281000030006000001060000020600001106000024060000390600004a0600004b0600005a0600007b0600009306000094060000b7060000b80600006f070000700700004e0800004f080000d108000080090000e4090000e5090000c30b0000c40b00001e0d00001f0d00002a0d00002b0d0000f6000000000000000000000000f6000000000000000000000000f6000000000000000000000000f6000000000000000000000000f6000000000000000000000000f6000000000000000000000000f4000000000000000000000000ef000000000000000000000000ef000000000000000000000000ef000000000000000000000000ef000000000000000000000000ef000000000000000000000000ef000000000000000000000000f4000000000000000000000000f4000000000000000000000000ef000000000000000000000000ef000000000000000000000000ea000000000000000000000000ea000000000000000000000000ea000000000000000000000000ef000000000000000000000000ef000000000000000000000000ef000000000000000000000000f4000000000000000000000000f6000000000000000000000000f6000000000000000000000000f60000000000000000000000000000000000000424006764f2281000000400006764f228100000010000000800000f8418155e8418156764f2281000001b00060000390d0000fe00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020101012b0d00002c0d0000380d0000390d0000f6000000000000000000000000f6000000000000000000000000f40000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000800000f8418155e8418156764f2281000000322003a70f22810001fb0d02f20b0e03d21b0080722b008072390a0052490a00525b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001400250012000100a5000f000200000000000000000038000060f1ff020038000c000000f2281000000006004e006f0072006d0061006c000000020000001000434a18006d4809047348090474480904580001400100020058000c0000004c6b060000000900480065006100640069006e006700200031000000170001000624010a26000b46020013a4f00014a43c00402600001300350881434a1a004b4820004f4a0300514a030000540002400100020054000c0000004c6b060000000900480065006100640069006e006700200032000000170002000624010a26010b46020013a4f00014a43c00402601000f003508814b4814004f4a0300514a030000500003400100020050000c0000004c6b060000000900480065006100640069006e0067002000330000001000030006240113a4f00014a43c004026021300350881434a1a004b4814004f4a0300514a030000440004400100020044000c0000004c6b060000000900480065006100640069006e006700200034000000080004000624014026030f003508814f4a0300504a0400514a03000000000000600007400100020060000c000000341efc0000000900480065006100640069006e0067002000370000001d0007000f84d002118430fd13a4f00014a43c004026065e84d002608430fd001600350881360881434a1c004f4a0200514a0200614a1800420008400100020042000c000000341efc0000000900480065006100640069006e0067002000380000000d00080013a4f00014a43c00402607000700360881614a180000000044004140f2ffa10044000c0000004c6b060000001600440065006600610075006c0074002000500061007200610067007200610070006800200046006f006e007400000000005a006940f3ffb3005a000c0100000000000000000c005400610062006c00650020004e006f0072006d0061006c00000020003a560b0017f603000034d60600010a036c0034d60600010503000061f603000002000b0004005f48000428006b40f4ffc10028000001000000000000000007004e006f0020004c00690073007400000002000c00000000006000fe4f0100f20060000c0000004c6b0600000008004100620073007400720061006300740000002a000f000dc6050001a005000e84a0050f84a005118460fa13a4f00014a4f0005d84a0055e84a005608460fa0c004b4814004f4a0300514a03004600fe4f1101020046000c0000004c6b06000000060041007500740068006f0072000000100010000324000dc6050001a0050061240010004b4814004f4a0300514a0300614a140046004a400100120146000c0000004c6b0600000008005300750062007400690074006c00650000000f00110003240114a43c00402601612401000c004f4a0200514a0200614a18002c00fe4f010122012c000c0000004c6b060000000800410075006400690065006e006300650000000200120000003a004240010032013a000c0000004c6b06000000090042006f00640079002000540065007800740000000a00130013a4780014a4780004004b481400420022400100020042000c0000004c6b060000000700430061007000740069006f006e0000000a00140013a4780014a478000f003508814b4814004f4a0300514a03000054004c400100020054000c0000004c6b06000000040044006100740065000000260015000dc6050001a005000e84a0050f84a005118460fa14a43c005d84a0055e84a005608460fa0c004b4814004f4a0300514a03004a000a40010002004a000d0000004c6b06000000070049006e00640065007800200031000000120016000f84f000118410ff5e84f000608410ff1000434a14004b4814004f4a0500514a05004a000b40010002004a000d0000004c6b06000000070049006e00640065007800200032000000120017000f84e001118410ff5e84e001608410ff1000434a14004b4814004f4a0500514a05004a000c40010002004a000d0000004c6b06000000070049006e00640065007800200033000000120018000f84d002118410ff5e84d002608410ff1000434a14004b4814004f4a0500514a05004a000d40010002004a000d0000004c6b06000000070049006e00640065007800200034000000120019000f84c003118410ff5e84c003608410ff1000434a14004b4814004f4a0500514a0500540030400100a20154000d0000004c6b060000000b004c006900730074002000420075006c006c0065007400000011001a000a26000b46040013a43c0014a43c00001100422a014b481400504a0600706800000000004a0036400100b2014a000c0000004c6b060000000d004c006900730074002000420075006c006c006500740020003200000011001b000a26000b46060013a43c0014a43c000004004b481400460031400100c20146000c0000004c6b060000000b004c0069007300740020004e0075006d00620065007200000011001c000a26000b46080013a43c0014a43c000004004b4814004a003a400100d2014a000c0000004c6b060000000d004c0069007300740020004e0075006d0062006500720020003200000011001d000a26000b460a0013a43c0014a43c000004004b4814004e003e400100e2014e000c0000004c6b0600000005005400690074006c006500000015001e000e84a00513a4680114a468014026005d84a005001300350881434a20004b481c004f4a0300514a0300004200fe4f3101f20142000c000000004aa60000000a005400790070006500770072006900740065007200000008001f0067649b0641000c00434a16004f4a0700514a07004400fe4f0100020044000c000000ff768100000004004e0061006d0065000000150020000324011264f000000014a4f0002a2401612401000b003b088140885000434a2800005000fe4f0100120250000c000000ff768100000009005f0045006d0070006c006f007900650072000000110021000324032a240161240367647661cd000012003508813e2a01434a16004f4a0800514a08006400fe4f0100220264000c000000ff768100000014005f0045006d0070006c006f007900650072004400650073006300720069007000740069006f006e000000110022000324032a240161240367647661cd00000f00360881434a12004f4a0800514a0800004a00fe4f010032024a000c000000ff768100000009004a006f006200200053006b0069006c006c000000150023001264dc00000013a478002a24016764e91e1000000700350881434a1600003600fe6f0100420236000c000000f2281000000009004a006f00620020005400690074006c0065000000090024000a26000b460b0000000000000000390700000700001600000500ffffffff0100000004200000ffff0100a07a99000000000000000000390700000000000000000000000001000000020000001100000024000000390000004a0000004b0000005a0000007b0000009300000094000000b7000000b80000006f010000700100004e0200004f020000d102000080030000e4030000e5030000c3050000c40500001e0700001f0700002a0700002b0700002c070000380700003b07000098000000003000000000000000800000008000000070000080c6000098000000003000000000000000800000008000000070000080c6000098000000003000000000000000800000008000000070000080c6000098000000003000000000000000800000008000000070000080c6000098000000003000000000000000800000008000000070000080c6000098000000003000000000000000800000008000000070000080c6000098000000003000000000000000800000008000000070000080c6000098000000003000000000000000800000008000000070000080c6000098000000003000000000000000800000008000000070000080c6000098000000003000000000000000800000008000000070000080c6000098000000003000000000000000800000008000000070000080c6000098000000003000000000000000800000008000000070000080c6000098000000003000000000000000800000008000000070000080c6000098000000003000000000000000800000008000000070000080c6000098000000003000000000000000800000008000000070000080c6000098000000003000000000000000800000008000000070000080c6000098000000003000000000000000800000008000000070000080c6000098000b20243000000000000000800000008000000070000080c6000098000b20243000000000000000800000008000000070000080c6000098000b20243000000000000000800000008000000070000080c6000098000000003000000000000000800000008000000070000080c6000098000000003000000000000000800000008000000070000080c6000098000000003000000000000000800000008000000070000080c6000098000000003000000000000000800000008000000070000080c6000098000000003000000000000000800000008000000070000080c6000098000000003000000000000000800000008000000070000080c6000098000000003000000000000000800000008000000070000080c6000098000000003000000000000000800000008000000070000080c6000098000000003000000000000000800000008000000070000080c6000098000000003000000000000000800000008000000070000080c600000000000001000000020000001100000024000000390000004a0000004b0000005a0000007b0000009300000094000000b7000000b80000006f010000700100004e0200004f020000d102000080030000e4030000e5030000c3050000c40500001e0700001f0700002a0700002b0700002c070000380700003b070000fdff80aa6c3000000060000000000000060000000000ffbf01008001fdff80aa6c3000000060000000000000060000000000ffbf01008001fdff80aa6c3000000060000000000000060000000000ffbf01008001fdff80aa6c3000000060000000000000060000000000ffbf01008001fdff80aa6c3000000060000000000000060000000000ffbf01008001fdff80aa6c3000000060000000000000060000000000ffbf01008001fdffc0b400300000c021000048000000060000000000ffbf01008001fdbf60aa00300000c02100004d000000060000000000ffbf01008001fdff80aa6c3000000060000000000000060000000000ffbf01008001fdff80aa6c3000000060000000000000060000000000ffbf01008001fdff80aa6c3000000060000000000000060000000000ffbf01008001fdff80aa6c3000000060000000000000060000000000ffbf01008001fdff80aa6c3000000060000000000000060000000000ffbf01008001fdff80aa6c3000000060000000000000060000000000ffbf01008001fdff80aa6c3000000060000000000000060000000000ffbf0100800108400000003000000000000000000000000000000090200905000001084000000030000000000000000000000000000000902009050000010840000000300000000000000000000000000000009020090500000108400000003000000000000000000000000000000090200905000001084000000030000000000000000000000000000000902009050000010840000000300000000000000000000000000000009020090500000108400000003000000000000000000000000000000090200905000001084000000030000000000000000000000000000000902009050000010840000000300000000000000000000000000000009020090500000108400000003000000000000000000000000000000090200905000001084000000030000000000000000000000000000000902009050000010840000000300000000000000000000000000000009020090500000108400000003000000000000000000000000000000090200905000001084000000030000000000000000000000000000000902009050000010a00000000300000000000000000000000000000d08ac01505000e0700060000390d000007000000000600002b0d0000390d0000080000000a00000000060000390d0000090000000000000002000000070000005f000000690000002b0100002f010000ef010000f30100002a0200002e0200000404000008040000e3050000e70500003b0700000700040007001c0007001c0007001c0007001c0007001c0007001c00070000000000020000000b0000003b07000007000400070006007fffffffe67f248b1d0000000000000000000000000000000000010083ffffff2226d26c1b0000000000000000000000000000000000010088ffffff9a8f3ef11c0000000000000000000000000000000000010089ffffff7e515e161a00000000000000000000000000000000000100a84dd11f988a10ee2400ff0fff0fff0fff0fff0fff0fff0fff0f1000d3640428aa34ea2301000200ff0fff0fff0fff0fff0fff0fff0f0000010000000000010000000000000000006801000000000000030000006f2800020000002e000100000017000000000000000000000068010000000000000b1800000f843804118498fe15c60500013804065e843804608498fe4f4a0100514a01006f28000100b7f0010000000000010000000000000000000000000000000000031800000f846801118498fe15c60500016801065e846801608498fe6f2800020000002e000100000017000000000000000000000000000000000000000b0000004f4a0900514a09006f280001006f0001000000171000000000000000000000e0feffff000000001c1800000f8400001184e0fe15c60500010000065e8400006084e0fe434a14004f4a0100514a01006f2800862a00876800000000884800000100b7f001000000179000000000000000000000e0feffff00000000151800000f84a005118498fe15c6050001a005065e84a005608498fe4f4a0900514a09006f28008768000000008848000001006f0001000000179000000000000000000000e0feffff00000000151800000f847008118498fe15c60500017008065e847008608498fe4f4a0a00514a0a006f2800876800000000884800000100a7f001000000179000000000000000000000e0feffff00000000151800000f84400b118498fe15c6050001400b065e84400b608498fe4f4a0100514a01006f2800876800000000884800000100b7f001000000179000000000000000000000e0feffff00000000151800000f84100e118498fe15c6050001100e065e84100e608498fe4f4a0900514a09006f28008768000000008848000001006f0001000000179000000000000000000000e0feffff00000000151800000f84e010118498fe15c6050001e010065e84e010608498fe4f4a0a00514a0a006f2800876800000000884800000100a7f001000000179000000000000000000000e0feffff00000000151800000f84b013118498fe15c6050001b013065e84b013608498fe4f4a0100514a01006f2800876800000000884800000100b7f001000000179000000000000000000000e0feffff00000000151800000f848016118498fe15c60500018016065e848016608498fe4f4a0900514a09006f28008768000000008848000001006f0001000000179000000000000000000000e0feffff00000000151800000f845019118498fe15c60500015019065e845019608498fe4f4a0a00514a0a006f2800876800000000884800000100a7f0010000000010010000000000000000000000000000000000031800000f84f801118408fe15c6050001f801065e84f801608408fe6f280001000000010000000010010300000000000000000000000000000000031800000f84f801118408fe15c6050001f801065e84f801608408fe6f2800030000002e000100010000000010010305000000000000000000000000000000031800000f84d002118430fd15c6050001d002065e84d002608430fd6f2800050000002e0001002e000200010000000010010305070000000000000000000000000000031800000f8438041184c8fb15c60500013804065e8438046084c8fb6f2800070000002e0001002e0002002e000300010000000010010305070900000000000000000000000000031800000f8438041184c8fb15c60500013804065e8438046084c8fb6f2800090000002e0001002e0002002e0003002e00040001000000001001030507090b000000000000000000000000031800000f84a005118460fa15c6050001a005065e84a005608460fa6f28000b0000002e0001002e0002002e0003002e0004002e00050001000000001001030507090b0d0000000000000000000000031800000f84a005118460fa15c6050001a005065e84a005608460fa6f28000d0000002e0001002e0002002e0003002e0004002e0005002e00060001000000001001030507090b0d0f00000000000000000000031800000f8408071184f8f815c60500010807065e8408076084f8f86f28000f0000002e0001002e0002002e0003002e0004002e0005002e0006002e00070001000000001001030507090b0d0f11000000000000000000031800000f8408071184f8f815c60500010807065e8408076084f8f86f2800110000002e0001002e0002002e0003002e0004002e0005002e0006002e0007002e0008000b000000d3640428000000000000000000000000d364042800000000000000000000000089ffffff00000000000000000000000089ffffff00000000000000000000000083ffffff00000000000000000000000083ffffff00000000000000000000000088ffffff00000000000000000000000088ffffff0000000000000000000000007fffffff0000000000000000000000007fffffff000000000000000000000000a84dd11f000000000000000000000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff06000000000000000000000000000000ffff0600000000000000000000001200fe31d85509040300090405000904010009040300090405000904010009040300090405000000ff40018001000200000002000000c01e3a000100cb00020000000000000002000000000000005500140040044903021000000000000000390700007000000c00400000ffff01000000070055006e006b006e006f0077006e00ffff0100080000000000000000000000ffff010000000000ffff00000200ffff00000000ffff00000200ffff000000000b00000047069001000000020206030504050203000000030000000000000000000000000100000000000000540069006d006500730020004e0065007700200052006f006d0061006e00000035069001020000020005000000000000000000000000000000010000000000000000008000000000530079006d0062006f006c00000033069001000000020b0604020202020200000003000000000000000000000000010000000000000041007200690061006c0000003b069001000000020005000000000000000000030000000000000000000000000100000000000000480065006c00760065007400690063006100000047359001800a02020609040205080304bf0202a7fbffc76810000010000000009f000200000000004d00530020004d0069006e00630068006f0000002dff33ff20000e661d67000033069001000000020005000000000000000000030000000000000000000000000100000000000000540069006d006500730000003f0690014f00000200050000000000000000000100000000010024060000000000000800000000004100700070006c00650047006f00740068006900630000003706900100000002000500000000000000000003000000000000000000000000010000000000000043006f007500720069006500720000003906900100000002020404030301010800000003000000000000000000000000010000000000000047006100720061006d006f006e00640000003f06900100000002070309020205020400000003000000000000000000000000010000000000000043006f007500720069006500720020004e006500770000003b069001020000050201020108040807000000000000000000010000000000000000008000000000570069006e006700640069006e006700730000002000040071088c1800f0d0020000680100000000573bab46743bab460000000002001b0000000000000000000000010001000000040003100100000000000000000000000100010000000100000000000000590200f01000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a506c007b400b40080007e34000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b000000000000000000000000000000000002000000f802000000000c01006000f0100008000000000000000000000000000000000000000000000000000000000000000000000000f0ff0f00000000000000000000ffffff7fffffff7fffffff7fffffff7fffffff7fffffff7fffffff7f341efc00ffff1200000000000000070048006100720072007900200045000000000000000b004800610072007200790020005000610079006e0065000b004800610072007200790020005000610079006e006500000000000000000000000000000000000000000024000000060000000600000000000c0001000c0002000c0003000c0004000c0005000c0000000000000000000000000000000000000000000000000000000000feff0000030a01000000000000000000000000000000000001000000e0859ff2f94f6810ab9108002b27b3d9300000000c180000110000000100000090000000020000009800000003000000a800000004000000b400000005000000c800000007000000d400000008000000e400000009000000f800000012000000040100000a000000200100000c0000002c0100000d000000380100000e000000440100000f0000004c0100001000000054010000130000005c010000110000006401000002000000102700001e0000000800000048617272792045001e00000001000000006172721e0000000c0000004861727279205061796e65001e00000001000000001aa6301e000000070000004e6f726d616c00011e0000000c0000004861727279205061796e65001e000000020000003200a6301e000000140000004d6963726f736f667420576f72642031312e320040000000006298c50300000040000000005a52c19902c70140000000004871ce9d02c701030000000100000003000000000000000300000000000000030000000000000047000000a0160000feffffff5049435416980000000000800062001102ff0c00fffe00000048000000480000000000000080006200000000001e0001000a800180017fff7fff009a000000ff80c4000000000080006200000003000000000048000000480000001000100003000500000010011780880120fe9c000000000080006200000000008000620000039f000009000000a17fff00000009000000a17fff00000009000000a17fff00000009000000a17fff00000009000000a17fff00000009000000a17fff00000009000000a17fff00000009000000a17fff00000009000000a17fff00000009000000a17fff00000009000000a17fff00000009000000a17fff00000009000000a17fff00000009000000a17fff00000019000000c97fff0177bd77bdfe7fff016f7b6f7be07fff00000023000000c97fff0a63184e736b5a5ad67fff56b5631856b57fff4e735ef7e47fff0000001c000000c97ffffe6f7b0077bdfc7fff0277bd7fff6f7be57fff00000026000000c97fff0356b55ef763186b5afe5ad60456b54e735ad67fff6318fe5ef7e87fff00000009000000a17fff0000002b000000c97fff016b5a77bdfe7fff0077bdfd7fff076f7b77bd7fff77bd739c6f7b77bd77bdeb7fff00000031000000c97fff11529452946b5a5ef756b546315ef76b5a673977bd63185ad677bd6b5a6b5a5ef756b56b5aeb7fff00000025000000c97fff0177bd77bdfe7fff0477bd7fff7fff739c7ffffe6f7b0077bde77fff00000026000000c97fff0a5ef752946b5a5ef74e734a525ef76b5a6b5a77bd6739fe56b5e77fff00000009000000a17fff00000009000000a17fff0000001f000000f47fff0877bd6f7b6b5a7fff77bd77bd7fff77bd77bdb77fff00000027000000f47fff0c5ad65ef752947fff6318529456b55ad65294631856b56b5a5ef7bb7fff00000009000000a17fff00000039000000f47fff016f7b77bdfe6f7b0177bd77bdfe7fff0777bd77bd6f7b7fff7fff77bd7fff6b5afd7fff0377bd77bd6f7b6f7bc87fff0000003b000000f47ffffe56b5135ef763185ad66b5a5ef752946f7b6b5a52945ad67fff46315ad677bd52945ef76f7b67395ef76b5afe56b5c87fff0000002d000000f47fff056b5a7fff77bd7fff7fff6b5afd7fff0377bd77bd6f7b7ffffe6f7b0177bd6f7bc17fff00000033000000f47fff1252946f7b6b5a5ef76b5a52945ad65ef756b563185294673963186f7b673956b55ef76b5a56b5c17fff00000009000000a17fff00000009000000a17fff0000002f000000f47fff006f7bfe7fff0177bd77bdfd7fff006f7bfa7fff036f7b7fff7fff739cfc7fff0077bdca7fff00000045000000f47fff1b631856b556b56b5a631852944e736b5a56b556b55ad65ef75ad65ad65ef76b5a63185ef74e736b5a5ad66b5a5ef75ad6463156b556b56b5aca7fff00000009000000a17fff00000009000000a17fff00000009000000a17fff00000045000000f47fff0077bdf27fff0077bdf77fff0677bd77bd6b5a6b5a7fff7fff77bdfe7fff0177bd77bdfe7fff0377bd7fff77bd77bdf57fff0277bd7fff77bdeb7fff0000008d000000f47fff166b5a56b54e736b5a56b567395ad64e7363187fff4e737fff6b5a5ef7631856b5529467395ad667395ad65ef76b5afe5ad61752945ad66b5a52946b5a5ef76318529456b56f7b63184e7363187fff5ef756b55ad66b5a56b54e7356b563185ef76b5afd5ad60c529456b57fff7fff4a527fff52946f7b52945ef77fff4e735ad6f17fff0000005b000000f47fff0377bd7fff7fff77bdfe7fff0077bdfe7fff0977bd77bd7fff7fff77bd77bd7fff77bd7fff6f7bfe7fff036f7b7fff7fff77bdf47fff0077bdf47fff0577bd7fff77bd7fff7fff739cfe7fff0077bdef7fff0000008f000000f47fff205294529456b55ad67fff52946318529456b55ad656b5529456b57fff6f7b52944e7356b55ad67fff5ef75ad65ad65ef756b56739673952945ad656b55ef76b5a5ad6fe5ef71d56b563185ef74e734e7356b55ef74e736b5a5ef756b55ad66739529456b563187fff631856b55ad66f7b5ad656b552946b5a5ad66b5a673952945ef7f07fff00000009000000a17fff00000019000000f47fff055ad65ad652945ef75ad656b5b47fff00000009000000a17fff00000009000000a17fff00000041000000f47fff0077bdfb7fff0377bd7fff7fff77bdfb7fff0077bdf27fff0077bdfc7fff0077bdfb7fff0077bdfe7fff0177bd739cfd7fff0077bde77fff00000091000000f47fff416b5a56b54e736b5a56b567395ef74a5256b55ad66b5a5ad6631852944e7377bd6f7b4a527fff5ef752945ef76b5a56b556b563185ef76f7b56b55ad66b5a5ad66b5a52946f7b56b563185ad65ad652946739529456b55ad67fff4a526b5a5ef76b5a5ef752946b5a6b5a42106b5a673952945ef75ef756b5673952945ad66b5a52945ef7f07fff00000009000000a17fff0000005c000000f47fff0077bdfb7fff0077bdfe7fff0777bd7fff7fff77bd7fff77bd7fff77bdfd7fff0077bdfe7fff0177bd6f7bf97fff0077bdfb7fff0077bdfc7ffffd6f7b027fff77bd77bdfe7fff0377bd7fff7fff77bdee7fff0000008f000000f47fff325ad65ad656b552947fff67394e7352945ef76f7b56b55ad65ef76f7b5ad65ef74e737fff6b5a6f7b56b5673952945ad65ef763185ef75ad65ef75ad65ad65ef756b567394e736b5a67396b5a56b54e735ef74e736b5a5ad6529467395ef76b5a6f7b56b56739fe56b50b7fff6b5a5ad65ef76b5a5ef752945ad65ef75ad67fff56b5f07fff00000031000000f17fff0077bdfe7fff01739c6f7bfb7fff0077bdfb7fff026f7b7fff77bdfc7fff0277bd7fff77bdcf7fff00000053000000f47fff2256b55ef74e734a525ef76b5a5ad66b5a5ef75ad65ad65ef77fff52945ad65ad65ef763184e737fff4e737fff631867394a525ad656b577bd4e7363186b5a5ef75ad64e736318d17fff00000009000000a17fff00000009000000a17fff0000004d000000f47fff016f7b77bdfc7fff0077bdfa7fff0877bd6f7b7fff77bd77bd7fff7fff6f7b77bdfb7fff0077bdfe7fff0077bdfb7fff0177bd739cfe7fff0077bdfd7fff0077bde27fff0000008d000000f67fff3b739c7fff63185ad656b5529456b567395ad652946f7b5ef752945ad656b577bd5ad65294631856b552946b5a4e737fff63185ad66b5a5ef74e735294673956b55ad64a5256b55ad66b5a5ef75ad65ef75ad65ef76b5a5ad652946f7b56b55ef75ad64e735294673956b55ad64a5256b577bd67395ad65ef7fe5ad6016b5a6739ed7fff00000009000000a17fff00000027000000f37fff00739cf77fff0077bdf97fff0377bd7fff7fff77bdfd7fff0077bdcc7fff00000055000000f47fff234e736b5a5ad66b5a4e734e735ef75ad656b556b56b5a631852945ad65ef752945ef76b5a5ef756b55ad652946f7b5ef75ad667395ad656b55ad6529463185ad656b567395ef74a52d27fff0000004d000000f47fff0077bdfe7fff0077bdf87fff0077bdfe7fff0277bd7fff77bdfe7fff0077bdf97fff00739cf87fff0b77bd6f7b7fff77bd6f7b7fff7fff77bd7fff7fff77bd77bde57fff00000097000000f67fff44739c7fff5ad656b56b5a5ad65ad65ef7631867394e737fff5ad652946b5a6f7b5ad65ef76b5a5ad65294739c529456b55ad65ef75ad656b5631863185ef75ad64e735ad64e736b5a5ad66b5a4e734e735ef75ad656b56f7b56b5631863186f7b5ad65ef777bd6739529456b54e736b5a529456b556b57fff4e734e736f7b56b54e736f7b56b54e736318f17fff00000041000000f47fff0077bdfe7fff00739cf87fff0477bd7fff77bd7fff77bdfd7fff0077bdfe7fff0077bdea7fff0377bd7fff7fff77bdfc7fff0077bdeb7fff0000008d000000f47fff3f4a525ef77fff4e736b5a5ad646316b5a56b55ef75ad656b567395ad652945ef75ad65ef76b5a5ef763184a525ef75ad667395ad6673946317fff4e7352945ad64e735ad65ad66b5a5ad65ad66b5a4e7367395ef75ad65ef76b5a5ad656b577bd56b567395ad64e735ef76739463167397fff56b567395ad64e735ef767395ef7ee7fff0000003b000000f47fff0077bdf87fff02739c7fff77bdf37fff0277bd7fff77bdfc7fff0077bdf87fff0377bd7fff7fff77bdf37fff0077bdee7fff00000099000000f67fff45739c7fff5ad656b56b5a5ad66f7b5ef752945ad65ad66b5a5ad65ad66b5a52947fff4e734e7356b556b5631846316b5a5ef756b5673967395ad6529477bd5ad65ef75294631856b55ef74e735ad67fff5ad65ef75ad65ad66b5a6739673952944a527fff4e7356b556b56f7b56b563185ad66b5a5ad663185ef75ad6529456b55ad66b5a56b563185ef74a52f27fff0000000f000000f47fff0077bdaf7fff00000019000000f47fff054a525ef767396f7b4e735294b47fff00000009000000a17fff00000009000000a17fff00000009000000a17fff00000055000000f47fff0377bd739c7fff7ffffd6f7b017fff77bdfd7fff0077bdf87fff006f7bfe7fff0077bdfe7fff0077bdf67fff0577bd7fff77bd77bd7fff77bdfd7fff0077bdfe7fff0277bd7fff77bdeb7fff0000008b000000f47fff3e5ad6673952946b5a673956b556b55ef777bd6b5a67395ef74e735ef75ad65ad66b5a5ef76b5a4e736b5a5ad65ad667395ef75ad65ad65ef75ad65ef76b5a5ef752945ad64e73529456b5673967395ad65ad65ef75ad65ad652947fff6b5a529456b55ad667396b5a4e7356b54a5277bd56b556b55ad6673952945ef76739ed7fff0000004d000000f07fff0277bd7fff77bdfe7fff0077bdfc7fff0077bdfc7fff0577bd7fff77bd7fff77bd77bdf37fff0077bdfa7fff0377bd7fff7fff77bdfd7fff0077bdfa7fff0077bdf17fff00000093000000f47fff4263185ad656b55ad6529452945ad67fff56b55ad652944e736b5a5ef756b577bd52944a527fff56b55ef75ef75ad65ef75ad67fff56b567397fff5ad65ef74e734e736b5a67396f7b56b552946b5a5ef74e735ad652945ef7631842106b5a5ef767395ef74a5256b55ad66b5a5ad6631867395ad66b5a56b556b54e7356b5631856b556b55ad6f17fff0000002f000000f27fff0077bdf87fff0077bdf07fff0177bd77bdfb7fff0077bdf97fff00739cf07fff0077bdf07fff00000091000000f47fff4156b56b5a4a526f7b5294631852946b5a5ef777bd56b556b55ad67fff6b5a52945ef7631867394e734e7356b556b563185ef74e73529456b567397fff56b567394e737fff5ad65ef756b563184a526f7b5ad663185ef767395ef756b563186b5a52944e736b5a63185ad656b56b5a5ef76b5a5ad64a52529456b55ad656b577bd5ad65294f07fff00000031000000ea7fff0077bdf67fff0077bdf77fff0077bdfe7fff006f7bec7fff0077bdfd7fff0277bd7fff77bdf17fff00000097000000f47fff4463185ef74e735ad64e7352946b5a5ad656b556b55ad65ef75ad65ef76b5a5ad667395ad65ad64e735ad65ef75ad656b55ef767395ad66b5a5ad656b5631867395ad66b5a56b55ad67fff63186f7b56b556b57fff6b5a5ef763184a5267395ad65ad656b55294631867395ad66b5a5ad656b56318673967397fff56b556b56b5a56b55ef75ad656b56739f37fff00000009000000a17fff00000047000000f47fff0077bdf57fff00739cf27fff0077bdfb7fff0677bd7fff7fff77bd7fff7fff77bdfe7fff0077bdf97fff0777bd77bd7fff77bd7fff7fff77bd77bded7fff00000095000000f47fff434a525ef77fff4e7367395ef76b5a5ad652945ad65ad656b55ad66b5a63185ad64e7346316b5a5ef756b55ad656b55ef75ad656b556b577bd5ad652944e736b5a56b567397fff4e735ad66f7b6b5a52945ef756b56b5a5ad656b556b55ad663186b5a5ad65ef75ad65ad6529456b55ad652945ef76b5a5ad65ef75ad65ad65ef75294631856b556b5f27fff00000033000000f47fff00739cf77fff0077bdfe7fff0377bd7fff7fff77bdfb7fff0277bd7fff77bdfe7fff0177bd77bdcf7fff00000053000000f47fff22529467395ef76b5a5ef75ad667394e735ef74e736b5a529456b55ad65ef75ad656b57fff4a525ef763186b5a5ef756b552945ad67fff56b55ad656b577bd52945ad663185ef7d17fff00000009000000a17fff00000009000000a17fff00000064000000f47fff016b5a77bdfd7fff0077bdf47fff04739c77bd7fff7fff6f7bfb7fff0077bdfe7fff0177bd77bdfd7fff0277bd7fff77bdfe7ffffe77bd0b7fff7fff77bd7fff77bd7fff7fff77bd7fff77bd7fff739cfd7fff0177bd77bdf27fff00000095000000f47fff436b5a52945ef75ad66b5a5ad65ad65ef763185ef75ad64e737fff5ef76b5a52945ad656b55ad67fff6b5a4a525ef77fff5ef75ad65ad65ef75ad66b5a5ad65ad65ef752945ad66b5a5ad65ef75ad663185ef752945ef75ad656b56b5a5ef7529452945ad65ef756b552945ef752946f7b56b55ad6673952945ef76b5a5ef75ef756b552946b5a6b5af27fff00000054000000f07fff0077bdfe7fff0077bdfb7fff0077bdfe7fff0077bdf97fff0177bd77bdfc7fff0077bdfd7ffffe77bd0b7fff77bd7fff77bd7fff77bd7fff7fff77bd7fff7fff77bdfb7fff0077bdec7fff00000091000000f47fff4156b552945ef756b55ad67fff4e735ad66b5a56b55ad652944e736b5a5ad6529467395ef76b5a5ad67fff4e7367396b5a56b55ef767397fff6318529456b55ad66b5a5ef76b5a67397fff56b556b55ef76b5a5ad652945ef75ad65ef76b5a5ad6529467395ef75ad667395ad652946b5a4e7363184e736b5a67396b5a56b55ad667395ad6f07fff00000009000000a17fff00000037000000f27fff0277bd7fff77bdfb7fff0377bd7fff7fff77bdee7fff03739c7fff7fff77bdf97fff00739cfe7fff00739ce17fff00000093000000f47fff3c56b556b55ad65ad652945ad656b577bd4e735ef77fff5ad65ef76b5a52945ad65ad64e73529456b567396b5a5ef76b5a52945ad656b55ad656b55ad65ad656b55ad65ad66b5a7fff56b55ad6529463185ef75ad652945ad656b55ad66b5a4e736b5a67396b5a5ad667395ad667395ad65ef76b5a5ad66b5a6318fd56b5035ef75ad656b577bdf37fff0000004d000000f27fff0077bdfd7fff0277bd7fff77bdfe7fff0c77bd7fff77bd7fff77bd6f7b6b5a77bd77bd7fff7fff77bd77bdf47fff0077bdfe7fff0277bd7fff77bdfd7fff00739ce17fff00000089000000f47fff3d56b556b55ad64e735ad67fff56b552946f7b5ad65ad667395ad652945ef76b5a5ad65ad65ef752946318529456b57fff6b5a4a52631856b56b5a5ef74e7352945ef767395ad65ad663185ad656b5529452947fff56b55ad6673952945ad65ad65ef75ad66b5a5ad65ad663185ef75ad6673942106b5a5ef76b5a5ad6ec7fff00000009000000a17fff00000009000000a17fff00000015000000c97fff006b5afd7fff0077bddf7fff0000001d000000c97fff0752944e7363185ef76b5a5294673977bde17fff00000009000000a17fff00000009000000a17fff00000009000000a17fff00000009000000a17fff00000009000000a17fff00000017000000c97fff0477bd77bd7fff7fff6f7bde7fff0000001f000000c97fff0863184e736b5a5ad6631856b5673956b55ef7e27fff00000009000000a17fff00000009000000a17fff00000009000000a17fff00000009000000a17fff00000009000000a17fff00000009000000a17fff00000009000000a17fff00000009000000a17fff00000009000000a17fff00000009000000a17fff00000009000000a17fff00000009000000a17fff00000009000000a17fff00000009000000a17fff00000009000000a17fff00000009000000a17fff00000009000000a17fff00000009000000a17fff00000009000000a17fff000000039f000000ff0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000feff0000030a0100000000000000000000000000000000000100000002d5cdd59c2e1b10939708002b2cf9ae30000000f40000000c00000001000000680000000f0000007000000005000000800000000600000088000000110000009000000017000000980000000b000000a000000010000000a800000013000000b000000016000000b80000000d000000c00000000c000000d400000002000000102700001e0000000600000053545363490000000300000001000000030000000100000003000000000000000300000000020b000b000000000000000b000000000000000b000000000000000b000000000000001e100000010000000800000048617272792045000c100000020000001e000000060000005469746c6500030000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000002000000030000000400000005000000060000000700000008000000090000000a0000000b000000feffffff0d0000000e0000000f000000100000001100000012000000130000001400000015000000160000001700000018000000190000001a0000001b000000feffffff1d0000001e0000001f000000200000002100000022000000230000002400000025000000260000002700000028000000feffffff2a0000002b0000002c0000002d0000002e0000002f00000030000000fefffffffdffffff33000000fefffffffefffffffeffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff52006f006f007400200045006e00740072007900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000016000501ffffffffffffffff030000000609020000000000c00000000000004600000000000000000000000000865e097402c70135000000800000000000000031005400610062006c006500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e000201ffffffff05000000ffffffff0000000000000000000000000000000000000000000000000000000000000000000000000c000000e41f00000000000057006f007200640044006f00630075006d0065006e007400000000000000000000000000000000000000000000000000000000000000000000000000000000001a00020101000000ffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000000000000000000024160000000000000500530075006d006d0061007200790049006e0066006f0072006d006100740069006f006e000000000000000000000000000000000000000000000000000000280002010200000004000000ffffffff0000000000000000000000000000000000000000000000000000000000000000000000001c0000003c18000000000000050044006f00630075006d0065006e007400530075006d006d0061007200790049006e0066006f0072006d006100740069006f006e000000000000000000000038000201ffffffffffffffffffffffff000000000000000000000000000000000000000000000000000000000000000000000000290000000010000000000000010043006f006d0070004f0062006a0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000012000200ffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000000000000000000058000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffffffffffffffff00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000feffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff0100feff02000100ffffffff0609020000000000c000000000000046180000004d6963726f736f667420576f726420446f63756d656e7400feffffff4e42365710000000576f72642e446f63756d656e742e38000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 'payne', '2006-11-29 03:09:41');
-- INSERT INTO "upload" ("uploadID", "projectID", "uploadName", "uploadType", "uploadDesc", "uploadData", "lastModifiedBy", "lastModified") VALUES
-- (109, 1, '\\.PSF\\.Home\\Desktop\\filter_scripts.new', 'text/plain', '', 0x646f6a6f2e726571756972652822646f6a6f2e696f2e2a22293b0a646f6a6f2e726571756972652822646f6a6f2e6c66782e2a22293b0a646f6a6f2e726571756972652822646f6a6f2e6c616e672e636f6d6d6f6e22293b0a646f6a6f2e726571756972652822646f6a6f2e756e646f2e62726f7773657222293b0a0a646a436f6e666967203d207b2070726576656e744261636b427574746f6e4669783a2066616c7365207d3b0a0a2f2f2046696c7465722073756d6d61727920726573756c747320666f726d2c20646572697665642066726f6d2066696c74657220666f726d2076616c7565730a0a66756e6374696f6e2067657446696c74657253756d6d61727928297b0a092f2f207375626d69742075706461746546696c746572466f726d20746f207669657750726f6a656374735f66696c74657253756d6d617279206d6574686f640a090a097661722075706461746546696c746572466f726d4e6f6465203d20646f6a6f2e62794964282275706461746550616765466f726d22293b0a097661722066696c74657253756d6d6172794e6f6465203d20646f6a6f2e62794964282266696c74657253756d6d61727922293b0a0a097175657279537472696e67203d20646f6a6f2e696f2e656e636f6465466f726d2875706461746546696c746572466f726d4e6f6465293b0a090a09646f6a6f2e696f2e62696e64287b0a090975726c3a202266696c7465725f73756d6d6172793f222b7175657279537472696e672c0a09096c6f61643a2066756e6374696f6e28747970652c646174612c6576656e74297b0a0909092f2f207075742073656172636820726573756c747320696e746f20706167652026206d616b652073757265207468657920646973706c61790a0909090a09090966696c74657253756d6d6172794e6f64652e696e6e657248544d4c203d20646174613b0a090909746869732e5f73756d6d617279203d20646174613b0a090909746869732e5f666f726d203d2075706461746546696c746572466f726d4e6f64652e696e6e657248544d4c3b0a090909746869732e5f7175657279537472696e67203d207175657279537472696e673b0a09097d2c0a09096261636b3a2066756e6374696f6e2829207b0a0909092f2f20726573686f7720746865207361766564206974656d730a09090966696c74657253756d6d6172794e6f64652e696e6e657248544d4c203d20746869732e5f73756d6d6172793b0a09090975706461746546696c746572466f726d4e6f64652e696e6e657248544d4c203d20746869732e5f666f726d3b0a09090972657475726e20747275653b0a09097d2c0a0909666f72776172643a2066756e6374696f6e2829207b0a0909092f2f20726573686f7720746865207361766564206974656d730a09090966696c74657253756d6d6172794e6f64652e696e6e657248544d4c203d20746869732e5f73756d6d6172793b0a09090975706461746546696c746572466f726d4e6f64652e696e6e657248544d4c203d20746869732e5f666f726d3b0a09090972657475726e20747275653b0a09097d2c0a090970726576656e7443616368653a20747275652c0a09096368616e676555726c3a207175657279537472696e672c0a097d293b0a0972657475726e2066616c73653b0a7d3b0a0a2f2f2046696c746572207461626c652c20646570656e64696e67206f6e207175657279537472696e670a0a66756e6374696f6e2067657446696c7465725461626c65287175657279537472696e67297b0a0a097661722075706461746546696c746572466f726d4e6f6465203d20646f6a6f2e62794964282275706461746550616765466f726d22293b0a097661722066696c74657253756d6d6172794e6f6465203d20646f6a6f2e62794964282266696c74657253756d6d61727922293b0a0a09646f6a6f2e696f2e62696e64287b0a090975726c3a202266696c7465725f6275696c6465723f222b7175657279537472696e672c0a09096c6f61643a2066756e6374696f6e28747970652c646174612c6576656e74297b0a0909092f2f207075742073656172636820726573756c747320696e746f20706167652026206d616b652073757265207468657920646973706c61790a0909090a09090975706461746546696c746572466f726d4e6f64652e696e6e657248544d4c203d20646174613b0a090909746869732e5f666f726d203d20646174613b0a09097d2c0a09096261636b3a2066756e6374696f6e2829207b0a0909092f2f20726573686f7720746865207361766564206974656d730a09090975706461746546696c746572466f726d4e6f64652e696e6e657248544d4c203d20746869732e5f666f726d3b0a09090972657475726e20747275653b0a09097d2c0a0909666f72776172643a2066756e6374696f6e2829207b0a0909092f2f20726573686f7720746865207361766564206974656d730a09090975706461746546696c746572466f726d4e6f64652e696e6e657248544d4c203d20746869732e5f666f726d3b0a09090972657475726e20747275653b0a09097d2c0a090970726576656e7443616368653a20747275652c0a09096368616e676555726c3a207175657279537472696e672c0a097d293b0a0972657475726e2066616c73653b0a7d3b0a0a66756e6374696f6e206f70656e4d756c7469706c6553656c656374286174747269627574654e616d6529207b0a092f2f207375626d69742075706461746546696c7465724e6f646520746f2067657451756572794d756c7469706c6553656c6563740a090a097661722064696374203d206e6577204f626a6563743b0a09646963745b22617474724944225d203d206174747269627574654e616d653b0a09646963745b22616c6c6f776d756c7469706c65222b6174747269627574654e616d655d203d2022796573223b0a090a097661722075706461746546696c746572466f726d4e6f6465203d20646f6a6f2e62794964282275706461746550616765466f726d22293b0a097661722075706461746546696c7465724e6f6465203d20646f6a6f2e62794964286174747269627574654e616d652b22726f7722293b0a097661722066696c74657253756d6d6172794e6f6465203d20646f6a6f2e62794964282266696c74657253756d6d61727922293b0a090a097175657279537472696e67203d20646f6a6f2e696f2e656e636f6465466f726d2875706461746546696c746572466f726d4e6f6465290a097175657279537472696e67202b3d20646f6a6f2e696f2e6172677346726f6d4d61702864696374293b0a0a09646f6a6f2e696f2e62696e64287b0a090975726c3a202266696c7465725f6275696c645f6d756c7469706c6553656c6563743f222b7175657279537472696e672c0a09096c6f61643a2066756e6374696f6e28747970652c646174612c6576656e74297b0a0909092f2f2072656275696c6420706167650a0909090a09090975706461746546696c7465724e6f64652e696e6e657248544d4c203d20646174613b0a090909746869732e5f73756d6d617279203d2066696c74657253756d6d6172794e6f64652e696e6e657248544d4c3b0a090909746869732e5f666f726d203d2075706461746546696c746572466f726d4e6f64652e696e6e657248544d4c3b0a09097d2c0a09096261636b427574746f6e3a2066756e6374696f6e28297b0a0909092f2f20726573686f7720746865207361766564206974656d730a09090966696c74657253756d6d6172794e6f64652e696e6e657248544d4c203d20746869732e5f73756d6d6172793b0a09090975706461746546696c746572466f726d4e6f64652e696e6e657248544d4c203d20746869732e5f666f726d3b0a09090972657475726e20747275653b0a09097d2c0a0909666f7277617264427574746f6e3a2066756e6374696f6e2829207b0a0909092f2f20726573686f7720746865207361766564206974656d730a09090966696c74657253756d6d6172794e6f64652e696e6e657248544d4c203d20746869732e5f73756d6d6172793b0a09090975706461746546696c746572466f726d4e6f64652e696e6e657248544d4c203d20746869732e5f666f726d3b0a09090972657475726e20747275653b0a09097d2c0a090970726576656e7443616368653a20747275652c0a09096368616e676555726c3a207175657279537472696e672c0a097d293b0a0972657475726e2066616c73653b0a7d3b0a0a66756e6374696f6e20636c6f73654d756c7469706c6553656c656374286174747269627574654e616d6529207b0a092f2f207375626d69742075706461746546696c7465724e6f646520746f2067657451756572794d756c7469706c6553656c6563740a090a097661722064696374203d206e6577204f626a6563743b0a09646963745b22617474724944225d203d206174747269627574654e616d653b0a0a097661722075706461746546696c746572466f726d4e6f6465203d20646f6a6f2e62794964282275706461746550616765466f726d22293b0a097661722075706461746546696c7465724e6f6465203d20646f6a6f2e62794964286174747269627574654e616d652b22726f7722293b0a097661722066696c74657253756d6d6172794e6f6465203d20646f6a6f2e62794964282266696c74657253756d6d61727922293b0a0a097175657279537472696e67203d20646f6a6f2e696f2e656e636f6465466f726d2875706461746546696c746572466f726d4e6f6465293b0a097175657279537472696e67202b3d20646f6a6f2e696f2e6172677346726f6d4d61702864696374293b0a0a09646f6a6f2e696f2e62696e64287b0a090975726c3a202266696c7465725f6275696c645f6d756c7469706c6553656c6563743f222b7175657279537472696e672c0a09096c6f61643a2066756e6374696f6e28747970652c646174612c6576656e74297b0a0909092f2f2072656275696c6420706167650a0909090a09090975706461746546696c7465724e6f64652e696e6e657248544d4c203d20646174613b0a090909746869732e5f73756d6d617279203d2066696c74657253756d6d6172794e6f64652e696e6e657248544d4c3b0a090909746869732e5f666f726d203d2075706461746546696c746572466f726d4e6f64652e696e6e657248544d4c3b0a09097d2c0a09096261636b3a2066756e6374696f6e2829207b0a0909092f2f20726573686f7720746865207361766564206974656d730a09090966696c74657253756d6d6172794e6f64652e696e6e657248544d4c203d20746869732e5f73756d6d6172793b0a09090975706461746546696c746572466f726d4e6f64652e696e6e657248544d4c203d20746869732e5f666f726d3b0a09090972657475726e20747275653b0a09097d2c0a0909666f72776172643a2066756e6374696f6e2829207b0a0909092f2f20726573686f7720746865207361766564206974656d730a09090966696c74657253756d6d6172794e6f64652e696e6e657248544d4c203d20746869732e5f73756d6d6172793b0a09090975706461746546696c746572466f726d4e6f64652e696e6e657248544d4c203d20746869732e5f666f726d3b0a09090972657475726e20747275653b0a09097d2c0a090970726576656e7443616368653a20747275652c0a09096368616e676555726c3a207175657279537472696e672c0a097d293b0a0972657475726e2066616c73653b0a7d3b0a0a2f2f2044796e616d69632072656469726563747320746f207573652067656e65726174656420666f726d732066726f6d20737461746963206c696e6b730a0a66756e6374696f6e2066696c74657256696577526564697265637428297b0a092f2f20526564697265637420746f207468652046696c7465724275696c6465722c207573696e672066696c74657220666f726d2076616c7565730a097661722075706461746546696c746572466f726d4e6f6465203d20646f6a6f2e62794964282275706461746550616765466f726d22293b0a097175657279537472696e67203d20646f6a6f2e696f2e656e636f6465466f726d2875706461746546696c746572466f726d4e6f6465293b0a096c6f636174696f6e2e68726566203d202766696c7465725f766965773f27202b207175657279537472696e673b0a0972657475726e2066616c73653b0a7d3b0a0a66756e6374696f6e207461626c6556696577526564697265637428297b0a092f2f20526564697265637420746f207468652046696c7465724275696c6465722c207573696e672066696c74657220666f726d2076616c7565730a097661722075706461746546696c746572466f726d4e6f6465203d20646f6a6f2e62794964282275706461746550616765466f726d22293b0a097175657279537472696e67203d20646f6a6f2e696f2e656e636f6465466f726d2875706461746546696c746572466f726d4e6f6465293b0a096c6f636174696f6e2e68726566203d20277461626c655f766965773f27202b207175657279537472696e673b0a0972657475726e2066616c73653b0a7d3b0a0a66756e6374696f6e2070726f6a65637456696577526564697265637428297b0a092f2f20526564697265637420746f207468652046696c7465724275696c6465722c207573696e672066696c74657220666f726d2076616c7565730a097661722075706461746546696c746572466f726d4e6f6465203d20646f6a6f2e62794964282275706461746550616765466f726d22293b0a097175657279537472696e67203d20646f6a6f2e696f2e656e636f6465466f726d2875706461746546696c746572466f726d4e6f6465293b0a096c6f636174696f6e2e68726566203d202770726f6a6563745f766965773f27202b207175657279537472696e673b0a0972657475726e2066616c73653b0a7d3b0a0a66756e6374696f6e20737072656164736865657456696577526564697265637428297b0a092f2f20526564697265637420746f207468652046696c7465724275696c6465722c207573696e672066696c74657220666f726d2076616c7565730a097661722075706461746546696c746572466f726d4e6f6465203d20646f6a6f2e62794964282275706461746550616765466f726d22293b0a097175657279537472696e67203d20646f6a6f2e696f2e656e636f6465466f726d2875706461746546696c746572466f726d4e6f6465293b0a096c6f636174696f6e2e68726566203d202773707265616473686565745f766965773f27202b207175657279537472696e673b0a0972657475726e2066616c73653b0a7d3b0a0a2f2f2050726f746f7479706520666f722073617665642073746174650a0a76617220466f726d44617461203d2066756e6374696f6e28297b0a09746869732e5f666f726d203d20646f6a6f2e62794964282275706461746550616765466f726d22292e696e6e657248544d4c3b0a09746869732e5f73756d6d617279203d20646f6a6f2e62794964282266696c74657253756d6d61727922292e696e6e657248544d4c3b0a09746869732e6368616e676555726c203d20747275653b0a7d0a0a466f726d446174612e70726f746f747970652e6261636b203d2066756e6374696f6e28297b0a09646f6a6f2e62794964282275706461746550616765466f726d22292e696e6e657248544d4c203d20746869732e5f666f726d3b0a09646f6a6f2e62794964282266696c74657253756d6d61727922292e696e6e657248544d4c203d20746869732e5f73756d6d6172793b0a7d0a0a466f726d446174612e70726f746f747970652e666f7277617264203d2066756e6374696f6e28297b0a097175657279537472696e67203d20746869732e5f7175657279537472696e673b0a09646f6a6f2e62794964282275706461746550616765466f726d22292e696e6e657248544d4c203d20746869732e5f666f726d3b0a09646f6a6f2e62794964282266696c74657253756d6d61727922292e696e6e657248544d4c203d20746869732e5f73756d6d6172793b0a7d0a0a66756e6374696f6e20696e697428297b0a0976617220626f6f6b6d61726b4964203d206c6f636174696f6e2e686173683b0a09696628626f6f6b6d61726b4964297b0a0909626f6f6b6d61726b4964203d20626f6f6b6d61726b49642e737562737472696e6728312c20626f6f6b6d61726b49642e6c656e677468293b0a097d0a0a09696628626f6f6b6d61726b4964297b0a090967657446696c7465725461626c6528626f6f6b6d61726b4944293b0a090967657446696c74657253756d6d61727928293b0a097d656c73657b0a0909646f6a6f2e756e646f2e62726f777365722e736574496e697469616c5374617465286e657720466f726d4461746128222229293b0a097d0a7d3b0a0a646f6a6f2e6164644f6e4c6f616428696e69742829293b0a, 'payne', '2008-05-05 02:25:11'),
-- (112, 1, 'booklist', 'application/text', 'List of relevant books.', 0x536f6c76696e6720546f7567682050726f626c656d733a20416e204f70656e20576179206f662054616c6b696e672c204c697374656e696e672c20616e64204372656174696e67204e6577205265616c6974696573202850617065726261636b290a6279204164616d204b6168616e652028417574686f72292c205065746572204d2053656e67652028466f7265776f7264290a23204953424e2d31303a20313537363735343634320a23204953424e2d31333a203937382d313537363735343634310a0a, 'payne', '2008-11-24 14:02:15');
-- ALTER TABLE "upload" DISABLE TRIGGER ALL;

--
-- Truncate table before insert "visibilitylist"
--

--
-- Dumping data for table "visibilitylist"
--

INSERT INTO "visibilitylist" ("visibilityID", "visibilityDesc", "visibilityText") VALUES
(0, 'none', ''),
(1, 'high', ''),
(2, 'medium', ''),
(3, 'low', '');

--
-- Truncate table before insert "years"
--

--
-- Dumping data for table "years"
--

INSERT INTO "years" ("year") VALUES
(0),
(2004),
(2005),
(2006),
(2007),
(2008),
(2009),
(2010),
(2011),
(2012),
(2013),
(2014),
(2015),
(2016),
(2017);

ALTER TABLE "child" ENABLE TRIGGER ALL;
ALTER TABLE "comment" ENABLE TRIGGER ALL;
ALTER TABLE "description" ENABLE TRIGGER ALL;
ALTER TABLE "disposition" ENABLE TRIGGER ALL;
ALTER TABLE "driver" ENABLE TRIGGER ALL;
ALTER TABLE "edit_log" ENABLE TRIGGER ALL;
ALTER TABLE "history" ENABLE TRIGGER ALL;
ALTER TABLE "portfolio" ENABLE TRIGGER ALL;
ALTER TABLE "stakeholder" ENABLE TRIGGER ALL;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
