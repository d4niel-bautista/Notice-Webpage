-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2023 at 07:38 AM
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
-- Database: `pweng`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(100) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `role`) VALUES
(1, 'admin', 'admin', 1),
(2, 'user', 'user', 0);

-- --------------------------------------------------------

--
-- Table structure for table `notice_posts`
--

CREATE TABLE `notice_posts` (
  `id` int(11) NOT NULL,
  `author` varchar(255) NOT NULL,
  `title` mediumtext DEFAULT NULL,
  `body` longtext DEFAULT NULL,
  `date_posted` date DEFAULT NULL,
  `hits` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notice_posts`
--

INSERT INTO `notice_posts` (`id`, `author`, `title`, `body`, `date_posted`, `hits`) VALUES
(1, 'admin', '<h4 class=\"fw-b m-0\">[안내] 2023년 7월 카드사 무이자 할부(KG이니시스) 혜택 안내 입니다.</h4>', '<p>파워잉글리쉬 회원 여러분, 안녕하세요^^</p>\n<div>&nbsp;</div>\n<div>&nbsp;</div>\n<div>영어 말하기에 자신감을 심어주는 파워잉글리쉬 입니다.</div>\n<div>&nbsp;</div>\n<div>소중한 파워잉글리쉬 회원님들께&nbsp;<strong>2023년 7월&nbsp;</strong><strong>KG 이니시스 카드사별 할부 서비스 안내</strong>를 드립니다.&nbsp;</div>\n<div>&nbsp;</div>\n<div>\n<div>파워잉글리쉬&nbsp;수업을 수강하시는시는시는 (3개월: 5% 할인, 6개월:&nbsp;<strong>무료 1개월</strong>&nbsp;추가, 12개월:&nbsp;<strong>무료 2개월</strong>&nbsp;추가)&nbsp;회원님들께는&nbsp;가격 할인 혜택이 제공되오니,아래 카드 무이자 할부 내용 결제 시 함께 참고 부탁 드립니다.</div>\n</div>\n<p>&nbsp;</p>\n<div>&nbsp;</div>\n<div><img src=\"https://www.pweng.net/editor/uploaded/img/1688429665.png\" border=\"0\" hspace=\"5\" vspace=\"5\" data-was-processed=\"true\"></div>\n<div>&nbsp;</div>\n<div>감사합니다.</div>\n<div>파워잉글리쉬.</div>', '2023-07-27', 4),
(2, 'admin', '<h4 class=\"fw-b m-0\">[안내] 2023년 7월 카드사 무이자 할부(KG이니시스) 혜택 안내 입니다.</h4>', '<p>파워잉글리쉬 회원 여러분, 안녕하세요^^</p>\n<div>&nbsp;</div>\n<div>&nbsp;</div>\n<div>영어 말하기에 자신감을 심어주는 파워잉글리쉬 입니다.</div>\n<div>&nbsp;</div>\n<div>소중한 파워잉글리쉬 회원님들께&nbsp;<strong>2023년 7월&nbsp;</strong><strong>KG 이니시스 카드사별 할부 서비스 안내</strong>를 드립니다.&nbsp;</div>\n<div>&nbsp;</div>\n<div>\n<div>파워잉글리쉬&nbsp;수업을 수강하시는시는시는 (3개월: 5% 할인, 6개월:&nbsp;<strong>무료 1개월</strong>&nbsp;추가, 12개월:&nbsp;<strong>무료 2개월</strong>&nbsp;추가)&nbsp;회원님들께는&nbsp;가격 할인 혜택이 제공되오니,아래 카드 무이자 할부 내용 결제 시 함께 참고 부탁 드립니다.</div>\n</div>\n<p>&nbsp;</p>\n<div>&nbsp;</div>\n<div><img src=\"https://www.pweng.net/editor/uploaded/img/1688429665.png\" border=\"0\" hspace=\"5\" vspace=\"5\" data-was-processed=\"true\"></div>\n<div>&nbsp;</div>\n<div>감사합니다.</div>\n<div>파워잉글리쉬.</div>', '2023-07-27', 2),
(3, 'admin', '<h4 class=\"fw-b m-0\">[안내] 2023년 7월 카드사 무이자 할부(KG이니시스) 혜택 안내 입니다.</h4>', '<p>파워잉글리쉬 회원 여러분, 안녕하세요^^</p>\n<div>&nbsp;</div>\n<div>&nbsp;</div>\n<div>영어 말하기에 자신감을 심어주는 파워잉글리쉬 입니다.</div>\n<div>&nbsp;</div>\n<div>소중한 파워잉글리쉬 회원님들께&nbsp;<strong>2023년 7월&nbsp;</strong><strong>KG 이니시스 카드사별 할부 서비스 안내</strong>를 드립니다.&nbsp;</div>\n<div>&nbsp;</div>\n<div>\n<div>파워잉글리쉬&nbsp;수업을 수강하시는시는시는 (3개월: 5% 할인, 6개월:&nbsp;<strong>무료 1개월</strong>&nbsp;추가, 12개월:&nbsp;<strong>무료 2개월</strong>&nbsp;추가)&nbsp;회원님들께는&nbsp;가격 할인 혜택이 제공되오니,아래 카드 무이자 할부 내용 결제 시 함께 참고 부탁 드립니다.</div>\n</div>\n<p>&nbsp;</p>\n<div>&nbsp;</div>\n<div><img src=\"https://www.pweng.net/editor/uploaded/img/1688429665.png\" border=\"0\" hspace=\"5\" vspace=\"5\" data-was-processed=\"true\"></div>\n<div>&nbsp;</div>\n<div>감사합니다.</div>\n<div>파워잉글리쉬.</div>', '2023-07-27', 1),
(4, 'admin', '<h4 class=\"fw-b m-0\">[안내] 2023년 7월 카드사 무이자 할부(KG이니시스) 혜택 안내 입니다.</h4>', '<p>파워잉글리쉬 회원 여러분, 안녕하세요^^</p>\n<div>&nbsp;</div>\n<div>&nbsp;</div>\n<div>영어 말하기에 자신감을 심어주는 파워잉글리쉬 입니다.</div>\n<div>&nbsp;</div>\n<div>소중한 파워잉글리쉬 회원님들께&nbsp;<strong>2023년 7월&nbsp;</strong><strong>KG 이니시스 카드사별 할부 서비스 안내</strong>를 드립니다.&nbsp;</div>\n<div>&nbsp;</div>\n<div>\n<div>파워잉글리쉬&nbsp;수업을 수강하시는시는시는 (3개월: 5% 할인, 6개월:&nbsp;<strong>무료 1개월</strong>&nbsp;추가, 12개월:&nbsp;<strong>무료 2개월</strong>&nbsp;추가)&nbsp;회원님들께는&nbsp;가격 할인 혜택이 제공되오니,아래 카드 무이자 할부 내용 결제 시 함께 참고 부탁 드립니다.</div>\n</div>\n<p>&nbsp;</p>\n<div>&nbsp;</div>\n<div><img src=\"https://www.pweng.net/editor/uploaded/img/1688429665.png\" border=\"0\" hspace=\"5\" vspace=\"5\" data-was-processed=\"true\"></div>\n<div>&nbsp;</div>\n<div>감사합니다.</div>\n<div>파워잉글리쉬.</div>', '2023-07-27', 0),
(5, 'admin', '<h4 class=\"fw-b m-0\">[안내] 2023년 7월 카드사 무이자 할부(KG이니시스) 혜택 안내 입니다.</h4>', '<p>파워잉글리쉬 회원 여러분, 안녕하세요^^</p>\n<div>&nbsp;</div>\n<div>&nbsp;</div>\n<div>영어 말하기에 자신감을 심어주는 파워잉글리쉬 입니다.</div>\n<div>&nbsp;</div>\n<div>소중한 파워잉글리쉬 회원님들께&nbsp;<strong>2023년 7월&nbsp;</strong><strong>KG 이니시스 카드사별 할부 서비스 안내</strong>를 드립니다.&nbsp;</div>\n<div>&nbsp;</div>\n<div>\n<div>파워잉글리쉬&nbsp;수업을 수강하시는시는시는 (3개월: 5% 할인, 6개월:&nbsp;<strong>무료 1개월</strong>&nbsp;추가, 12개월:&nbsp;<strong>무료 2개월</strong>&nbsp;추가)&nbsp;회원님들께는&nbsp;가격 할인 혜택이 제공되오니,아래 카드 무이자 할부 내용 결제 시 함께 참고 부탁 드립니다.</div>\n</div>\n<p>&nbsp;</p>\n<div>&nbsp;</div>\n<div><img src=\"https://www.pweng.net/editor/uploaded/img/1688429665.png\" border=\"0\" hspace=\"5\" vspace=\"5\" data-was-processed=\"true\"></div>\n<div>&nbsp;</div>\n<div>감사합니다.</div>\n<div>파워잉글리쉬.</div>', '2023-07-27', 0),
(6, 'admin', '<h4 class=\"fw-b m-0\">[안내] 필리핀 슈퍼태풍(독수리)로 인한 일부 수업 휴강 안내 입니다.</h4>', '<p>파워잉글리쉬 회원 여러분, 안녕하세요!</p>\n<div>&nbsp;</div>\n<div>&nbsp;</div>\n<div>파워잉글리쉬 강사님들께서 근무하시는 필리핀 지역에&nbsp;<strong>5호 태풍 \'독수리(KOMPASU)\'의 영향으로 일부 지역에 정전 및 인터넷 연결이 원활하지 못한 상황</strong>입니다.</div>\n<div>&nbsp;</div>\n<div>현재 5호 태풍 독수리는 필리핀 동쪽 해상에서 중국 남부를 향해 북상하고 있으며 강풍과 폭우를 동반하며 현지에 많은 피해를 주고 있습니다.</div>\n<div>&nbsp;</div>\n<div>26일(수) 슈퍼 태풍 급으로 세력이 강해질 것이며, 27일(목) 태풍태풍태풍의 영향권에서 벗어날 것으로 전망됩니다.</div>\n<div>&nbsp;</div>\n<div>해당 기간동안 정전 및 인터넷 장애로 수업에 불편 드리게 된 점 죄송한 말씀 드리며, 원활히 진행되지 못한 수업은 \'휴강(종료일 자동 연장)\' 처리될 예정 입니다.</div>\n<div>&nbsp;</div>\n<div><img src=\"https://www.pweng.net/editor/uploaded/img/1690280042.png\" border=\"0\" hspace=\"5\" vspace=\"5\" data-was-processed=\"true\"></div>\n<div>&nbsp;</div>\n<div>&nbsp;</div>\n<div>감사합니다.</div>\n<div>파워잉글리쉬.</div>\n<p><br><br></p>', '2023-07-27', 1),
(7, 'admin', '<h4 class=\"fw-b m-0\">[안내] 필리핀 슈퍼태풍(독수리)로 인한 일부 수업 휴강 안내 입니다.</h4>', '<p>파워잉글리쉬 회원 여러분, 안녕하세요!</p>\n<div>&nbsp;</div>\n<div>&nbsp;</div>\n<div>파워잉글리쉬 강사님들께서 근무하시는 필리핀 지역에&nbsp;<strong>5호 태풍 \'독수리(KOMPASU)\'의 영향으로 일부 지역에 정전 및 인터넷 연결이 원활하지 못한 상황</strong>입니다.</div>\n<div>&nbsp;</div>\n<div>현재 5호 태풍 독수리는 필리핀 동쪽 해상에서 중국 남부를 향해 북상하고 있으며 강풍과 폭우를 동반하며 현지에 많은 피해를 주고 있습니다.</div>\n<div>&nbsp;</div>\n<div>26일(수) 슈퍼 태풍 급으로 세력이 강해질 것이며, 27일(목) 태풍태풍태풍의 영향권에서 벗어날 것으로 전망됩니다.</div>\n<div>&nbsp;</div>\n<div>해당 기간동안 정전 및 인터넷 장애로 수업에 불편 드리게 된 점 죄송한 말씀 드리며, 원활히 진행되지 못한 수업은 \'휴강(종료일 자동 연장)\' 처리될 예정 입니다.</div>\n<div>&nbsp;</div>\n<div><img src=\"https://www.pweng.net/editor/uploaded/img/1690280042.png\" border=\"0\" hspace=\"5\" vspace=\"5\" data-was-processed=\"true\"></div>\n<div>&nbsp;</div>\n<div>&nbsp;</div>\n<div>감사합니다.</div>\n<div>파워잉글리쉬.</div>\n<p><br><br></p>', '2023-07-27', 3),
(8, 'admin', '<h4 class=\"fw-b m-0\">[안내] 필리핀 슈퍼태풍(독수리)로 인한 일부 수업 휴강 안내 입니다.</h4>', '<p>파워잉글리쉬 회원 여러분, 안녕하세요!</p>\n<div>&nbsp;</div>\n<div>&nbsp;</div>\n<div>파워잉글리쉬 강사님들께서 근무하시는 필리핀 지역에&nbsp;<strong>5호 태풍 \'독수리(KOMPASU)\'의 영향으로 일부 지역에 정전 및 인터넷 연결이 원활하지 못한 상황</strong>입니다.</div>\n<div>&nbsp;</div>\n<div>현재 5호 태풍 독수리는 필리핀 동쪽 해상에서 중국 남부를 향해 북상하고 있으며 강풍과 폭우를 동반하며 현지에 많은 피해를 주고 있습니다.</div>\n<div>&nbsp;</div>\n<div>26일(수) 슈퍼 태풍 급으로 세력이 강해질 것이며, 27일(목) 태풍태풍태풍의 영향권에서 벗어날 것으로 전망됩니다.</div>\n<div>&nbsp;</div>\n<div>해당 기간동안 정전 및 인터넷 장애로 수업에 불편 드리게 된 점 죄송한 말씀 드리며, 원활히 진행되지 못한 수업은 \'휴강(종료일 자동 연장)\' 처리될 예정 입니다.</div>\n<div>&nbsp;</div>\n<div><img src=\"https://www.pweng.net/editor/uploaded/img/1690280042.png\" border=\"0\" hspace=\"5\" vspace=\"5\" data-was-processed=\"true\"></div>\n<div>&nbsp;</div>\n<div>&nbsp;</div>\n<div>감사합니다.</div>\n<div>파워잉글리쉬.</div>\n<p><br><br></p>', '2023-07-27', 1),
(9, 'admin', '<h4 class=\"fw-b m-0\">[안내] 필리핀 슈퍼태풍(독수리)로 인한 일부 수업 휴강 안내 입니다.</h4>', '<p>파워잉글리쉬 회원 여러분, 안녕하세요!</p>\n<div>&nbsp;</div>\n<div>&nbsp;</div>\n<div>파워잉글리쉬 강사님들께서 근무하시는 필리핀 지역에&nbsp;<strong>5호 태풍 \'독수리(KOMPASU)\'의 영향으로 일부 지역에 정전 및 인터넷 연결이 원활하지 못한 상황</strong>입니다.</div>\n<div>&nbsp;</div>\n<div>현재 5호 태풍 독수리는 필리핀 동쪽 해상에서 중국 남부를 향해 북상하고 있으며 강풍과 폭우를 동반하며 현지에 많은 피해를 주고 있습니다.</div>\n<div>&nbsp;</div>\n<div>26일(수) 슈퍼 태풍 급으로 세력이 강해질 것이며, 27일(목) 태풍태풍태풍의 영향권에서 벗어날 것으로 전망됩니다.</div>\n<div>&nbsp;</div>\n<div>해당 기간동안 정전 및 인터넷 장애로 수업에 불편 드리게 된 점 죄송한 말씀 드리며, 원활히 진행되지 못한 수업은 \'휴강(종료일 자동 연장)\' 처리될 예정 입니다.</div>\n<div>&nbsp;</div>\n<div><img src=\"https://www.pweng.net/editor/uploaded/img/1690280042.png\" border=\"0\" hspace=\"5\" vspace=\"5\" data-was-processed=\"true\"></div>\n<div>&nbsp;</div>\n<div>&nbsp;</div>\n<div>감사합니다.</div>\n<div>파워잉글리쉬.</div>\n<p><br><br></p>', '2023-07-27', 7),
(10, 'admin', '<h4 class=\"fw-b m-0\">[안내] 필리핀 슈퍼태풍(독수리)로 인한 일부 수업 휴강 안내 입니다.</h4>', '<p>파워잉글리쉬 회원 여러분, 안녕하세요!</p>\n<div>&nbsp;</div>\n<div>&nbsp;</div>\n<div>파워잉글리쉬 강사님들께서 근무하시는 필리핀 지역에&nbsp;<strong>5호 태풍 \'독수리(KOMPASU)\'의 영향으로 일부 지역에 정전 및 인터넷 연결이 원활하지 못한 상황</strong>입니다.</div>\n<div>&nbsp;</div>\n<div>현재 5호 태풍 독수리는 필리핀 동쪽 해상에서 중국 남부를 향해 북상하고 있으며 강풍과 폭우를 동반하며 현지에 많은 피해를 주고 있습니다.</div>\n<div>&nbsp;</div>\n<div>26일(수) 슈퍼 태풍 급으로 세력이 강해질 것이며, 27일(목) 태풍태풍태풍의 영향권에서 벗어날 것으로 전망됩니다.</div>\n<div>&nbsp;</div>\n<div>해당 기간동안 정전 및 인터넷 장애로 수업에 불편 드리게 된 점 죄송한 말씀 드리며, 원활히 진행되지 못한 수업은 \'휴강(종료일 자동 연장)\' 처리될 예정 입니다.</div>\n<div>&nbsp;</div>\n<div><img src=\"https://www.pweng.net/editor/uploaded/img/1690280042.png\" border=\"0\" hspace=\"5\" vspace=\"5\" data-was-processed=\"true\"></div>\n<div>&nbsp;</div>\n<div>&nbsp;</div>\n<div>감사합니다.</div>\n<div>파워잉글리쉬.</div>\n<p><br><br></p>', '2023-07-27', 4),
(11, 'admin', '<h4 class=\"fw-b m-0\">[안내] 설 연휴(1/31 - 2/2) 수업 휴강 안내 입니다.</h4>', '<div>파워잉글리쉬 회원 여러분, 안녕하세요!</div>\n<div>&nbsp;</div>\n<div>영어 말하기에 자신감을 심어주는 파워잉글리쉬 입니다.</div>\n<div>&nbsp;</div>\n<div>&nbsp;</div>\n<div>&nbsp;</div>\n<div>아래와 같이&nbsp;<strong>2022년 설 연휴 수업 휴강 안내</strong>&nbsp;드리오니, 참고 하시기 바랍니다.</div>\n<div>&nbsp;</div>\n<div><strong>* 1월31일(월) ~ 2월2일(수) : 수업 휴강 입니다. (레벨테스트 진행 되지 않습니다.)</strong></div>\n<div>&nbsp;</div>\n<div>[휴강]된 수업은 수업 종료일에서 자동 연장 되었으며, 자세한 수업 일정은 [마이페이지 &gt; 강의실] 페이지의 \'학습 캘린더\'를 통해 확인 가능 하십니다.</div>\n<div>&nbsp;</div>\n<div>설 연휴기간 한국 고객센터 [평일 오전 9시 - 오후 6시, 1688-8672] 또한 휴무로 상담이 어려운 점 양해 부탁 드립니다.</div>\n<div>&nbsp;</div>\n<div>&nbsp;</div>\n<div>&nbsp;</div>\n<div>&nbsp;</div>\n<div>새해 복 많이 받으세요!</div>\n<div>&nbsp;</div>\n<div>감사합니다.</div>\n<div>파워잉글리쉬.</div>', '2023-07-27', 5),
(12, 'admin', '<h4 class=\"fw-b m-0\">[안내] 설 연휴(1/31 - 2/2) 수업 휴강 안내 입니다. ED1TED_2</h4>', '<div>파워잉글리쉬 회원 여러분, 안녕하세요!</div>\n<div>&nbsp;</div>\n<div>영어 말하기에 자신감을 심어주는 파워잉글리쉬 입니다.</div>\n<div>&nbsp;</div>\n<div>&nbsp;</div>\n<div>&nbsp;</div>\n<div>아래와 같이&nbsp;<strong>2022년 설 연휴 수업 휴강 안내</strong>&nbsp;드리오니, 참고 하시기 바랍니다.</div>\n<div>&nbsp;</div>\n<div><strong>* 1월31일(월) ~ 2월2일(수) : 수수수업 휴강 입니다. (레벨테스트 진행 되지 않습니다.)</strong></div>\n<div>&nbsp;</div>\n<div>[휴강]된 수업은 수업 종료일에서 자동 연장 되었으며, 자세한 수업 일정은 [마이페이지 &gt; 강의실] 페이지의 \'학습 캘린더\'를 통해 확인 가능 하십니다.</div>\n<div>&nbsp;</div>\n<div>설 연휴기간 한국 고객센터 [평일 오전 9시 - 오후 6시, 1688-8672] 또한 휴무로 상담이 어려운 점 양해 부탁 드립니다.</div>\n<div>&nbsp;</div>\n<div>&nbsp;</div>\n<div>&nbsp;</div>\n<div>&nbsp;</div>\n<div>새해 복 많이 받으세요!</div>\n<div>&nbsp;</div>\n<div>감사합니다.</div>\n<div>파워잉글리쉬.</div>', '2023-07-27', 15),
(13, 'admin', '<h4 class=\"fw-b m-0\">[안내] 설 연휴(1/31 - 2/2) 수업 휴강 안내 입니다. EDITED_2</h4>', '<div>파워잉글리쉬 회원 여러분, 안녕하세요! EDITED</div>\n<div>&nbsp;</div>\n<div>영어 말하기에 자신감을 심어주는 파워잉글리쉬 입니다.</div>\n<div>&nbsp;</div>\n<div>&nbsp;</div>\n<div>&nbsp;</div>\n<div>아래와 같이&nbsp;<strong>2022년 설 연휴 수업 휴강 안내</strong>&nbsp;드리오니, 참고 하시기 바랍니다.</div>\n<div>&nbsp;</div>\n<div><strong>* 1월31일(월) ~ 2월2일(수) : 수수수업수업수업 휴강 입니다. (레벨테스트 진행 되지 않습니다.)</strong></div>\n<div>&nbsp;</div>\n<div>[휴강]된 수업은 수업 종료일에서 자동 연장 되었으며, 자세한 수업 일정은 [마이페이지 &gt; 강의실] 페이지의 \'학습 캘린더\'를 통해 확인 가능 하십니다.</div>\n<div>&nbsp;</div>\n<div>설 연휴기간 한국 고객센터 [평일 오전 9시 - 오후 6시, 1688-8672] 또한 휴무로 상담이 어려운 점 양해 부탁 드립니다.</div>\n<div>&nbsp;</div>\n<div>&nbsp;</div>\n<div>&nbsp;</div>\n<div>&nbsp;</div>\n<div>새해 복 많이 받으세요!</div>\n<div>&nbsp;</div>\n<div>감사합니다.</div>\n<div>파워잉글리쉬.</div>', '2023-07-27', 8),
(14, 'admin', '<h4 class=\"fw-b m-0\">[안내] 2022년 12월 카드사 무이자 할부(KG이니시스) 혜택 안내 입니다.</h4>', '<p>파워잉글리쉬 회원 여러분, 안녕하세요^^</p>\n<div>&nbsp;</div>\n<div>&nbsp;</div>\n<div>영어 말하기에 자신감을 심어주는 파워잉글리쉬 입니다.</div>\n<div>&nbsp;</div>\n<div>소중한 파워잉글리쉬 회원님들께&nbsp;<strong>2022년 12월&nbsp;</strong><strong>KG 이니시스 카드사별 할부 서비스 안내</strong>를 드립니다.&nbsp;</div>\n<div>&nbsp;</div>\n<div>\n<div>파워잉글리쉬&nbsp;수업을 수강하시는시는시는 (3개월: 5% 할인, 6개월:&nbsp;<strong>무료 1개월</strong>&nbsp;추가, 12개월:&nbsp;<strong>무료 2개월</strong>&nbsp;추가)&nbsp;회원님들께는&nbsp;가격 할인 혜택이 제공되오니,아래 카드 무이자 할부 내용 결제 시 함께 참고 부탁 드립니다.</div>\n</div>\n<div>&nbsp;</div>\n<div>&nbsp;</div>\n<div><img src=\"https://www.pweng.net/editor/uploaded/img/1670563553.png\" border=\"0\" hspace=\"5\" vspace=\"5\" data-was-processed=\"true\"></div>\n<div>&nbsp;</div>\n<div>&nbsp;</div>\n<div>감사합니다.</div>\n<div>파워잉글리쉬.&nbsp;</div>', '2023-07-27', 3),
(15, 'admin', '<h4 class=\"fw-b m-0\">EDITED [안내] 2022년 12월 카드사 무이자 할부(KG이니시스) 혜택 안내 입니다. EDITED</h4>', '<p>파워잉글리쉬 회원 여러분, 안녕하세요^^</p>\n<div>&nbsp;</div>\n<div>&nbsp;</div>\n<div>영어 말하기에 자신감을 심어주는 파워잉글리쉬 입니다.</div>\n<div>&nbsp;</div>\n<div>소중한 파워잉글리쉬 회원님들께&nbsp;<strong>2022년 12월&nbsp;</strong><strong>KG 이니시스 카드사별 할부 서비스 안내</strong>를 드립니다.&nbsp;</div>\n<div>&nbsp;</div>\n<div>\n<div>파워잉글리쉬&nbsp;수업을 수강하시는시는시는시는시는시는시는 (3개월: 5% 할인, 6개월:&nbsp;<strong>무료 1개월</strong>&nbsp;추가, 12개월:&nbsp;<strong>무료 2개월</strong>&nbsp;추가)&nbsp;회원님들께는&nbsp;가격 할인 혜택이 제공되오니,아래 카드 무이자 할부 내용 결제 시 함께 참고 부탁 드립니다.</div>\n</div>\n<div>&nbsp;</div>\n<div>&nbsp;</div>\n<div><img src=\"https://www.pweng.net/editor/uploaded/img/1670563553.png\" border=\"0\" hspace=\"5\" vspace=\"5\" data-was-processed=\"true\"></div>\n<div>&nbsp;</div>\n<div>&nbsp;</div>\n<div>감사합니다.</div>\n<div>파워잉글리쉬.&nbsp;</div>', '2023-07-27', 14),
(16, 'admin', '<h4 class=\"fw-b m-0\">[공지] 낮시간 할인 서비스 와 1개월 수강 서비스 종료 안내 입니다. EDITED_2</h4>', '<p>파워잉글리쉬 회원 여러분, 안녕하세요!</p>\n<h4 class=\"fw-b m-0\">EDITED_2</h4>\n<div>&nbsp;</div>\n<div>&nbsp;</div>\n<div>영어 말하기에 자신감을 심어주는 파워잉글리쉬 입니다.</div>\n<div>&nbsp;</div>\n<div>파워잉글리쉬를 수강하시는 모든 회원님들께 감사의 말씀을 드리며, 2022년 11월7일(월) 부터 일부 수업 서비스가 종료되어 아래와 같이 안내 드립니다.</div>\n<div>우수 강사 유치와 안정적인 수업 환경을 통한 강사 고용 유지를 통해 회원님들께 보다 질 높은 수업과 최적의 수업 환경을 제공하기 위해 결정된 점 이해 부탁 드립니다.&nbsp;</div>\n<div>&nbsp;</div>\n<div>&nbsp;</div>\n<div><strong>* 2022년 11월 7일(월) 부터 [낮시간 할인] 서비스 와 [1개월 수강] 서비스서비스서비스가가가서비스가가가서비스가가가 종료 됩니다.&nbsp;</strong></div>\n<div>* 단, 기존 수업을 진행하시는 회원님들께서는 [재수강 신청] 기간 내 재수강 신청 페이지를 통해 기존 수업과 동일 수업 유지 가능</div>\n<div>* 파워잉글리쉬 수업 가능 스케줄: 평일 오전 6시 - 밤 12시 내 모든 수업 동일 수강료 적용</div>\n<div>* 파워잉글리쉬 수업 신청:&nbsp;<strong>3개월/6개월(+1개월 무료 수업 추가)/12개월(+2개월 무료 수업 추가)</strong></div>\n<div>&nbsp;</div>\n<div>&nbsp;</div>\n<div>앞으로도 노력하는 파워잉글리쉬 되겠습니다.&nbsp;</div>\n<div>&nbsp;</div>\n<div>&nbsp;</div>\n<div>감사합니다.</div>\n<div>파워잉글리쉬.&nbsp;</div>', '2023-07-27', 25),
(17, 'admin', '<h1>Lorem Ipsum EDITED_7</h1>', '<div>\n<h2>What is Lorem Ipsum? EDITED_2</h2>\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n</div>\n<div>\n<h2>Why do we use it?</h2>\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\n</div>\n<p>&nbsp;</p>\n<div>\n<h2>Where does it come from?</h2>\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\n</div>\n<div>\n<h2>Where can I get some?</h2>\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\n</div>', '2023-07-27', 23),
(18, 'admin', '<h4 class=\"fw-b m-0\">[안내] 2023년 3/1(수) 삼일절 수수수업수업수업수업수업수업수업 진행 안내 입니다. EDITED_3</h4>', '<p>파워잉글리쉬 회원 여러분, 안녕하세요!</p>\n<div>&nbsp;</div>\n<div>영어 말하기에 자신감을 심어주는 파워잉글리쉬 입니다.</div>\n<div>&nbsp;</div>\n<div>&nbsp;</div>\n<p>&nbsp;</p>\n<div><strong>2023년 3월1일(수) 삼일절은 파워잉글리쉬 수수수업이업이업이수업이업이업이수업이업이업이수업이업이업이수업이업이업이 정상 진행 예정으로 아래와 같이 안내 드립니다.</strong></div>\n<div><strong>&nbsp;</strong></div>\n<div>\n<div><strong>&gt; 수업 및 레벨테스트 정상 진행 [오전 6시 - 밤 12시]</strong></div>\n<div><strong>&gt; 고객센터(1688-8672)는 휴무로 전화 상담 어려우나, 1:1 게시판 답변 서비스는는는는는는는 가능<br></strong></div>\n<div><strong>&nbsp;</strong></div>\n<br>\n<div><strong>휴강 신청[무료 연기] 기능을 이용하시면 3/1 (수) 수업이 어려우신 회원님들께서는 미리 수업 휴강 처리가 가능</strong>합니다.&nbsp;</div>\n<div>(해당 [무료연기] 처리의 경우, 1:1 게시판 요청 또는 고객센터 유선 요청은 불가능한 점 양해 부탁 드립니다.)</div>\n<div>&nbsp;</div>\n<div>[마이페이지 &gt; 스케줄 관리 &gt; 수업수업수업 하루 연기]&nbsp;페이지에 생성된 3/1(수) 날짜의&nbsp;[무료 연기]&nbsp;버튼을 클릭하시면, 기존 [하루하루하루연기] 횟수수수 차감 없이 자동 연기 처리&nbsp;됩니다.&nbsp;</div>\n<div>&nbsp;</div>\n<div>단,&nbsp;[무료 연기] 버튼은 해당&nbsp;<strong>휴일 하루(2/28) 전까지만 활성화</strong>가 되어 사용이 가능하며, 휴일 당일 무료 연기 처리는 불가능&nbsp;합니다.&nbsp;</div>\n<div>또한, 무료 연기를 통해 이미 휴강 처리가 완료된 수업의 휴강 취소는 불가능 하므로 신중한 처리 부탁 드립니다.</div>\n<div>&nbsp;</div>\n<div>&nbsp;</div>\n<div>\n<div>3/1(수) 휴일 당일에는 수수수업 1시간 전까지 기존 [수수수업 하루연기] 처리가 가능 합니다. (파워잉글리쉬 홈페이지 PC버전 &amp; Mobile버전에서 가능 합니다.)</div>\n<div>&nbsp;</div>\n</div>\n<div>&nbsp;</div>\n<div>&nbsp;</div>\n<div>감사합니다.</div>\n<div>파워잉글리쉬.</div>\n</div>', '2023-07-27', 65),
(19, 'admin', '<p><span style=\"font-size: 18pt;\"><strong>Test Post</strong></span></p>', '<p>TEST BODY</p>', '2023-07-27', 2),
(20, 'admin', '<p><span style=\"font-size: 18pt;\"><strong>Test Post_2</strong></span></p>', '<p>TEST</p>', '2023-07-27', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice_posts`
--
ALTER TABLE `notice_posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `notice_posts`
--
ALTER TABLE `notice_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
