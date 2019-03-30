-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2019-03-30 12:22:38
-- 服务器版本： 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `chbbs`
--
CREATE DATABASE IF NOT EXISTS `chbbs` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `chbbs`;

-- --------------------------------------------------------

--
-- 表的结构 `auser`
--
-- 创建时间： 2019-01-08 09:12:59
--

CREATE TABLE IF NOT EXISTS `auser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=37 ;

--
-- 转存表中的数据 `auser`
--

INSERT INTO `auser` (`id`, `username`, `password`) VALUES
(1, 'admin', '12345'),
(2, 'admin1', '1234567890'),
(3, 'admin', '1234567890'),
(4, 'admin', '1234567890'),
(5, 'admin123', '1234567890'),
(6, 'Tuzki123', '1234567890'),
(8, 'admin', '1234567890'),
(9, 'admin', '1234567890'),
(10, 'admin3', '1234567890'),
(11, 'admin', 'abcdefg'),
(12, 'admin', 'abcdefg'),
(13, 'admin', 'abcdefg'),
(14, 'admin4', 'abcdefg'),
(15, 'admin', 'abcdefg'),
(16, 'admin5', 'abcdefg'),
(17, 'abc', 'abcdefg'),
(18, 'abc', 'abcdefg'),
(19, 'abc', 'abcdefg'),
(20, 'abc', 'abcdefg'),
(21, 'abc', 'abcdefg'),
(22, 'abc', 'abcdefg'),
(23, 'abc', 'abcdefg'),
(24, 'abc', 'abcdefg'),
(25, 'abc', 'abcdefg'),
(26, 'abc', 'abcdefg'),
(27, 'abc', 'abcdefg'),
(28, 'abc', 'abcdefg'),
(30, 'abc', 'abcdefg'),
(31, 'abc', 'abcdefg'),
(32, 'abc', 'abcdefg'),
(33, 'abc', 'abcdefg'),
(34, 'abc', 'abcdefg'),
(35, 'abc', 'abcdefg'),
(36, 'helloworld', 'abcd1234');

-- --------------------------------------------------------

--
-- 表的结构 `friend`
--
-- 创建时间： 2019-02-21 08:39:31
--

CREATE TABLE IF NOT EXISTS `friend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(11) NOT NULL,
  `bid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `muaid` (`aid`),
  KEY `mubid` (`bid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

--
-- 转存表中的数据 `friend`
--

INSERT INTO `friend` (`id`, `aid`, `bid`) VALUES
(1, 5, 8),
(2, 5, 9),
(3, 5, 29),
(4, 5, 31),
(5, 4, 4),
(6, 4, 35),
(7, 4, 36),
(8, 4, 34),
(9, 5, 30),
(10, 4, 11),
(11, 6, 26),
(12, 6, 9),
(13, 6, 29),
(14, 6, 5),
(15, 6, 39),
(16, 6, 30),
(17, 6, 2),
(18, 29, 6),
(19, 29, 9),
(20, 29, 35),
(21, 2, 31),
(22, 2, 7),
(23, 2, 36),
(24, 5, 41),
(25, 5, 37),
(26, 1, 41),
(27, 1, 8),
(28, 1, 31),
(29, 1, 20);

-- --------------------------------------------------------

--
-- 表的结构 `link`
--
-- 创建时间： 2019-01-10 04:15:14
--

CREATE TABLE IF NOT EXISTS `link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `domain` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- 转存表中的数据 `link`
--

INSERT INTO `link` (`id`, `title`, `domain`) VALUES
(1, '百度一下', 'https://www.baidu.com/'),
(2, '腾讯', 'https://www.qq.com'),
(3, '腾讯', 'https://www.qq.com'),
(4, '腾讯', 'https://www.qq.com'),
(5, '腾讯', 'https://www.qq.com'),
(6, '腾讯', 'https://www.qq.com'),
(7, '腾讯', 'https://www.qq.com'),
(8, '腾讯123', 'http://123.com'),
(9, '腾讯', 'https://www.qq.com'),
(10, '腾讯', 'https://www.qq.com'),
(11, '腾讯', 'https://www.qq.com'),
(12, '腾讯', 'https://www.qq.com'),
(13, '腾讯', 'https://www.qq.com'),
(14, '腾讯', 'https://www.qq.com'),
(15, '腾讯', 'https://www.qq.com'),
(16, '腾讯', 'https://www.qq.com'),
(17, '腾讯', 'https://www.qq.com'),
(18, '腾讯', 'https://www.qq.com'),
(19, '腾讯', 'https://www.qq.com'),
(23, 'K9999', 'abcd');

-- --------------------------------------------------------

--
-- 表的结构 `notice`
--
-- 创建时间： 2019-01-10 08:47:37
--

CREATE TABLE IF NOT EXISTS `notice` (
  `keynt` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`keynt`),
  UNIQUE KEY `key` (`keynt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `notice`
--

INSERT INTO `notice` (`keynt`, `title`, `content`) VALUES
('notice', '穿越火线服务器更新！！！！！！！！O(∩_∩)O哈哈', '<div class="newsshow">\r\n	<h2>\r\n		01月10日服务器更新维护公告\r\n	</h2>\r\n<!--分享开始-->\r\n	<div class="main news-detail">\r\n		<div class="share clearfix">\r\n			<p>\r\n				2019年01月10日 分享到：\r\n			</p>\r\n<a class="tqq" href="javascript:void(0)">腾讯微博</a> <a class="weibo" href="javascript:void(0)">新浪微博</a> <a class="qzone" href="javascript:void(0)">qq空间</a> \r\n		</div>\r\n	</div>\r\n亲爱的战友：<br />\r\n<br />\r\n我们将于01月10日09:00-13:00对所有服务器进行更新维护，在此期间无法登录游戏，给大家带来的不便我们深表歉意。<br />\r\n<br />\r\n&lt;更新内容&gt;<br />\r\n- 部分UI改善<br />\r\n1)增加击杀提示中击杀和被杀/感染提示颜色<br />\r\n2)修改计分板显示信息，去除部分冗余信息，增强计分板辨识度<br />\r\n3)改善计分板字体识别度，调整字体及颜色<br />\r\n<br />\r\n- 生化模式规则变更<br />\r\n1)士气充能功能修改 <br />\r\n病毒散布期间，人类阵营士气充能受到病毒影响无法启动<br />\r\n病毒散布结束后该功能恢复，没有士气充值期间，不会累积击杀僵尸士气<br />\r\n2)僵尸技能冷却时间调整 <br />\r\n病毒散布期间，所有僵尸技能的冷却时间减少50% <br />\r\n病毒散布结束后僵尸技能恢复为正常冷却时间 <br />\r\n3)僵尸抗定身能力调整<br />\r\n病毒散布期间，僵尸的抗定身能力得到提升 <br />\r\n病毒散布结束后僵尸抗定身能力还原为正常状态 <br />\r\n4)人类阵营无敌机制调整 <br />\r\n人类阵营在无敌状态下被僵尸技能或普通攻击时，可以抵抗感染，但会受到固定的生命值伤害 <br />\r\n<br />\r\n<br />\r\n当生命值降到一定程度后，在无敌状态下只会在受到爆弹兽颅及跌落伤害时损失生命值 <br />\r\n※只适用于生化模式<br />\r\n<br />\r\n- 僵尸技能调整<br />\r\n痛苦女王的鬼触技能由每回合只能使用1次，修改为每回合可使用2次<br />\r\n<br />\r\n- 枪王决战模式武器调整<br />\r\n1)守护者M2调整为铁皮人机枪<br />\r\n<br />\r\n2)提升黑龙炮获得使用概率<br />\r\n<br />\r\n3)提升生命收割者获得使用概率<br />\r\n<br />\r\n4)提升使用枪王升级模组道具时部分武器的获得使用概率<br />\r\n<br />\r\n- T50无限武器箱调整<br />\r\n移除：【朱雀】M249<br />\r\n※T50无限武器箱内武器与当前版本密码箱可获得武器一致 <br />\r\n<br />\r\n- 问题修正<br />\r\n修复幻彩秘银彩漆异常出现于分解列表的异常问题<br />\r\n<br />\r\n- 特别提示 <br />\r\n1)01月02日至维护开始前在战场转移计划页面提交的电信三区、网通二区角色转移申请，会于本次维护中进行转移操作<br />\r\n战场转移计划页面链接：https://evt03.tiancity.com/csol/51048/home/index.php<br />\r\n※请尚未提交转移申请的战友们尽快提交转移账号信息<br />\r\n2)欢乐一线牵活动获得的霸主角色无限礼盒最后使用使用时间截止至2019/01/16维护前，请战友们尽快使用<br />\r\n※届时未使用的礼盒将被替换为500欢乐积分 <br />\r\n3)全球盛典奖励箱最后使用时间截止至2019/01/30 09:00，请战友们获得后尽快使用 <br />\r\n4)十年典藏武器箱最后使用时间截止至2019/01/30 09:00，请战友们获得后尽快使用 <br />\r\n5)撼宇碎星组件最后使用时间为2019/01/30 09:00<br />\r\n6)幻彩秘银彩漆最后使用时间截止至2019/01/30 09:00，请战友们获得后尽快使用<br />\r\n7)霸主芯片的最后使用期限为02/13维护前，届时未使用的霸主芯片，都将替换为欢乐积分<br />\r\n※T50霸主无限紫晶芯片，每个替换为500欢乐积分<br />\r\n※T50霸主蓝钻芯片，每个替换为50欢乐积分<br />\r\n8)因版本更新计划调整，后续01月30日进行的更新维护将会调整至01月29日进行<br />\r\n故所有原定于1月30日维护前结束的活动，结束时间均修改至1月29日维护前结束，请战友们了解<br />\r\n<br />\r\n	<p>\r\n		<a href="https://csol.tiancity.com/homepage/event/2017/04/treasure/" target="_blank"><span style="font-size:14px;font-family:;"><strong><u>概率公示</u></strong></span></a> \r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n《反恐精英Online》 运营团队<br />\r\n2019年01月10日<br />\r\n<!--分享结束-->\r\n</div>');

-- --------------------------------------------------------

--
-- 表的结构 `topic`
--
-- 创建时间： 2019-02-20 08:50:58
--

CREATE TABLE IF NOT EXISTS `topic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `type` varchar(20) DEFAULT NULL,
  `createat` datetime DEFAULT NULL,
  `userid` int(11) NOT NULL,
  `pv` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tufk` (`userid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- 转存表中的数据 `topic`
--

INSERT INTO `topic` (`id`, `title`, `content`, `type`, `createat`, `userid`, `pv`) VALUES
(1, '教你如何一步步把妹子泡到手！', '要想抱得美人归必须先了解女人的思维方式。', '恋爱', '2019-02-05 04:54:03', 2, 21),
(2, '来人拿我的40米大长刀给秀儿削苹果吃', '你是魔鬼还是秀儿 只要你乖给你买条gai。', '文艺', '2019-02-07 19:03:05', 2, 19),
(3, '我是龙哥K9999', 'K9999是SNK PLAYMORE旗下对战型格斗游戏《The King Of Fighters》（拳皇）系列中登场的虚构人物。', '恋爱', '2019-02-20 06:56:02', 2, 138),
(4, '你的动漫女神是谁呀？？ ', '审判天使·凯尔是竞技游戏《英雄联盟》中的英雄角色之一。', '动漫', '2019-02-20 16:56:14', 39, 81),
(5, '黑悟空和布罗利，哪个更厉害？ ', '刚在a站看完了最新的布罗利剧场版,暴虐悟空蓝发和贝吉塔蓝发,还有黄金版大王,最后要悟空和贝吉塔合体变成悟吉塔蓝发才打赢,布罗利简直太厉害了。', '动漫', '2019-02-20 16:56:42', 39, 12),
(6, '如果维斯特训布罗利成为超蓝，那么实力会可怕到什么程度？（轻度剧透~）', '<a href="https://bbs.hupu.com/25672606.html" class="truetit" target="_blank">如果维斯特训布罗利成为超蓝，那么实力会可怕到什么程度？（轻度剧透~）</a>', '动漫', '2019-02-20 16:57:30', 35, 9),
(7, '重做之后的审判天使 凯尔 是不是最强后期', '<a class="truetit" href="https://bbs.hupu.com/25671283.html" target="_blank">重做之后的审判天使 凯尔 是不是最强后期</a>。。。', '编程', '2019-02-20 16:58:35', 35, 14),
(8, '堕落天使莫甘娜背景故事更新：两姐妹反目成仇', '莫甘娜是《英雄联盟》系列中的英雄之一。莫甘娜拥有被动技能灵魂吸取以及主动技能暗之禁锢、痛苦腐蚀、黑暗之盾、灵魂镣铐，能够对敌方英雄进行线上最...', '恋爱', '2019-02-20 16:59:39', 35, 8),
(9, '无限火力模式英雄胜率盘点：盖伦最强，阿卡丽最难赢-ZT ', '<a href="https://bbs.hupu.com/25642229.html" class="truetit" target="_blank">无限火力模式英雄胜率盘点：盖伦最强，阿卡丽最难赢-ZT</a><span style="color:#444444;font-family:&quot;background-color:#FFFFFF;">&nbsp;</span>', '游戏', '2019-02-20 17:00:10', 35, 18),
(10, '银河之力喜欢彦还是蔷薇？', '楼主觉得喜欢彦多点。', '恋爱', '2019-02-21 09:15:29', 5, 38),
(11, '那你好棒棒哦。', '该词跟老司机开车一点关系都没有，字面意思就是你很厉害，但是实际上是该词并不是真心的夸赞的意思，常常包含调侃和讽刺对方的行为有点儿智障、让人无语等等贬义...', '恋爱', '2019-02-21 09:19:42', 5, 22),
(13, '送妈妈一部手机，米酒还是V20？', '我觉得米酒好。。。诸位意下如何。', '文艺', '2019-02-21 09:44:48', 5, 14),
(14, '现在小米8和小米9se哪个性价比高？  ', ' 笔者认为在比较在意拍照效果的选择小米9 SE,而对对性价比要求比较高的用户则适合入手小米8 SE。 以上就是52z飞翔下载小编为大家带来的小米9SE和小米8S...', '科学', '2019-02-21 09:45:35', 5, 42),
(15, '如何笔记本Win9999999系统重装', '我想装个Win9999999电脑系统。请教一下吧。', '编程', '2019-02-22 18:07:31', 4, 12),
(16, '画江湖之不良人 最厉害还是谁？', '尔等蝼蚁，岂知人外有人天外有天的道理。', '动漫', '2019-02-22 18:14:03', 4, 13);

-- --------------------------------------------------------

--
-- 表的结构 `user`
--
-- 创建时间： 2019-01-08 08:57:24
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `sex` varchar(3) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=44 ;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `birthday`, `sex`, `email`, `phone`, `picture`, `address`) VALUES
(1, '陈瀚', '12345', '1989-08-10', '男', '123@qq.com', '13800138000', NULL, '地球123'),
(2, '盖伦', '12345', '2019-01-10', '男', '123@qq.com', '13800138000', NULL, '地球'),
(3, '蕾娜', '12345', '2010-01-22', '男', '123@qq.com', '13800138000', NULL, '揭阳'),
(4, '德玛西亚', '12345', '2019-01-10', '男', '123999@qq.com', '13800138000', NULL, '地球'),
(5, '葛小伦', '12345', '2019-01-10', '男', '123@qq.com', '13800138000', NULL, '地球'),
(6, '霸天虎', '12345', '2019-01-10', '男', '123@qq.com', '13800138000', NULL, '地球'),
(7, '北风', '12345', '2019-01-10', '男', '123@qq.com', '13800138000', NULL, '地球'),
(8, '打铁哥', '12345', '2019-01-14', '男', '123@qq.com', '13800138000', NULL, '地球'),
(9, '大水龙', '12345', '2019-01-10', '男', '123@qq.com', '13800138000', NULL, '地球'),
(10, '张三', '12345', '2019-01-10', '男', '123@qq.com', '13800138000', NULL, '地球'),
(11, '李四', '12345', '2019-01-10', '男', '123@qq.com', '13800138000', NULL, '地球'),
(12, '王五', '12345', '2019-01-10', '男', '123@qq.com', '13800138000', NULL, '地球'),
(13, '孙悟空', '12345', '2019-01-10', '男', '123@qq.com', '13800138000', NULL, '地球'),
(14, '猪八戒', '12345', '2019-01-10', '女', '123@qq.com', '13800138000', NULL, '地球'),
(16, '唐僧', '12345', '2019-01-10', '男', '123@qq.com', '13800138000', NULL, '地球'),
(17, '剑侠客', '12345', '2019-01-10', '男', '123@qq.com', '13800138000', NULL, '地球'),
(18, '骨精灵', '12345', '2019-01-10', '男', '123@qq.com', '13800138000', NULL, '地球'),
(19, '逍遥侠', '12345', '2019-01-10', '男', '123@qq.com', '13800138000', NULL, '地球'),
(20, '巨魔王', '12345', '2019-01-10', '男', '123@qq.com', '13800138000', NULL, '地球'),
(21, 'DJ', '12345', '2019-01-10', '男', '123@qq.com', '13800138000', NULL, '地球'),
(22, '宏碁', '12345', '2019-01-10', '男', '123@qq.com', '13800138000', NULL, '地球'),
(26, '游戏王', '12345', '2019-01-10', '男', '123@qq.com', '13800138000', NULL, '地球'),
(29, '戒不掉的烟', '123', '2015-02-02', '男', '哈哈哈@qq.com', '13800138000', NULL, '天宫'),
(30, '闪烁', '213123', '2017-02-02', '男', 'xiaomi@qq.com', '13800138000', NULL, '地狱'),
(31, '红颜', '10923809', '2017-02-02', '女', 'klasd@qq.com', '13800138000', NULL, '中国'),
(33, 'Tuzki', 'tuzki', '1996-03-12', '女', 'abcd1234@aa.com', '1234567891', NULL, '揭阳'),
(34, '龙哥', '13123', '2011-01-11', '男', '123123', '1234567891', NULL, '揭阳'),
(35, '阿猫', 'abcd', '2008-02-19', '女', 'amao@qq.com', '13800138000', NULL, '揭阳'),
(36, '阿狗', '12345', '2016-02-19', '男', 'agou@qq.com', '13800138000', NULL, '揭阳'),
(37, '阿猪', '123456', '2002-02-19', '男', 'abc@qq.com', '13800138000', NULL, '惠州'),
(39, '小米', '123456789', '1996-02-19', '男', 'xiaomi@qq.com', '13800138000', NULL, '华夏民族'),
(40, '哈喽', '123', '2004-02-19', '男', 'xiaomi@qq.com', '13800138000', NULL, '华夏'),
(41, '爱美丽', '123890', '2017-02-22', '女', 'xiaomi123@qq.com', '13800138000', NULL, '华夏'),
(42, '龙夫人', '555555', '1971-02-22', '女', 'xiaomi1999@qq.com', '13800138000', NULL, '华夏'),
(43, '王者', '123', '2019-02-22', '男', 'xiaomi@qq.com', '1234567891', NULL, '揭阳');

-- --------------------------------------------------------

--
-- 表的结构 `water`
--
-- 创建时间： 2019-02-22 09:46:37
--

CREATE TABLE IF NOT EXISTS `water` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `createat` datetime DEFAULT NULL,
  `userid` int(11) NOT NULL,
  `topicid` int(11) NOT NULL,
  `praise` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wufk` (`userid`),
  KEY `wtfk` (`topicid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- 转存表中的数据 `water`
--

INSERT INTO `water` (`id`, `content`, `createat`, `userid`, `topicid`, `praise`) VALUES
(1, '我要辣条，我要辣条，我要辣条。', '2019-02-11 23:02:58', 8, 2, 1),
(2, '银河以北', '2019-02-12 01:02:58', 8, 10, 1),
(3, '唔彦最美', '2019-02-22 01:23:41', 8, 10, 1),
(4, '蔷薇。', '2019-02-22 13:45:00', 8, 10, 1),
(5, '哇', '2019-02-22 05:34:05', 8, 11, 1),
(6, '我觉得米酒好，毕竟高通骁龙855。', '2019-02-22 05:45:00', 6, 14, 1),
(7, '我觉得彦多点。', '2019-02-22 04:45:33', 6, 10, 1),
(8, '天使的女儿 凉冰。', '2019-02-22 05:05:23', 6, 8, 1),
(9, '凯莎 大天使', '2019-02-22 04:04:34', 6, 8, 1),
(10, '真的吗？ 哪里报名？直接交钱吗？', '2019-02-22 05:45:33', 6, 1, 1),
(11, '我也喜欢彦', '2019-02-22 08:34:22', 6, 10, 1),
(12, '我想买mi9', '2019-02-22 08:34:09', 5, 14, 1),
(13, '吊打所有龙珠大佬！', '2019-02-22 17:51:34', 5, 6, 1),
(14, '彦粉在此', '2019-02-22 17:52:01', 5, 10, 1),
(15, '我也觉得。', '2019-02-22 17:55:54', 5, 13, 1),
(16, '彦女王', '2019-02-22 17:58:29', 5, 4, 1),
(17, '彦！！！当然是彦！', '2019-02-22 17:58:56', 5, 4, 1),
(18, 'ok\r\n', '2019-02-22 18:01:51', 5, 9, 1),
(19, '不错。', '2019-02-22 18:02:32', 4, 9, 1),
(20, '布罗利厉害', '2019-02-22 18:03:37', 4, 5, 1),
(21, '对，超6', '2019-02-22 18:05:03', 4, 7, 1),
(22, '我经常玩凯莎', '2019-02-22 18:05:35', 4, 7, 1),
(23, '自己给自己暖一下帖子。', '2019-02-22 18:07:55', 4, 15, 1),
(24, '目前我觉得是袁天罡。', '2019-02-22 18:14:36', 4, 16, 1),
(25, 'V20也不错。。。。', '2019-02-22 18:15:52', 4, 13, 1),
(27, '123123', '2019-02-22 19:36:33', 1, 16, 1),
(28, '123123', '2019-02-22 19:36:35', 1, 16, 1);

--
-- 限制导出的表
--

--
-- 限制表 `topic`
--
ALTER TABLE `topic`
  ADD CONSTRAINT `tufk` FOREIGN KEY (`userid`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- 限制表 `water`
--
ALTER TABLE `water`
  ADD CONSTRAINT `wtfk` FOREIGN KEY (`topicid`) REFERENCES `topic` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wufk` FOREIGN KEY (`userid`) REFERENCES `user` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
