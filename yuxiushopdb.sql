/*
Navicat MySQL Data Transfer

Source Server         : yuxiushop
Source Server Version : 80018
Source Host           : 116.62.46.3:3306
Source Database       : yuxiushopdb

Target Server Type    : MYSQL
Target Server Version : 80018
File Encoding         : 65001

Date: 2020-11-06 09:07:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for oa_case
-- ----------------------------
DROP TABLE IF EXISTS `oa_case`;
CREATE TABLE `oa_case` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `oa_id` int(50) DEFAULT NULL COMMENT '门店编号',
  `type_id` int(11) DEFAULT NULL,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '案例标题',
  `example` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '案例地址,360度全景',
  `img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '封面图',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `look_num` int(20) DEFAULT '0' COMMENT '查看次数',
  `up_num` int(20) DEFAULT '0' COMMENT '点赞次数',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '内容',
  `is_show` int(5) DEFAULT '0' COMMENT '是否展示, 0 否 ,1 是 ',
  `sort` int(10) DEFAULT '0' COMMENT '排序',
  `last_update_time` datetime DEFAULT NULL COMMENT '上次修改时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='商品案例表';

-- ----------------------------
-- Records of oa_case
-- ----------------------------
INSERT INTO `oa_case` VALUES ('89', '1', null, '342', '', '', '2020-10-21 16:12:45', '0', '0', '', '0', '0', '2020-10-21 16:12:45');
INSERT INTO `oa_case` VALUES ('69', '159', '9', '900㎡女企业家别墅私宅，奢华而不浮华', '', 'case/2020-09-28/1601276404501.jpg', '2020-09-28 14:50:18', '0', '0', '<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601276479981.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601276490698.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601276536442.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>整体以稳重的大理石色为基调，佐以御秀墙布的优雅质感，安静不乏张力，英气十足也兼容并包。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601276558379.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601276580045.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>卧室装修的简约稳重一些，大大的窗户带来充足的光线，显得整个空间明亮通透。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601276600193.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601276609490.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>卧室适当加以干枝植物提色，做圆形背景，增添设计感，颜色上也大量使用安静的白色，打造更适合读写的内心空间。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601276647999.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601276657684.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>儿童房做了拼接背景，墙布颜色清新，增添设计感，让孩子更富想象力。</p>', '1', '0', '2020-10-21 13:53:50');
INSERT INTO `oa_case` VALUES ('70', '159', '10', '泊墨之境，遇见山水', '', 'case/2020-09-28/1601278220606.jpg', '2020-09-28 15:30:21', '0', '0', '<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601278139418.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601278147718.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601278159820.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>它或许没有华丽的色调、繁杂的装饰，但骨子里透露出来的深沉情愫，却让心灵行至深处，如同落叶归根，找到了灵魂的归属。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601278178715.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601278188391.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>对于喜欢中式风格但又追求时尚摩登的年轻人，在家中装饰一些新中式风格元素将再完美不过。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601278205401.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601278212087.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>格调典雅质朴，色彩稳重成熟，布局阴阳协调，韵味浓烈悠长，充分体现了中国传统美学的精神，散发出亦古亦今的层次之美。</p>', '1', '0', '2020-10-21 13:35:34');
INSERT INTO `oa_case` VALUES ('64', '159', '8', 'Space Of Flows 重塑为爱而生的艺术韵律', 'https://pano.kujiale.com/cloud/design/3FO4B73V3M70/show?friendid=3FO4KDMSY7EU&fromqrcode=true', 'case/2020-09-28/1601277711574.jpg', '2020-09-01 11:36:59', '0', '0', '<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601277601585.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601277653270.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601277662422.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>藉着室内空间的解构和重组，便可以满足我们对悠然自得的生活的向往和追求，让我们在纷扰的现实生活中找到平衡，缔造出一个令人心弛神往的写意空间。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601277673426.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601277685797.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>简约欧式更注重卧室的功能和实用性，但保留了欧洲贵族的高贵气质。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601277695168.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601277702454.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>大大的窗户让光线铺洒进来，让整个房间都散发着明亮通透的气息。</p>', '1', '0', '2020-10-21 14:01:49');
INSERT INTO `oa_case` VALUES ('72', '159', '9', '现代遇上Light Luxury 演绎质感生活', '', 'case/2020-09-28/1601283038664.jpg', '2020-09-28 16:50:39', '0', '0', '<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601282537415.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>轻奢风格一般会选用带有高级感的中性色，诸如驼色、象牙白、奶咖、黑色及碳灰色，来演绎一种&ldquo;低调的奢华&rdquo;，令空间质感更为饱满。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601282562944.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601282569813.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>整个空间既没有过于繁复的造型，亦没有丰富色彩的叠加，而是以一种直撩心底的优雅魔力，给人带来轻松舒适、温馨大气的感觉。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601282583886.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601282591962.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>不惹眼，不浮夸，却让追求生活品位的人士，在不经意中获得极具质感的生活享受，这就是现代轻奢气质的最佳演绎。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601282617922.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>与其说，轻奢是一种风格，不如说，它是一种极致优雅的生活态度。</p>', '0', '0', '2020-10-21 14:04:27');
INSERT INTO `oa_case` VALUES ('73', '159', '9', '演绎温雅生活，探索细碎幸福', '', 'case/2020-09-28/1601284798166.jpg', '2020-09-28 17:19:58', '0', '0', '<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601284657150.jpg\" style=\"height:675px; width:1200px\" />你可能不希望家里金碧辉煌、繁盛奢靡，想要摆脱繁杂与厚重。多种御秀墙布拼接使用，用最简洁、最本真、最纯净的状态，缓解你烦躁的精神情绪。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601284714301.jpg\" style=\"height:675px; width:1200px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601284723385.jpg\" style=\"height:732px; width:1300px\" />御秀用&ldquo;软&rdquo;，来融化空间色彩中出现的冰冷感，让卧室在保持艺术感的同时，保留烟火气。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601284747792.jpg\" style=\"height:675px; width:1200px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601284754676.jpg\" style=\"height:731px; width:1300px\" />米黄色暖色调的墙布在卧室的运用，让你感觉仿佛时间变慢了，真正享受慢生活。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601284770103.jpg\" style=\"height:619px; width:1100px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601284778027.jpg\" style=\"height:731px; width:1300px\" />儿童房选用浅色御秀墙布，为卧室带来自然气息，和谐中透出年轻时尚。</p>', '0', '0', null);
INSERT INTO `oa_case` VALUES ('71', '159', '10', '匠心巧啄，塑造诗意的Artistic Realm', '', 'case/2020-09-28/1601279632794.jpg', '2020-09-28 15:53:53', '0', '0', '<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601279430822.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601279442563.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601279453988.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>直线的简约美，传统的雕梁画柱已鲜少出现在新中式家装中，简约的直线条家具会让空间更加清爽明朗，更富现代感。</p>\r\n\r\n<p><br />\r\n<img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601279468168.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601279476382.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601279491820.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>对称，给人稳重和谐、有秩序的感觉，在家装设计中，背景墙设计、沙发摆放、装饰画布置，使用对称手法都能呈现新中式的平衡之美。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601279543849.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601279554275.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>新中式风格的软装搭配不是简单的元素堆砌，要根据整个空间的特点，和大件家具所营造的家居氛围进行搭配，否则容易画蛇添足，破坏氛围。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601279586886.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601279610709.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>总言之，新中式软装搭配无需浓墨重彩，越是&ldquo;轻描淡写&rdquo;，往往越有意境。</p>', '0', '0', '2020-10-21 14:00:52');
INSERT INTO `oa_case` VALUES ('91', '159', '8', '现代简约', '', 'case/2020-11-04/1604476338519.jpg', '2020-11-04 15:52:19', '0', '0', '', '0', '0', '2020-11-04 15:52:19');
INSERT INTO `oa_case` VALUES ('92', '159', '9', '沉醉於此', '', 'case/2020-11-04/1604476593778.jpg', '2020-11-04 15:56:24', '0', '0', '', '0', '0', '2020-11-04 15:56:34');
INSERT INTO `oa_case` VALUES ('83', '159', '9', '越极简，越High-Level', '', 'case/2020-10-20/1603170886360.jpg', '2020-10-20 13:14:46', '0', '0', '<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603170690617.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p>现代轻奢风格，是现在很多业主的选择，整体是以现代舒适的空间为主，打造出现代简约轻奢质感的家居生活营造出一种优雅华丽的氛围感。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603170713384.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603170733459.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603170745642.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603170759925.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p>设计师把客厅设定为简约自然，没有纷繁复杂的装饰。仅用温暖的色彩加上质感极强的设计手法，简简单单的感觉便能造出质感的空间。</p>\r\n\r\n<p><br />\r\n<img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603170776630.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603170793765.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603170801359.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p>制造主卧空间的安宁和温暖的同时，在审美层面连接传统意境，营造安静优雅的睡眠环境。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603170816814.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603170823798.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p>在设计元素上去除繁杂，对舒适自然的重点进行了完美的诠释。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603170860117.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603170867542.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603170875204.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p>整体时尚而不喧闹，为儿童房平添一种自由灵气。</p>', '0', '0', '2020-10-21 13:58:42');
INSERT INTO `oa_case` VALUES ('84', '159', '11', '艺术共生与灵魂共鸣，温暖岁月的诗', '', 'case/2020-10-20/1603172119365.jpg', '2020-10-20 13:35:19', '0', '0', '<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603171995232.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p>这些年北欧风格愈演愈烈，无论是体验馆还是家具店都深受粉丝们的热爱。北欧风格空间简单流畅，颜色搭配上简洁明快，带给人们别样的清爽、自然。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603172018441.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603172035446.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603172042891.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603172051892.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p>色调纯净只是北欧风格的用色的基础。北欧风格仍然延续低饱和度的特点，创新之处是在低饱和度的同时加入少量的灰度，让空间看起来更富有质感。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603172070462.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603172077404.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603172084364.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p>自然、本真是北欧家具的风格特点，简约的造型，柔和的线条处理，加上淡淡的中性色，总能使人不由自主的想要亲近。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603172093587.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603172101283.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p>耐人寻味的北欧地域文化，使人不断向往的北欧生活。让来自大西洋彼岸的&ldquo;北风&rdquo;吹进你的生活，在微醺微醉中发现生活的真谛！</p>', '0', '0', '2020-10-21 13:33:03');
INSERT INTO `oa_case` VALUES ('85', '159', '11', '北欧+轻奢混搭,恰到好处的精致都市风', '', 'case/2020-10-20/1603173275392.jpg', '2020-10-20 13:54:35', '0', '0', '<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603173104309.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p>北欧，是很多时尚年轻人的宠儿</p>\r\n\r\n<p>也是最近几年装修风格中的&ldquo;网红款&rdquo;</p>\r\n\r\n<p>轻奢，是一种生活态度，低调</p>\r\n\r\n<p>舒适却无伤高贵与雅致</p>\r\n\r\n<p>北欧+轻奢混搭是恰到好处的精致</p>\r\n\r\n<p>每一处都很温馨，这才是家真正的感觉~</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603173115166.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603173122913.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603173132514.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p>客厅不同材质的搭配运用让空间富有变化又不失沉稳&mdash;&mdash;御秀新品城恋系列。电视背景墙以干脆的线条装点，于细节中见品质。餐桌上错落的饰品形成了视觉的轻盈感，多元化的混搭透出不拘一格的时尚气息。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603173151443.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603173198376.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603173205111.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p>没有繁琐累赘的线条，鲜有璀璨奢华的元素，却通过不同色块之间的相互碰撞，干净利落的讲述了一个关于家的故事，给家以精致、温暖的生活气息。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603173220147.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603173231176.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603173237965.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p>自带光泽的金属，带着与身俱来的高贵感和优雅，面积较大的纯色调让空间看起来更富有质感。</p>\r\n\r\n<p><br />\r\n<img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603173245876.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603173253178.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p>北欧风格的家具简洁流畅有力度，注重功能充溢着丰富的想象力，色泽自然而富有灵性，整体设计洋溢着现代风情。</p>', '0', '0', '2020-10-21 15:13:50');
INSERT INTO `oa_case` VALUES ('86', '159', '12', '120㎡华美栖居，追溯午夜巴黎的奇幻之旅', '', 'case/2020-10-20/1603174300083.jpg', '2020-10-20 14:11:40', '0', '0', '<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603174206704.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p>美式作为近年来流行的家居风格，受到很多人的喜爱。但是大家也似乎有这样的困扰，每个人理解的美式好像都有点不太一样。有人说美式就是简化版的欧式，有人说美式就是粗犷，也有人说美式就是田园乡村，那么美式到底是什么？</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603174215873.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603174227227.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603174234257.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p>美式家居格外注意家庭之间的联系和在家中产生的互动，家具厚实但不复杂，给使用者一种安心的舒适感。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603174249792.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603174256755.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603174262915.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p>对功能性的重视，让空间的利用更加合理化，而不是去遵循一些严苛的规范。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603174276906.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603174283068.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603174289996.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p>家具中会大量使用木材和棉麻制品，与北欧的清冷不同，美式从家具开始就呈现出一种家的温柔气息。</p>', '0', '0', '2020-10-21 13:44:36');
INSERT INTO `oa_case` VALUES ('87', '159', '8', 'Modern Art 如夏花一样对生活的狂热', '', 'case/2020-10-20/1603174953681.jpg', '2020-10-20 14:22:34', '0', '0', '<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603174751064.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p>没有太多的修饰与约束，成就了另一种休闲式的贵气和浪漫，也正好迎合了人们对精致生活的需求：有文化感，还不缺乏自在与情调。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603174824915.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603174835900.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603174842135.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603174849209.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p>以摩登时尚的千鸟格墙布作为墙面打底，层次分明的灯具结合层次的石膏线与拼接地砖使空间富有温馨、浪漫气息。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603174906685.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603174912673.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603174918313.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p>整个空间以浅色为主，贯穿整体的设计思路，通过完美的线条，精益求精的细节处理，带给家人不尽的舒服触感。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603174931933.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603174937042.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603174943192.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p>通过对软装颜色的运用，营造出一种高级感，最合理化组合和颜色，希望创造每一处景都很美的空间。</p>', '0', '0', '2020-10-21 13:54:44');
INSERT INTO `oa_case` VALUES ('88', '159', '13', 'European Style 欧式艺术的空间觉醒', '', 'case/2020-10-20/1603176153755.jpg', '2020-10-20 14:42:34', '0', '0', '<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603176128180.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p>浪漫、大方是欧式风格的独特元素，置身其中，仿佛身处宁静的教堂之中静心凝神，又如在浪漫的爱琴海边感受微风拂面，一切都是如此的温文尔雅、浪漫和谐。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603179760247.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603179767204.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603179781258.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603179788839.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603179795522.jpg\" style=\"height:470px; width:470px\" /></p>\r\n\r\n<p>没有欧式风格的富丽堂皇，但是却有着欧式古典风格和现代风格的融合，还有卧室的童话般的梦幻，让客厅精美中带着简约。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603179804427.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603179810311.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603179816537.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p>舒适优雅的欧式风格主卧，充满欧式轻奢风，兼具简约的清新和奢华的高贵，别有一番低调的奢华质感。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603179831527.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603179837950.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603179844086.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p>在视觉上以优雅的暖色调为主，将生活从纷繁杂乱中解救出来，给你一个舒适、井然有序的生活空间。</p>', '0', '0', '2020-10-21 13:52:40');
INSERT INTO `oa_case` VALUES ('93', '159', '10', '怡然自得', '', 'case/2020-11-04/1604476627853.jpg', '2020-11-04 15:57:08', '0', '0', '', '0', '0', '2020-11-04 15:57:08');
INSERT INTO `oa_case` VALUES ('94', '159', '9', '精灵城堡', '', 'case/2020-11-04/1604476662929.jpg', '2020-11-04 15:57:43', '0', '0', '', '0', '0', '2020-11-04 15:57:43');
INSERT INTO `oa_case` VALUES ('95', '159', '9', '木棉花语', '', 'case/2020-11-04/1604476695774.jpg', '2020-11-04 15:58:16', '0', '0', '', '0', '0', '2020-11-04 15:58:16');
INSERT INTO `oa_case` VALUES ('96', '159', '9', '灰屿线构', '', 'case/2020-11-04/1604476735095.jpg', '2020-11-04 15:58:55', '0', '0', '', '0', '0', '2020-11-04 15:58:55');

-- ----------------------------
-- Table structure for oa_case_pic
-- ----------------------------
DROP TABLE IF EXISTS `oa_case_pic`;
CREATE TABLE `oa_case_pic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `case_id` int(11) DEFAULT NULL,
  `case_pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_case_pic
-- ----------------------------
INSERT INTO `oa_case_pic` VALUES ('1', '74', 'good/2020-10-10/1602326481102.png');
INSERT INTO `oa_case_pic` VALUES ('2', '74', 'case/2020-10-11/1602390257818.png');
INSERT INTO `oa_case_pic` VALUES ('3', '75', 'case/2020-10-11/1602414316068.png');
INSERT INTO `oa_case_pic` VALUES ('4', '75', 'case/2020-10-11/1602414316317.png');
INSERT INTO `oa_case_pic` VALUES ('5', '75', 'case/2020-10-11/1602421159845.png');
INSERT INTO `oa_case_pic` VALUES ('6', '73', 'case/2020-10-15/1602740387466.jpg');
INSERT INTO `oa_case_pic` VALUES ('7', '73', 'case/2020-10-15/1602740387989.jpg');
INSERT INTO `oa_case_pic` VALUES ('8', '73', 'case/2020-10-15/1602740427759.jpg');
INSERT INTO `oa_case_pic` VALUES ('9', '73', 'case/2020-10-15/1602740427882.jpg');
INSERT INTO `oa_case_pic` VALUES ('10', '72', 'case/2020-10-15/1602740480757.jpg');
INSERT INTO `oa_case_pic` VALUES ('11', '72', 'case/2020-10-15/1602740489074.jpg');
INSERT INTO `oa_case_pic` VALUES ('12', '72', 'case/2020-10-15/1602740516425.jpg');
INSERT INTO `oa_case_pic` VALUES ('13', '72', 'case/2020-10-15/1602740523032.jpg');
INSERT INTO `oa_case_pic` VALUES ('14', '71', 'case/2020-10-15/1602740534994.jpg');
INSERT INTO `oa_case_pic` VALUES ('15', '71', 'case/2020-10-15/1602740546744.jpg');
INSERT INTO `oa_case_pic` VALUES ('16', '71', 'case/2020-10-15/1602740553302.jpg');
INSERT INTO `oa_case_pic` VALUES ('17', '71', 'case/2020-10-15/1602740561418.jpg');
INSERT INTO `oa_case_pic` VALUES ('18', '70', 'case/2020-10-15/1602740588466.jpg');
INSERT INTO `oa_case_pic` VALUES ('19', '70', 'case/2020-10-15/1602740598782.jpg');
INSERT INTO `oa_case_pic` VALUES ('20', '70', 'case/2020-10-15/1602740613719.jpg');
INSERT INTO `oa_case_pic` VALUES ('21', '70', 'case/2020-10-15/1602740613816.jpg');
INSERT INTO `oa_case_pic` VALUES ('22', '69', 'case/2020-10-15/1602740627123.jpg');
INSERT INTO `oa_case_pic` VALUES ('23', '69', 'case/2020-10-15/1602740638683.jpg');
INSERT INTO `oa_case_pic` VALUES ('24', '69', 'case/2020-10-15/1602740666280.jpg');
INSERT INTO `oa_case_pic` VALUES ('25', '69', 'case/2020-10-15/1602740685664.jpg');
INSERT INTO `oa_case_pic` VALUES ('26', '69', 'case/2020-10-15/1602740685737.jpg');
INSERT INTO `oa_case_pic` VALUES ('27', '64', 'case/2020-10-15/1602740711171.jpg');
INSERT INTO `oa_case_pic` VALUES ('28', '64', 'case/2020-10-15/1602740711216.jpg');
INSERT INTO `oa_case_pic` VALUES ('29', '64', 'case/2020-10-15/1602740711258.jpg');
INSERT INTO `oa_case_pic` VALUES ('30', '64', 'case/2020-10-15/1602740711300.jpg');
INSERT INTO `oa_case_pic` VALUES ('31', '64', 'case/2020-10-15/1602740711352.jpg');
INSERT INTO `oa_case_pic` VALUES ('32', '77', 'case/2020-10-16/1602815112357.png');
INSERT INTO `oa_case_pic` VALUES ('33', '74', 'case/2020-10-16/1602815112357.png');
INSERT INTO `oa_case_pic` VALUES ('34', '83', 'case/2020-10-20/1603170886425.jpg');
INSERT INTO `oa_case_pic` VALUES ('35', '83', 'case/2020-10-20/1603170886472.jpg');
INSERT INTO `oa_case_pic` VALUES ('36', '83', 'case/2020-10-20/1603170886515.jpg');
INSERT INTO `oa_case_pic` VALUES ('37', '83', 'case/2020-10-20/1603170886554.jpg');
INSERT INTO `oa_case_pic` VALUES ('38', '83', 'case/2020-10-20/1603170886649.jpg');
INSERT INTO `oa_case_pic` VALUES ('39', '84', 'case/2020-10-20/1603172119428.jpg');
INSERT INTO `oa_case_pic` VALUES ('40', '84', 'case/2020-10-20/1603172119476.jpg');
INSERT INTO `oa_case_pic` VALUES ('41', '84', 'case/2020-10-20/1603172119524.jpg');
INSERT INTO `oa_case_pic` VALUES ('42', '84', 'case/2020-10-20/1603172119598.jpg');
INSERT INTO `oa_case_pic` VALUES ('43', '84', 'case/2020-10-20/1603172119639.jpg');
INSERT INTO `oa_case_pic` VALUES ('44', '85', 'case/2020-10-20/1603173275450.jpg');
INSERT INTO `oa_case_pic` VALUES ('45', '85', 'case/2020-10-20/1603173275493.jpg');
INSERT INTO `oa_case_pic` VALUES ('46', '85', 'case/2020-10-20/1603173275536.jpg');
INSERT INTO `oa_case_pic` VALUES ('47', '85', 'case/2020-10-20/1603173275601.jpg');
INSERT INTO `oa_case_pic` VALUES ('48', '85', 'case/2020-10-20/1603173275642.jpg');
INSERT INTO `oa_case_pic` VALUES ('49', '86', 'case/2020-10-20/1603174300153.jpg');
INSERT INTO `oa_case_pic` VALUES ('50', '86', 'case/2020-10-20/1603174300214.jpg');
INSERT INTO `oa_case_pic` VALUES ('51', '86', 'case/2020-10-20/1603174300270.jpg');
INSERT INTO `oa_case_pic` VALUES ('52', '86', 'case/2020-10-20/1603174300426.jpg');
INSERT INTO `oa_case_pic` VALUES ('53', '86', 'case/2020-10-20/1603174300469.jpg');
INSERT INTO `oa_case_pic` VALUES ('54', '87', 'case/2020-10-20/1603174953744.jpg');
INSERT INTO `oa_case_pic` VALUES ('55', '87', 'case/2020-10-20/1603174953788.jpg');
INSERT INTO `oa_case_pic` VALUES ('56', '87', 'case/2020-10-20/1603174953841.jpg');
INSERT INTO `oa_case_pic` VALUES ('57', '87', 'case/2020-10-20/1603174953886.jpg');
INSERT INTO `oa_case_pic` VALUES ('58', '87', 'case/2020-10-20/1603174953930.jpg');
INSERT INTO `oa_case_pic` VALUES ('59', '88', 'case/2020-10-20/1603176153822.jpg');
INSERT INTO `oa_case_pic` VALUES ('60', '88', 'case/2020-10-20/1603176153883.jpg');
INSERT INTO `oa_case_pic` VALUES ('61', '88', 'case/2020-10-20/1603176153935.jpg');
INSERT INTO `oa_case_pic` VALUES ('62', '88', 'case/2020-10-20/1603176154122.jpg');
INSERT INTO `oa_case_pic` VALUES ('63', '88', 'case/2020-10-20/1603176154163.jpg');
INSERT INTO `oa_case_pic` VALUES ('64', '91', 'case/2020-11-04/1604476338619.jpg');
INSERT INTO `oa_case_pic` VALUES ('65', '91', 'case/2020-11-04/1604476338660.jpg');
INSERT INTO `oa_case_pic` VALUES ('66', '91', 'case/2020-11-04/1604476338715.jpg');
INSERT INTO `oa_case_pic` VALUES ('67', '91', 'case/2020-11-04/1604476338773.jpg');
INSERT INTO `oa_case_pic` VALUES ('68', '92', 'case/2020-11-04/1604476584119.jpg');
INSERT INTO `oa_case_pic` VALUES ('69', '92', 'case/2020-11-04/1604476584156.jpg');
INSERT INTO `oa_case_pic` VALUES ('70', '92', 'case/2020-11-04/1604476584196.jpg');
INSERT INTO `oa_case_pic` VALUES ('71', '93', 'case/2020-11-04/1604476627917.jpg');
INSERT INTO `oa_case_pic` VALUES ('72', '93', 'case/2020-11-04/1604476627970.jpg');
INSERT INTO `oa_case_pic` VALUES ('73', '93', 'case/2020-11-04/1604476628013.jpg');
INSERT INTO `oa_case_pic` VALUES ('74', '93', 'case/2020-11-04/1604476628066.jpg');
INSERT INTO `oa_case_pic` VALUES ('75', '94', 'case/2020-11-04/1604476662991.jpg');
INSERT INTO `oa_case_pic` VALUES ('76', '94', 'case/2020-11-04/1604476663070.jpg');
INSERT INTO `oa_case_pic` VALUES ('77', '94', 'case/2020-11-04/1604476663121.jpg');
INSERT INTO `oa_case_pic` VALUES ('78', '95', 'case/2020-11-04/1604476695859.jpg');
INSERT INTO `oa_case_pic` VALUES ('79', '95', 'case/2020-11-04/1604476695897.jpg');
INSERT INTO `oa_case_pic` VALUES ('80', '95', 'case/2020-11-04/1604476695937.jpg');
INSERT INTO `oa_case_pic` VALUES ('81', '96', 'case/2020-11-04/1604476735186.jpg');
INSERT INTO `oa_case_pic` VALUES ('82', '96', 'case/2020-11-04/1604476735589.jpg');

-- ----------------------------
-- Table structure for oa_case_type
-- ----------------------------
DROP TABLE IF EXISTS `oa_case_type`;
CREATE TABLE `oa_case_type` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `oa_id` int(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL COMMENT '商品类型',
  `is_show` int(5) DEFAULT '1' COMMENT '1使用0禁用默认值1',
  `sorting` int(50) DEFAULT '0' COMMENT '排序',
  `type_id` int(50) DEFAULT NULL COMMENT '分级',
  `ico_img` varchar(100) DEFAULT NULL COMMENT '图标',
  `color` varchar(200) DEFAULT '000000-666666' COMMENT '字体渐变色',
  `keyword` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '关键词',
  `pc_color` varchar(100) DEFAULT NULL,
  `phone_img` varchar(100) DEFAULT NULL COMMENT '手机分类图标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='商品咨询的类型表';

-- ----------------------------
-- Records of oa_case_type
-- ----------------------------
INSERT INTO `oa_case_type` VALUES ('2', '1', '小程序', '1', '2', null, null, '000000-666666', null, null, null);
INSERT INTO `oa_case_type` VALUES ('3', '1', '网站', '1', '0', null, null, '000000-666666', null, null, null);
INSERT INTO `oa_case_type` VALUES ('5', '1', '设计', '1', '0', null, null, '000000-666666', null, null, null);
INSERT INTO `oa_case_type` VALUES ('7', '1', '测试', '1', '0', null, null, '000000-666666', null, null, null);
INSERT INTO `oa_case_type` VALUES ('8', '159', '简欧', '1', '0', null, null, '000000-666666', null, null, null);
INSERT INTO `oa_case_type` VALUES ('9', '159', '现代', '1', '0', null, null, '000000-666666', null, null, null);
INSERT INTO `oa_case_type` VALUES ('10', '159', '新中式', '1', '0', null, null, '000000-666666', null, null, null);
INSERT INTO `oa_case_type` VALUES ('11', '159', '北欧', '1', '0', null, null, '000000-666666', null, null, null);
INSERT INTO `oa_case_type` VALUES ('12', '159', '美式', '1', '0', null, null, '000000-666666', null, null, null);
INSERT INTO `oa_case_type` VALUES ('13', '159', '欧式', '1', '0', null, null, '000000-666666', null, null, null);
INSERT INTO `oa_case_type` VALUES ('14', '159', '日式', '1', '0', null, null, '000000-666666', null, null, null);

-- ----------------------------
-- Table structure for oa_good
-- ----------------------------
DROP TABLE IF EXISTS `oa_good`;
CREATE TABLE `oa_good` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `oa_id` int(50) DEFAULT NULL,
  `good_type_id` int(50) DEFAULT NULL COMMENT '商品类型ID',
  `good_name` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `good_img` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '封面图',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '商品详情',
  `good_price` decimal(65,2) DEFAULT NULL COMMENT '商品价格',
  `look_num` int(50) DEFAULT '0' COMMENT '查看次数',
  `up_num` int(50) DEFAULT '0' COMMENT '点赞次数',
  `good_number` int(255) DEFAULT '100' COMMENT '商品库存',
  `good_keyword` varchar(100) DEFAULT NULL COMMENT '商品优化用的关键词',
  `pay_type` int(5) DEFAULT '1' COMMENT '1支付0兑换2两种方式都可以默认值1',
  `barcode` varchar(100) DEFAULT NULL COMMENT '商品条码',
  `create_time` varchar(100) DEFAULT NULL COMMENT '添加时间',
  `up_time` varchar(100) DEFAULT NULL COMMENT '上架时间',
  `down_time` varchar(100) DEFAULT NULL COMMENT '下架时间',
  `status` int(10) DEFAULT '1' COMMENT '1上架0下架默认值1',
  `sort` int(10) DEFAULT '0' COMMENT '排序',
  `goods_cat_id` int(50) DEFAULT NULL COMMENT '商品类型',
  `buy_num` int(200) DEFAULT '0' COMMENT '购买人数',
  `seller_id` varchar(100) DEFAULT NULL COMMENT '商家ID',
  `type` int(10) DEFAULT '0' COMMENT '0普通1热卖2新品3清仓默认值0',
  `is_hot` int(10) DEFAULT '0' COMMENT '1是热销默认值0',
  `is_clear` int(10) DEFAULT '0' COMMENT '1表示清仓默认值0',
  `is_new` int(10) DEFAULT '0' COMMENT '1表示新品默认值0',
  `market_price` decimal(56,2) DEFAULT '0.00' COMMENT '市场价',
  `window_intro` int(10) DEFAULT '2' COMMENT '橱窗推荐 1为橱窗 2为普通默认值2',
  `customer_server` varchar(255) DEFAULT NULL COMMENT '售后服务',
  `updated_at` varchar(100) DEFAULT NULL COMMENT '修改时间',
  `is_tj` int(10) DEFAULT '0' COMMENT '1推荐默认值0',
  `shop_type_id` int(10) DEFAULT NULL,
  `seller_number` int(100) DEFAULT '0' COMMENT '销量',
  `is_wholesale` int(10) DEFAULT '2' COMMENT '是否批发1是2否默认值2',
  `is_ex` int(10) DEFAULT '1' COMMENT '是否包邮1是2否默认值1',
  `is_index` int(10) DEFAULT '2' COMMENT '是否推荐到首页1是2否',
  `is_time_buy` int(10) DEFAULT '2' COMMENT '此商品是否参加限时抢购1是2否',
  `is_cold` varchar(10) DEFAULT '2' COMMENT '是否为冷藏1是2否',
  `is_exchange` int(10) DEFAULT '2' COMMENT '1兑换2否',
  `is_process` varchar(1) DEFAULT '2' COMMENT '图片1要处理2否',
  `is_process_tittle` varchar(1) DEFAULT '2' COMMENT '产品名称1要处理2否',
  `is_process_type` varchar(1) DEFAULT '2' COMMENT '产品分类1要处理2否',
  `is_limit` int(10) unsigned DEFAULT '0' COMMENT '是否限购1-是0否',
  `limit_number` int(10) unsigned DEFAULT '0' COMMENT '限购件数',
  `is_show` int(5) DEFAULT '0' COMMENT '是否展示，1展示，0否',
  `last_update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=107123 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='门店商品表';

-- ----------------------------
-- Records of oa_good
-- ----------------------------
INSERT INTO `oa_good` VALUES ('107104', '1', '134', '线下门店获客--宅宅美', 'good/2020-10-21/1603253271720.jpg', '', '500.00', '0', '0', '100', null, '1', null, '2020-10-21 12:07:51', null, null, '1', '0', null, '0', null, '0', '0', '0', '0', '0.00', '2', null, null, '0', null, '0', '2', '1', '2', '2', '2', '2', '2', '2', '2', '0', '0', '0', null);
INSERT INTO `oa_good` VALUES ('107111', '159', '139', '骑士-H布/米', 'good/2020-11-03/1604391980754.jpg', '', '362.00', '0', '0', '100', null, '1', null, '2020-11-03 16:26:20', null, null, '1', '0', null, '0', null, '0', '0', '0', '0', '0.00', '2', null, null, '0', null, '0', '2', '1', '2', '2', '2', '2', '2', '2', '2', '0', '0', '0', '2020-11-03 16:32:35');
INSERT INTO `oa_good` VALUES ('107108', '1', '134', '123', 'good/2020-11-03/1604391367060.png', '<p>123415</p>', '123.00', '0', '0', '100', null, '1', null, '2020-11-03 16:16:07', null, null, '1', '0', null, '0', null, '0', '0', '0', '0', '0.00', '2', null, null, '0', null, '0', '2', '1', '2', '2', '2', '2', '2', '2', '2', '0', '0', '0', '2020-11-03 16:16:07');
INSERT INTO `oa_good` VALUES ('107083', '159', '139', '繁花梦', 'good/2020-09-01/1598950710753.jpg', '<p><img alt=\"\" src=\"https://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601283709385.jpg\" style=\"height:1468px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601284059107.jpg\" style=\"height:1135px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601284072039.jpg\" style=\"height:1381px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601284080921.jpg\" style=\"height:815px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601284089625.jpg\" style=\"height:840px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601284097616.jpg\" style=\"height:750px; width:987px\" /></p>\r\n\r\n<p>创作灵感：设计灵感来源于珍珠&mdash;&mdash;欧卡娅，将当代人的时代趣味与生活需求，混合成现代低奢、自然人文的个性设计，再把荡漾缥缈的肌理与悠闲的生活格调完美契合，便可传达出馨谐致祥的人和美、暗香疏影的自然美。<br />\r\n作品寓意：微风轻柔掠过，吐纳着微醺的韵律，与空间产生时间轨迹，静寂优雅，为你讲述关于自然的故事。<br />\r\n适用风格：适用现代简约风格</p>', '3490.00', '0', '0', '100', null, '1', null, '2020-09-01 16:41:59', null, null, '1', '0', null, '0', null, '0', '0', '0', '0', '0.00', '2', null, null, '0', null, '0', '2', '1', '2', '2', '2', '2', '2', '2', '2', '0', '0', '0', '2020-10-22 14:08:56');
INSERT INTO `oa_good` VALUES ('107084', '159', '141', '柏拉图', 'good/2020-09-28/1601286870502.jpg', '<p><img alt=\"\" src=\"https://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601286079782.jpg\" style=\"height:1466px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601286090753.jpg\" style=\"height:1118px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601286096722.jpg\" style=\"height:1381px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601286103589.jpg\" style=\"height:839px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601286112359.jpg\" style=\"height:835px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601286119180.jpg\" style=\"height:750px; width:987px\" /></p>\r\n\r\n<p>创作灵感：运用几何图形和肌理组成理想的视觉效果，它们各司其职，尽情释放，于抽象姿态存在，亦如柏拉图一样重视的是精神的交流，图案为画面辅助整体氛围，工艺上以刺绣本身的凹凸感与特殊的肌理效果，能使产品更具立体感。<br />\r\n作品寓意：&quot;三维&quot;立体抽象，不断的变化与造型的形式美紧密结合，使画面既有韵味又有独特的表现形式，给你不一样的视觉效果。<br />\r\n适用风格：适用现代简约风格</p>', '3490.00', '0', '0', '100', null, '1', null, '2020-09-01 16:52:50', null, null, '1', '0', null, '0', null, '0', '0', '0', '0', '0.00', '2', null, null, '0', null, '0', '2', '1', '2', '2', '2', '2', '2', '2', '2', '0', '0', '0', '2020-10-22 14:08:40');
INSERT INTO `oa_good` VALUES ('107085', '159', '144', '自由之城', 'good/2020-09-28/1601286517290.jpg', '<p><img alt=\"\" src=\"https://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601283126427.jpg\" style=\"height:1470px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601283134432.jpg\" style=\"height:1111px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601283141095.jpg\" style=\"height:1391px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601283148347.jpg\" style=\"height:837px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601283173500.jpg\" style=\"height:750px; width:987px\" /></p>\r\n\r\n<p>创作灵感：以简单的线条为灵感的设计元素，不过分强调繁复的雕刻和细节，一丝一缕，于极简处织就深意，花型独特现代，色调典雅传统。<br />\r\n作品寓意：浪漫的波纹荡漾，如行云似流水，美妙异常，有让人沉迷其间的神秘魅力，达到唯美而含蓄的居住意境。<br />\r\n适用风格：适用现代简约风格</p>', '3490.00', '0', '0', '100', null, '1', null, '2020-09-02 16:18:54', null, null, '1', '0', null, '0', null, '0', '0', '0', '0', '0.00', '2', null, null, '0', null, '0', '2', '1', '2', '2', '2', '2', '2', '2', '2', '0', '0', '0', '2020-10-22 14:08:24');
INSERT INTO `oa_good` VALUES ('107086', '159', '138', '欧卡娅', 'good/2020-09-28/1601287293064.jpg', '<p><img alt=\"\" src=\"https://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601281454537.jpg\" style=\"height:1473px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601281479918.jpg\" style=\"height:1148px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601281496037.jpg\" style=\"height:1372px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601281508538.jpg\" style=\"height:812px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601281518641.jpg\" style=\"height:840px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601281526062.jpg\" style=\"height:744px; width:987px\" /></p>\r\n\r\n<p>设计灵感来源于珍珠&mdash;&mdash;欧卡娅，将当代人的时代趣味与生活需求，混合成现代低奢、自然人文的个性设计，再把荡漾缥缈的肌理与悠闲的生活格调完美契合，便可传达出馨谐致祥的人和美、暗香疏影的自然美。<br />\r\n作品寓意：微风轻柔掠过，吐纳着微醺的韵律，与空间产生时间轨迹，静寂优雅，为你讲述关于自然的故事。<br />\r\n适用风格：适用现代简约风格</p>', '3490.00', '0', '0', '100', null, '1', null, '2020-09-02 16:21:15', null, null, '1', '0', null, '0', null, '0', '0', '0', '0', '0.00', '2', null, null, '0', null, '0', '2', '1', '2', '2', '2', '2', '2', '2', '2', '0', '0', '0', '2020-10-22 14:08:09');
INSERT INTO `oa_good` VALUES ('107087', '159', '140', '黄金海岸', 'good/2020-09-28/1601287302223.jpg', '<p><img alt=\"\" src=\"https://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601286152869.jpg\" style=\"height:1476px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601286159411.jpg\" style=\"height:1106px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601286165526.jpg\" style=\"height:1398px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601286171404.jpg\" style=\"height:823px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601286178013.jpg\" style=\"height:830px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601286183818.jpg\" style=\"height:756px; width:987px\" /></p>\r\n\r\n<p>创作灵感：以线条与色彩相结合的现代美学，讲究和谐、宜居，具有意境之美的事物，亦如黄金海岸，有明媚的阳光、连绵的白色沙滩、湛蓝透明的海水、浪漫的棕榈林，更加耐人寻味，韵味悠长。<br />\r\n作品寓意：线条的变化与造型的形式美紧密结合，使画面既有韵味又有独特的表现形式，具有较强的抽象性与概括性。<br />\r\n适用风格：适用现代简约风格</p>', '3190.00', '0', '0', '100', null, '1', null, '2020-09-02 16:22:22', null, null, '1', '0', null, '0', null, '0', '0', '0', '0', '0.00', '2', null, null, '0', null, '0', '2', '1', '2', '2', '2', '2', '2', '2', '2', '0', '0', '0', '2020-10-22 14:07:54');
INSERT INTO `oa_good` VALUES ('107088', '159', '139', '草间弥生', 'good/2020-09-28/1601287311594.jpg', '<p><img alt=\"\" src=\"https://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601286204084.jpg\" style=\"height:1491px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601286209891.jpg\" style=\"height:1107px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601286216857.jpg\" style=\"height:1366px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601286223194.jpg\" style=\"height:833px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601286228828.jpg\" style=\"height:832px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601286234346.jpg\" style=\"height:760px; width:987px\" /></p>\r\n\r\n<p>创作灵感：草间弥生&mdash;&mdash;波尔卡圆点女王，饱满的&ldquo;圆圈&rdquo;元素，是最火、最好看也是最实用的。它既可以运用到家具本身中，还可以装饰于墙面、地面、桌面等等，可谓是非常广泛了。亮丝点缀，若隐若现，没有多余奢华的装饰，打造洁净清爽的视觉效果。<br />\r\n作品寓意：圈圈的空间可以给人流动和曲线的美感，人们也都渴望这种来自内心的圆满感受，给人眼带来惊喜的同时让人心获得舒适感受。<br />\r\n适用风格：适用现代简约风格</p>', '4590.00', '0', '0', '100', null, '1', null, '2020-09-02 16:23:16', null, null, '1', '0', null, '0', null, '0', '0', '0', '0', '0.00', '2', null, null, '0', null, '0', '2', '1', '2', '2', '2', '2', '2', '2', '2', '0', '0', '0', '2020-10-22 14:07:36');
INSERT INTO `oa_good` VALUES ('107089', '159', '144', '盗梦空间', 'good/2020-09-28/1601287320462.jpg', '<p><img alt=\"\" src=\"https://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601286250218.jpg\" style=\"height:1491px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601286258041.jpg\" style=\"height:1130px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601286264151.jpg\" style=\"height:1339px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601286270331.jpg\" style=\"height:843px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601286276793.jpg\" style=\"height:827px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601286282164.jpg\" style=\"height:759px; width:987px\" /></p>\r\n\r\n<p>创作灵感：人们总是在期盼着阳光，就像是一直在等待着希望。如果说清晨的第一束阳光是希望的象征，那么濒临黑暗之际的那束暮光，则是人们最后的希冀与等待，总是能带给人无限的感动与温暖。 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />\r\n作品寓意：暮光倾城之际，如果你愿赠我一束阳光，便是温暖了余生，也许最美的不是夕阳，而是黑夜将近时，那份对抗命运的最后一份倔强与坚持。<br />\r\n适用风格：适用现代简约风格</p>', '3190.00', '0', '0', '100', null, '1', null, '2020-09-02 16:24:16', null, null, '1', '0', null, '0', null, '0', '0', '0', '0', '0.00', '2', null, null, '0', null, '0', '2', '1', '2', '2', '2', '2', '2', '2', '2', '0', '0', '0', '2020-10-22 14:06:57');
INSERT INTO `oa_good` VALUES ('107110', '159', '139', '城恋-CL003/米', 'good/2020-11-03/1604391665523.jpg', '', '502.00', '0', '0', '100', null, '1', null, '2020-11-03 16:21:05', null, null, '1', '0', null, '0', null, '0', '0', '0', '0', '0.00', '2', null, null, '0', null, '0', '2', '1', '2', '2', '2', '2', '2', '2', '2', '0', '0', '0', '2020-11-03 16:32:43');
INSERT INTO `oa_good` VALUES ('107112', '159', '144', '如梦-BJ019', 'good/2020-11-03/1604392283362.jpg', '', '2729.00', '0', '0', '100', null, '1', null, '2020-11-03 16:31:23', null, null, '1', '0', null, '0', null, '0', '0', '0', '0', '0.00', '2', null, null, '0', null, '0', '2', '1', '2', '2', '2', '2', '2', '2', '2', '0', '0', '0', '2020-11-03 16:31:23');
INSERT INTO `oa_good` VALUES ('107113', '159', '144', '如梦-富贵长春', 'good/2020-11-04/1604450655328.jpg', '', '14729.00', '0', '0', '100', null, '1', null, '2020-11-04 08:44:15', null, null, '1', '0', null, '0', null, '0', '0', '0', '0', '0.00', '2', null, null, '0', null, '0', '2', '1', '2', '2', '2', '2', '2', '2', '2', '0', '0', '0', '2020-11-04 08:44:15');
INSERT INTO `oa_good` VALUES ('107114', '159', '139', '城恋-CL004', 'good/2020-11-04/1604451279122.jpg', '', '502.00', '0', '0', '100', null, '1', null, '2020-11-04 08:54:39', null, null, '1', '0', null, '0', null, '0', '0', '0', '0', '0.00', '2', null, null, '0', null, '0', '2', '1', '2', '2', '2', '2', '2', '2', '2', '0', '0', '0', '2020-11-04 09:20:59');
INSERT INTO `oa_good` VALUES ('107115', '159', '139', '城恋-CL005', 'good/2020-11-04/1604451637294.jpg', '', '502.00', '0', '0', '100', null, '1', null, '2020-11-04 09:00:37', null, null, '1', '0', null, '0', null, '0', '0', '0', '0', '0.00', '2', null, null, '0', null, '0', '2', '1', '2', '2', '2', '2', '2', '2', '2', '0', '0', '0', '2020-11-04 09:20:54');
INSERT INTO `oa_good` VALUES ('107116', '159', '139', '萌动-天真无邪', 'good/2020-11-04/1604452830910.jpg', '', '670.00', '0', '0', '100', null, '1', null, '2020-11-04 09:20:30', null, null, '1', '0', null, '0', null, '0', '0', '0', '0', '0.00', '2', null, null, '0', null, '0', '2', '1', '2', '2', '2', '2', '2', '2', '2', '0', '0', '0', '2020-11-04 09:21:25');
INSERT INTO `oa_good` VALUES ('107117', '159', '139', '萌动-太空遨游', 'good/2020-11-04/1604453140018.jpg', '', '670.00', '0', '0', '100', null, '1', null, '2020-11-04 09:25:40', null, null, '1', '0', null, '0', null, '0', '0', '0', '0', '0.00', '2', null, null, '0', null, '0', '2', '1', '2', '2', '2', '2', '2', '2', '2', '0', '0', '0', '2020-11-04 09:25:40');
INSERT INTO `oa_good` VALUES ('107118', '159', '139', '萌动-翩翩起舞', 'good/2020-11-04/1604453851324.jpg', '', '670.00', '0', '0', '100', null, '1', null, '2020-11-04 09:37:31', null, null, '1', '0', null, '0', null, '0', '0', '0', '0', '0.00', '2', null, null, '0', null, '0', '2', '1', '2', '2', '2', '2', '2', '2', '2', '0', '0', '0', '2020-11-04 09:37:31');
INSERT INTO `oa_good` VALUES ('107119', '159', '138', '骑士-归隐泉林', 'good/2020-11-04/1604454320082.jpg', '', '1538.00', '0', '0', '100', null, '1', null, '2020-11-04 09:45:20', null, null, '1', '0', null, '0', null, '0', '0', '0', '0', '0.00', '2', null, null, '0', null, '0', '2', '1', '2', '2', '2', '2', '2', '2', '2', '0', '0', '0', '2020-11-04 09:45:20');
INSERT INTO `oa_good` VALUES ('107120', '159', '139', '骑士-旭日东升', 'good/2020-11-04/1604455391703.jpg', '', '2729.00', '0', '0', '100', null, '1', null, '2020-11-04 10:03:11', null, null, '1', '0', null, '0', null, '0', '0', '0', '0', '0.00', '2', null, null, '0', null, '0', '2', '1', '2', '2', '2', '2', '2', '2', '2', '0', '0', '0', '2020-11-04 10:03:12');
INSERT INTO `oa_good` VALUES ('107121', '159', '139', '精英-万木萌发', 'good/2020-11-04/1604458137725.jpg', '', '558.00', '0', '0', '100', null, '1', null, '2020-11-04 10:48:57', null, null, '1', '0', null, '0', null, '0', '0', '0', '0', '0.00', '2', null, null, '0', null, '0', '2', '1', '2', '2', '2', '2', '2', '2', '2', '0', '0', '0', '2020-11-04 10:48:58');
INSERT INTO `oa_good` VALUES ('107122', '159', '144', '精英-花好月圆', 'good/2020-11-04/1604465589315.jpg', '', '2729.00', '0', '0', '100', null, '1', null, '2020-11-04 12:53:09', null, null, '1', '0', null, '0', null, '0', '0', '0', '0', '0.00', '2', null, null, '0', null, '0', '2', '1', '2', '2', '2', '2', '2', '2', '2', '0', '0', '0', '2020-11-04 12:53:09');

-- ----------------------------
-- Table structure for oa_good_pic
-- ----------------------------
DROP TABLE IF EXISTS `oa_good_pic`;
CREATE TABLE `oa_good_pic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `good_id` int(11) DEFAULT NULL,
  `goods_pic` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_good_pic
-- ----------------------------
INSERT INTO `oa_good_pic` VALUES ('13', '107089', 'good/2020-10-16/1602831554832.jpg');
INSERT INTO `oa_good_pic` VALUES ('14', '107089', 'good/2020-10-16/1602831554889.jpg');
INSERT INTO `oa_good_pic` VALUES ('15', '107089', 'good/2020-10-16/1602831554940.jpg');
INSERT INTO `oa_good_pic` VALUES ('16', '107089', 'good/2020-10-16/1602831554976.jpg');
INSERT INTO `oa_good_pic` VALUES ('17', '107088', 'good/2020-10-16/1602831631134.jpg');
INSERT INTO `oa_good_pic` VALUES ('18', '107088', 'good/2020-10-16/1602831631175.jpg');
INSERT INTO `oa_good_pic` VALUES ('19', '107088', 'good/2020-10-16/1602831631221.jpg');
INSERT INTO `oa_good_pic` VALUES ('20', '107088', 'good/2020-10-16/1602831631259.jpg');
INSERT INTO `oa_good_pic` VALUES ('21', '107088', 'good/2020-10-16/1602831631331.jpg');
INSERT INTO `oa_good_pic` VALUES ('22', '107087', 'good/2020-10-16/1602831697745.jpg');
INSERT INTO `oa_good_pic` VALUES ('23', '107087', 'good/2020-10-16/1602831697785.jpg');
INSERT INTO `oa_good_pic` VALUES ('24', '107087', 'good/2020-10-16/1602831697826.jpg');
INSERT INTO `oa_good_pic` VALUES ('25', '107087', 'good/2020-10-16/1602831697873.jpg');
INSERT INTO `oa_good_pic` VALUES ('26', '107087', 'good/2020-10-16/1602831697914.jpg');
INSERT INTO `oa_good_pic` VALUES ('27', '107086', 'good/2020-10-16/1602831771092.jpg');
INSERT INTO `oa_good_pic` VALUES ('28', '107086', 'good/2020-10-16/1602831771133.jpg');
INSERT INTO `oa_good_pic` VALUES ('29', '107086', 'good/2020-10-16/1602831771173.jpg');
INSERT INTO `oa_good_pic` VALUES ('30', '107086', 'good/2020-10-16/1602831771209.jpg');
INSERT INTO `oa_good_pic` VALUES ('31', '107086', 'good/2020-10-16/1602831771251.jpg');
INSERT INTO `oa_good_pic` VALUES ('32', '107085', 'good/2020-10-16/1602831868691.jpg');
INSERT INTO `oa_good_pic` VALUES ('33', '107085', 'good/2020-10-16/1602831868725.jpg');
INSERT INTO `oa_good_pic` VALUES ('34', '107085', 'good/2020-10-16/1602831868762.jpg');
INSERT INTO `oa_good_pic` VALUES ('35', '107085', 'good/2020-10-16/1602831868826.jpg');
INSERT INTO `oa_good_pic` VALUES ('36', '107085', 'good/2020-10-16/1602831868857.jpg');
INSERT INTO `oa_good_pic` VALUES ('37', '107084', 'good/2020-10-16/1602831939467.jpg');
INSERT INTO `oa_good_pic` VALUES ('38', '107084', 'good/2020-10-16/1602831939509.jpg');
INSERT INTO `oa_good_pic` VALUES ('39', '107084', 'good/2020-10-16/1602831939552.jpg');
INSERT INTO `oa_good_pic` VALUES ('40', '107084', 'good/2020-10-16/1602831939587.jpg');
INSERT INTO `oa_good_pic` VALUES ('41', '107084', 'good/2020-10-16/1602831939627.jpg');
INSERT INTO `oa_good_pic` VALUES ('42', '107083', 'good/2020-10-16/1602832001225.jpg');
INSERT INTO `oa_good_pic` VALUES ('43', '107083', 'good/2020-10-16/1602832001295.jpg');
INSERT INTO `oa_good_pic` VALUES ('44', '107083', 'good/2020-10-16/1602832001333.jpg');
INSERT INTO `oa_good_pic` VALUES ('45', '107083', 'good/2020-10-16/1602832001376.jpg');
INSERT INTO `oa_good_pic` VALUES ('46', '107083', 'good/2020-10-16/1602832001414.jpg');
INSERT INTO `oa_good_pic` VALUES ('47', '107104', 'good/2020-10-21/1603253272328.jpg');
INSERT INTO `oa_good_pic` VALUES ('48', '107104', 'good/2020-10-21/1603253272396.jpg');
INSERT INTO `oa_good_pic` VALUES ('49', '107104', 'good/2020-10-21/1603253272468.jpg');
INSERT INTO `oa_good_pic` VALUES ('50', '107104', 'good/2020-10-21/1603253272541.jpg');
INSERT INTO `oa_good_pic` VALUES ('51', '107106', 'good/2020-11-03/1604388863858.jpg');
INSERT INTO `oa_good_pic` VALUES ('52', '107106', 'good/2020-11-03/1604388863914.jpg');
INSERT INTO `oa_good_pic` VALUES ('53', '107106', 'good/2020-11-03/1604388863985.jpg');
INSERT INTO `oa_good_pic` VALUES ('54', '107106', 'good/2020-11-03/1604388864375.jpg');
INSERT INTO `oa_good_pic` VALUES ('55', '107106', 'good/2020-11-03/1604388864425.jpg');
INSERT INTO `oa_good_pic` VALUES ('57', '107107', 'good/2020-11-03/1604391288138.jpg');
INSERT INTO `oa_good_pic` VALUES ('58', '107107', 'good/2020-11-03/1604391288200.jpg');
INSERT INTO `oa_good_pic` VALUES ('59', '107107', 'good/2020-11-03/1604391288316.png');
INSERT INTO `oa_good_pic` VALUES ('60', '107107', 'good/2020-11-03/1604391288359.jpg');
INSERT INTO `oa_good_pic` VALUES ('61', '107107', 'good/2020-11-03/1604391288748.png');
INSERT INTO `oa_good_pic` VALUES ('62', '107108', 'good/2020-11-03/1604391367620.png');
INSERT INTO `oa_good_pic` VALUES ('63', '107108', 'good/2020-11-03/1604391367679.png');
INSERT INTO `oa_good_pic` VALUES ('64', '107108', 'good/2020-11-03/1604391367739.png');
INSERT INTO `oa_good_pic` VALUES ('66', '107109', 'good/2020-11-03/1604391624788.jpg');
INSERT INTO `oa_good_pic` VALUES ('67', '107109', 'good/2020-11-03/1604391624852.jpg');
INSERT INTO `oa_good_pic` VALUES ('68', '107109', 'good/2020-11-03/1604391624911.jpg');
INSERT INTO `oa_good_pic` VALUES ('69', '107109', 'good/2020-11-03/1604391624976.jpg');
INSERT INTO `oa_good_pic` VALUES ('70', '107109', 'good/2020-11-03/1604391625272.jpg');
INSERT INTO `oa_good_pic` VALUES ('71', '107110', 'good/2020-11-03/1604391665643.jpg');
INSERT INTO `oa_good_pic` VALUES ('72', '107110', 'good/2020-11-03/1604391665713.jpg');
INSERT INTO `oa_good_pic` VALUES ('73', '107110', 'good/2020-11-03/1604391665772.jpg');
INSERT INTO `oa_good_pic` VALUES ('74', '107110', 'good/2020-11-03/1604391665919.jpg');
INSERT INTO `oa_good_pic` VALUES ('75', '107110', 'good/2020-11-03/1604391666204.jpg');
INSERT INTO `oa_good_pic` VALUES ('76', '107111', 'good/2020-11-03/1604391980814.jpg');
INSERT INTO `oa_good_pic` VALUES ('77', '107111', 'good/2020-11-03/1604391980860.jpg');
INSERT INTO `oa_good_pic` VALUES ('78', '107111', 'good/2020-11-03/1604391980906.jpg');
INSERT INTO `oa_good_pic` VALUES ('79', '107111', 'good/2020-11-03/1604391980963.jpg');
INSERT INTO `oa_good_pic` VALUES ('80', '107112', 'good/2020-11-03/1604392283444.jpg');
INSERT INTO `oa_good_pic` VALUES ('81', '107112', 'good/2020-11-03/1604392283532.jpg');
INSERT INTO `oa_good_pic` VALUES ('82', '107112', 'good/2020-11-03/1604392283615.jpg');
INSERT INTO `oa_good_pic` VALUES ('83', '107112', 'good/2020-11-03/1604392284116.jpg');
INSERT INTO `oa_good_pic` VALUES ('84', '107112', 'good/2020-11-03/1604392284752.jpg');
INSERT INTO `oa_good_pic` VALUES ('85', '107113', 'good/2020-11-04/1604450655725.jpg');
INSERT INTO `oa_good_pic` VALUES ('86', '107113', 'good/2020-11-04/1604450655782.jpg');
INSERT INTO `oa_good_pic` VALUES ('87', '107113', 'good/2020-11-04/1604450655854.jpg');
INSERT INTO `oa_good_pic` VALUES ('88', '107113', 'good/2020-11-04/1604450655925.jpg');
INSERT INTO `oa_good_pic` VALUES ('89', '107114', 'good/2020-11-04/1604451279811.jpg');
INSERT INTO `oa_good_pic` VALUES ('90', '107114', 'good/2020-11-04/1604451279854.jpg');
INSERT INTO `oa_good_pic` VALUES ('91', '107114', 'good/2020-11-04/1604451279903.jpg');
INSERT INTO `oa_good_pic` VALUES ('92', '107114', 'good/2020-11-04/1604451279986.jpg');
INSERT INTO `oa_good_pic` VALUES ('93', '107114', 'good/2020-11-04/1604451280440.jpg');
INSERT INTO `oa_good_pic` VALUES ('94', '107115', 'good/2020-11-04/1604451637384.jpg');
INSERT INTO `oa_good_pic` VALUES ('95', '107115', 'good/2020-11-04/1604451637446.jpg');
INSERT INTO `oa_good_pic` VALUES ('96', '107115', 'good/2020-11-04/1604451637497.jpg');
INSERT INTO `oa_good_pic` VALUES ('97', '107115', 'good/2020-11-04/1604451637963.jpg');
INSERT INTO `oa_good_pic` VALUES ('98', '107115', 'good/2020-11-04/1604451638293.jpg');
INSERT INTO `oa_good_pic` VALUES ('99', '107116', 'good/2020-11-04/1604452831051.jpg');
INSERT INTO `oa_good_pic` VALUES ('100', '107116', 'good/2020-11-04/1604452831109.jpg');
INSERT INTO `oa_good_pic` VALUES ('101', '107116', 'good/2020-11-04/1604452831183.jpg');
INSERT INTO `oa_good_pic` VALUES ('102', '107116', 'good/2020-11-04/1604452831674.jpg');
INSERT INTO `oa_good_pic` VALUES ('103', '107117', 'good/2020-11-04/1604453140104.jpg');
INSERT INTO `oa_good_pic` VALUES ('104', '107117', 'good/2020-11-04/1604453140285.jpg');
INSERT INTO `oa_good_pic` VALUES ('105', '107117', 'good/2020-11-04/1604453140741.jpg');
INSERT INTO `oa_good_pic` VALUES ('106', '107118', 'good/2020-11-04/1604453851426.jpg');
INSERT INTO `oa_good_pic` VALUES ('107', '107118', 'good/2020-11-04/1604453851501.jpg');
INSERT INTO `oa_good_pic` VALUES ('108', '107118', 'good/2020-11-04/1604453851563.jpg');
INSERT INTO `oa_good_pic` VALUES ('109', '107119', 'good/2020-11-04/1604454320163.jpg');
INSERT INTO `oa_good_pic` VALUES ('110', '107119', 'good/2020-11-04/1604454320550.jpg');
INSERT INTO `oa_good_pic` VALUES ('111', '107119', 'good/2020-11-04/1604454321683.jpg');
INSERT INTO `oa_good_pic` VALUES ('112', '107119', 'good/2020-11-04/1604454322012.jpg');
INSERT INTO `oa_good_pic` VALUES ('113', '107119', 'good/2020-11-04/1604454323804.jpg');
INSERT INTO `oa_good_pic` VALUES ('114', '107120', 'good/2020-11-04/1604455391837.jpg');
INSERT INTO `oa_good_pic` VALUES ('115', '107120', 'good/2020-11-04/1604455392653.jpg');
INSERT INTO `oa_good_pic` VALUES ('116', '107120', 'good/2020-11-04/1604455392902.jpg');
INSERT INTO `oa_good_pic` VALUES ('117', '107120', 'good/2020-11-04/1604455393688.jpg');
INSERT INTO `oa_good_pic` VALUES ('118', '107120', 'good/2020-11-04/1604455394002.jpg');
INSERT INTO `oa_good_pic` VALUES ('119', '107121', 'good/2020-11-04/1604458137845.jpg');
INSERT INTO `oa_good_pic` VALUES ('120', '107121', 'good/2020-11-04/1604458137968.jpg');
INSERT INTO `oa_good_pic` VALUES ('121', '107121', 'good/2020-11-04/1604458138948.jpg');
INSERT INTO `oa_good_pic` VALUES ('122', '107121', 'good/2020-11-04/1604458140330.jpg');
INSERT INTO `oa_good_pic` VALUES ('123', '107121', 'good/2020-11-04/1604458141510.jpg');
INSERT INTO `oa_good_pic` VALUES ('124', '107122', 'good/2020-11-04/1604465589419.jpg');
INSERT INTO `oa_good_pic` VALUES ('125', '107122', 'good/2020-11-04/1604465590102.jpg');
INSERT INTO `oa_good_pic` VALUES ('126', '107122', 'good/2020-11-04/1604465591355.jpg');
INSERT INTO `oa_good_pic` VALUES ('127', '107122', 'good/2020-11-04/1604465592198.jpg');
INSERT INTO `oa_good_pic` VALUES ('128', '107122', 'good/2020-11-04/1604465592486.jpg');

-- ----------------------------
-- Table structure for oa_good_type
-- ----------------------------
DROP TABLE IF EXISTS `oa_good_type`;
CREATE TABLE `oa_good_type` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `oa_id` int(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL COMMENT '商品类型',
  `is_show` int(5) DEFAULT '1' COMMENT '1使用0禁用默认值1',
  `sorting` int(50) DEFAULT '0' COMMENT '排序',
  `type_id` int(50) DEFAULT NULL COMMENT '分级',
  `ico_img` varchar(100) DEFAULT NULL COMMENT '图标',
  `color` varchar(200) DEFAULT '000000-666666' COMMENT '字体渐变色',
  `keyword` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '关键词',
  `pc_color` varchar(100) DEFAULT NULL,
  `phone_img` varchar(100) DEFAULT NULL COMMENT '手机分类图标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=147 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='商品类型表';

-- ----------------------------
-- Records of oa_good_type
-- ----------------------------
INSERT INTO `oa_good_type` VALUES ('134', '1', '项目运营', '1', '0', null, null, '000000-666666', null, null, null);
INSERT INTO `oa_good_type` VALUES ('133', '1', '小程序开发', '1', '0', null, null, '000000-666666', null, null, null);
INSERT INTO `oa_good_type` VALUES ('132', '1', 'APP开发', '1', '0', null, null, '000000-666666', null, null, null);
INSERT INTO `oa_good_type` VALUES ('131', '1', '软件测试', '1', '0', null, null, '000000-666666', null, null, null);
INSERT INTO `oa_good_type` VALUES ('135', '1', 'UI设计', '1', '0', null, null, '000000-666666', null, null, null);
INSERT INTO `oa_good_type` VALUES ('145', '159', '日式', '1', '0', null, null, '000000-666666', null, null, null);
INSERT INTO `oa_good_type` VALUES ('144', '159', '新中式', '1', '0', null, null, '000000-666666', null, null, null);
INSERT INTO `oa_good_type` VALUES ('138', '159', '简欧', '1', '0', null, null, '000000-666666', null, null, null);
INSERT INTO `oa_good_type` VALUES ('139', '159', '现代', '1', '0', null, null, '000000-666666', null, null, null);
INSERT INTO `oa_good_type` VALUES ('140', '159', '美式', '1', '0', null, null, '000000-666666', null, null, null);
INSERT INTO `oa_good_type` VALUES ('141', '159', '轻奢', '1', '0', null, null, '000000-666666', null, null, null);

-- ----------------------------
-- Table structure for oa_info
-- ----------------------------
DROP TABLE IF EXISTS `oa_info`;
CREATE TABLE `oa_info` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `oa_id` int(50) DEFAULT NULL COMMENT '门店编号',
  `type_id` int(50) DEFAULT NULL,
  `sort` int(10) DEFAULT '0' COMMENT '排序',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '标题',
  `img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '封面图',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '内容',
  `look_num` int(20) DEFAULT '0' COMMENT '查看次数',
  `up_num` int(20) DEFAULT '0' COMMENT '点赞次数',
  `is_used_num` int(11) DEFAULT '0' COMMENT '被使用次数',
  `is_customer_num` int(11) DEFAULT '0' COMMENT '获客量',
  `is_show` int(5) DEFAULT '0' COMMENT '是否展示 0否  1是',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `is_must_report` varchar(5) DEFAULT '0' COMMENT '是否必转 ，0否，1是',
  `last_update_time` datetime DEFAULT NULL,
  `shop_goods` varchar(255) DEFAULT NULL,
  `shop_cases` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COMMENT='商品资讯表';

-- ----------------------------
-- Records of oa_info
-- ----------------------------
INSERT INTO `oa_info` VALUES ('32', '1', '1', '0', '软装大牌--启上官网', '', '', '0', '0', '0', '0', '1', '2020-10-21 15:54:33', '0', '2020-10-21 15:54:33', null, null);
INSERT INTO `oa_info` VALUES ('34', '159', '5', '0', '大牌驾到 钜惠来袭', 'info/2020-11-03/1604381237224.jpg', '<p>活动时间：11月5日-11月26日</p>\r\n\r\n<p>启动时间：11月4日</p>\r\n\r\n<p>活动地点：邳州，西峡，萧山，温岭</p>\r\n\r\n<p>活动内容亮点解析：</p>\r\n\r\n<p>一．进店有礼</p>\r\n\r\n<p>活动期间，顾客进店预留基础信息，上门量尺，即送价值198元的健康大礼包一份；（仅限前30名）</p>\r\n\r\n<p>二．总裁签售</p>\r\n\r\n<p>活动期间，工厂总裁全程驻店放价签售，神秘折扣，精选套餐，直击底价；</p>\r\n\r\n<p>三．定金升值</p>\r\n\r\n<p>1.活动期间缴纳定金5000元，定金可升值6666元(单值满1万元以上）</p>\r\n\r\n<p>2.活动期间缴纳定金10000元，定金可升值13888元(单值满2万元以上）</p>\r\n\r\n<p>3.活动期间缴纳定金20000元，定金可升值26888元(单值满3万元以上）</p>\r\n\r\n<p>四．金蛋大奖</p>\r\n\r\n<p>活动期间，顾客凭订收据，交款满5000元可砸金蛋1次，满10000元可砸金蛋2次，以此类推，上不封顶；（品牌家电，现金等你来砸，最高4999元免单大奖）</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>郑重承诺：本次所售商品均为优等品，质保20年，服务不打折；</p>', '0', '0', '0', '0', '0', '2020-11-03 13:27:17', '0', '2020-11-03 13:27:17', null, null);
INSERT INTO `oa_info` VALUES ('25', '159', '5', '0', '御秀每周秀丨800㎡的豪宅精致又有格调，满满都是高级感', 'info/2020-09-07/1599463517614.webp', '<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601268732090.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601268750550.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601268766973.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601268782743.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p>整体以稳重的大理石色为基调，佐以御秀墙布的优雅质感，安静不乏张力，英气十足也兼容并包。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601269834942.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601269891393.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p>卧室装修的简约稳重一些，大大的窗户带来充足的光线，显得整个空间明亮通透。</p>', '0', '0', '0', '0', '0', '2020-09-07 15:25:18', '0', '2020-10-21 15:12:49', null, null);
INSERT INTO `oa_info` VALUES ('26', '159', '5', '0', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', 'info/2020-09-08/1599542453409.jpg', '<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601270481205.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601270503385.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601270514720.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p>浪漫、大方是欧式风格的独特元素，置身其中，仿佛身处宁静的教堂之中静心凝神，又如在浪漫的爱琴海边感受微风拂面，一切都是如此的温文尔雅、浪漫和谐。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601270529004.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601270538940.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601270549644.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601270557708.jpg\" style=\"height:300px; width:400px\" /></p>', '0', '0', '0', '0', '0', '2020-09-08 13:16:57', '0', '2020-10-21 15:12:45', null, null);
INSERT INTO `oa_info` VALUES ('27', '159', '5', '0', '御秀每周秀丨北欧轻奢风格,不将就是一种生活态度', 'info/2020-09-08/1599542696899.jpg', '<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601270793478.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601270829505.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601270842861.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601270858335.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p>现代轻奢北欧家具以简约、极致著称，具有很浓的后现代主义特色，现代轻奢北欧不仅相当的接地气，而且利用这种风格打造的家居环境不容易过时，属于一直走在时尚前沿的一种家装设计。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601270884355.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601270894550.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601270906854.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601271128346.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601271142581.jpg\" style=\"height:300px; width:400px\" /></p>', '0', '0', '0', '0', '1', '2020-09-08 13:24:57', '1', '2020-10-21 15:12:40', null, null);
INSERT INTO `oa_info` VALUES ('28', '159', '5', '0', '御秀每周秀丨传统与现代元素的碰撞，领略不一样的东方风情！', 'info/2020-09-08/1599542997715.jpg', '<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601271483595.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601271494543.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p>当婉约别致的古典元素与现代美学共同整合，浑然天成的历史韵味，诠释焕然一新的混搭体验，便形成了时下的新中式风。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601271505921.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601271513399.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601271521420.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601271529148.jpg\" style=\"height:300px; width:400px\" /></p>', '0', '0', '0', '0', '0', '2020-09-08 13:29:58', '1', '2020-10-21 15:12:36', null, null);

-- ----------------------------
-- Table structure for oa_info_type
-- ----------------------------
DROP TABLE IF EXISTS `oa_info_type`;
CREATE TABLE `oa_info_type` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `oa_id` int(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL COMMENT '商品类型',
  `is_show` int(5) DEFAULT '1' COMMENT '1使用0禁用默认值1',
  `sorting` int(50) DEFAULT '0' COMMENT '排序',
  `type_id` int(50) DEFAULT NULL COMMENT '分级',
  `ico_img` varchar(100) DEFAULT NULL COMMENT '图标',
  `color` varchar(200) DEFAULT '000000-666666' COMMENT '字体渐变色',
  `keyword` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '关键词',
  `pc_color` varchar(100) DEFAULT NULL,
  `phone_img` varchar(100) DEFAULT NULL COMMENT '手机分类图标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='商品咨询的类型表';

-- ----------------------------
-- Records of oa_info_type
-- ----------------------------
INSERT INTO `oa_info_type` VALUES ('1', '1', '客户资讯', '1', '1', null, null, '000000-666666', null, null, null);
INSERT INTO `oa_info_type` VALUES ('2', '1', '前沿技术', '1', '2', null, null, '000000-666666', null, null, null);
INSERT INTO `oa_info_type` VALUES ('3', '1', '行业动态', '1', '0', null, null, '000000-666666', null, null, null);
INSERT INTO `oa_info_type` VALUES ('4', '1', '业务发展', '1', '0', null, null, '000000-666666', null, null, null);
INSERT INTO `oa_info_type` VALUES ('5', '159', '热点时事', '1', '0', null, null, '000000-666666', null, null, null);

-- ----------------------------
-- Table structure for oa_notice
-- ----------------------------
DROP TABLE IF EXISTS `oa_notice`;
CREATE TABLE `oa_notice` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `oa_id` int(50) DEFAULT NULL COMMENT '门店编号',
  `type_id` int(50) DEFAULT NULL,
  `sort` int(10) DEFAULT '0' COMMENT '排序',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '标题',
  `img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '封面图',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '内容',
  `look_num` int(20) DEFAULT '0' COMMENT '查看次数',
  `up_num` int(20) DEFAULT '0' COMMENT '点赞次数',
  `is_used_num` int(11) DEFAULT '0' COMMENT '被使用次数',
  `is_customer_num` int(11) DEFAULT '0' COMMENT '获客量',
  `is_show` int(5) DEFAULT '0' COMMENT '是否展示 0否  1是',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='商品资讯表';

-- ----------------------------
-- Records of oa_notice
-- ----------------------------
INSERT INTO `oa_notice` VALUES ('32', '1', '1', '0', '软装大牌--启上官', '', '<p>整体以稳重的大理石色为基调，佐以御秀墙布的优雅质感，安静不乏张力，英气十足也兼容并包。</p>\r\n\r\n<p>卧室装修的简约稳重一些，大大的窗户带来充足的光线，显得整个空间明亮通透。</p>', '0', '0', '0', '0', '1', '2020-10-21 15:54:33');
INSERT INTO `oa_notice` VALUES ('37', '159', null, '0', '测试', null, '<p>测试</p>', '0', '0', '0', '0', '0', '2020-11-03 17:17:44');
INSERT INTO `oa_notice` VALUES ('38', '159', null, '0', '1', null, '<p>1</p>', '0', '0', '0', '0', '0', '2020-11-03 17:18:09');
INSERT INTO `oa_notice` VALUES ('36', '1', null, '0', 'test0101', null, '<p>test0101</p>', '0', '0', '0', '0', '0', '2020-11-03 15:51:49');

-- ----------------------------
-- Table structure for oa_poster
-- ----------------------------
DROP TABLE IF EXISTS `oa_poster`;
CREATE TABLE `oa_poster` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `oa_id` int(11) DEFAULT NULL COMMENT '门店编号',
  `type_id` int(11) DEFAULT NULL COMMENT '类型编号',
  `title` varchar(50) DEFAULT NULL COMMENT '标题',
  `is_used_num` int(10) DEFAULT '0' COMMENT '被使用次数',
  `is_customer_num` int(10) DEFAULT '0' COMMENT '获客次数',
  `img` varchar(50) DEFAULT NULL,
  `content` varchar(0) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '内容',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `last_update_time` datetime DEFAULT NULL COMMENT '上次修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='门店海报表';

-- ----------------------------
-- Records of oa_poster
-- ----------------------------
INSERT INTO `oa_poster` VALUES ('12', '159', '131', '生活不将就 软装选御秀', '0', '0', 'poster/2020-10-10/1602313295304.jpg', null, null, null);
INSERT INTO `oa_poster` VALUES ('13', '159', '131', '二十四节气 / 寒露', '0', '0', 'poster/2020-10-10/1602313457672.jpg', null, null, null);
INSERT INTO `oa_poster` VALUES ('14', '159', '131', '蝶之绣美', '0', '0', 'poster/2020-10-10/1602313478931.jpg', null, null, null);
INSERT INTO `oa_poster` VALUES ('15', '1', '128', '重阳节', '0', '0', 'poster/2020-10-21/1603271083303.jpg', null, '2020-10-21 17:04:43', '2020-10-21 17:04:43');
INSERT INTO `oa_poster` VALUES ('19', '159', '131', '11月门店活动', '0', '0', 'poster/2020-11-03/1604380597469.jpg', null, '2020-11-03 13:16:37', '2020-11-03 13:16:37');

-- ----------------------------
-- Table structure for oa_poster_type
-- ----------------------------
DROP TABLE IF EXISTS `oa_poster_type`;
CREATE TABLE `oa_poster_type` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `oa_id` int(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL COMMENT '商品类型',
  `is_show` int(5) DEFAULT '1' COMMENT '1使用0禁用默认值1',
  `sorting` int(50) DEFAULT '0' COMMENT '排序',
  `type_id` int(50) DEFAULT NULL COMMENT '分级',
  `ico_img` varchar(100) DEFAULT NULL COMMENT '图标',
  `color` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '字体渐变色',
  `keyword` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '关键词',
  `pc_color` varchar(100) DEFAULT NULL,
  `phone_img` varchar(100) DEFAULT NULL COMMENT '手机分类图标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=133 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='门店海报的类型表';

-- ----------------------------
-- Records of oa_poster_type
-- ----------------------------
INSERT INTO `oa_poster_type` VALUES ('127', '1', '日常问候', '0', '0', null, null, '000000-666666', null, null, null);
INSERT INTO `oa_poster_type` VALUES ('128', '1', '节日节气', '1', '1', null, null, '000000-666666', null, null, null);
INSERT INTO `oa_poster_type` VALUES ('129', '1', '创意励志', '1', '0', null, null, '0', null, null, null);
INSERT INTO `oa_poster_type` VALUES ('131', '159', '节日', '1', '0', null, null, '0', null, null, null);

-- ----------------------------
-- Table structure for oa_user
-- ----------------------------
DROP TABLE IF EXISTS `oa_user`;
CREATE TABLE `oa_user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userid` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `departmentid` int(10) DEFAULT NULL COMMENT '部门id',
  `role` int(11) DEFAULT '1' COMMENT '角色1组员2组长4总监8总经理',
  `real_name` varchar(100) DEFAULT NULL COMMENT '真实姓名',
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '手机号',
  `card_img_font` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '身份证图片正面',
  `card_img_back` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '身份证图片背面',
  `card_num` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '身份证号',
  `sex` int(1) unsigned DEFAULT '1' COMMENT '1-男2-女',
  `nation` varchar(10) DEFAULT NULL COMMENT '民族',
  `birth` varchar(50) DEFAULT NULL,
  `person_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '住址',
  `authority` varchar(255) DEFAULT NULL COMMENT '签发机关',
  `valid_date` varchar(255) DEFAULT NULL COMMENT '身份证有效期限',
  `is_rest` int(1) unsigned DEFAULT '0' COMMENT '是否休息1-是0-否',
  `money` decimal(50,2) unsigned DEFAULT '0.00' COMMENT '可提现金额',
  `bank_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '银行卡图片',
  `open_bank` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '开户行',
  `bank` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡号',
  `wx_settlement_bank_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '微信结算银行code',
  `longitude` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '经度',
  `latitude` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '纬度',
  `is_show` int(10) unsigned DEFAULT '1' COMMENT '是否审核通过1-通过0-不通过',
  `license_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '营业执照',
  `company` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '公司名',
  `company_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '公司地址',
  `reg_num` varchar(100) DEFAULT NULL COMMENT '注册编号',
  `capital` varchar(100) DEFAULT NULL COMMENT '注册资本',
  `business` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '经营范围',
  `type` varchar(50) DEFAULT NULL COMMENT '公司类型',
  `period` varchar(50) DEFAULT NULL COMMENT '经营时期',
  `set_date` varchar(30) DEFAULT NULL COMMENT '成立日期',
  `person` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '法人姓名',
  `intro` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '介绍',
  `service_intro` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '无忧服务介绍',
  `company_logo` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='门店用户信息';

-- ----------------------------
-- Records of oa_user
-- ----------------------------
INSERT INTO `oa_user` VALUES ('1', '1', 'tiancekjadmin', 'e10adc3949ba59abbe56e057f20f883e', null, '1', '杜鹃花', '13500001221', 'other/2020-08-24/1598254377316.png', 'other/2020-08-24/1598254505808.jpg', '130982199109076521', '2', '汉', '1991/9/7', '福建省厦门市思明区思明南', '辉县市公安局', '2018.08.02-2028.08.02', '0', '0.00', null, null, null, null, null, null, '1', 'other/2020-09-01/1598938413155.jpg', '浙江醍磨豆教育科技有限公司', '连云港市新浦区建国路1512号', '连云港戎禹新型防水材料有限公司', '10万元人民币', '许可经营项目:无一般经营项目:防水抗渗剂生产、售;建筑材料销售.', '有限公司(自然人独资)', '2016年12月07日至长期', '2016年12月01日', '魏景好', '<p>杭州天册科技有限公司专注于互联网项目的开发，运营，为客户提供专业的解决方案，帮助客户在市场竞争中更具优势。我们始终坚持高标准，高要求为客户提供服务，站在用户角度品审每个细节，我们开发时间可能让您觉得会长些，是因为我们用心在做，您选择我们，用户也将选择您。</p>', '<p>杭州天册科技有限公司专注于互联网项目的开发，运营，为客户提供专业的解决方案，帮助客户在市场竞争中更具优势。我们始终坚持高标准，高要求为客户提供服务，站在用户角度品审每个细节，我们开发时间可能让您觉得会长些，是因为我们用心在做，您选择我们，用户也将选择您。</p>', 'other/2020-09-30/1601432860343.png');
INSERT INTO `oa_user` VALUES ('159', '2', 'yuxiuadmin', 'e10adc3949ba59abbe56e057f20f883e', null, '1', '桂成才', '18758016435', 'other/2020-09-08/1599546143745.jpeg', 'other/2020-09-08/1599546150039.jpeg', '330326197402196017', '1', '汉', '1974/2/19', '浙江省平阳县昆阳镇新街路338号', '平阳县公安局', '2007.04.28-2027.04.28', '0', '0.00', null, null, null, null, null, null, '1', 'other/2020-09-08/1599546109367.jpeg', '御秀实业控股股份有限公司', '浙江省嘉兴市南湖区大桥镇紫宇路910号', '913304007764843997', '伍仟万元整', '一般项目：生产销售服装及后整理加工；墙布、窗帘、墙板的生产；控股公司服务；新材料的技术开发、技术咨询、技术服务；自有房屋租赁；建筑材料、装饰材料的研发；工业产品设计；装饰材料、建筑材料、五金产品、照明灯具、纺织品、纸张、化工产品（不含危险化学品及易制毒化学品）、电子产品、日用品、工艺品的销售；（除依法须经批准的项目外，凭营业执照依法自主开展经营活动）。许可项目：货物进出口；技术进出口（依法须经批准的项目，经相关部门批准后方可开展经营活动。具体经营项目以审批结果为准）。', '股份有限公司（非上市、自然人投资或控股）', '2019年07月23日至长期', '2019年07月23日', '郑贤静', '<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//other/2020-10-22/2020-10-22/1603329544025.jpg\" style=\"height:2239px; width:750px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//other/2020-10-22/2020-10-22/1603329574229.jpg\" style=\"height:1863px; width:750px\" /></p>', '<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//other/2020-10-22/2020-10-22/1603328824295.jpg\" style=\"height:2801px; width:750px\" /></p>', null);

-- ----------------------------
-- Table structure for oa_video
-- ----------------------------
DROP TABLE IF EXISTS `oa_video`;
CREATE TABLE `oa_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `oa_id` int(11) DEFAULT NULL COMMENT '门店编号',
  `type_id` int(11) DEFAULT NULL,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '标题',
  `img` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '视频文件URL',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '内容',
  `look_num` int(11) DEFAULT '0' COMMENT '查看次数',
  `up_num` int(11) DEFAULT '0' COMMENT '点赞次数',
  `be_custmer_num` int(11) DEFAULT '0' COMMENT '获客人数',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `is_show` int(5) DEFAULT '1' COMMENT '是否展示',
  `sort` int(5) DEFAULT NULL COMMENT '排序',
  `last_update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='门店小视频表';

-- ----------------------------
-- Records of oa_video
-- ----------------------------
INSERT INTO `oa_video` VALUES ('22', '159', null, '御秀品牌宣传篇', 'video/2020-10-10/1602315089813.mp4', null, '0', '0', '0', null, '1', null, null);
INSERT INTO `oa_video` VALUES ('23', '159', '4', '11月门店活动', 'video/2020-11-04/1604468347664.mp4', null, '0', '0', '0', '2020-11-04 13:39:08', '1', null, '2020-11-04 13:39:08');

-- ----------------------------
-- Table structure for oa_video_type
-- ----------------------------
DROP TABLE IF EXISTS `oa_video_type`;
CREATE TABLE `oa_video_type` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `oa_id` int(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL COMMENT '商品类型',
  `is_show` int(5) DEFAULT '1' COMMENT '1使用0禁用默认值1',
  `sorting` int(50) DEFAULT '0' COMMENT '排序',
  `type_id` int(50) DEFAULT NULL COMMENT '分级',
  `ico_img` varchar(100) DEFAULT NULL COMMENT '图标',
  `color` varchar(200) DEFAULT '000000-666666' COMMENT '字体渐变色',
  `keyword` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '关键词',
  `pc_color` varchar(100) DEFAULT NULL,
  `phone_img` varchar(100) DEFAULT NULL COMMENT '手机分类图标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='门店小视频的类型表';

-- ----------------------------
-- Records of oa_video_type
-- ----------------------------
INSERT INTO `oa_video_type` VALUES ('1', '1', '门面', '1', '0', null, null, '000000-666666', null, null, null);
INSERT INTO `oa_video_type` VALUES ('2', '1', '日常问', '1', '0', null, null, '000000-666666', null, null, null);
INSERT INTO `oa_video_type` VALUES ('4', '159', '平台视频', '1', '0', null, null, '000000-666666', null, null, null);

-- ----------------------------
-- Table structure for shop_banner
-- ----------------------------
DROP TABLE IF EXISTS `shop_banner`;
CREATE TABLE `shop_banner` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` int(10) unsigned NOT NULL DEFAULT '2' COMMENT '类型2-小程序首页banner',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '标题',
  `imgs` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'banner图',
  `url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '链接',
  `sort` int(10) unsigned DEFAULT '0' COMMENT '排序',
  `is_show` int(10) unsigned DEFAULT '1' COMMENT '是否显示1为显示0为不显示默认值1',
  `sid` int(10) unsigned DEFAULT NULL COMMENT '关联seller表sid',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_banner
-- ----------------------------
INSERT INTO `shop_banner` VALUES ('1', '2', null, 'good/2020-08-20/1597916133229.png', 'http://baidu.com', '0', '1', '5');
INSERT INTO `shop_banner` VALUES ('11', '2', null, 'other/2020-09-27/1601198576750.png', null, '0', '1', '1');
INSERT INTO `shop_banner` VALUES ('12', '2', null, 'other/2020-09-27/1601198841340.png', null, '0', '1', '1');
INSERT INTO `shop_banner` VALUES ('17', '2', null, 'other/2020-09-29/1601363820842.png', null, '0', '1', '4');
INSERT INTO `shop_banner` VALUES ('18', '2', null, 'other/2020-09-29/1601363826819.png', null, '0', '1', '4');
INSERT INTO `shop_banner` VALUES ('19', '2', null, 'other/2020-10-10/1602315014495.png', null, '0', '1', '7');
INSERT INTO `shop_banner` VALUES ('21', '2', null, 'other/2020-10-14/1602665511186.png', null, '0', '1', '1');
INSERT INTO `shop_banner` VALUES ('22', '2', null, 'other/2020-10-14/1602666693953.png', null, '0', '1', '8');
INSERT INTO `shop_banner` VALUES ('23', '2', null, 'other/2020-10-21/1603265997892.png', null, '0', '1', '3');
INSERT INTO `shop_banner` VALUES ('29', '2', null, 'other/2020-11-03/1604392002939.png', null, '0', '1', '4');

-- ----------------------------
-- Table structure for shop_banner_cat
-- ----------------------------
DROP TABLE IF EXISTS `shop_banner_cat`;
CREATE TABLE `shop_banner_cat` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '广告分类名称',
  `explain` int(10) DEFAULT NULL COMMENT '说明1表示首页',
  `ports` int(10) DEFAULT '0' COMMENT '端口0PC1手机2IPaid',
  `sorting` int(10) DEFAULT NULL,
  `is_show` int(10) DEFAULT '1' COMMENT '1显示0不显示默认值1',
  `linkid` int(10) DEFAULT NULL COMMENT '关联id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_banner_cat
-- ----------------------------

-- ----------------------------
-- Table structure for shop_case
-- ----------------------------
DROP TABLE IF EXISTS `shop_case`;
CREATE TABLE `shop_case` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `shop_id` int(50) DEFAULT NULL COMMENT '门店编号',
  `type_id` int(11) DEFAULT NULL COMMENT '类型编号',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '案例标题',
  `img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '封面图',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `look_num` int(20) DEFAULT '0' COMMENT '查看次数',
  `up_num` int(20) DEFAULT '0' COMMENT '点赞次数',
  `intro` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '案例简介',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '内容',
  `is_show` int(5) DEFAULT '0' COMMENT '是否展示, 0 否 ,1 是 ',
  `sort` int(10) DEFAULT '0' COMMENT '排序',
  `oa_case_id` int(11) DEFAULT NULL COMMENT '所在案例库中的id',
  `example` varchar(255) DEFAULT NULL COMMENT '360度全景',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=150 DEFAULT CHARSET=utf8 COMMENT='商品案例表';

-- ----------------------------
-- Records of shop_case
-- ----------------------------
INSERT INTO `shop_case` VALUES ('140', '4', '15', '演绎温雅生活，探索细碎幸福', 'case/2020-09-28/1601284798166.jpg', '2020-10-21 14:06:00', '11', '0', null, '<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601284657150.jpg\" style=\"height:675px; width:1200px\" />你可能不希望家里金碧辉煌、繁盛奢靡，想要摆脱繁杂与厚重。多种御秀墙布拼接使用，用最简洁、最本真、最纯净的状态，缓解你烦躁的精神情绪。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601284714301.jpg\" style=\"height:675px; width:1200px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601284723385.jpg\" style=\"height:732px; width:1300px\" />御秀用&ldquo;软&rdquo;，来融化空间色彩中出现的冰冷感，让卧室在保持艺术感的同时，保留烟火气。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601284747792.jpg\" style=\"height:675px; width:1200px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601284754676.jpg\" style=\"height:731px; width:1300px\" />米黄色暖色调的墙布在卧室的运用，让你感觉仿佛时间变慢了，真正享受慢生活。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601284770103.jpg\" style=\"height:619px; width:1100px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601284778027.jpg\" style=\"height:731px; width:1300px\" />儿童房选用浅色御秀墙布，为卧室带来自然气息，和谐中透出年轻时尚。</p>', '1', '0', '73', '');
INSERT INTO `shop_case` VALUES ('141', '4', '16', '匠心巧啄，塑造诗意的Artistic Realm', 'case/2020-09-28/1601279632794.jpg', '2020-10-21 14:06:00', '1', '0', null, '<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601279430822.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601279442563.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601279453988.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>直线的简约美，传统的雕梁画柱已鲜少出现在新中式家装中，简约的直线条家具会让空间更加清爽明朗，更富现代感。</p>\r\n\r\n<p><br />\r\n<img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601279468168.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601279476382.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601279491820.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>对称，给人稳重和谐、有秩序的感觉，在家装设计中，背景墙设计、沙发摆放、装饰画布置，使用对称手法都能呈现新中式的平衡之美。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601279543849.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601279554275.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>新中式风格的软装搭配不是简单的元素堆砌，要根据整个空间的特点，和大件家具所营造的家居氛围进行搭配，否则容易画蛇添足，破坏氛围。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601279586886.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601279610709.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>总言之，新中式软装搭配无需浓墨重彩，越是&ldquo;轻描淡写&rdquo;，往往越有意境。</p>', '1', '0', '71', '');
INSERT INTO `shop_case` VALUES ('142', '4', '15', '越极简，越High-Level', 'case/2020-10-20/1603170886360.jpg', '2020-10-21 14:06:00', '14', '1', null, '<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603170690617.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p>现代轻奢风格，是现在很多业主的选择，整体是以现代舒适的空间为主，打造出现代简约轻奢质感的家居生活营造出一种优雅华丽的氛围感。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603170713384.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603170733459.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603170745642.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603170759925.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p>设计师把客厅设定为简约自然，没有纷繁复杂的装饰。仅用温暖的色彩加上质感极强的设计手法，简简单单的感觉便能造出质感的空间。</p>\r\n\r\n<p><br />\r\n<img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603170776630.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603170793765.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603170801359.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p>制造主卧空间的安宁和温暖的同时，在审美层面连接传统意境，营造安静优雅的睡眠环境。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603170816814.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603170823798.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p>在设计元素上去除繁杂，对舒适自然的重点进行了完美的诠释。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603170860117.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603170867542.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603170875204.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p>整体时尚而不喧闹，为儿童房平添一种自由灵气。</p>', '1', '0', '83', '');
INSERT INTO `shop_case` VALUES ('143', '4', '20', '艺术共生与灵魂共鸣，温暖岁月的诗', 'case/2020-10-20/1603172119365.jpg', '2020-10-21 14:06:00', '13', '0', null, '<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603171995232.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p>这些年北欧风格愈演愈烈，无论是体验馆还是家具店都深受粉丝们的热爱。北欧风格空间简单流畅，颜色搭配上简洁明快，带给人们别样的清爽、自然。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603172018441.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603172035446.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603172042891.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603172051892.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p>色调纯净只是北欧风格的用色的基础。北欧风格仍然延续低饱和度的特点，创新之处是在低饱和度的同时加入少量的灰度，让空间看起来更富有质感。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603172070462.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603172077404.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603172084364.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p>自然、本真是北欧家具的风格特点，简约的造型，柔和的线条处理，加上淡淡的中性色，总能使人不由自主的想要亲近。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603172093587.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603172101283.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p>耐人寻味的北欧地域文化，使人不断向往的北欧生活。让来自大西洋彼岸的&ldquo;北风&rdquo;吹进你的生活，在微醺微醉中发现生活的真谛！</p>', '1', '0', '84', '');
INSERT INTO `shop_case` VALUES ('148', '4', '20', '北欧+轻奢混搭,恰到好处的精致都市风', 'case/2020-10-20/1603173275392.jpg', '2020-10-21 15:14:26', '34', '8', null, '<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603173104309.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p>北欧，是很多时尚年轻人的宠儿</p>\r\n\r\n<p>也是最近几年装修风格中的&ldquo;网红款&rdquo;</p>\r\n\r\n<p>轻奢，是一种生活态度，低调</p>\r\n\r\n<p>舒适却无伤高贵与雅致</p>\r\n\r\n<p>北欧+轻奢混搭是恰到好处的精致</p>\r\n\r\n<p>每一处都很温馨，这才是家真正的感觉~</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603173115166.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603173122913.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603173132514.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p>客厅不同材质的搭配运用让空间富有变化又不失沉稳&mdash;&mdash;御秀新品城恋系列。电视背景墙以干脆的线条装点，于细节中见品质。餐桌上错落的饰品形成了视觉的轻盈感，多元化的混搭透出不拘一格的时尚气息。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603173151443.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603173198376.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603173205111.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p>没有繁琐累赘的线条，鲜有璀璨奢华的元素，却通过不同色块之间的相互碰撞，干净利落的讲述了一个关于家的故事，给家以精致、温暖的生活气息。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603173220147.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603173231176.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603173237965.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p>自带光泽的金属，带着与身俱来的高贵感和优雅，面积较大的纯色调让空间看起来更富有质感。</p>\r\n\r\n<p><br />\r\n<img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603173245876.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603173253178.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p>北欧风格的家具简洁流畅有力度，注重功能充溢着丰富的想象力，色泽自然而富有灵性，整体设计洋溢着现代风情。</p>', '1', '0', '85', '');
INSERT INTO `shop_case` VALUES ('145', '4', '21', '120㎡华美栖居，追溯午夜巴黎的奇幻之旅', 'case/2020-10-20/1603174300083.jpg', '2020-10-21 14:06:00', '4', '0', null, '<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603174206704.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p>美式作为近年来流行的家居风格，受到很多人的喜爱。但是大家也似乎有这样的困扰，每个人理解的美式好像都有点不太一样。有人说美式就是简化版的欧式，有人说美式就是粗犷，也有人说美式就是田园乡村，那么美式到底是什么？</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603174215873.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603174227227.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603174234257.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p>美式家居格外注意家庭之间的联系和在家中产生的互动，家具厚实但不复杂，给使用者一种安心的舒适感。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603174249792.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603174256755.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603174262915.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p>对功能性的重视，让空间的利用更加合理化，而不是去遵循一些严苛的规范。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603174276906.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603174283068.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603174289996.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p>家具中会大量使用木材和棉麻制品，与北欧的清冷不同，美式从家具开始就呈现出一种家的温柔气息。</p>', '1', '0', '86', '');
INSERT INTO `shop_case` VALUES ('123', '7', '17', '东方风情', 'case/2020-09-28/1601279632794.jpg', '2020-10-16 16:50:16', '29', '2', null, '<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601279430822.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601279442563.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601279453988.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>直线的简约美，传统的雕梁画柱已鲜少出现在新中式家装中，简约的直线条家具会让空间更加清爽明朗，更富现代感。</p>\r\n\r\n<p><br />\r\n<img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601279468168.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601279476382.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601279491820.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>对称，给人稳重和谐、有秩序的感觉，在家装设计中，背景墙设计、沙发摆放、装饰画布置，使用对称手法都能呈现新中式的平衡之美。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601279543849.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601279554275.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>新中式风格的软装搭配不是简单的元素堆砌，要根据整个空间的特点，和大件家具所营造的家居氛围进行搭配，否则容易画蛇添足，破坏氛围。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601279586886.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601279610709.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>总言之，新中式软装搭配无需浓墨重彩，越是&ldquo;轻描淡写&rdquo;，往往越有意境。</p>', '1', '0', '71', '');
INSERT INTO `shop_case` VALUES ('122', '7', '11', '黎明之约', 'case/2020-09-28/1601284798166.jpg', '2020-10-16 16:50:16', '6', '5', null, '<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601284657150.jpg\" style=\"height:675px; width:1200px\" />你可能不希望家里金碧辉煌、繁盛奢靡，想要摆脱繁杂与厚重。多种御秀墙布拼接使用，用最简洁、最本真、最纯净的状态，缓解你烦躁的精神情绪。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601284714301.jpg\" style=\"height:675px; width:1200px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601284723385.jpg\" style=\"height:732px; width:1300px\" />御秀用&ldquo;软&rdquo;，来融化空间色彩中出现的冰冷感，让卧室在保持艺术感的同时，保留烟火气。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601284747792.jpg\" style=\"height:675px; width:1200px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601284754676.jpg\" style=\"height:731px; width:1300px\" />米黄色暖色调的墙布在卧室的运用，让你感觉仿佛时间变慢了，真正享受慢生活。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601284770103.jpg\" style=\"height:619px; width:1100px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601284778027.jpg\" style=\"height:731px; width:1300px\" />儿童房选用浅色御秀墙布，为卧室带来自然气息，和谐中透出年轻时尚。</p>', '1', '0', '73', '');
INSERT INTO `shop_case` VALUES ('121', '7', '11', '繁华美寻', 'case/2020-09-28/1601283038664.jpg', '2020-10-16 16:50:16', '4', '0', null, '<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601282537415.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>轻奢风格一般会选用带有高级感的中性色，诸如驼色、象牙白、奶咖、黑色及碳灰色，来演绎一种&ldquo;低调的奢华&rdquo;，令空间质感更为饱满。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601282562944.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601282569813.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>整个空间既没有过于繁复的造型，亦没有丰富色彩的叠加，而是以一种直撩心底的优雅魔力，给人带来轻松舒适、温馨大气的感觉。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601282583886.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601282591962.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>不惹眼，不浮夸，却让追求生活品位的人士，在不经意中获得极具质感的生活享受，这就是现代轻奢气质的最佳演绎。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601282617922.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>与其说，轻奢是一种风格，不如说，它是一种极致优雅的生活态度。</p>', '1', '0', '72', '');
INSERT INTO `shop_case` VALUES ('120', '7', '12', '巴黎玫瑰', 'case/2020-09-28/1601277711574.jpg', '2020-10-16 16:50:16', '1', '0', null, '<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601277601585.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601277653270.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601277662422.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>藉着室内空间的解构和重组，便可以满足我们对悠然自得的生活的向往和追求，让我们在纷扰的现实生活中找到平衡，缔造出一个令人心弛神往的写意空间。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601277673426.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601277685797.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>简约欧式更注重卧室的功能和实用性，但保留了欧洲贵族的高贵气质。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601277695168.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601277702454.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>大大的窗户让光线铺洒进来，让整个房间都散发着明亮通透的气息。</p>', '1', '0', '64', 'https://pano.kujiale.com/cloud/design/3FO4B73V3M70/show?friendid=3FO4KDMSY7EU&fromqrcode=true');
INSERT INTO `shop_case` VALUES ('118', '7', '11', '浮云悠歌', 'case/2020-09-28/1601276404501.jpg', '2020-10-16 16:50:16', '0', '0', null, '<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601276479981.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601276490698.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601276536442.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>整体以稳重的大理石色为基调，佐以御秀墙布的优雅质感，安静不乏张力，英气十足也兼容并包。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601276558379.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601276580045.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>卧室装修的简约稳重一些，大大的窗户带来充足的光线，显得整个空间明亮通透。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601276600193.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601276609490.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>卧室适当加以干枝植物提色，做圆形背景，增添设计感，颜色上也大量使用安静的白色，打造更适合读写的内心空间。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601276647999.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601276657684.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>儿童房做了拼接背景，墙布颜色清新，增添设计感，让孩子更富想象力。</p>', '1', '0', '69', '');
INSERT INTO `shop_case` VALUES ('119', '7', '17', '暗夜觅彩', 'case/2020-09-28/1601278220606.jpg', '2020-10-16 16:50:16', '2', '0', null, '<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601278139418.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601278147718.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601278159820.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>它或许没有华丽的色调、繁杂的装饰，但骨子里透露出来的深沉情愫，却让心灵行至深处，如同落叶归根，找到了灵魂的归属。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601278178715.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601278188391.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>对于喜欢中式风格但又追求时尚摩登的年轻人，在家中装饰一些新中式风格元素将再完美不过。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601278205401.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601278212087.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>格调典雅质朴，色彩稳重成熟，布局阴阳协调，韵味浓烈悠长，充分体现了中国传统美学的精神，散发出亦古亦今的层次之美。</p>', '1', '0', '70', '');
INSERT INTO `shop_case` VALUES ('147', '4', '22', 'European Style 欧式艺术的空间觉醒', 'case/2020-10-20/1603176153755.jpg', '2020-10-21 14:06:00', '14', '5', null, '<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603176128180.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p>浪漫、大方是欧式风格的独特元素，置身其中，仿佛身处宁静的教堂之中静心凝神，又如在浪漫的爱琴海边感受微风拂面，一切都是如此的温文尔雅、浪漫和谐。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603179760247.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603179767204.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603179781258.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603179788839.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603179795522.jpg\" style=\"height:470px; width:470px\" /></p>\r\n\r\n<p>没有欧式风格的富丽堂皇，但是却有着欧式古典风格和现代风格的融合，还有卧室的童话般的梦幻，让客厅精美中带着简约。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603179804427.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603179810311.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603179816537.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p>舒适优雅的欧式风格主卧，充满欧式轻奢风，兼具简约的清新和奢华的高贵，别有一番低调的奢华质感。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603179831527.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603179837950.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603179844086.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p>在视觉上以优雅的暖色调为主，将生活从纷繁杂乱中解救出来，给你一个舒适、井然有序的生活空间。</p>', '1', '0', '88', '');
INSERT INTO `shop_case` VALUES ('114', '1', '1', '法律框架3', 'case/2020-10-11/1602390256738.png', '2020-10-16 14:11:19', '6', '0', null, '<p>12211</p>', '1', '0', '77', '123');
INSERT INTO `shop_case` VALUES ('115', '1', '1', '法律框架4', 'case/2020-10-11/1602390256738.png', '2020-10-16 14:11:19', '0', '0', null, null, '0', '0', '78', '123');
INSERT INTO `shop_case` VALUES ('116', '1', '1', '法律框架7', 'case/2020-10-11/1602390256738.png', '2020-10-16 14:11:19', '0', '0', null, null, '0', '0', '81', '123');
INSERT INTO `shop_case` VALUES ('117', '1', '10', '案例test', null, '2020-10-16 14:11:19', '0', '0', null, null, '0', '0', '82', null);
INSERT INTO `shop_case` VALUES ('146', '4', '19', 'Modern Art 如夏花一样对生活的狂热', 'case/2020-10-20/1603174953681.jpg', '2020-10-21 14:06:00', '11', '0', null, '<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603174751064.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p>没有太多的修饰与约束，成就了另一种休闲式的贵气和浪漫，也正好迎合了人们对精致生活的需求：有文化感，还不缺乏自在与情调。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603174824915.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603174835900.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603174842135.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603174849209.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p>以摩登时尚的千鸟格墙布作为墙面打底，层次分明的灯具结合层次的石膏线与拼接地砖使空间富有温馨、浪漫气息。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603174906685.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603174912673.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603174918313.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p>整个空间以浅色为主，贯穿整体的设计思路，通过完美的线条，精益求精的细节处理，带给家人不尽的舒服触感。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603174931933.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603174937042.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-10-20/2020-10-20/1603174943192.jpg\" style=\"height:353px; width:470px\" /></p>\r\n\r\n<p>通过对软装颜色的运用，营造出一种高级感，最合理化组合和颜色，希望创造每一处景都很美的空间。</p>', '1', '0', '87', '');
INSERT INTO `shop_case` VALUES ('149', '3', '23', '342', '', '2020-10-21 16:13:23', '2', '0', null, '', '1', '0', '89', '');
INSERT INTO `shop_case` VALUES ('138', '4', '19', 'Space Of Flows 重塑为爱而生的艺术韵律', 'case/2020-09-28/1601277711574.jpg', '2020-10-21 14:06:00', '0', '0', null, '<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601277601585.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601277653270.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601277662422.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>藉着室内空间的解构和重组，便可以满足我们对悠然自得的生活的向往和追求，让我们在纷扰的现实生活中找到平衡，缔造出一个令人心弛神往的写意空间。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601277673426.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601277685797.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>简约欧式更注重卧室的功能和实用性，但保留了欧洲贵族的高贵气质。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601277695168.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601277702454.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>大大的窗户让光线铺洒进来，让整个房间都散发着明亮通透的气息。</p>', '1', '0', '64', 'https://pano.kujiale.com/cloud/design/3FO4B73V3M70/show?friendid=3FO4KDMSY7EU&fromqrcode=true');
INSERT INTO `shop_case` VALUES ('139', '4', '15', '现代遇上Light Luxury 演绎质感生活', 'case/2020-09-28/1601283038664.jpg', '2020-10-21 14:06:00', '11', '0', null, '<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601282537415.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>轻奢风格一般会选用带有高级感的中性色，诸如驼色、象牙白、奶咖、黑色及碳灰色，来演绎一种&ldquo;低调的奢华&rdquo;，令空间质感更为饱满。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601282562944.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601282569813.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>整个空间既没有过于繁复的造型，亦没有丰富色彩的叠加，而是以一种直撩心底的优雅魔力，给人带来轻松舒适、温馨大气的感觉。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601282583886.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601282591962.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>不惹眼，不浮夸，却让追求生活品位的人士，在不经意中获得极具质感的生活享受，这就是现代轻奢气质的最佳演绎。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601282617922.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>与其说，轻奢是一种风格，不如说，它是一种极致优雅的生活态度。</p>', '1', '0', '72', '');
INSERT INTO `shop_case` VALUES ('136', '4', '15', '900㎡女企业家别墅私宅，奢华而不浮华', 'case/2020-09-28/1601276404501.jpg', '2020-10-21 14:06:00', '5', '0', null, '<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601276479981.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601276490698.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601276536442.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>整体以稳重的大理石色为基调，佐以御秀墙布的优雅质感，安静不乏张力，英气十足也兼容并包。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601276558379.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601276580045.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>卧室装修的简约稳重一些，大大的窗户带来充足的光线，显得整个空间明亮通透。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601276600193.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601276609490.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>卧室适当加以干枝植物提色，做圆形背景，增添设计感，颜色上也大量使用安静的白色，打造更适合读写的内心空间。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601276647999.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601276657684.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>儿童房做了拼接背景，墙布颜色清新，增添设计感，让孩子更富想象力。</p>', '1', '0', '69', '');
INSERT INTO `shop_case` VALUES ('137', '4', '16', '泊墨之境，遇见山水', 'case/2020-09-28/1601278220606.jpg', '2020-10-21 14:06:00', '0', '0', null, '<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601278139418.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601278147718.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601278159820.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>它或许没有华丽的色调、繁杂的装饰，但骨子里透露出来的深沉情愫，却让心灵行至深处，如同落叶归根，找到了灵魂的归属。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601278178715.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601278188391.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>对于喜欢中式风格但又追求时尚摩登的年轻人，在家中装饰一些新中式风格元素将再完美不过。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601278205401.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//case/2020-09-28/2020-09-28/1601278212087.jpg\" style=\"height:713px; width:950px\" /></p>\r\n\r\n<p>格调典雅质朴，色彩稳重成熟，布局阴阳协调，韵味浓烈悠长，充分体现了中国传统美学的精神，散发出亦古亦今的层次之美。</p>', '1', '0', '70', '');

-- ----------------------------
-- Table structure for shop_case_pic
-- ----------------------------
DROP TABLE IF EXISTS `shop_case_pic`;
CREATE TABLE `shop_case_pic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `case_id` int(11) DEFAULT NULL,
  `case_pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_case_pic
-- ----------------------------
INSERT INTO `shop_case_pic` VALUES ('58', '118', 'case/2020-10-15/1602740627123.jpg');
INSERT INTO `shop_case_pic` VALUES ('59', '118', 'case/2020-10-15/1602740638683.jpg');
INSERT INTO `shop_case_pic` VALUES ('60', '118', 'case/2020-10-15/1602740666280.jpg');
INSERT INTO `shop_case_pic` VALUES ('61', '118', 'case/2020-10-15/1602740685664.jpg');
INSERT INTO `shop_case_pic` VALUES ('62', '118', 'case/2020-10-15/1602740685737.jpg');
INSERT INTO `shop_case_pic` VALUES ('63', '119', 'case/2020-10-15/1602740588466.jpg');
INSERT INTO `shop_case_pic` VALUES ('64', '119', 'case/2020-10-15/1602740598782.jpg');
INSERT INTO `shop_case_pic` VALUES ('65', '119', 'case/2020-10-15/1602740613719.jpg');
INSERT INTO `shop_case_pic` VALUES ('66', '119', 'case/2020-10-15/1602740613816.jpg');
INSERT INTO `shop_case_pic` VALUES ('67', '120', 'case/2020-10-15/1602740711171.jpg');
INSERT INTO `shop_case_pic` VALUES ('68', '120', 'case/2020-10-15/1602740711216.jpg');
INSERT INTO `shop_case_pic` VALUES ('69', '120', 'case/2020-10-15/1602740711258.jpg');
INSERT INTO `shop_case_pic` VALUES ('70', '120', 'case/2020-10-15/1602740711300.jpg');
INSERT INTO `shop_case_pic` VALUES ('71', '120', 'case/2020-10-15/1602740711352.jpg');
INSERT INTO `shop_case_pic` VALUES ('72', '121', 'case/2020-10-15/1602740480757.jpg');
INSERT INTO `shop_case_pic` VALUES ('73', '121', 'case/2020-10-15/1602740489074.jpg');
INSERT INTO `shop_case_pic` VALUES ('74', '121', 'case/2020-10-15/1602740516425.jpg');
INSERT INTO `shop_case_pic` VALUES ('75', '121', 'case/2020-10-15/1602740523032.jpg');
INSERT INTO `shop_case_pic` VALUES ('76', '122', 'case/2020-10-15/1602740387466.jpg');
INSERT INTO `shop_case_pic` VALUES ('77', '122', 'case/2020-10-15/1602740387989.jpg');
INSERT INTO `shop_case_pic` VALUES ('78', '122', 'case/2020-10-15/1602740427759.jpg');
INSERT INTO `shop_case_pic` VALUES ('79', '122', 'case/2020-10-15/1602740427882.jpg');
INSERT INTO `shop_case_pic` VALUES ('80', '123', 'case/2020-10-15/1602740534994.jpg');
INSERT INTO `shop_case_pic` VALUES ('81', '123', 'case/2020-10-15/1602740546744.jpg');
INSERT INTO `shop_case_pic` VALUES ('82', '123', 'case/2020-10-15/1602740553302.jpg');
INSERT INTO `shop_case_pic` VALUES ('83', '123', 'case/2020-10-15/1602740561418.jpg');
INSERT INTO `shop_case_pic` VALUES ('140', '136', 'case/2020-10-15/1602740627123.jpg');
INSERT INTO `shop_case_pic` VALUES ('141', '136', 'case/2020-10-15/1602740638683.jpg');
INSERT INTO `shop_case_pic` VALUES ('142', '136', 'case/2020-10-15/1602740666280.jpg');
INSERT INTO `shop_case_pic` VALUES ('143', '136', 'case/2020-10-15/1602740685664.jpg');
INSERT INTO `shop_case_pic` VALUES ('144', '136', 'case/2020-10-15/1602740685737.jpg');
INSERT INTO `shop_case_pic` VALUES ('145', '137', 'case/2020-10-15/1602740588466.jpg');
INSERT INTO `shop_case_pic` VALUES ('146', '137', 'case/2020-10-15/1602740598782.jpg');
INSERT INTO `shop_case_pic` VALUES ('147', '137', 'case/2020-10-15/1602740613719.jpg');
INSERT INTO `shop_case_pic` VALUES ('148', '137', 'case/2020-10-15/1602740613816.jpg');
INSERT INTO `shop_case_pic` VALUES ('149', '138', 'case/2020-10-15/1602740711171.jpg');
INSERT INTO `shop_case_pic` VALUES ('150', '138', 'case/2020-10-15/1602740711216.jpg');
INSERT INTO `shop_case_pic` VALUES ('151', '138', 'case/2020-10-15/1602740711258.jpg');
INSERT INTO `shop_case_pic` VALUES ('152', '138', 'case/2020-10-15/1602740711300.jpg');
INSERT INTO `shop_case_pic` VALUES ('153', '138', 'case/2020-10-15/1602740711352.jpg');
INSERT INTO `shop_case_pic` VALUES ('154', '139', 'case/2020-10-15/1602740480757.jpg');
INSERT INTO `shop_case_pic` VALUES ('155', '139', 'case/2020-10-15/1602740489074.jpg');
INSERT INTO `shop_case_pic` VALUES ('156', '139', 'case/2020-10-15/1602740516425.jpg');
INSERT INTO `shop_case_pic` VALUES ('157', '139', 'case/2020-10-15/1602740523032.jpg');
INSERT INTO `shop_case_pic` VALUES ('158', '140', 'case/2020-10-15/1602740387466.jpg');
INSERT INTO `shop_case_pic` VALUES ('159', '140', 'case/2020-10-15/1602740387989.jpg');
INSERT INTO `shop_case_pic` VALUES ('160', '140', 'case/2020-10-15/1602740427759.jpg');
INSERT INTO `shop_case_pic` VALUES ('161', '140', 'case/2020-10-15/1602740427882.jpg');
INSERT INTO `shop_case_pic` VALUES ('162', '141', 'case/2020-10-15/1602740534994.jpg');
INSERT INTO `shop_case_pic` VALUES ('163', '141', 'case/2020-10-15/1602740546744.jpg');
INSERT INTO `shop_case_pic` VALUES ('164', '141', 'case/2020-10-15/1602740553302.jpg');
INSERT INTO `shop_case_pic` VALUES ('165', '141', 'case/2020-10-15/1602740561418.jpg');
INSERT INTO `shop_case_pic` VALUES ('166', '142', 'case/2020-10-20/1603170886425.jpg');
INSERT INTO `shop_case_pic` VALUES ('167', '142', 'case/2020-10-20/1603170886472.jpg');
INSERT INTO `shop_case_pic` VALUES ('168', '142', 'case/2020-10-20/1603170886515.jpg');
INSERT INTO `shop_case_pic` VALUES ('169', '142', 'case/2020-10-20/1603170886554.jpg');
INSERT INTO `shop_case_pic` VALUES ('170', '142', 'case/2020-10-20/1603170886649.jpg');
INSERT INTO `shop_case_pic` VALUES ('171', '143', 'case/2020-10-20/1603172119428.jpg');
INSERT INTO `shop_case_pic` VALUES ('172', '143', 'case/2020-10-20/1603172119476.jpg');
INSERT INTO `shop_case_pic` VALUES ('173', '143', 'case/2020-10-20/1603172119524.jpg');
INSERT INTO `shop_case_pic` VALUES ('174', '143', 'case/2020-10-20/1603172119598.jpg');
INSERT INTO `shop_case_pic` VALUES ('175', '143', 'case/2020-10-20/1603172119639.jpg');
INSERT INTO `shop_case_pic` VALUES ('181', '145', 'case/2020-10-20/1603174300153.jpg');
INSERT INTO `shop_case_pic` VALUES ('182', '145', 'case/2020-10-20/1603174300214.jpg');
INSERT INTO `shop_case_pic` VALUES ('183', '145', 'case/2020-10-20/1603174300270.jpg');
INSERT INTO `shop_case_pic` VALUES ('184', '145', 'case/2020-10-20/1603174300426.jpg');
INSERT INTO `shop_case_pic` VALUES ('185', '145', 'case/2020-10-20/1603174300469.jpg');
INSERT INTO `shop_case_pic` VALUES ('186', '146', 'case/2020-10-20/1603174953744.jpg');
INSERT INTO `shop_case_pic` VALUES ('187', '146', 'case/2020-10-20/1603174953788.jpg');
INSERT INTO `shop_case_pic` VALUES ('188', '146', 'case/2020-10-20/1603174953841.jpg');
INSERT INTO `shop_case_pic` VALUES ('189', '146', 'case/2020-10-20/1603174953886.jpg');
INSERT INTO `shop_case_pic` VALUES ('190', '146', 'case/2020-10-20/1603174953930.jpg');
INSERT INTO `shop_case_pic` VALUES ('191', '147', 'case/2020-10-20/1603176153822.jpg');
INSERT INTO `shop_case_pic` VALUES ('192', '147', 'case/2020-10-20/1603176153883.jpg');
INSERT INTO `shop_case_pic` VALUES ('193', '147', 'case/2020-10-20/1603176153935.jpg');
INSERT INTO `shop_case_pic` VALUES ('194', '147', 'case/2020-10-20/1603176154122.jpg');
INSERT INTO `shop_case_pic` VALUES ('195', '147', 'case/2020-10-20/1603176154163.jpg');
INSERT INTO `shop_case_pic` VALUES ('196', '148', 'case/2020-10-20/1603173275450.jpg');
INSERT INTO `shop_case_pic` VALUES ('197', '148', 'case/2020-10-20/1603173275493.jpg');
INSERT INTO `shop_case_pic` VALUES ('198', '148', 'case/2020-10-20/1603173275536.jpg');
INSERT INTO `shop_case_pic` VALUES ('199', '148', 'case/2020-10-20/1603173275601.jpg');
INSERT INTO `shop_case_pic` VALUES ('200', '148', 'case/2020-10-20/1603173275642.jpg');

-- ----------------------------
-- Table structure for shop_case_type
-- ----------------------------
DROP TABLE IF EXISTS `shop_case_type`;
CREATE TABLE `shop_case_type` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `shop_id` int(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL COMMENT '商品类型',
  `is_show` int(5) DEFAULT '1' COMMENT '1使用0禁用默认值1',
  `sorting` int(50) DEFAULT '0' COMMENT '排序',
  `type_id` int(50) DEFAULT NULL COMMENT '分级',
  `ico_img` varchar(100) DEFAULT NULL COMMENT '图标',
  `color` varchar(200) DEFAULT '000000-666666' COMMENT '字体渐变色',
  `keyword` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '关键词',
  `pc_color` varchar(100) DEFAULT NULL,
  `phone_img` varchar(100) DEFAULT NULL COMMENT '手机分类图标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='商品咨询的类型表';

-- ----------------------------
-- Records of shop_case_type
-- ----------------------------
INSERT INTO `shop_case_type` VALUES ('1', '1', '家居', '1', '1', null, null, '000000-666666', null, null, null);
INSERT INTO `shop_case_type` VALUES ('2', '1', '简约', '1', '2', null, null, '000000-666666', null, null, null);
INSERT INTO `shop_case_type` VALUES ('3', '1', '窗花', '1', '0', null, null, '000000-666666', null, null, null);
INSERT INTO `shop_case_type` VALUES ('11', '7', '现代', '1', '0', null, null, '000000-666666', null, null, null);
INSERT INTO `shop_case_type` VALUES ('10', '1', '墙纸', '1', '0', null, null, '000000-666666', null, null, null);
INSERT INTO `shop_case_type` VALUES ('8', '159', '简欧', '1', '0', null, null, '000000-666666', null, null, null);
INSERT INTO `shop_case_type` VALUES ('12', '7', '简欧', '1', '0', null, null, '000000-666666', null, null, null);
INSERT INTO `shop_case_type` VALUES ('13', '8', '简欧', '1', '0', null, null, '000000-666666', null, null, null);
INSERT INTO `shop_case_type` VALUES ('14', '8', '现代', '1', '0', null, null, '000000-666666', null, null, null);
INSERT INTO `shop_case_type` VALUES ('15', '4', '现代', '1', '0', null, null, '000000-666666', null, null, null);
INSERT INTO `shop_case_type` VALUES ('16', '4', '新中式', '1', '0', null, null, '000000-666666', null, null, null);
INSERT INTO `shop_case_type` VALUES ('17', '7', '新中式', '1', '0', null, null, '000000-666666', null, null, null);
INSERT INTO `shop_case_type` VALUES ('18', '8', '新中式', '1', '0', null, null, '000000-666666', null, null, null);
INSERT INTO `shop_case_type` VALUES ('19', '4', '简欧', '1', '0', null, null, '000000-666666', null, null, null);
INSERT INTO `shop_case_type` VALUES ('20', '4', '北欧', '1', '0', null, null, '000000-666666', null, null, null);
INSERT INTO `shop_case_type` VALUES ('21', '4', '美式', '1', '0', null, null, '000000-666666', null, null, null);
INSERT INTO `shop_case_type` VALUES ('22', '4', '欧式', '1', '0', null, null, '000000-666666', null, null, null);
INSERT INTO `shop_case_type` VALUES ('23', '3', '小程序', '1', '0', null, null, '000000-666666', null, null, null);

-- ----------------------------
-- Table structure for shop_discount
-- ----------------------------
DROP TABLE IF EXISTS `shop_discount`;
CREATE TABLE `shop_discount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) DEFAULT NULL COMMENT '门店id',
  `shop_seller_id` int(11) DEFAULT NULL,
  `title` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '标题',
  `type` int(2) DEFAULT NULL COMMENT '类型，2生效中，3已过期，(1待发布，4已作废)',
  `discount_type` int(2) DEFAULT NULL COMMENT '券类型，1折扣券，2满减',
  `discount_level` double(10,2) DEFAULT NULL COMMENT '折扣',
  `use_level` double(10,2) DEFAULT NULL COMMENT '券金额',
  `full_reduction` int(11) DEFAULT NULL COMMENT '满减金额',
  `number` int(11) DEFAULT NULL COMMENT '发放数量',
  `limited_num` int(11) DEFAULT '0' COMMENT '每人限领数量',
  `is_more` int(2) DEFAULT NULL COMMENT '是否分享后多领1张',
  `is_used_num` int(11) DEFAULT NULL COMMENT '被使用数量',
  `is_collected_num` int(11) DEFAULT '0' COMMENT '被领取数量',
  `valid_type` int(2) DEFAULT NULL COMMENT '有效期类型，1指定日期，2有效天数',
  `start_time` datetime DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime DEFAULT NULL,
  `valid_day_num` int(11) DEFAULT NULL,
  `rule_intro` varchar(40) DEFAULT NULL COMMENT '规则介绍',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `id_del` int(2) DEFAULT '0' COMMENT '是否被删除，0否，1是',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='门店优惠券表';

-- ----------------------------
-- Records of shop_discount
-- ----------------------------
INSERT INTO `shop_discount` VALUES ('3', '1', null, '中秋优惠', '2', '2', '7.00', null, '0', '100', '1', '0', null, '0', '1', '2020-10-12 00:00:00', '2020-11-12 00:00:00', null, '哈哈', '2020-10-12 15:59:17', '0');
INSERT INTO `shop_discount` VALUES ('6', '7', null, '测试', '2', '1', null, '10.00', '100', '10', '1', '1', null, '0', '1', '2020-10-13 00:00:00', '2020-10-16 00:00:00', null, '测试', '2020-10-13 09:55:28', '0');
INSERT INTO `shop_discount` VALUES ('7', '7', null, '测试一下', '2', '2', '9.00', null, '100', '10', '1', '1', null, '0', '1', '2020-10-13 00:00:00', '2020-10-16 00:00:00', null, '测试', '2020-10-13 12:30:52', '0');
INSERT INTO `shop_discount` VALUES ('8', '1', null, '测试', '2', '1', null, '12.00', '0', '1', '1', '1', null, '0', '1', '2020-10-13 00:00:00', '2020-10-13 00:00:00', null, '我', '2020-10-13 15:28:54', null);
INSERT INTO `shop_discount` VALUES ('9', '8', null, '花好月圆代金券', '2', '1', null, '8.00', '0', '100', '1', '1', null, '0', '1', '2020-10-11 00:00:00', '2020-10-12 00:00:00', null, '无', '2020-10-14 18:38:30', '0');
INSERT INTO `shop_discount` VALUES ('10', '8', null, '吐血清仓大折扣', '2', '2', '6.00', null, '36', '55', '213', '1', null, '0', '2', null, '2020-10-20 00:00:00', null, '旅行', '2020-10-14 18:58:31', '0');
INSERT INTO `shop_discount` VALUES ('11', '7', null, '国庆', '2', '1', null, '100.00', '1000', '100', '2', '1', null, '0', '2', null, '2020-10-20 00:00:00', null, '一张', '2020-10-15 12:56:02', '0');
INSERT INTO `shop_discount` VALUES ('12', '1', null, '吃饭', '2', '2', '8.00', null, '800', '50', '5', '1', null, '0', '2', null, '2020-12-20 00:00:00', null, '测试', '2020-10-20 10:10:02', '0');

-- ----------------------------
-- Table structure for shop_discount_usage
-- ----------------------------
DROP TABLE IF EXISTS `shop_discount_usage`;
CREATE TABLE `shop_discount_usage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) DEFAULT NULL COMMENT '门店id',
  `discount_id` int(11) DEFAULT NULL COMMENT '优惠券编号',
  `user_id` int(11) DEFAULT NULL COMMENT '用户编号',
  `title` varchar(255) DEFAULT NULL COMMENT '优惠券标题	',
  `discount_type` double(10,0) DEFAULT NULL COMMENT '券类型，1折扣券，2满减	',
  `discount_level` double(10,0) DEFAULT NULL COMMENT '折扣',
  `use_level` double(10,0) DEFAULT NULL COMMENT '券金额	',
  `full_reduction` int(11) DEFAULT NULL COMMENT '满减金额',
  `is_collected_num` int(11) DEFAULT NULL COMMENT '领取数量',
  `is_used` int(11) DEFAULT '0' COMMENT '是否被使用,1是，0否',
  `start_time` datetime DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '结束时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `is_del` int(2) DEFAULT '0' COMMENT '是否删除，1是，0否',
  `only_id` varchar(20) DEFAULT NULL,
  `discountcode` varchar(255) DEFAULT NULL COMMENT '优惠券二维码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COMMENT='优惠券的使用情况表';

-- ----------------------------
-- Records of shop_discount_usage
-- ----------------------------
INSERT INTO `shop_discount_usage` VALUES ('3', '7', '6', '5', null, null, null, null, null, '1', '1', null, null, '2020-10-13 14:47:10', '0', null, null);
INSERT INTO `shop_discount_usage` VALUES ('5', '7', '6', '3', '测试', '1', null, '10', '100', null, '1', '2020-10-13 00:00:00', '2020-10-16 00:00:00', '2020-10-14 15:58:18', '0', '900819923', null);
INSERT INTO `shop_discount_usage` VALUES ('6', '7', '6', '3', '测试', '1', null, '10', '100', null, '1', '2020-10-13 00:00:00', '2020-10-16 00:00:00', '2020-10-14 15:58:53', '0', '190820993', null);
INSERT INTO `shop_discount_usage` VALUES ('7', '7', '7', '3', '测试一下', '2', '9', null, '100', null, '1', '2020-10-13 00:00:00', '2020-10-16 00:00:00', '2020-10-14 15:59:06', '0', '331410103', null);
INSERT INTO `shop_discount_usage` VALUES ('9', '7', '6', '3', '测试', '1', null, '10', '100', null, '0', '2020-10-13 00:00:00', '2020-10-16 00:00:00', '2020-10-15 08:04:19', '0', '510459613', null);
INSERT INTO `shop_discount_usage` VALUES ('10', '7', '6', '3', '测试', '1', null, '10', '100', null, '1', '2020-10-13 00:00:00', '2020-10-16 00:00:00', '2020-10-15 08:17:36', '0', '105411943', 'qrCode/2020-10-15/d4bef0952d01abe9d570931fca533f2f0a693430.png');
INSERT INTO `shop_discount_usage` VALUES ('11', '7', '7', '3', '测试一下', '2', '9', null, '100', null, '0', '2020-10-13 00:00:00', '2020-10-16 00:00:00', '2020-10-15 08:47:10', '0', '940744943', 'qrCode/2020-10-15/970fcb4d98963a2752a9707d6de03dd42d9cc709.png');
INSERT INTO `shop_discount_usage` VALUES ('12', '7', '7', '3', '测试一下', '2', '9', null, '100', null, '0', '2020-10-13 00:00:00', '2020-10-16 00:00:00', '2020-10-15 08:47:13', '0', '992013603', 'qrCode/2020-10-15/c721fcfe8ae565282a16d6a79348a790714e6534.png');
INSERT INTO `shop_discount_usage` VALUES ('13', '7', '7', '3', '测试一下', '2', '9', null, '100', null, '0', '2020-10-13 00:00:00', '2020-10-16 00:00:00', '2020-10-15 08:47:17', '0', '448698463', 'qrCode/2020-10-15/64a884e54f0a138457b6099a87caa36cff242da5.png');
INSERT INTO `shop_discount_usage` VALUES ('14', '7', '6', '3', '测试', '1', null, '10', '100', null, '0', '2020-10-13 00:00:00', '2020-10-16 00:00:00', '2020-10-15 08:47:17', '0', '877261363', 'qrCode/2020-10-15/e7c011241d7ee5c136d90fd282bdcf19555e6bbc.png');
INSERT INTO `shop_discount_usage` VALUES ('15', '7', '6', '3', '测试', '1', null, '10', '100', null, '0', '2020-10-13 00:00:00', '2020-10-16 00:00:00', '2020-10-15 08:47:18', '0', '849204963', 'qrCode/2020-10-15/499afe7b61f8c026967cd0329655ec13a7bb6fa7.png');
INSERT INTO `shop_discount_usage` VALUES ('16', '7', '7', '3', '测试一下', '2', '9', null, '100', null, '0', '2020-10-13 00:00:00', '2020-10-16 00:00:00', '2020-10-15 08:47:24', '0', '158632723', 'qrCode/2020-10-15/085cfb7757659ccaf15858941e309c58c4604a32.png');
INSERT INTO `shop_discount_usage` VALUES ('17', '7', '6', '3', '测试', '1', null, '10', '100', null, '0', '2020-10-13 00:00:00', '2020-10-16 00:00:00', '2020-10-15 11:23:32', '0', '591270103', 'qrCode/2020-10-15/4c99ef3505e8148d4e3908d449285582c41e221b.png');
INSERT INTO `shop_discount_usage` VALUES ('18', '7', '7', '17', '测试一下', '2', '9', null, '100', null, '1', '2020-10-13 00:00:00', '2020-10-16 00:00:00', '2020-10-15 11:26:34', '0', '1417136117', 'qrCode/2020-10-15/8abf1a4ba64d4189ff965aea646d071f2f329940.png');
INSERT INTO `shop_discount_usage` VALUES ('19', '7', '7', '17', '测试一下', '2', '9', null, '100', null, '0', '2020-10-13 00:00:00', '2020-10-16 00:00:00', '2020-10-15 11:26:45', '0', '1605984117', 'qrCode/2020-10-15/df58a8682ab788d9225af47c6fdf41b1db846b41.png');
INSERT INTO `shop_discount_usage` VALUES ('20', '7', '7', '17', '测试一下', '2', '9', null, '100', null, '0', '2020-10-13 00:00:00', '2020-10-16 00:00:00', '2020-10-15 11:26:46', '0', '8577446417', 'qrCode/2020-10-15/0f62dc2501f31cac7b82eb065591ed79564d385c.png');
INSERT INTO `shop_discount_usage` VALUES ('21', '7', '7', '3', '测试一下', '2', '9', null, '100', null, '0', '2020-10-13 00:00:00', '2020-10-16 00:00:00', '2020-10-15 11:53:32', '0', '282584863', 'qrCode/2020-10-15/59e9910c14bf51485108242964fcce7615b213e1.png');
INSERT INTO `shop_discount_usage` VALUES ('22', '7', '7', '3', '测试一下', '2', '9', null, '100', null, '0', '2020-10-13 00:00:00', '2020-10-16 00:00:00', '2020-10-16 09:29:27', '0', '166309623', 'qrCode/2020-10-16/4f77caa97bbed8b91069b20fde6269e3103564db.png');
INSERT INTO `shop_discount_usage` VALUES ('23', '7', '6', '3', '测试', '1', null, '10', '100', null, '0', '2020-10-13 00:00:00', '2020-10-16 00:00:00', '2020-10-16 11:03:26', '0', '992496233', 'qrCode/2020-10-16/aa82867b9fd4d68f390ff49d2ff88316dea8184f.png');
INSERT INTO `shop_discount_usage` VALUES ('24', '7', '6', '3', '测试', '1', null, '10', '100', null, '0', '2020-10-13 00:00:00', '2020-10-16 00:00:00', '2020-10-16 11:03:27', '0', '413885313', 'qrCode/2020-10-16/ca4835939fd02f45e668e14e29f8a7e953991f6b.png');
INSERT INTO `shop_discount_usage` VALUES ('25', '7', '6', '3', '测试', '1', null, '10', '100', null, '0', '2020-10-13 00:00:00', '2020-10-16 00:00:00', '2020-10-16 11:03:27', '0', '171427253', 'qrCode/2020-10-16/4fd30cae78a0c805e8acced5400e08bd6bfc899c.png');
INSERT INTO `shop_discount_usage` VALUES ('26', '7', '6', '3', '测试', '1', null, '10', '100', null, '0', '2020-10-13 00:00:00', '2020-10-16 00:00:00', '2020-10-16 11:03:27', '0', '633391403', 'qrCode/2020-10-16/46a5422157bdb9714065f1e50acc98ddc789ae4f.png');
INSERT INTO `shop_discount_usage` VALUES ('27', '7', '6', '3', '测试', '1', null, '10', '100', null, '0', '2020-10-13 00:00:00', '2020-10-16 00:00:00', '2020-10-16 11:03:28', '0', '785054633', 'qrCode/2020-10-16/c873bd21c8fbdb8c9e3921dc156199ce83e460f1.png');
INSERT INTO `shop_discount_usage` VALUES ('28', '7', '6', '3', '测试', '1', null, '10', '100', null, '0', '2020-10-13 00:00:00', '2020-10-16 00:00:00', '2020-10-16 11:03:40', '0', '764636463', 'qrCode/2020-10-16/94b0db1aa36763d0b067ca57bafe402f752439dd.png');
INSERT INTO `shop_discount_usage` VALUES ('29', '7', '6', '3', '测试', '1', null, '10', '100', null, '0', '2020-10-13 00:00:00', '2020-10-16 00:00:00', '2020-10-16 11:12:03', '0', '167381483', 'qrCode/2020-10-16/4c60e0deb666202e540f696f1d80c34409b5d025.png');
INSERT INTO `shop_discount_usage` VALUES ('30', '7', '6', '3', '测试', '1', null, '10', '100', null, '0', '2020-10-13 00:00:00', '2020-10-16 00:00:00', '2020-10-16 11:12:05', '0', '835769273', 'qrCode/2020-10-16/44eb668892103f4f38ca39f6f6bb011a5242a7b4.png');
INSERT INTO `shop_discount_usage` VALUES ('31', '7', '6', '3', '测试', '1', null, '10', '100', null, '0', '2020-10-13 00:00:00', '2020-10-16 00:00:00', '2020-10-16 11:12:05', '0', '585835093', 'qrCode/2020-10-16/004c9e1dbe0ee0e6c35f3c473b3660d86640d45e.png');
INSERT INTO `shop_discount_usage` VALUES ('32', '7', '7', '3', '测试一下', '2', '9', null, '100', null, '0', '2020-10-13 00:00:00', '2020-10-16 00:00:00', '2020-10-16 11:12:05', '0', '178552683', 'qrCode/2020-10-16/5878ff454f6830d16ec6d9ef7eb57731a20502c4.png');
INSERT INTO `shop_discount_usage` VALUES ('33', '7', '6', '3', '测试', '1', null, '10', '100', null, '0', '2020-10-13 00:00:00', '2020-10-16 00:00:00', '2020-10-16 11:12:05', '0', '858739003', 'qrCode/2020-10-16/a784b5048a66fa2cb594d885e230ec5ac691ad85.png');
INSERT INTO `shop_discount_usage` VALUES ('34', '7', '6', '3', '测试', '1', null, '10', '100', null, '0', '2020-10-13 00:00:00', '2020-10-16 00:00:00', '2020-10-16 11:12:17', '0', '343077543', 'qrCode/2020-10-16/dff9f640b02ea411d91fc2a8c09fc660a0db90e7.png');
INSERT INTO `shop_discount_usage` VALUES ('35', '1', '3', '3', '中秋优惠', '2', '7', null, '0', null, '1', '2020-10-12 00:00:00', '2020-11-12 00:00:00', '2020-10-20 11:18:08', '0', '517318133', 'qrCode/2020-10-20/4978482be152c55c4f6c8954001d360a4c7bff06.png');
INSERT INTO `shop_discount_usage` VALUES ('36', '1', '3', '3', '中秋优惠', '2', '7', null, '0', null, '0', '2020-10-12 00:00:00', '2020-11-12 00:00:00', '2020-10-22 13:40:40', '0', '566626603', 'qrCode/2020-10-22/04856036505f543668acc0aed8334bcc659cbaf2.png');
INSERT INTO `shop_discount_usage` VALUES ('37', '1', '3', '3', '中秋优惠', '2', '7', null, '0', null, '0', '2020-10-12 00:00:00', '2020-11-12 00:00:00', '2020-10-22 13:45:48', '0', '501502433', 'qrCode/2020-10-22/926711a88508284f95d51cdeac3f8656fd4a17dd.png');
INSERT INTO `shop_discount_usage` VALUES ('38', '1', '3', '3', '中秋优惠', '2', '7', null, '0', null, '0', '2020-10-12 00:00:00', '2020-11-12 00:00:00', '2020-10-22 13:46:01', '0', '940612583', 'qrCode/2020-10-22/ad8bdb8efea51fa64b33c6c1930d943d758491ce.png');
INSERT INTO `shop_discount_usage` VALUES ('39', '1', '3', '3', '中秋优惠', '2', '7', null, '0', null, '0', '2020-10-12 00:00:00', '2020-11-12 00:00:00', '2020-10-22 14:01:44', '0', '563071073', 'qrCode/2020-10-22/2efff2dd48f1172e29d99b712c4378387f597f14.png');

-- ----------------------------
-- Table structure for shop_good
-- ----------------------------
DROP TABLE IF EXISTS `shop_good`;
CREATE TABLE `shop_good` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `good_type_id` int(50) DEFAULT NULL COMMENT '商品类型ID',
  `good_name` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `good_keyword` varchar(100) DEFAULT NULL COMMENT '商品优化用的关键词',
  `content` text COMMENT '商品详情',
  `good_price` decimal(65,2) DEFAULT NULL COMMENT '商品价格【厂家指导价】',
  `look_num` int(50) DEFAULT '0' COMMENT '查看次数',
  `up_num` int(50) DEFAULT '0' COMMENT '点赞次数',
  `good_number` int(255) DEFAULT '100' COMMENT '商品库存',
  `pay_type` int(5) DEFAULT '1' COMMENT '1支付0兑换2两种方式都可以默认值1',
  `good_img` varchar(300) DEFAULT NULL COMMENT '封面图',
  `barcode` varchar(100) DEFAULT NULL COMMENT '商品条码',
  `create_time` datetime DEFAULT NULL COMMENT '添加时间',
  `up_time` varchar(100) DEFAULT NULL COMMENT '上架时间',
  `down_time` varchar(100) DEFAULT NULL COMMENT '下架时间',
  `status` int(10) DEFAULT '1' COMMENT '1上架0下架默认值1',
  `sort` int(10) DEFAULT '0' COMMENT '排序',
  `goods_cat_id` int(50) DEFAULT NULL COMMENT '商品类型',
  `buy_num` int(200) DEFAULT '0' COMMENT '购买人数',
  `seller_id` varchar(100) DEFAULT NULL COMMENT '商家ID',
  `type` int(10) DEFAULT '0' COMMENT '0普通1热卖2新品3清仓默认值0',
  `is_hot` int(10) DEFAULT '0' COMMENT '1是热销默认值0',
  `is_clear` int(10) DEFAULT '0' COMMENT '1表示清仓默认值0',
  `is_new` int(10) DEFAULT '0' COMMENT '1表示新品默认值0',
  `market_price` decimal(56,2) DEFAULT '0.00' COMMENT '商品价格【门店售价】',
  `window_intro` int(10) DEFAULT '2' COMMENT '橱窗推荐 1为橱窗 2为普通默认值2',
  `customer_server` varchar(255) DEFAULT NULL COMMENT '售后服务',
  `updated_at` varchar(100) DEFAULT NULL COMMENT '修改时间',
  `is_tj` int(10) DEFAULT '0' COMMENT '1推荐默认值0',
  `shop_type_id` int(10) DEFAULT NULL,
  `seller_number` int(100) DEFAULT '0' COMMENT '销量',
  `is_wholesale` int(10) DEFAULT '2' COMMENT '是否批发1是2否默认值2',
  `is_ex` int(10) DEFAULT '1' COMMENT '是否包邮1是2否默认值1',
  `is_index` int(10) DEFAULT '2' COMMENT '是否推荐到首页1是2否',
  `is_time_buy` int(10) DEFAULT '2' COMMENT '此商品是否参加限时抢购1是2否',
  `is_cold` varchar(10) DEFAULT '2' COMMENT '是否为冷藏1是2否',
  `is_exchange` int(10) DEFAULT '2' COMMENT '1兑换2否',
  `is_process` varchar(1) DEFAULT '2' COMMENT '图片1要处理2否',
  `is_process_tittle` varchar(1) DEFAULT '2' COMMENT '产品名称1要处理2否',
  `is_process_type` varchar(1) DEFAULT '2' COMMENT '产品分类1要处理2否',
  `is_limit` int(10) unsigned DEFAULT '0' COMMENT '是否限购1-是0否',
  `limit_number` int(10) unsigned DEFAULT '0' COMMENT '限购件数',
  `shop_id` int(50) DEFAULT NULL COMMENT '门店编号',
  `is_show` int(5) DEFAULT '0' COMMENT '是否展示，1展示，0否',
  `oa_good_id` int(11) DEFAULT NULL COMMENT '原商品的编号',
  `group_price` decimal(10,2) unsigned DEFAULT '0.00' COMMENT '商品价格【团购价】',
  `group_people_num` int(10) unsigned DEFAULT '2' COMMENT '拼团人数',
  `group_start_time` datetime DEFAULT NULL COMMENT '拼团开始时间',
  `group_end_time` datetime DEFAULT NULL COMMENT '拼团结束时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=107181 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='门店商品表';

-- ----------------------------
-- Records of shop_good
-- ----------------------------
INSERT INTO `shop_good` VALUES ('107159', '128', '夏若含茶', null, '<p>1231</p>', '200.00', '0', '0', '100', '1', 'good/2020-08-20/1597916133229.png', null, '2020-10-16 17:12:15', null, null, '1', '0', null, '0', null, '0', '0', '0', '0', '0.00', '2', null, null, '0', null, '0', '2', '1', '2', '2', '2', '2', '2', '2', '2', '0', '0', '1', '1', '107061', '0.00', '2', null, null);
INSERT INTO `shop_good` VALUES ('107179', '142', '繁花梦', null, '<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601283709385.jpg\" style=\"height:1468px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601284059107.jpg\" style=\"height:1135px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601284072039.jpg\" style=\"height:1381px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601284080921.jpg\" style=\"height:815px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601284089625.jpg\" style=\"height:840px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601284097616.jpg\" style=\"height:750px; width:987px\" /></p>\r\n\r\n<p>创作灵感：设计灵感来源于珍珠&mdash;&mdash;欧卡娅，将当代人的时代趣味与生活需求，混合成现代低奢、自然人文的个性设计，再把荡漾缥缈的肌理与悠闲的生活格调完美契合，便可传达出馨谐致祥的人和美、暗香疏影的自然美。<br />\r\n作品寓意：微风轻柔掠过，吐纳着微醺的韵律，与空间产生时间轨迹，静寂优雅，为你讲述关于自然的故事。<br />\r\n适用风格：适用现代简约风格</p>', '3490.00', '0', '5', '100', '1', 'good/2020-09-01/1598950710753.jpg', null, '2020-10-21 13:49:55', null, null, '1', '0', null, '0', null, '0', '0', '0', '0', '0.00', '2', null, null, '0', null, '0', '2', '1', '2', '2', '2', '2', '2', '2', '2', '0', '0', '4', '1', '107083', '0.00', '2', null, null);
INSERT INTO `shop_good` VALUES ('107158', '137', '自由之城', null, '<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601283126427.jpg\" style=\"height:1470px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601283134432.jpg\" style=\"height:1111px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601283141095.jpg\" style=\"height:1391px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601283148347.jpg\" style=\"height:837px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601283173500.jpg\" style=\"height:750px; width:987px\" /></p>\r\n\r\n<p>创作灵感：以简单的线条为灵感的设计元素，不过分强调繁复的雕刻和细节，一丝一缕，于极简处织就深意，花型独特现代，色调典雅传统。<br />\r\n作品寓意：浪漫的波纹荡漾，如行云似流水，美妙异常，有让人沉迷其间的神秘魅力，达到唯美而含蓄的居住意境。<br />\r\n适用风格：适用现代简约风格</p>', '3490.00', '0', '0', '100', '1', 'good/2020-09-28/1601286517290.jpg', null, '2020-10-16 11:38:20', null, null, '1', '0', null, '0', null, '0', '0', '0', '0', '0.00', '2', null, null, '0', null, '0', '2', '1', '2', '2', '2', '2', '2', '2', '2', '0', '0', '8', '0', '107085', '0.00', '2', null, null);
INSERT INTO `shop_good` VALUES ('107175', '139', '黄金海岸', null, '<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601286152869.jpg\" style=\"height:1476px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601286159411.jpg\" style=\"height:1106px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601286165526.jpg\" style=\"height:1398px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601286171404.jpg\" style=\"height:823px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601286178013.jpg\" style=\"height:830px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601286183818.jpg\" style=\"height:756px; width:987px\" /></p>\r\n\r\n<p>创作灵感：以线条与色彩相结合的现代美学，讲究和谐、宜居，具有意境之美的事物，亦如黄金海岸，有明媚的阳光、连绵的白色沙滩、湛蓝透明的海水、浪漫的棕榈林，更加耐人寻味，韵味悠长。<br />\r\n作品寓意：线条的变化与造型的形式美紧密结合，使画面既有韵味又有独特的表现形式，具有较强的抽象性与概括性。<br />\r\n适用风格：适用现代简约风格</p>', '3190.00', '0', '3', '100', '1', 'good/2020-09-28/1601287302223.jpg', null, '2020-10-21 13:49:55', null, null, '1', '0', null, '0', null, '0', '0', '0', '0', '0.00', '2', null, null, '0', null, '0', '2', '1', '2', '2', '2', '2', '2', '2', '2', '0', '0', '4', '1', '107087', '0.00', '2', null, null);
INSERT INTO `shop_good` VALUES ('107143', '127', '小城小爱', null, '<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-08-20/2020-08-20/1597916129203.jpg\" style=\"height:450px; width:675px\" /></p>', '200.00', '0', '0', '100', '1', 'good/2020-08-20/1597916133229.png', null, '2020-10-14 14:26:29', null, null, '1', '0', null, '0', null, '0', '0', '0', '0', '0.00', '2', null, null, '0', null, '0', '2', '1', '2', '2', '2', '2', '2', '2', '2', '0', '0', '1', '0', '107058', '0.00', '2', null, null);
INSERT INTO `shop_good` VALUES ('107164', '135', '柏拉图', null, '<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601286079782.jpg\" style=\"height:1466px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601286090753.jpg\" style=\"height:1118px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601286096722.jpg\" style=\"height:1381px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601286103589.jpg\" style=\"height:839px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601286112359.jpg\" style=\"height:835px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601286119180.jpg\" style=\"height:750px; width:987px\" /></p>\r\n\r\n<p>创作灵感：运用几何图形和肌理组成理想的视觉效果，它们各司其职，尽情释放，于抽象姿态存在，亦如柏拉图一样重视的是精神的交流，图案为画面辅助整体氛围，工艺上以刺绣本身的凹凸感与特殊的肌理效果，能使产品更具立体感。<br />\r\n作品寓意：&quot;三维&quot;立体抽象，不断的变化与造型的形式美紧密结合，使画面既有韵味又有独特的表现形式，给你不一样的视觉效果。<br />\r\n适用风格：适用现代简约风格</p>', '3490.00', '0', '0', '100', '1', 'good/2020-09-28/1601286870502.jpg', null, '2020-10-16 17:17:18', null, null, '1', '0', null, '0', null, '0', '0', '0', '0', '0.00', '2', null, null, '0', null, '0', '2', '1', '2', '2', '2', '2', '2', '2', '2', '0', '0', '7', '1', '107084', '0.00', '2', null, null);
INSERT INTO `shop_good` VALUES ('107140', '136', '盗梦空间', null, '<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601286250218.jpg\" style=\"height:1491px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601286258041.jpg\" style=\"height:1130px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601286264151.jpg\" style=\"height:1339px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601286270331.jpg\" style=\"height:843px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601286276793.jpg\" style=\"height:827px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601286282164.jpg\" style=\"height:759px; width:987px\" /></p>\r\n\r\n<p>创作灵感：人们总是在期盼着阳光，就像是一直在等待着希望。如果说清晨的第一束阳光是希望的象征，那么濒临黑暗之际的那束暮光，则是人们最后的希冀与等待，总是能带给人无限的感动与温暖。 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />\r\n作品寓意：暮光倾城之际，如果你愿赠我一束阳光，便是温暖了余生，也许最美的不是夕阳，而是黑夜将近时，那份对抗命运的最后一份倔强与坚持。<br />\r\n适用风格：适用现代简约风格</p>', '3190.00', '0', '0', '100', '1', 'good/2020-09-28/1601287320462.jpg', null, '2020-10-13 15:05:43', null, null, '1', '0', null, '0', null, '0', '0', '0', '0', '0.00', '2', null, null, '0', null, '0', '2', '1', '2', '2', '2', '2', '2', '2', '2', '0', '0', '7', '1', '107089', '0.00', '2', null, null);
INSERT INTO `shop_good` VALUES ('107177', '143', '自由之城', null, '<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601283126427.jpg\" style=\"height:1470px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601283134432.jpg\" style=\"height:1111px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601283141095.jpg\" style=\"height:1391px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601283148347.jpg\" style=\"height:837px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601283173500.jpg\" style=\"height:750px; width:987px\" /></p>\r\n\r\n<p>创作灵感：以简单的线条为灵感的设计元素，不过分强调繁复的雕刻和细节，一丝一缕，于极简处织就深意，花型独特现代，色调典雅传统。<br />\r\n作品寓意：浪漫的波纹荡漾，如行云似流水，美妙异常，有让人沉迷其间的神秘魅力，达到唯美而含蓄的居住意境。<br />\r\n适用风格：适用现代简约风格</p>', '3490.00', '0', '0', '100', '1', 'good/2020-09-28/1601286517290.jpg', null, '2020-10-21 13:49:55', null, null, '1', '0', null, '0', null, '0', '0', '0', '0', '0.00', '2', null, null, '0', null, '0', '2', '1', '2', '2', '2', '2', '2', '2', '2', '0', '0', '4', '1', '107085', '0.00', '2', null, null);
INSERT INTO `shop_good` VALUES ('107178', '144', '柏拉图', null, '<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601286079782.jpg\" style=\"height:1466px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601286090753.jpg\" style=\"height:1118px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601286096722.jpg\" style=\"height:1381px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601286103589.jpg\" style=\"height:839px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601286112359.jpg\" style=\"height:835px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601286119180.jpg\" style=\"height:750px; width:987px\" /></p>\r\n\r\n<p>创作灵感：运用几何图形和肌理组成理想的视觉效果，它们各司其职，尽情释放，于抽象姿态存在，亦如柏拉图一样重视的是精神的交流，图案为画面辅助整体氛围，工艺上以刺绣本身的凹凸感与特殊的肌理效果，能使产品更具立体感。<br />\r\n作品寓意：&quot;三维&quot;立体抽象，不断的变化与造型的形式美紧密结合，使画面既有韵味又有独特的表现形式，给你不一样的视觉效果。<br />\r\n适用风格：适用现代简约风格</p>', '3490.00', '0', '5', '100', '1', 'good/2020-09-28/1601286870502.jpg', null, '2020-10-21 13:49:55', null, null, '1', '0', null, '0', null, '0', '0', '0', '0', '0.00', '2', null, null, '0', null, '0', '2', '1', '2', '2', '2', '2', '2', '2', '2', '0', '0', '4', '1', '107084', '0.00', '2', null, null);
INSERT INTO `shop_good` VALUES ('107176', '140', '欧卡娅', null, '<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601281454537.jpg\" style=\"height:1473px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601281479918.jpg\" style=\"height:1148px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601281496037.jpg\" style=\"height:1372px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601281508538.jpg\" style=\"height:812px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601281518641.jpg\" style=\"height:840px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601281526062.jpg\" style=\"height:744px; width:987px\" /></p>\r\n\r\n<p>设计灵感来源于珍珠&mdash;&mdash;欧卡娅，将当代人的时代趣味与生活需求，混合成现代低奢、自然人文的个性设计，再把荡漾缥缈的肌理与悠闲的生活格调完美契合，便可传达出馨谐致祥的人和美、暗香疏影的自然美。<br />\r\n作品寓意：微风轻柔掠过，吐纳着微醺的韵律，与空间产生时间轨迹，静寂优雅，为你讲述关于自然的故事。<br />\r\n适用风格：适用现代简约风格</p>', '3490.00', '0', '0', '100', '1', 'good/2020-09-28/1601287293064.jpg', null, '2020-10-21 13:49:55', null, null, '1', '0', null, '0', null, '0', '0', '0', '0', '0.00', '2', null, null, '0', null, '0', '2', '1', '2', '2', '2', '2', '2', '2', '2', '0', '0', '4', '1', '107086', '0.00', '2', null, null);
INSERT INTO `shop_good` VALUES ('107173', '143', '盗梦空间', null, '<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601286250218.jpg\" style=\"height:1491px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601286258041.jpg\" style=\"height:1130px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601286264151.jpg\" style=\"height:1339px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601286270331.jpg\" style=\"height:843px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601286276793.jpg\" style=\"height:827px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601286282164.jpg\" style=\"height:759px; width:987px\" /></p>\r\n\r\n<p>创作灵感：人们总是在期盼着阳光，就像是一直在等待着希望。如果说清晨的第一束阳光是希望的象征，那么濒临黑暗之际的那束暮光，则是人们最后的希冀与等待，总是能带给人无限的感动与温暖。 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />\r\n作品寓意：暮光倾城之际，如果你愿赠我一束阳光，便是温暖了余生，也许最美的不是夕阳，而是黑夜将近时，那份对抗命运的最后一份倔强与坚持。<br />\r\n适用风格：适用现代简约风格</p>', '3190.00', '0', '0', '100', '1', 'good/2020-09-28/1601287320462.jpg', null, '2020-10-21 13:49:55', null, null, '1', '0', null, '0', null, '0', '0', '0', '0', '0.00', '2', null, null, '0', null, '0', '2', '1', '2', '2', '2', '2', '2', '2', '2', '0', '0', '4', '1', '107089', '0.00', '2', null, null);
INSERT INTO `shop_good` VALUES ('107174', '142', '草间弥生', null, '<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601286204084.jpg\" style=\"height:1491px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601286209891.jpg\" style=\"height:1107px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601286216857.jpg\" style=\"height:1366px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601286223194.jpg\" style=\"height:833px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601286228828.jpg\" style=\"height:832px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601286234346.jpg\" style=\"height:760px; width:987px\" /></p>\r\n\r\n<p>创作灵感：草间弥生&mdash;&mdash;波尔卡圆点女王，饱满的&ldquo;圆圈&rdquo;元素，是最火、最好看也是最实用的。它既可以运用到家具本身中，还可以装饰于墙面、地面、桌面等等，可谓是非常广泛了。亮丝点缀，若隐若现，没有多余奢华的装饰，打造洁净清爽的视觉效果。<br />\r\n作品寓意：圈圈的空间可以给人流动和曲线的美感，人们也都渴望这种来自内心的圆满感受，给人眼带来惊喜的同时让人心获得舒适感受。<br />\r\n适用风格：适用现代简约风格</p>', '4590.00', '0', '1', '100', '1', 'good/2020-09-28/1601287311594.jpg', null, '2020-10-21 13:49:55', null, null, '1', '0', null, '0', null, '0', '0', '0', '0', '0.00', '2', null, null, '0', null, '0', '2', '1', '2', '2', '2', '2', '2', '2', '2', '0', '0', '4', '1', '107088', '0.00', '2', null, null);
INSERT INTO `shop_good` VALUES ('107165', '134', '繁花梦', null, '<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601283709385.jpg\" style=\"height:1468px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601284059107.jpg\" style=\"height:1135px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601284072039.jpg\" style=\"height:1381px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601284080921.jpg\" style=\"height:815px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601284089625.jpg\" style=\"height:840px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601284097616.jpg\" style=\"height:750px; width:987px\" /></p>\r\n\r\n<p>创作灵感：设计灵感来源于珍珠&mdash;&mdash;欧卡娅，将当代人的时代趣味与生活需求，混合成现代低奢、自然人文的个性设计，再把荡漾缥缈的肌理与悠闲的生活格调完美契合，便可传达出馨谐致祥的人和美、暗香疏影的自然美。<br />\r\n作品寓意：微风轻柔掠过，吐纳着微醺的韵律，与空间产生时间轨迹，静寂优雅，为你讲述关于自然的故事。<br />\r\n适用风格：适用现代简约风格</p>', '3490.00', '0', '1', '100', '1', 'good/2020-09-01/1598950710753.jpg', null, '2020-10-16 17:17:18', null, null, '1', '0', null, '0', null, '0', '0', '0', '0', '0.00', '2', null, null, '0', null, '0', '2', '1', '2', '2', '2', '2', '2', '2', '2', '0', '0', '7', '1', '107083', '0.00', '2', null, null);
INSERT INTO `shop_good` VALUES ('107133', '129', '花期如梦', null, null, '200.00', '0', '0', '100', '1', 'good/2020-08-20/1597916133229.png', null, '2020-09-29 10:08:15', null, null, '1', '0', null, '0', null, '0', '0', '0', '0', '0.00', '2', null, null, '0', null, '0', '2', '1', '2', '2', '2', '2', '2', '2', '2', '0', '0', '1', '0', '107060', '0.00', '2', null, null);
INSERT INTO `shop_good` VALUES ('107180', '145', '线下门店获客--宅宅美', null, null, '500.00', '0', '0', '100', '1', 'good/2020-10-21/1603253271720.jpg', null, '2020-10-21 15:06:26', null, null, '1', '0', null, '0', null, '0', '0', '0', '0', '0.00', '2', null, null, '0', null, '0', '2', '1', '2', '2', '2', '2', '2', '2', '2', '0', '0', '3', '0', '107104', '0.00', '2', null, null);
INSERT INTO `shop_good` VALUES ('107163', '135', '自由之城', null, '<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601283126427.jpg\" style=\"height:1470px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601283134432.jpg\" style=\"height:1111px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601283141095.jpg\" style=\"height:1391px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601283148347.jpg\" style=\"height:837px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601283173500.jpg\" style=\"height:750px; width:987px\" /></p>\r\n\r\n<p>创作灵感：以简单的线条为灵感的设计元素，不过分强调繁复的雕刻和细节，一丝一缕，于极简处织就深意，花型独特现代，色调典雅传统。<br />\r\n作品寓意：浪漫的波纹荡漾，如行云似流水，美妙异常，有让人沉迷其间的神秘魅力，达到唯美而含蓄的居住意境。<br />\r\n适用风格：适用现代简约风格</p>', '3490.00', '0', '0', '100', '1', 'good/2020-09-28/1601286517290.jpg', null, '2020-10-16 17:17:18', null, null, '1', '0', null, '0', null, '0', '0', '0', '0', '0.00', '2', null, null, '0', null, '0', '2', '1', '2', '2', '2', '2', '2', '2', '2', '0', '0', '7', '1', '107085', '0.00', '2', null, null);
INSERT INTO `shop_good` VALUES ('107160', '136', '草间弥生', null, '<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601286204084.jpg\" style=\"height:1491px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601286209891.jpg\" style=\"height:1107px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601286216857.jpg\" style=\"height:1366px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601286223194.jpg\" style=\"height:833px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601286228828.jpg\" style=\"height:832px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601286234346.jpg\" style=\"height:760px; width:987px\" /></p>\r\n\r\n<p>创作灵感：草间弥生&mdash;&mdash;波尔卡圆点女王，饱满的&ldquo;圆圈&rdquo;元素，是最火、最好看也是最实用的。它既可以运用到家具本身中，还可以装饰于墙面、地面、桌面等等，可谓是非常广泛了。亮丝点缀，若隐若现，没有多余奢华的装饰，打造洁净清爽的视觉效果。<br />\r\n作品寓意：圈圈的空间可以给人流动和曲线的美感，人们也都渴望这种来自内心的圆满感受，给人眼带来惊喜的同时让人心获得舒适感受。<br />\r\n适用风格：适用现代简约风格</p>', '4590.00', '0', '0', '100', '1', 'good/2020-09-28/1601287311594.jpg', null, '2020-10-16 17:17:18', null, null, '1', '0', null, '0', null, '0', '0', '0', '0', '0.00', '2', null, null, '0', null, '0', '2', '1', '2', '2', '2', '2', '2', '2', '2', '0', '0', '7', '1', '107088', '0.00', '2', null, null);
INSERT INTO `shop_good` VALUES ('107161', '135', '黄金海岸', null, '<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601286152869.jpg\" style=\"height:1476px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601286159411.jpg\" style=\"height:1106px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601286165526.jpg\" style=\"height:1398px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601286171404.jpg\" style=\"height:823px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601286178013.jpg\" style=\"height:830px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601286183818.jpg\" style=\"height:756px; width:987px\" /></p>\r\n\r\n<p>创作灵感：以线条与色彩相结合的现代美学，讲究和谐、宜居，具有意境之美的事物，亦如黄金海岸，有明媚的阳光、连绵的白色沙滩、湛蓝透明的海水、浪漫的棕榈林，更加耐人寻味，韵味悠长。<br />\r\n作品寓意：线条的变化与造型的形式美紧密结合，使画面既有韵味又有独特的表现形式，具有较强的抽象性与概括性。<br />\r\n适用风格：适用现代简约风格</p>', '3190.00', '0', '0', '100', '1', 'good/2020-09-28/1601287302223.jpg', null, '2020-10-16 17:17:18', null, null, '1', '0', null, '0', null, '0', '0', '0', '0', '0.00', '2', null, null, '0', null, '0', '2', '1', '2', '2', '2', '2', '2', '2', '2', '0', '0', '7', '1', '107087', '0.00', '2', null, null);
INSERT INTO `shop_good` VALUES ('107162', '134', '欧卡娅', null, '<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601281454537.jpg\" style=\"height:1473px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601281479918.jpg\" style=\"height:1148px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601281496037.jpg\" style=\"height:1372px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601281508538.jpg\" style=\"height:812px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601281518641.jpg\" style=\"height:840px; width:987px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//good/2020-09-28/2020-09-28/1601281526062.jpg\" style=\"height:744px; width:987px\" /></p>\r\n\r\n<p>设计灵感来源于珍珠&mdash;&mdash;欧卡娅，将当代人的时代趣味与生活需求，混合成现代低奢、自然人文的个性设计，再把荡漾缥缈的肌理与悠闲的生活格调完美契合，便可传达出馨谐致祥的人和美、暗香疏影的自然美。<br />\r\n作品寓意：微风轻柔掠过，吐纳着微醺的韵律，与空间产生时间轨迹，静寂优雅，为你讲述关于自然的故事。<br />\r\n适用风格：适用现代简约风格</p>', '3490.00', '0', '0', '100', '1', 'good/2020-09-28/1601287293064.jpg', null, '2020-10-16 17:17:18', null, null, '1', '0', null, '0', null, '0', '0', '0', '0', '0.00', '2', null, null, '0', null, '0', '2', '1', '2', '2', '2', '2', '2', '2', '2', '0', '0', '7', '1', '107086', '0.00', '2', null, null);

-- ----------------------------
-- Table structure for shop_good_pic
-- ----------------------------
DROP TABLE IF EXISTS `shop_good_pic`;
CREATE TABLE `shop_good_pic` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `good_id` int(50) DEFAULT NULL COMMENT '商品ID',
  `img` varchar(200) DEFAULT NULL COMMENT '商品相册图片',
  `sorting` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of shop_good_pic
-- ----------------------------
INSERT INTO `shop_good_pic` VALUES ('4', '107158', 'good/2020-10-10/1602326481102.png', null);
INSERT INTO `shop_good_pic` VALUES ('5', '107158', 'good/2020-10-16/1602812677887.png', null);
INSERT INTO `shop_good_pic` VALUES ('6', '107158', 'good/2020-10-16/1602816797422.png', null);
INSERT INTO `shop_good_pic` VALUES ('7', '107160', 'good/2020-10-16/1602831631134.jpg', null);
INSERT INTO `shop_good_pic` VALUES ('8', '107160', 'good/2020-10-16/1602831631175.jpg', null);
INSERT INTO `shop_good_pic` VALUES ('9', '107160', 'good/2020-10-16/1602831631221.jpg', null);
INSERT INTO `shop_good_pic` VALUES ('10', '107160', 'good/2020-10-16/1602831631259.jpg', null);
INSERT INTO `shop_good_pic` VALUES ('11', '107160', 'good/2020-10-16/1602831631331.jpg', null);
INSERT INTO `shop_good_pic` VALUES ('12', '107161', 'good/2020-10-16/1602831697745.jpg', null);
INSERT INTO `shop_good_pic` VALUES ('13', '107161', 'good/2020-10-16/1602831697785.jpg', null);
INSERT INTO `shop_good_pic` VALUES ('14', '107161', 'good/2020-10-16/1602831697826.jpg', null);
INSERT INTO `shop_good_pic` VALUES ('15', '107161', 'good/2020-10-16/1602831697873.jpg', null);
INSERT INTO `shop_good_pic` VALUES ('16', '107161', 'good/2020-10-16/1602831697914.jpg', null);
INSERT INTO `shop_good_pic` VALUES ('17', '107162', 'good/2020-10-16/1602831771092.jpg', null);
INSERT INTO `shop_good_pic` VALUES ('18', '107162', 'good/2020-10-16/1602831771133.jpg', null);
INSERT INTO `shop_good_pic` VALUES ('19', '107162', 'good/2020-10-16/1602831771173.jpg', null);
INSERT INTO `shop_good_pic` VALUES ('20', '107162', 'good/2020-10-16/1602831771209.jpg', null);
INSERT INTO `shop_good_pic` VALUES ('21', '107162', 'good/2020-10-16/1602831771251.jpg', null);
INSERT INTO `shop_good_pic` VALUES ('22', '107163', 'good/2020-10-16/1602831868691.jpg', null);
INSERT INTO `shop_good_pic` VALUES ('23', '107163', 'good/2020-10-16/1602831868725.jpg', null);
INSERT INTO `shop_good_pic` VALUES ('24', '107163', 'good/2020-10-16/1602831868762.jpg', null);
INSERT INTO `shop_good_pic` VALUES ('25', '107163', 'good/2020-10-16/1602831868826.jpg', null);
INSERT INTO `shop_good_pic` VALUES ('26', '107163', 'good/2020-10-16/1602831868857.jpg', null);
INSERT INTO `shop_good_pic` VALUES ('27', '107164', 'good/2020-10-16/1602831939467.jpg', null);
INSERT INTO `shop_good_pic` VALUES ('28', '107164', 'good/2020-10-16/1602831939509.jpg', null);
INSERT INTO `shop_good_pic` VALUES ('29', '107164', 'good/2020-10-16/1602831939552.jpg', null);
INSERT INTO `shop_good_pic` VALUES ('30', '107164', 'good/2020-10-16/1602831939587.jpg', null);
INSERT INTO `shop_good_pic` VALUES ('31', '107164', 'good/2020-10-16/1602831939627.jpg', null);
INSERT INTO `shop_good_pic` VALUES ('32', '107165', 'good/2020-10-16/1602832001225.jpg', null);
INSERT INTO `shop_good_pic` VALUES ('33', '107165', 'good/2020-10-16/1602832001295.jpg', null);
INSERT INTO `shop_good_pic` VALUES ('34', '107165', 'good/2020-10-16/1602832001333.jpg', null);
INSERT INTO `shop_good_pic` VALUES ('35', '107165', 'good/2020-10-16/1602832001376.jpg', null);
INSERT INTO `shop_good_pic` VALUES ('36', '107165', 'good/2020-10-16/1602832001414.jpg', null);
INSERT INTO `shop_good_pic` VALUES ('71', '107173', 'good/2020-10-16/1602831554832.jpg', null);
INSERT INTO `shop_good_pic` VALUES ('72', '107173', 'good/2020-10-16/1602831554889.jpg', null);
INSERT INTO `shop_good_pic` VALUES ('73', '107173', 'good/2020-10-16/1602831554940.jpg', null);
INSERT INTO `shop_good_pic` VALUES ('74', '107173', 'good/2020-10-16/1602831554976.jpg', null);
INSERT INTO `shop_good_pic` VALUES ('75', '107174', 'good/2020-10-16/1602831631134.jpg', null);
INSERT INTO `shop_good_pic` VALUES ('76', '107174', 'good/2020-10-16/1602831631175.jpg', null);
INSERT INTO `shop_good_pic` VALUES ('77', '107174', 'good/2020-10-16/1602831631221.jpg', null);
INSERT INTO `shop_good_pic` VALUES ('78', '107174', 'good/2020-10-16/1602831631259.jpg', null);
INSERT INTO `shop_good_pic` VALUES ('79', '107174', 'good/2020-10-16/1602831631331.jpg', null);
INSERT INTO `shop_good_pic` VALUES ('80', '107175', 'good/2020-10-16/1602831697745.jpg', null);
INSERT INTO `shop_good_pic` VALUES ('81', '107175', 'good/2020-10-16/1602831697785.jpg', null);
INSERT INTO `shop_good_pic` VALUES ('82', '107175', 'good/2020-10-16/1602831697826.jpg', null);
INSERT INTO `shop_good_pic` VALUES ('83', '107175', 'good/2020-10-16/1602831697873.jpg', null);
INSERT INTO `shop_good_pic` VALUES ('84', '107175', 'good/2020-10-16/1602831697914.jpg', null);
INSERT INTO `shop_good_pic` VALUES ('85', '107176', 'good/2020-10-16/1602831771092.jpg', null);
INSERT INTO `shop_good_pic` VALUES ('86', '107176', 'good/2020-10-16/1602831771133.jpg', null);
INSERT INTO `shop_good_pic` VALUES ('87', '107176', 'good/2020-10-16/1602831771173.jpg', null);
INSERT INTO `shop_good_pic` VALUES ('88', '107176', 'good/2020-10-16/1602831771209.jpg', null);
INSERT INTO `shop_good_pic` VALUES ('89', '107176', 'good/2020-10-16/1602831771251.jpg', null);
INSERT INTO `shop_good_pic` VALUES ('90', '107177', 'good/2020-10-16/1602831868691.jpg', null);
INSERT INTO `shop_good_pic` VALUES ('91', '107177', 'good/2020-10-16/1602831868725.jpg', null);
INSERT INTO `shop_good_pic` VALUES ('92', '107177', 'good/2020-10-16/1602831868762.jpg', null);
INSERT INTO `shop_good_pic` VALUES ('93', '107177', 'good/2020-10-16/1602831868826.jpg', null);
INSERT INTO `shop_good_pic` VALUES ('94', '107177', 'good/2020-10-16/1602831868857.jpg', null);
INSERT INTO `shop_good_pic` VALUES ('95', '107178', 'good/2020-10-16/1602831939467.jpg', null);
INSERT INTO `shop_good_pic` VALUES ('96', '107178', 'good/2020-10-16/1602831939509.jpg', null);
INSERT INTO `shop_good_pic` VALUES ('97', '107178', 'good/2020-10-16/1602831939552.jpg', null);
INSERT INTO `shop_good_pic` VALUES ('98', '107178', 'good/2020-10-16/1602831939587.jpg', null);
INSERT INTO `shop_good_pic` VALUES ('99', '107178', 'good/2020-10-16/1602831939627.jpg', null);
INSERT INTO `shop_good_pic` VALUES ('100', '107179', 'good/2020-10-16/1602832001225.jpg', null);
INSERT INTO `shop_good_pic` VALUES ('101', '107179', 'good/2020-10-16/1602832001295.jpg', null);
INSERT INTO `shop_good_pic` VALUES ('102', '107179', 'good/2020-10-16/1602832001333.jpg', null);
INSERT INTO `shop_good_pic` VALUES ('103', '107179', 'good/2020-10-16/1602832001376.jpg', null);
INSERT INTO `shop_good_pic` VALUES ('104', '107179', 'good/2020-10-16/1602832001414.jpg', null);
INSERT INTO `shop_good_pic` VALUES ('105', '107180', 'good/2020-10-21/1603253272328.jpg', null);
INSERT INTO `shop_good_pic` VALUES ('106', '107180', 'good/2020-10-21/1603253272396.jpg', null);
INSERT INTO `shop_good_pic` VALUES ('107', '107180', 'good/2020-10-21/1603253272468.jpg', null);
INSERT INTO `shop_good_pic` VALUES ('108', '107180', 'good/2020-10-21/1603253272541.jpg', null);

-- ----------------------------
-- Table structure for shop_good_type
-- ----------------------------
DROP TABLE IF EXISTS `shop_good_type`;
CREATE TABLE `shop_good_type` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '商品类型',
  `is_show` int(5) DEFAULT '1' COMMENT '1使用0禁用默认值1',
  `sorting` int(50) DEFAULT '0' COMMENT '排序',
  `type_id` int(50) DEFAULT NULL COMMENT '分级',
  `ico_img` varchar(100) DEFAULT NULL COMMENT '图标',
  `color` varchar(200) DEFAULT '000000-666666' COMMENT '字体渐变色',
  `keyword` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '关键词',
  `pc_color` varchar(100) DEFAULT NULL,
  `phone_img` varchar(100) DEFAULT NULL COMMENT '手机分类图标',
  `shop_id` int(50) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=146 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='商品类型表';

-- ----------------------------
-- Records of shop_good_type
-- ----------------------------
INSERT INTO `shop_good_type` VALUES ('127', '墙布', '1', '0', null, null, '000000-666666', null, null, null, '1');
INSERT INTO `shop_good_type` VALUES ('128', '墙纸', '1', '0', null, null, '000000-666666', null, null, null, '1');
INSERT INTO `shop_good_type` VALUES ('129', '窗花', '1', '0', null, null, '000000-666666', null, null, null, '1');
INSERT INTO `shop_good_type` VALUES ('130', '木门', '1', '0', null, null, '000000-666666', null, null, null, '1');
INSERT INTO `shop_good_type` VALUES ('131', '地板', '1', '0', null, null, '000000-666666', null, null, null, '1');
INSERT INTO `shop_good_type` VALUES ('132', '吊顶', '1', '0', null, null, '000000-666666', null, null, null, '1');
INSERT INTO `shop_good_type` VALUES ('133', '天花', '1', '0', null, null, '000000-666666', null, null, null, '1');
INSERT INTO `shop_good_type` VALUES ('134', '简欧', '1', '0', null, null, '000000-666666', null, null, null, '7');
INSERT INTO `shop_good_type` VALUES ('135', '美式', '1', '0', null, null, '000000-666666', null, null, null, '7');
INSERT INTO `shop_good_type` VALUES ('136', '现代', '1', '0', null, null, '000000-666666', null, null, null, '7');
INSERT INTO `shop_good_type` VALUES ('137', '美式', '1', '0', null, null, '000000-666666', null, null, null, '8');
INSERT INTO `shop_good_type` VALUES ('138', '简欧', '1', '0', null, null, '000000-666666', null, null, null, '8');
INSERT INTO `shop_good_type` VALUES ('139', '美式', '1', '0', null, null, '000000-666666', null, null, null, '4');
INSERT INTO `shop_good_type` VALUES ('140', '简欧', '1', '0', null, null, '000000-666666', null, null, null, '4');
INSERT INTO `shop_good_type` VALUES ('141', '现代', '1', '0', null, null, '000000-666666', null, null, null, '8');
INSERT INTO `shop_good_type` VALUES ('142', '现代', '1', '0', null, null, '000000-666666', null, null, null, '4');
INSERT INTO `shop_good_type` VALUES ('143', '新中式', '1', '0', null, null, '000000-666666', null, null, null, '4');
INSERT INTO `shop_good_type` VALUES ('144', '轻奢', '1', '0', null, null, '000000-666666', null, null, null, '4');
INSERT INTO `shop_good_type` VALUES ('145', '项目运营', '1', '0', null, null, '000000-666666', null, null, null, '3');

-- ----------------------------
-- Table structure for shop_info
-- ----------------------------
DROP TABLE IF EXISTS `shop_info`;
CREATE TABLE `shop_info` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `oa_info_id` int(11) DEFAULT NULL,
  `shop_id` int(50) DEFAULT NULL COMMENT '门店编号',
  `type_id` int(50) DEFAULT NULL,
  `sort` int(10) DEFAULT '0' COMMENT '排序',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '标题',
  `img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '封面图',
  `look_num` int(20) DEFAULT '0' COMMENT '查看次数',
  `up_num` int(20) DEFAULT '0' COMMENT '点赞次数',
  `is_used_num` int(11) DEFAULT '0' COMMENT '被使用次数',
  `is_customer_num` int(11) DEFAULT '0' COMMENT '获客量',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '内容',
  `is_show` int(5) DEFAULT '1' COMMENT '是否热门 0否  1是',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `is_must_report` varchar(5) DEFAULT NULL COMMENT '是否必转',
  `is_index` varchar(5) DEFAULT '0' COMMENT '是否在首页显示，0否，1是',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 COMMENT='商品资讯表';

-- ----------------------------
-- Records of shop_info
-- ----------------------------
INSERT INTO `shop_info` VALUES ('49', '25', '8', '7', '0', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', 'info/2020-09-07/1599463517614.webp', '0', '0', '0', '0', '<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601268732090.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601268750550.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601268766973.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601268782743.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p>整体以稳重的大理石色为基调，佐以御秀墙布的优雅质感，安静不乏张力，英气十足也兼容并包。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601269834942.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601269891393.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p>卧室装修的简约稳重一些，大大的窗户带来充足的光线，显得整个空间明亮通透。</p>', '0', '2020-10-14 17:09:06', null, '0');
INSERT INTO `shop_info` VALUES ('51', '30', '1', '2', '0', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', 'info/2020-09-07/1599463517614.webp', '7', '0', '0', '0', '<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601270481205.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601270503385.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601270514720.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p>浪漫、大方是欧式风格的独特元素，置身其中，仿佛身处宁静的教堂之中静心凝神，又如在浪漫的爱琴海边感受微风拂面，一切都是如此的温文尔雅、浪漫和谐。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601270529004.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601270538940.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601270549644.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601270557708.jpg\" style=\"height:300px; width:400px\" /></p>', '1', '2020-10-14 17:40:58', null, '0');
INSERT INTO `shop_info` VALUES ('30', '20', '1', '3', '0', '怨灵修之浩荡兮', 'info/2020-08-21/1598001873211.png', '0', '0', '0', '0', '<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-08-21/2020-08-21/1598001905171.png\" style=\"height:148px; width:99px\" /><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-08-21/2020-08-21/1598001892006.png\" style=\"height:148px; width:99px\" /><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-08-21/2020-08-21/1598001922309.png\" style=\"height:148px; width:99px\" /><img alt=\"\" src=\"http://customersystemimg.tiancekj.com/info/2020-08-21/2020-08-21/1598001946005.png\" style=\"height:224px; width:206px\" /></p>', '0', '2020-09-29 09:44:31', null, '0');
INSERT INTO `shop_info` VALUES ('46', '13', '1', '2', '0', '哀民生之多艰', 'info/2020-08-21/1598001873211.png', '0', '0', '0', '0', '<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-08-21/2020-08-21/1598001905171.png\" style=\"height:148px; width:99px\" /><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-08-21/2020-08-21/1598001892006.png\" style=\"height:148px; width:99px\" /><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-08-21/2020-08-21/1598001922309.png\" style=\"height:148px; width:99px\" /><img alt=\"\" src=\"http://customersystemimg.tiancekj.com/info/2020-08-21/2020-08-21/1598001946005.png\" style=\"height:224px; width:206px\" /></p>', '0', '2020-10-14 14:21:25', null, '0');
INSERT INTO `shop_info` VALUES ('27', '19', '1', '4', '0', '虽九死其犹未悔', 'info/2020-08-21/1598001873211.png', '1', '0', '0', '0', '<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-08-21/2020-08-21/1598001905171.png\" style=\"height:148px; width:99px\" /><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-08-21/2020-08-21/1598001892006.png\" style=\"height:148px; width:99px\" /><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-08-21/2020-08-21/1598001922309.png\" style=\"height:148px; width:99px\" /><img alt=\"\" src=\"http://customersystemimg.tiancekj.com/info/2020-08-21/2020-08-21/1598001946005.png\" style=\"height:224px; width:206px\" /></p>', '1', '2020-09-29 09:44:15', null, '0');
INSERT INTO `shop_info` VALUES ('25', '26', '4', '3', '0', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', 'info/2020-09-08/1599542453409.jpg', '123', '33', '0', '0', '<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601270481205.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601270503385.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601270514720.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p>浪漫、大方是欧式风格的独特元素，置身其中，仿佛身处宁静的教堂之中静心凝神，又如在浪漫的爱琴海边感受微风拂面，一切都是如此的温文尔雅、浪漫和谐。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601270529004.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601270538940.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601270549644.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601270557708.jpg\" style=\"height:300px; width:400px\" /></p>', '1', '2020-09-28 18:33:37', null, '0');
INSERT INTO `shop_info` VALUES ('24', '25', '4', '3', '0', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', 'info/2020-09-07/1599463517614.webp', '50', '25', '0', '0', '<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601268732090.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601268750550.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601268766973.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601268782743.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p>整体以稳重的大理石色为基调，佐以御秀墙布的优雅质感，安静不乏张力，英气十足也兼容并包。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601269834942.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601269891393.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p>卧室装修的简约稳重一些，大大的窗户带来充足的光线，显得整个空间明亮通透。</p>', '1', '2020-09-28 18:33:37', null, '0');
INSERT INTO `shop_info` VALUES ('36', '15', '1', '4', '0', '謇朝谇而夕替', 'info/2020-08-21/1598001873211.png', '2', '0', '0', '0', '<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-08-21/2020-08-21/1598001905171.png\" style=\"height:148px; width:99px\" /><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-08-21/2020-08-21/1598001892006.png\" style=\"height:148px; width:99px\" /><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-08-21/2020-08-21/1598001922309.png\" style=\"height:148px; width:99px\" /><img alt=\"\" src=\"http://customersystemimg.tiancekj.com/info/2020-08-21/2020-08-21/1598001946005.png\" style=\"height:224px; width:206px\" /></p>', '1', '2020-09-29 09:49:01', null, '0');
INSERT INTO `shop_info` VALUES ('37', '16', '1', '3', '0', '既替余以蕙纕兮', 'info/2020-08-21/1598001873211.png', '3', '0', '0', '0', '<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-08-21/2020-08-21/1598001905171.png\" style=\"height:148px; width:99px\" /><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-08-21/2020-08-21/1598001892006.png\" style=\"height:148px; width:99px\" /><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-08-21/2020-08-21/1598001922309.png\" style=\"height:148px; width:99px\" /><img alt=\"\" src=\"http://customersystemimg.tiancekj.com/info/2020-08-21/2020-08-21/1598001946005.png\" style=\"height:224px; width:206px\" /></p>', '1', '2020-09-29 09:55:11', null, '0');
INSERT INTO `shop_info` VALUES ('38', '12', '1', '3', '0', '长太息以掩涕兮', 'info/2020-08-21/1598001873211.png', '1', '0', '0', '0', '<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-08-21/2020-08-21/1598001905171.png\" style=\"height:148px; width:99px\" /><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-08-21/2020-08-21/1598001892006.png\" style=\"height:148px; width:99px\" /><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-08-21/2020-08-21/1598001922309.png\" style=\"height:148px; width:99px\" /><img alt=\"\" src=\"http://customersystemimg.tiancekj.com/info/2020-08-21/2020-08-21/1598001946005.png\" style=\"height:224px; width:206px\" /></p>', '1', '2020-09-29 10:05:49', null, '0');
INSERT INTO `shop_info` VALUES ('39', '21', '1', '2', '0', '终不察夫民心', 'info/2020-08-21/1598001873211.png', '1', '1', '0', '0', '<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-08-21/2020-08-21/1598001905171.png\" style=\"height:148px; width:99px\" /><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-08-21/2020-08-21/1598001892006.png\" style=\"height:148px; width:99px\" /><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-08-21/2020-08-21/1598001922309.png\" style=\"height:148px; width:99px\" /><img alt=\"\" src=\"http://customersystemimg.tiancekj.com/info/2020-08-21/2020-08-21/1598001946005.png\" style=\"height:224px; width:206px\" /></p>', '1', '2020-09-29 10:05:56', null, '0');
INSERT INTO `shop_info` VALUES ('40', '22', '1', '5', '0', '众女嫉余之蛾眉兮', 'info/2020-08-21/1598001873211.png', '1', '0', '0', '0', '<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-08-21/2020-08-21/1598001905171.png\" style=\"height:148px; width:99px\" /><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-08-21/2020-08-21/1598001892006.png\" style=\"height:148px; width:99px\" /><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-08-21/2020-08-21/1598001922309.png\" style=\"height:148px; width:99px\" /><img alt=\"\" src=\"http://customersystemimg.tiancekj.com/info/2020-08-21/2020-08-21/1598001946005.png\" style=\"height:224px; width:206px\" /></p>', '1', '2020-09-29 10:05:56', null, '0');
INSERT INTO `shop_info` VALUES ('41', '24', '1', '3', '0', '固时俗之工巧兮', 'info/2020-08-21/1598001873211.png', '1', '1', '0', '0', '<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-08-21/2020-08-21/1598001905171.png\" style=\"height:148px; width:99px\" /><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-08-21/2020-08-21/1598001892006.png\" style=\"height:148px; width:99px\" /><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-08-21/2020-08-21/1598001922309.png\" style=\"height:148px; width:99px\" /><img alt=\"\" src=\"http://customersystemimg.tiancekj.com/info/2020-08-21/2020-08-21/1598001946005.png\" style=\"height:224px; width:206px\" /></p>', '1', '2020-09-29 10:05:56', null, '0');
INSERT INTO `shop_info` VALUES ('42', '26', '7', '3', '0', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', 'info/2020-09-08/1599542453409.jpg', '10', '2', '0', '0', '<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601270481205.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601270503385.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601270514720.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p>浪漫、大方是欧式风格的独特元素，置身其中，仿佛身处宁静的教堂之中静心凝神，又如在浪漫的爱琴海边感受微风拂面，一切都是如此的温文尔雅、浪漫和谐。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601270529004.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601270538940.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601270549644.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601270557708.jpg\" style=\"height:300px; width:400px\" /></p>', '0', '2020-10-09 19:09:25', null, '0');
INSERT INTO `shop_info` VALUES ('53', '32', '3', '8', '0', '软装大牌--启上官网', '', '2', '0', '0', '0', '', '1', '2020-10-21 16:43:39', null, '0');
INSERT INTO `shop_info` VALUES ('54', '27', '4', '9', '0', '御秀每周秀丨北欧轻奢风格,不将就是一种生活态度', 'info/2020-09-08/1599542696899.jpg', '5', '0', '0', '0', '<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601270793478.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601270829505.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601270842861.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601270858335.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p>现代轻奢北欧家具以简约、极致著称，具有很浓的后现代主义特色，现代轻奢北欧不仅相当的接地气，而且利用这种风格打造的家居环境不容易过时，属于一直走在时尚前沿的一种家装设计。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601270884355.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601270894550.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601270906854.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601271128346.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601271142581.jpg\" style=\"height:300px; width:400px\" /></p>', '1', '2020-10-27 14:47:58', null, '0');
INSERT INTO `shop_info` VALUES ('44', '25', '7', '3', '0', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', 'info/2020-09-07/1599463517614.webp', '22', '0', '0', '0', '<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601268732090.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601268750550.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601268766973.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601268782743.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p>整体以稳重的大理石色为基调，佐以御秀墙布的优雅质感，安静不乏张力，英气十足也兼容并包。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601269834942.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601269891393.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p>卧室装修的简约稳重一些，大大的窗户带来充足的光线，显得整个空间明亮通透。</p>', '1', '2020-10-10 15:29:18', null, '0');
INSERT INTO `shop_info` VALUES ('45', '28', '7', '3', '0', '御秀每周秀丨传统与现代元素的碰撞，领略不一样的东方风情！', 'info/2020-09-08/1599542997715.jpg', '16', '3', '0', '0', '<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601271483595.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601271494543.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p>当婉约别致的古典元素与现代美学共同整合，浑然天成的历史韵味，诠释焕然一新的混搭体验，便形成了时下的新中式风。</p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601271505921.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601271513399.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601271521420.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://customersystemimg.tiancekj.com//info/2020-09-28/2020-09-28/1601271529148.jpg\" style=\"height:300px; width:400px\" /></p>', '1', '2020-10-10 15:29:18', null, '0');

-- ----------------------------
-- Table structure for shop_info_case
-- ----------------------------
DROP TABLE IF EXISTS `shop_info_case`;
CREATE TABLE `shop_info_case` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_info_id` int(11) DEFAULT NULL COMMENT '资讯id',
  `shop_case_id` int(11) DEFAULT NULL COMMENT '案例编号',
  `create_time` datetime DEFAULT NULL,
  `is_show` int(2) DEFAULT '1' COMMENT '是否展示，1是，0否',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='资讯下的4个案例';

-- ----------------------------
-- Records of shop_info_case
-- ----------------------------
INSERT INTO `shop_info_case` VALUES ('1', '3', '13', '2020-09-09 20:08:43', '1');
INSERT INTO `shop_info_case` VALUES ('2', '3', '14', '2020-09-09 20:09:26', '1');
INSERT INTO `shop_info_case` VALUES ('3', '3', '15', '2020-09-09 20:09:29', '1');
INSERT INTO `shop_info_case` VALUES ('4', '3', '16', '2020-09-09 20:09:31', '1');
INSERT INTO `shop_info_case` VALUES ('5', '19', '16', '2020-09-12 15:13:48', '1');
INSERT INTO `shop_info_case` VALUES ('6', '19', '27', '2020-09-12 15:13:48', '1');
INSERT INTO `shop_info_case` VALUES ('7', '17', '15', '2020-09-24 14:40:34', '1');
INSERT INTO `shop_info_case` VALUES ('8', '12', '72', '2020-10-14 16:10:19', '1');
INSERT INTO `shop_info_case` VALUES ('9', '26', '72', '2020-10-14 17:06:17', '1');

-- ----------------------------
-- Table structure for shop_info_good
-- ----------------------------
DROP TABLE IF EXISTS `shop_info_good`;
CREATE TABLE `shop_info_good` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_info_id` int(11) DEFAULT NULL COMMENT '资讯id',
  `shop_good_id` int(11) DEFAULT NULL COMMENT '商品编号',
  `create_time` datetime DEFAULT NULL,
  `is_show` int(2) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='资讯下的4个商品';

-- ----------------------------
-- Records of shop_info_good
-- ----------------------------
INSERT INTO `shop_info_good` VALUES ('1', '3', '107044', '2020-09-09 20:10:42', '1');
INSERT INTO `shop_info_good` VALUES ('2', '3', '107045', '2020-09-09 20:10:42', '1');
INSERT INTO `shop_info_good` VALUES ('3', '3', '107047', '2020-09-09 20:10:42', '1');
INSERT INTO `shop_info_good` VALUES ('4', '19', '107045', '2020-09-10 17:01:01', '1');
INSERT INTO `shop_info_good` VALUES ('5', '22', '107045', '2020-09-24 10:13:49', '1');
INSERT INTO `shop_info_good` VALUES ('6', '22', '107047', '2020-09-24 10:13:49', '1');
INSERT INTO `shop_info_good` VALUES ('7', '17', '107045', '2020-09-24 14:43:13', '1');
INSERT INTO `shop_info_good` VALUES ('8', '51', '107133', '2020-10-14 17:42:03', '0');
INSERT INTO `shop_info_good` VALUES ('9', '51', '107133', '2020-10-14 17:42:03', '0');
INSERT INTO `shop_info_good` VALUES ('10', '12', '107131', '2020-10-14 16:10:25', '1');
INSERT INTO `shop_info_good` VALUES ('14', '26', '107143', '2020-10-14 17:01:06', '1');
INSERT INTO `shop_info_good` VALUES ('16', '51', '107133', '2020-10-14 17:42:03', '0');
INSERT INTO `shop_info_good` VALUES ('21', '49', '107146', '2020-10-14 18:17:37', '1');
INSERT INTO `shop_info_good` VALUES ('22', '49', '107145', '2020-10-14 18:17:38', '1');

-- ----------------------------
-- Table structure for shop_info_type
-- ----------------------------
DROP TABLE IF EXISTS `shop_info_type`;
CREATE TABLE `shop_info_type` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `shop_id` int(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL COMMENT '商品类型',
  `is_show` int(5) DEFAULT '1' COMMENT '1使用0禁用默认值1',
  `sorting` int(50) DEFAULT '0' COMMENT '排序',
  `type_id` int(50) DEFAULT NULL COMMENT '分级',
  `ico_img` varchar(100) DEFAULT NULL COMMENT '图标',
  `color` varchar(200) DEFAULT '000000-666666' COMMENT '字体渐变色',
  `keyword` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '关键词',
  `pc_color` varchar(100) DEFAULT NULL,
  `phone_img` varchar(100) DEFAULT NULL COMMENT '手机分类图标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='商品咨询的类型表';

-- ----------------------------
-- Records of shop_info_type
-- ----------------------------
INSERT INTO `shop_info_type` VALUES ('1', '1', '墙布', '1', '1', null, null, '000000-666666', null, null, null);
INSERT INTO `shop_info_type` VALUES ('2', '1', '墙纸', '1', '2', null, null, '000000-666666', null, null, null);
INSERT INTO `shop_info_type` VALUES ('3', '1', '家居', null, null, null, null, null, null, null, null);
INSERT INTO `shop_info_type` VALUES ('4', '1', '木门', null, null, null, null, null, null, null, null);
INSERT INTO `shop_info_type` VALUES ('5', '1', '窗花', null, null, null, null, null, null, null, null);
INSERT INTO `shop_info_type` VALUES ('6', '8', '热点时事', '1', '0', null, null, '000000-666666', null, null, null);
INSERT INTO `shop_info_type` VALUES ('7', '8', '家居', '1', '0', null, null, '000000-666666', null, null, null);
INSERT INTO `shop_info_type` VALUES ('8', '3', '客户资讯', '1', '0', null, null, '000000-666666', null, null, null);
INSERT INTO `shop_info_type` VALUES ('9', '4', '热点时事', '1', '0', null, null, '000000-666666', null, null, null);

-- ----------------------------
-- Table structure for shop_message
-- ----------------------------
DROP TABLE IF EXISTS `shop_message`;
CREATE TABLE `shop_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `shop_id` int(11) DEFAULT NULL COMMENT '门店编号',
  `shop_user_id` int(11) DEFAULT NULL COMMENT '门店用户编号',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='门店消息表';

-- ----------------------------
-- Records of shop_message
-- ----------------------------

-- ----------------------------
-- Table structure for shop_message_contact
-- ----------------------------
DROP TABLE IF EXISTS `shop_message_contact`;
CREATE TABLE `shop_message_contact` (
  `msg_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '消息id，自增长',
  `msg_type` int(11) DEFAULT NULL COMMENT '类型 1：文字；47：emoji；43：音频；436207665：红包；49：文件；48：位置；3：图片',
  `is_send` int(11) DEFAULT NULL COMMENT '是否是自己发送 0：不是；1：是',
  `create_time` datetime DEFAULT NULL COMMENT '消息发送时间',
  `content` text COMMENT '消息格式【发信人id:内容】',
  `talker` varchar(55) DEFAULT NULL COMMENT '聊天对象。群聊，则是群id（xxx@chatroom）；一对一，聊天对象的唯一标识。',
  PRIMARY KEY (`msg_id`),
  KEY `index_chat_id` (`talker`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of shop_message_contact
-- ----------------------------

-- ----------------------------
-- Table structure for shop_message_detail
-- ----------------------------
DROP TABLE IF EXISTS `shop_message_detail`;
CREATE TABLE `shop_message_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message_id` int(11) DEFAULT NULL COMMENT '消息列表',
  `content_type` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '内容的类型，0文字，1资讯，2商品，3案例，4视频,5海报',
  `content_id` int(11) DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '消息内容',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `from_type` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '消息发送者类型，0商家，1,用户',
  `from_id` int(11) DEFAULT NULL,
  `to_type` varchar(5) DEFAULT NULL,
  `to_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='门店消息的详情表';

-- ----------------------------
-- Records of shop_message_detail
-- ----------------------------
INSERT INTO `shop_message_detail` VALUES ('1', '1', '0', null, '怎样设计出了', '2020-08-04 14:21:50', '0', null, null, null);
INSERT INTO `shop_message_detail` VALUES ('2', '1', '1', '1', '案例', '2020-08-04 14:22:07', '1', null, null, null);

-- ----------------------------
-- Table structure for shop_poster
-- ----------------------------
DROP TABLE IF EXISTS `shop_poster`;
CREATE TABLE `shop_poster` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) DEFAULT NULL COMMENT '门店编号',
  `type_id` int(11) DEFAULT NULL COMMENT '类型编号',
  `title` varchar(50) DEFAULT NULL COMMENT '标题',
  `is_used_num` int(10) DEFAULT '0' COMMENT '被使用次数',
  `is_customer_num` int(10) DEFAULT '0' COMMENT '获客次数',
  `img` varchar(50) DEFAULT NULL,
  `content` text COMMENT '内容',
  `seller_id` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `last_update_time` datetime DEFAULT NULL COMMENT '上次修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='门店海报表';

-- ----------------------------
-- Records of shop_poster
-- ----------------------------
INSERT INTO `shop_poster` VALUES ('1', '1', '127', '背绳墨以追曲兮', '0', '1', 'good/2020-08-20/1597916133229.png', null, null, '2020-09-04 15:54:16', null);
INSERT INTO `shop_poster` VALUES ('2', '1', '128', '竞周容以为度', '0', '6', 'good/2020-08-20/1597916133229.png', null, null, '2020-09-04 15:54:19', null);
INSERT INTO `shop_poster` VALUES ('3', '1', '129', '忳郁邑余侘傺兮', '0', '2', 'good/2020-08-20/1597916133229.png', null, null, '2020-09-04 15:54:21', null);
INSERT INTO `shop_poster` VALUES ('4', '1', '127', '吾独穷困乎此时也', '0', '7', 'good/2020-08-20/1597916133229.png', null, null, '2020-09-04 15:54:24', null);
INSERT INTO `shop_poster` VALUES ('5', '1', '128', '宁溘死以流亡兮', '0', '3', 'good/2020-08-20/1597916133229.png', null, null, '2020-09-04 15:54:26', null);
INSERT INTO `shop_poster` VALUES ('6', '1', '129', '余不忍为此态也', '0', '8', 'good/2020-08-20/1597916133229.png', null, null, '2020-09-04 15:54:28', null);
INSERT INTO `shop_poster` VALUES ('7', '1', '127', '鸷鸟之不群兮', '0', '4', 'good/2020-08-20/1597916133229.png', null, null, '2020-09-04 15:54:31', null);
INSERT INTO `shop_poster` VALUES ('8', '1', '128', '自前世而固然', '0', '9', 'good/2020-08-20/1597916133229.png', null, null, '2020-09-04 15:54:33', null);
INSERT INTO `shop_poster` VALUES ('9', '1', '129', '何方圜之能周兮', '0', '5', 'good/2020-08-20/1597916133229.png', null, null, '2020-09-04 15:54:36', null);
INSERT INTO `shop_poster` VALUES ('10', '1', '127', '夫孰异道而相安', '0', '10', 'good/2020-08-20/1597916133229.png', null, null, '2020-09-04 15:54:39', null);

-- ----------------------------
-- Table structure for shop_poster_type
-- ----------------------------
DROP TABLE IF EXISTS `shop_poster_type`;
CREATE TABLE `shop_poster_type` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `shop_id` int(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL COMMENT '商品类型',
  `is_show` int(5) DEFAULT '1' COMMENT '1使用0禁用默认值1',
  `sorting` int(50) DEFAULT '0' COMMENT '排序',
  `type_id` int(50) DEFAULT NULL COMMENT '分级',
  `ico_img` varchar(100) DEFAULT NULL COMMENT '图标',
  `color` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '字体渐变色',
  `keyword` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '关键词',
  `pc_color` varchar(100) DEFAULT NULL,
  `phone_img` varchar(100) DEFAULT NULL COMMENT '手机分类图标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=130 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='门店海报的类型表';

-- ----------------------------
-- Records of shop_poster_type
-- ----------------------------
INSERT INTO `shop_poster_type` VALUES ('127', '1', '日常问候', '1', '0', null, null, '000000-666666', null, null, null);
INSERT INTO `shop_poster_type` VALUES ('128', '1', '节日节气', '1', '1', null, null, '000000-666666', null, null, null);
INSERT INTO `shop_poster_type` VALUES ('129', '1', '创意励志', '1', '0', null, null, '0', null, null, null);

-- ----------------------------
-- Table structure for shop_recontact
-- ----------------------------
DROP TABLE IF EXISTS `shop_recontact`;
CREATE TABLE `shop_recontact` (
  `username` varchar(45) NOT NULL COMMENT '联系人唯一标识',
  `nickname` varchar(45) DEFAULT NULL COMMENT '联系人昵称',
  `remark` varchar(45) DEFAULT NULL COMMENT '备注名称',
  `avatar` varchar(200) DEFAULT NULL COMMENT '联系人头像地址',
  `is_friend` varchar(45) DEFAULT NULL COMMENT '是否是好友。1,3 好友 4；群里非好友',
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='联系人，非好友';

-- ----------------------------
-- Records of shop_recontact
-- ----------------------------

-- ----------------------------
-- Table structure for shop_seller
-- ----------------------------
DROP TABLE IF EXISTS `shop_seller`;
CREATE TABLE `shop_seller` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `sid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卖家ID',
  `oa_user_id` int(50) DEFAULT NULL COMMENT '品牌ID，企业id',
  `sellername` varchar(200) DEFAULT NULL COMMENT '卖家用户名',
  `role` varchar(5) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `tximg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'default/tximg.png' COMMENT '头像',
  `phone` varchar(50) DEFAULT NULL COMMENT '卖家注册手机号',
  `password` varchar(255) DEFAULT NULL COMMENT '卖家账号密码',
  `token` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `appid` varchar(100) DEFAULT NULL COMMENT '微信小程序appid',
  `secret` varchar(100) DEFAULT NULL COMMENT '微信小程序秘钥',
  `create_time` datetime DEFAULT NULL,
  `create_ip` varchar(100) DEFAULT NULL COMMENT 'IP',
  `money` decimal(50,2) DEFAULT '0.00' COMMENT '卖家账号金额',
  `good_number` int(10) DEFAULT '0' COMMENT '店内商品种类个数',
  `is_acc` int(10) DEFAULT '0' COMMENT '1是已审核0是未审核',
  `status` int(10) DEFAULT '0' COMMENT '1是同意协议0是不同意',
  `is_pf` int(10) DEFAULT '2' COMMENT '是否批发1是2否',
  `mch_id` varchar(100) DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `into_key` varchar(255) DEFAULT NULL COMMENT '平台给商家请求接口使用的密匙',
  `frozen_money` decimal(50,2) unsigned DEFAULT '0.00' COMMENT '冻结金额',
  `wxopenid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '微信openid',
  `is_sys_ps` tinyint(1) unsigned DEFAULT '0' COMMENT '1支持0不支持',
  `is_return` tinyint(1) unsigned DEFAULT '0' COMMENT '1支持0不支持',
  `position` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '职位',
  `wxnum` varchar(50) DEFAULT NULL COMMENT '微信号',
  `card_pattern` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '名片样式 ',
  `card_bgimg` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '名片背景图',
  `intro` varchar(255) DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `veriry_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `code_valid_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='商家boss表';

-- ----------------------------
-- Records of shop_seller
-- ----------------------------
INSERT INTO `shop_seller` VALUES ('1', '1234567890123456789', '1', 'admin', '1', '经理', 'other/2020-10-20/1603182192574.png', '17623217240', 'e10adc3949ba59abbe56e057f20f883e', 'c8606368722a9276ad4821fd71ec017c', null, null, null, null, '0.00', '0', '0', '0', '2', null, null, null, '0.00', null, '0', '0', '职位', 'test', '0', '0', '微信小程序提供了一个简单、高效的应用开发框架和丰富的组件及API，帮助开发者在微信中开发具有原生 APP 体验的服务。', 'aaa@sss.css', '206ca9ae7d72f36144d5eae953919d67', '2020-11-03 14:37:56');
INSERT INTO `shop_seller` VALUES ('2', '1597658433095554026', '1', 'admin02', null, '小王1', 'default/tximg.png', '17630169541', 'e10adc3949ba59abbe56e057f20f883e', 'd8ca16c092a11a9423df58faeb7bbea1', null, null, null, null, '0.00', '0', '0', '0', '2', null, null, null, '0.00', null, '0', '0', null, null, '0', '0', null, null, '468ff586e783a923b29c7c6b3387c990', '2020-09-28 16:02:34');
INSERT INTO `shop_seller` VALUES ('3', '1597975644248205115', '1', 'user001', null, '桂成才', 'other/2020-10-21/1603266368928.png', '18758016435', 'e10adc3949ba59abbe56e057f20f883e', 'f4167a5959ac7acdbf57ea30066444ba', null, '', '2020-08-21 10:07:24', null, '0.00', '0', '0', '0', '2', null, null, null, '0.00', null, '0', '0', '销售经理', '18758016435', '0', '0', '互联网行业', 'kefu@tiancekj.com', '61bc63bb1478acc8a28f2c00c6c97ee9', '2020-11-03 17:30:06');
INSERT INTO `shop_seller` VALUES ('5', '1598195758040933419', '159', 'tiancekj', null, '朱宏斌', 'other/2020-11-03/1604379269696.png', '13967361174', 'e10adc3949ba59abbe56e057f20f883e', '8a4fbd871e02b9627d4d6facfec581c4', null, '', '2020-08-23 23:15:58', null, '0.00', '0', '0', '0', '2', null, null, null, '0.00', null, '0', '0', '经理', 'kailiule', '0', '0', '御秀软装', 'kefu@tiancekj.com', '47c49e2e6bf6a7a577ef71c2ab394b5', '2020-11-03 14:42:21');
INSERT INTO `shop_seller` VALUES ('6', '1599461886426609809', '159', 'tiancekj', null, '金诗艳', 'default/tximg.png', '13967334668', 'e10adc3949ba59abbe56e057f20f883e', 'da92c785f024a16fcc0ab5688b9f7509', null, null, '2020-09-07 14:58:06', null, '0.00', '0', '0', '0', '2', null, null, null, '0.00', null, '0', '0', null, null, '0', '0', null, null, '99fdb6b6c8a72669b9628761c407c03e', '2020-10-17 07:16:31');
INSERT INTO `shop_seller` VALUES ('8', '1601277261496271661', '159', 'tiancekj', null, '桂成才', 'other/2020-10-20/1603182269245.png', '18758016435', 'd41d8cd98f00b204e9800998ecf8427e', '7999a62971fc0c3a9998932fabf581bb', null, null, '2020-09-28 15:14:21', null, '0.00', '0', '0', '0', '2', null, null, null, '0.00', null, '0', '0', '经理人员', 'acai41', '0', '0', '我们', '27862617@qq.com', '725ceacf29e0d96bce4ba56009fa63f8', '2020-11-03 17:51:44');
INSERT INTO `shop_seller` VALUES ('9', '1601279797684509193', '159', 'abc', null, '小王3', 'other/2020-10-14/1602665848875.png', '18532102363', 'e10adc3949ba59abbe56e057f20f883e', 'f329432cd1a5241f9f1775e6abd3ca7d', null, null, '2020-09-28 15:56:38', null, '0.00', '0', '0', '0', '2', null, null, null, '0.00', null, '0', '0', '农民工', 'wj18532102363', '0', '0', '天天', '1121382295@qq.com', '1463ee642a52fecf0a50be6dbaa2b532', '2020-10-22 16:46:02');
INSERT INTO `shop_seller` VALUES ('11', '1604219937424432743', '159', '邳州', null, '于芬', 'default/tximg.png', '13914839883', 'e10adc3949ba59abbe56e057f20f883e', null, null, null, '2020-11-01 16:38:57', null, '0.00', '0', '0', '0', '2', null, null, null, '0.00', null, '0', '0', null, null, '0', '0', null, null, null, null);
INSERT INTO `shop_seller` VALUES ('12', '1604219973659223183', '159', '西峡', null, '刘毅', 'default/tximg.png', '13333631811', 'e10adc3949ba59abbe56e057f20f883e', null, null, null, '2020-11-01 16:39:34', null, '0.00', '0', '0', '0', '2', null, null, null, '0.00', null, '0', '0', null, null, '0', '0', null, null, null, null);
INSERT INTO `shop_seller` VALUES ('13', '1604220005523183713', '159', '萧山', null, '裘国锋', 'default/tximg.png', '15868158222', 'e10adc3949ba59abbe56e057f20f883e', null, null, null, '2020-11-01 16:40:06', null, '0.00', '0', '0', '0', '2', null, null, null, '0.00', null, '0', '0', null, null, '0', '0', null, null, null, null);
INSERT INTO `shop_seller` VALUES ('14', '1604220030618109050', '159', '温岭', null, '徐灵龙', 'default/tximg.png', '13858680566', 'e10adc3949ba59abbe56e057f20f883e', null, null, null, '2020-11-01 16:40:31', null, '0.00', '0', '0', '0', '2', null, null, null, '0.00', null, '0', '0', null, null, '0', '0', null, null, null, null);

-- ----------------------------
-- Table structure for shop_seller_img
-- ----------------------------
DROP TABLE IF EXISTS `shop_seller_img`;
CREATE TABLE `shop_seller_img` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` int(10) unsigned DEFAULT NULL COMMENT '关联seller表sid',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '标题',
  `imgs` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'banner图',
  `url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '链接',
  `sort` int(10) unsigned DEFAULT '0' COMMENT '排序',
  `is_show` int(10) unsigned DEFAULT '1' COMMENT '是否显示1为显示0为不显示默认值1',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='品牌介绍图片';

-- ----------------------------
-- Records of shop_seller_img
-- ----------------------------
INSERT INTO `shop_seller_img` VALUES ('1', '5', null, 'good/2020-08-20/1597916133229.png', 'http://baidu.com', '0', '1');
INSERT INTO `shop_seller_img` VALUES ('5', '1', null, 'other/2020-09-25/1601003493630.png', null, '0', '1');
INSERT INTO `shop_seller_img` VALUES ('6', '1', null, 'other/2020-09-25/1601003528436.png', null, '0', '1');
INSERT INTO `shop_seller_img` VALUES ('7', '1', null, 'other/2020-09-25/1601003532627.png', null, '0', '1');
INSERT INTO `shop_seller_img` VALUES ('8', '1', null, 'other/2020-09-25/1601003532930.png', null, '0', '1');
INSERT INTO `shop_seller_img` VALUES ('10', '4', null, 'other/2020-09-27/1601173961872.png', null, '0', '1');
INSERT INTO `shop_seller_img` VALUES ('12', '4', null, 'other/2020-09-29/1601359012855.png', null, '0', '1');
INSERT INTO `shop_seller_img` VALUES ('13', '7', null, 'other/2020-10-13/1602568044937.png', null, '0', '1');
INSERT INTO `shop_seller_img` VALUES ('15', '8', null, 'other/2020-10-14/1602666721080.png', null, '0', '1');

-- ----------------------------
-- Table structure for shop_seller_info
-- ----------------------------
DROP TABLE IF EXISTS `shop_seller_info`;
CREATE TABLE `shop_seller_info` (
  `shop_id` int(50) NOT NULL AUTO_INCREMENT,
  `sid` varchar(100) NOT NULL COMMENT '商家ID',
  `tx_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'keepShop.png',
  `company` varchar(255) DEFAULT NULL COMMENT '公司名称',
  `address` varchar(255) DEFAULT NULL COMMENT '公司地址',
  `tel` varchar(100) DEFAULT NULL COMMENT '推荐人手机',
  `number` int(10) unsigned DEFAULT NULL COMMENT '企业人数',
  `company_type` varchar(100) DEFAULT NULL COMMENT '公司行业',
  `s_province` varchar(100) DEFAULT NULL,
  `s_city` varchar(100) DEFAULT NULL,
  `s_county` varchar(100) DEFAULT NULL,
  `tpeople` varchar(100) DEFAULT NULL,
  `people` varchar(100) DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '邮箱',
  `shop_edit` text COMMENT '配送费用',
  `shop_signs_edit` text COMMENT '起送费用',
  `brief_intro` varchar(255) DEFAULT NULL COMMENT '店铺简介',
  `intro` varchar(255) DEFAULT NULL COMMENT '满额免配送金额',
  `shop_log_pic` varchar(255) DEFAULT NULL COMMENT '店铺标志',
  `nickname` varchar(255) DEFAULT NULL COMMENT '店铺名称',
  `qq` varchar(255) DEFAULT NULL COMMENT ',分隔',
  `is_fine` int(10) DEFAULT '0' COMMENT '1是优选商家0不是',
  `business_license` varchar(255) DEFAULT NULL COMMENT '工商营业执照注册号',
  `legal_person` varchar(255) DEFAULT NULL COMMENT '法定代表人',
  `company_c_time` varchar(255) DEFAULT NULL COMMENT '公司成立时间',
  `operating_period` varchar(255) DEFAULT '9:00,21:00' COMMENT '经营期限',
  `is_long` int(10) DEFAULT '2' COMMENT '是否营业1是2否',
  `charge_people` varchar(255) DEFAULT NULL COMMENT '企业负责人 (店铺负责人)',
  `charge_people_phone` varchar(255) DEFAULT NULL COMMENT '企业负责人手机',
  `zip_code` varchar(255) DEFAULT NULL COMMENT '邮编',
  `company_bank` varchar(255) DEFAULT NULL COMMENT '银行账号',
  `legal_ident` varchar(255) DEFAULT NULL COMMENT '法人身份证号',
  `charge_ident` varchar(255) DEFAULT NULL COMMENT '企业(店铺)负责人身份证号',
  `certificate_num` varchar(255) DEFAULT NULL COMMENT '全国工业产品生产许可证编号',
  `brand_name` varchar(255) DEFAULT NULL COMMENT '品牌名称',
  `sell_scope` varchar(255) DEFAULT NULL COMMENT '经营范围1食品2化妆品3出口食品4药品',
  `is_exam` int(10) DEFAULT '3' COMMENT '审核是否通过0待审核1通过2不通过 默认3',
  `reason` text COMMENT '审核失败原因',
  `reg_capital` decimal(50,2) NOT NULL DEFAULT '0.00' COMMENT '注册资本',
  `is_inline` int(10) DEFAULT '0' COMMENT '店铺是否发布1是0否',
  `visitor_num` int(100) DEFAULT '0' COMMENT '访客数',
  `visitor_flag` varchar(100) DEFAULT '0' COMMENT '(值为时间戳)小程序是否调用获取access_token标识',
  `alww` varchar(250) DEFAULT NULL,
  `seller_level` int(11) DEFAULT NULL,
  `notice` varchar(255) DEFAULT '我的店铺我做主' COMMENT '公告信息',
  `invite` int(11) DEFAULT '50' COMMENT '邀请有奖份额',
  `longitude` varchar(100) DEFAULT NULL,
  `latitude` varchar(100) DEFAULT NULL,
  `shop_no` varchar(100) DEFAULT NULL COMMENT '门店编码',
  `dada_money` decimal(50,2) DEFAULT '0.00' COMMENT '商家支付达达费用',
  `jx_dada_money` decimal(50,2) DEFAULT '0.00' COMMENT '平台补贴达达费用',
  `money` decimal(50,2) DEFAULT '0.00' COMMENT '商家在达达账户余额',
  `hhr_money` decimal(30,2) DEFAULT '0.00' COMMENT '合伙人费用',
  `sq_userid` varchar(100) DEFAULT NULL COMMENT '业务员ID',
  `is_ok` int(10) DEFAULT '2' COMMENT '商家是否支付本年费用',
  `open_bank` varchar(100) DEFAULT NULL COMMENT '开户行',
  `bank_type` varchar(100) DEFAULT NULL COMMENT '如借记卡',
  `img_yyzz` varchar(255) DEFAULT NULL COMMENT '营业执照图',
  `img_spltskz` varchar(255) DEFAULT NULL COMMENT '食品经营许可图',
  `img_yhk` varchar(255) DEFAULT NULL COMMENT '法人银行卡图',
  `img_one` varchar(255) DEFAULT NULL COMMENT '身份证正面图',
  `img_two` varchar(255) DEFAULT NULL COMMENT '身份证反面图',
  `letter` varchar(255) DEFAULT NULL COMMENT '信用证号',
  `charter_address` varchar(255) DEFAULT NULL COMMENT '营业执照地址',
  `idcard_name` varchar(255) DEFAULT NULL COMMENT '身份证姓名',
  `sex` varchar(255) DEFAULT NULL COMMENT '性别',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `charter_time` varchar(100) DEFAULT NULL COMMENT '营业有效期',
  `bank` varchar(255) DEFAULT NULL COMMENT '法人银行卡号',
  `idcard_branch` varchar(255) DEFAULT NULL COMMENT '发证机关',
  `idcard_address` varchar(255) DEFAULT NULL COMMENT '户籍地址',
  `idcard_place` varchar(255) DEFAULT NULL COMMENT '籍贯',
  `idcard_year` varchar(255) DEFAULT NULL COMMENT '出生年月',
  `idcard_time` varchar(255) DEFAULT NULL COMMENT '身份证有效期',
  `charter_name` varchar(255) DEFAULT NULL COMMENT '营业执照店铺名',
  `person` varchar(255) DEFAULT NULL COMMENT '营业执照上法人',
  `is_mail` int(10) unsigned DEFAULT '0' COMMENT '是否邮寄1-是 不用判断距离0-否 判断距离',
  `wx_settlement_bank_code` varchar(100) DEFAULT NULL COMMENT '微信结算银行code',
  `company_img` varchar(255) DEFAULT NULL COMMENT '公司图片',
  `coupon_img` varchar(255) DEFAULT NULL COMMENT '优惠券图片',
  `my_qr_code` varchar(255) DEFAULT NULL,
  `is_showmessage` int(1) unsigned zerofill DEFAULT '1' COMMENT '1显示0不显示',
  PRIMARY KEY (`shop_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='商家详细信息';

-- ----------------------------
-- Records of shop_seller_info
-- ----------------------------
INSERT INTO `shop_seller_info` VALUES ('1', '1234567890123456789', 'other/2020-10-20/1603183182983.png', '小维集团', '浙江省嘉兴市南湖区东栅街道凌公塘路1456号', null, null, '计算机', null, null, null, null, null, null, null, null, '这是小维的门店', null, null, null, null, '0', null, null, null, '9:00,21:00', '2', null, null, null, null, null, null, null, '浙江醍磨豆教育科技有限公司', '天那么大', '3', null, '0.00', '0', '0', '0', null, null, '我的店铺我做主', '50', '120.786644', '30.745373', null, '0.00', '0.00', '0.00', '0.00', null, '2', null, null, null, null, null, null, null, null, 'other/2020-10-20/1603186421533.png', null, null, null, null, null, null, null, null, null, null, null, null, '0', null, 'other/2020-10-20/1603186425018.png', 'other/2020-10-20/1603160003443.png', 'qrCode/2020-10-14/1152811_7523.jpg', '1');
INSERT INTO `shop_seller_info` VALUES ('2', '1597658433095554026', 'default/tximg.png', '杭州天册科技有限公司', '杭州市余杭区迎宾路407', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '9:00,21:00', '2', null, null, null, null, null, null, null, null, null, '3', null, '0.00', '0', '0', '0', null, null, '我的店铺我做主', '50', null, null, null, '0.00', '0.00', '0.00', '0.00', null, '2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, null, '1');
INSERT INTO `shop_seller_info` VALUES ('3', '1597975644248205115', 'default/tximg.png', '天册科技', '浙江省杭州市余杭区迎宾路323号', null, null, '互联网', null, null, null, null, null, null, null, null, '小程序，app开发，软件测试', null, null, null, null, '0', null, null, null, '9:00,21:00', '2', null, null, null, null, null, null, null, '浙江醍磨豆教育科技有限公司', '软件开发', '3', null, '0.00', '0', '0', '0', null, null, '我的店铺我做主', '50', '120.303703', '30.408646', null, '0.00', '0.00', '0.00', '0.00', null, '2', null, null, null, null, null, null, null, null, 'null', null, null, '2020-08-21 10:07:24', null, null, null, null, null, null, null, null, null, '0', null, 'other/2020-10-21/1603266247100.png', 'null', 'qrCode/2020-10-21/3150650_5735.jpg', '0');
INSERT INTO `shop_seller_info` VALUES ('4', '1598195758040933419', 'default/tximg.png', '御秀软装', '浙江省嘉兴市南湖区大桥镇紫宇路910号', null, null, '软装', null, null, null, null, null, null, null, null, '御秀软装', null, null, null, null, '0', null, null, null, '9:00,21:00', '2', null, null, null, null, null, null, null, '御秀实业控股股份有限公司', '墙布', '3', null, '0.00', '0', '0', '0', null, null, '我的店铺我做主', '50', '120.882935', '30.734718', null, '0.00', '0.00', '0.00', '0.00', null, '2', null, null, null, null, null, null, null, null, 'null', null, null, '2020-08-23 23:15:58', null, null, null, null, null, null, null, null, null, '0', null, 'other/2020-10-22/1603328959110.png', 'null', 'qrCode/2020-10-14/4130142_9221.jpg', '1');
INSERT INTO `shop_seller_info` VALUES ('5', '1599461886426609809', 'default/tximg.png', '御秀软装', '嘉兴市南湖区大桥镇紫宇路910号', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '9:00,21:00', '2', null, null, null, null, null, null, null, null, null, '3', null, '0.00', '0', '0', '0', null, null, '我的店铺我做主', '50', null, null, null, '0.00', '0.00', '0.00', '0.00', null, '2', null, null, null, null, null, null, null, null, null, null, null, '2020-09-07 14:58:06', null, null, null, null, null, null, null, null, null, '0', null, null, null, null, '1');
INSERT INTO `shop_seller_info` VALUES ('7', '1601277261496271661', 'other/2020-10-20/1603182667976.png', '御秀测试1', '浙江省嘉兴市南湖区大桥镇紫宇路379号', null, null, '装饰', null, null, null, null, null, null, null, null, '测定', null, null, null, null, '0', null, null, null, '9:00,21:00', '2', null, null, null, null, null, null, null, '御秀实业控股股份有限公司', '墙布1', '3', null, '0.00', '0', '0', '0', null, null, '我的店铺我做主', '50', '120.881187', '30.734673', null, '0.00', '0.00', '0.00', '0.00', null, '2', null, null, null, null, null, null, null, null, 'other/2020-10-20/1603189424964.png', null, null, '2020-09-28 15:14:21', null, null, null, null, null, null, null, null, null, '0', null, 'other/2020-10-20/1603189434330.png', 'other/2020-10-20/1603191564067.png', 'qrCode/2020-10-14/7130025_1676.jpg', '1');
INSERT INTO `shop_seller_info` VALUES ('8', '1601279797684509193', 'other/2020-10-20/1603182468269.png', '112', '浙江省杭州市余杭区迎宾路323号', null, null, '测试', null, null, null, null, null, null, null, null, '门店介绍', null, null, null, null, '0', null, null, null, '9:00,21:00', '2', null, null, null, null, null, null, null, '御秀实业控股股份有限公司', '天天', '3', null, '0.00', '0', '0', '0', null, null, '我的店铺我做主', '50', '120.303703', '30.408646', null, '0.00', '0.00', '0.00', '0.00', null, '2', null, null, null, null, null, null, null, null, null, null, null, '2020-09-28 15:56:38', null, null, null, null, null, null, null, null, null, '0', null, null, 'other/2020-10-14/1602666736192.png', null, '1');
INSERT INTO `shop_seller_info` VALUES ('10', '1604219937424432743', 'keepShop.png', '邳州', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '9:00,21:00', '2', null, null, null, null, null, null, null, null, null, '3', null, '0.00', '0', '0', '0', null, null, '我的店铺我做主', '50', null, null, null, '0.00', '0.00', '0.00', '0.00', null, '2', null, null, null, null, null, null, null, null, null, null, null, '2020-11-01 16:38:57', null, null, null, null, null, null, null, null, null, '0', null, null, null, null, '1');
INSERT INTO `shop_seller_info` VALUES ('11', '1604219973659223183', 'keepShop.png', '西峡', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '9:00,21:00', '2', null, null, null, null, null, null, null, null, null, '3', null, '0.00', '0', '0', '0', null, null, '我的店铺我做主', '50', null, null, null, '0.00', '0.00', '0.00', '0.00', null, '2', null, null, null, null, null, null, null, null, null, null, null, '2020-11-01 16:39:34', null, null, null, null, null, null, null, null, null, '0', null, null, null, null, '1');
INSERT INTO `shop_seller_info` VALUES ('12', '1604220005523183713', 'keepShop.png', '萧山', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '9:00,21:00', '2', null, null, null, null, null, null, null, null, null, '3', null, '0.00', '0', '0', '0', null, null, '我的店铺我做主', '50', null, null, null, '0.00', '0.00', '0.00', '0.00', null, '2', null, null, null, null, null, null, null, null, null, null, null, '2020-11-01 16:40:06', null, null, null, null, null, null, null, null, null, '0', null, null, null, null, '1');
INSERT INTO `shop_seller_info` VALUES ('13', '1604220030618109050', 'keepShop.png', '温岭', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '9:00,21:00', '2', null, null, null, null, null, null, null, null, null, '3', null, '0.00', '0', '0', '0', null, null, '我的店铺我做主', '50', null, null, null, '0.00', '0.00', '0.00', '0.00', null, '2', null, null, null, null, null, null, null, null, null, null, null, '2020-11-01 16:40:31', null, null, null, null, null, null, null, null, null, '0', null, null, null, null, '1');

-- ----------------------------
-- Table structure for shop_seller_label
-- ----------------------------
DROP TABLE IF EXISTS `shop_seller_label`;
CREATE TABLE `shop_seller_label` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seller_id` int(11) DEFAULT NULL COMMENT '商家id',
  `label_id` int(11) DEFAULT NULL COMMENT '标签id',
  `num` int(11) DEFAULT NULL COMMENT '点赞次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='商家的标签';

-- ----------------------------
-- Records of shop_seller_label
-- ----------------------------
INSERT INTO `shop_seller_label` VALUES ('1', '1', '1', '1');
INSERT INTO `shop_seller_label` VALUES ('2', '1', '2', '2');
INSERT INTO `shop_seller_label` VALUES ('3', '1', '3', '3');

-- ----------------------------
-- Table structure for shop_task
-- ----------------------------
DROP TABLE IF EXISTS `shop_task`;
CREATE TABLE `shop_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) DEFAULT NULL COMMENT '门店编号',
  `title` varchar(50) DEFAULT NULL COMMENT '任务标题',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '任务内容',
  `is_specified` varchar(5) DEFAULT NULL,
  `specified_id_list` varchar(50) DEFAULT NULL,
  `new_clue_num` int(11) DEFAULT NULL COMMENT '新增线索数量',
  `new_spread_num` int(11) DEFAULT NULL COMMENT '推广内容的次数',
  `new_phone_num` int(11) DEFAULT NULL COMMENT '新增电话',
  `new_report_num` int(11) DEFAULT NULL COMMENT '新增客户转发',
  `time_limit_type` varchar(5) DEFAULT NULL COMMENT '时限类型，1紧急任务，2单次任务，3每周任务，4每月任务',
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `remind_type` varchar(5) DEFAULT NULL COMMENT '提醒类型，1截止前1小时',
  `executor` varchar(255) DEFAULT NULL COMMENT '执行人列表',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='门店的任务';

-- ----------------------------
-- Records of shop_task
-- ----------------------------

-- ----------------------------
-- Table structure for shop_user
-- ----------------------------
DROP TABLE IF EXISTS `shop_user`;
CREATE TABLE `shop_user` (
  `id` int(200) unsigned NOT NULL AUTO_INCREMENT,
  `openid` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '微信id',
  `token` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '口令',
  `brand` varchar(15) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '品牌',
  `model` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '型号',
  `version` varchar(15) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '微信版本号',
  `phonesystem` varchar(15) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '操作系统及版本',
  `platform` varchar(15) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '客户端平台',
  `sdk_version` varchar(15) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '客户端基础库版本',
  `ip` varchar(16) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  `create_time` datetime DEFAULT NULL,
  `user_type` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '用户类型，0线索，1客户，默认为0',
  `is_user_time` datetime DEFAULT NULL COMMENT '设置为客户的时间',
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户名',
  `tx_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'http://customersystemimg.tiancekj.com/default/132.jpg' COMMENT '头像',
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '手机号码',
  `nick_name` varchar(50) DEFAULT NULL COMMENT '昵称',
  `look_shop_num` int(11) DEFAULT '0' COMMENT '访问门店次数',
  `look_card_num` int(11) DEFAULT '0' COMMENT '访问名片次数',
  `last_look_time` datetime DEFAULT NULL COMMENT '上次访问时间',
  `province` varchar(20) DEFAULT NULL COMMENT '省份',
  `city` varchar(20) DEFAULT NULL COMMENT '市',
  `country` varchar(20) DEFAULT NULL COMMENT '区县',
  `livingroom` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '客厅数量',
  `dinerroom` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '餐厅数量',
  `kitchen` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '厨房数量',
  `bedroom` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卧室数量',
  `house_area` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '住房面积',
  `budget` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '预算',
  `zx_level` varchar(5) DEFAULT NULL COMMENT '装修级别，1简装，2精装，3豪装',
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `session_key` varchar(64) DEFAULT NULL COMMENT '会话密钥',
  `sid` int(10) DEFAULT NULL COMMENT '当前用户所在门店',
  `sex` int(10) DEFAULT '3' COMMENT '1男2女',
  `uid` int(11) DEFAULT NULL COMMENT '转发用户id',
  `oid` int(11) DEFAULT NULL COMMENT '转发员工id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=337 DEFAULT CHARSET=utf8 COMMENT='门店的用户';

-- ----------------------------
-- Records of shop_user
-- ----------------------------
INSERT INTO `shop_user` VALUES ('2', 'oo5b_4zhH3QWsJDlhnVRihZRnqUA', 'da5992a3f36a2b3a521c82071a67edca', 'iPhone', 'iPhone 6s Plus<iPhone8,2>', '7.0.15', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-08-22 15:08:40', '0', null, '赵天', 'https://thirdwx.qlogo.cn/mmopen/vi_32/RCtcG9jespLOubicxvC8E00dRXa891vSnCPwKxic97wxD2XJkQUCl4anz67yz4ibibW6u021Wz75ryibVQAbGmnDdpQ/132', '18758016435', '小王', '0', '0', '2020-08-27 17:25:03', '浙江', '杭州', '余杭', null, null, null, null, '114', '120', '1', null, 'aLKGM2O0k5TGhQxsotCnJA==', '1', '1', null, null);
INSERT INTO `shop_user` VALUES ('3', 'oo5b_43QGohdhVZYExC-aq7zWjuM', '6017991484263895dbd63afd2ace3d0f', 'iPhone', 'iPhone 6s Plus<iPhone8,2>', '7.0.17', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-08-23 07:29:34', '1', '2020-10-14 13:56:24', '钱册', 'https://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eopSRn2lyhoexcFzlZ7g3aaVicX9cGjRg715YmkFbsGYtAAnvdibwSmFnF0C4JpIpMksWWaXwctaVbA/132', '18069869521', '小张', '0', '0', '2020-08-27 17:25:17', '浙江', '杭州', '余杭', '1', '1', '2', '1', '99', '99999', '1', '无', 'QLpo8JkdCb1I+VE28p/YOg==', '1', '1', '1000111', '11');
INSERT INTO `shop_user` VALUES ('4', 'oo5b_4yOV8Ka3WxBpvRDhTmHf_Dg', 'd809fd4cd87e2c036949896f24504103', 'devtools', 'iPhone 6/7/8', '7.0.4', 'undefined', 'devtools', 'undefined', '116.62.46.3', '2020-08-23 11:17:44', '1', '2020-10-14 14:30:21', '孙科', 'https://thirdwx.qlogo.cn/mmopen/vi_32/RCtcG9jespLOubicxvC8E00dRXa891vSnCPwKxic97wxD2XJkQUCl4anz67yz4ibibW6u021Wz75ryibVQAbGmnDdpQ/132', '17333333333', '小李', '0', '0', '2020-08-27 17:25:06', '浙江', '杭州', '余杭', '1', '1', '2', '1', '99', '99999', '1', '⑤', 'K9+2xv0b9eG6wE3Yg0l4Jw==', '1', '3', null, null);
INSERT INTO `shop_user` VALUES ('5', 'oo5b_4yOV8Ka3WxBpvRDhTmHf_D1', null, null, null, null, null, null, null, null, '2020-08-23 11:17:44', '0', '2020-08-27 17:10:20', '李技', 'https://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eopSRn2lyhoexcFzlZ7g3aaVicX9cGjRg715YmkFbsGYtAAnvdibwSmFnF0C4JpIpMksWWaXwctaVbA/132', '14400001111', '小小', '0', '0', '2020-08-27 17:25:20', '浙江', '杭州', '余杭', null, null, null, null, '54', '410', '1', null, null, '1', '3', null, null);
INSERT INTO `shop_user` VALUES ('6', 'oo5b_4yOV8Ka3WxBpvRDhTmHf_D2', null, null, null, null, null, null, null, null, '2020-09-08 10:15:13', '0', '2020-08-27 17:10:23', '周桂', 'https://thirdwx.qlogo.cn/mmopen/vi_32/RCtcG9jespLOubicxvC8E00dRXa891vSnCPwKxic97wxD2XJkQUCl4anz67yz4ibibW6u021Wz75ryibVQAbGmnDdpQ/132', '15300001111', '小哥', '0', '0', '2020-08-27 17:25:08', '浙江', '杭州', '余杭', null, null, null, null, '75', '200', '2', null, null, '1', '3', null, null);
INSERT INTO `shop_user` VALUES ('7', 'oo5b_4yOV8Ka3WxBpvRDhTmHf_D3', null, null, null, null, null, null, null, null, '2020-09-08 10:15:16', '1', '2020-10-14 17:22:20', '吴网', 'https://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eopSRn2lyhoexcFzlZ7g3aaVicX9cGjRg715YmkFbsGYtAAnvdibwSmFnF0C4JpIpMksWWaXwctaVbA/132', '13055552222', '小滴', '0', '0', '2020-08-27 17:25:23', '浙江', '杭州', '余杭', '1', '1', '2', '1', '1', '1238', '2', '无', null, '1', '3', null, null);
INSERT INTO `shop_user` VALUES ('8', 'oo5b_4yOV8Ka3WxBpvRDhTmHf_D4', null, null, null, null, null, null, null, null, '2020-09-08 10:15:18', '1', '2020-10-14 17:24:31', '王炸', 'https://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eopSRn2lyhoexcFzlZ7g3aaVicX9cGjRg715YmkFbsGYtAAnvdibwSmFnF0C4JpIpMksWWaXwctaVbA/132', '13600001111', '小猪', '0', '0', '2020-08-27 17:25:11', '浙江', '杭州', '余杭', '1', '1', '2', '1', '13', '65', '1', '注册', null, '1', '3', null, null);
INSERT INTO `shop_user` VALUES ('9', 'oo5b_4yOV8Ka3WxBpvRDhTmHf_D5', null, null, null, null, null, null, null, null, '2020-09-08 10:15:20', '0', '2020-08-27 17:10:20', '诸葛子', 'https://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eopSRn2lyhoexcFzlZ7g3aaVicX9cGjRg715YmkFbsGYtAAnvdibwSmFnF0C4JpIpMksWWaXwctaVbA/132', null, '小欧', '0', '0', '2020-08-27 17:25:25', '浙江', '杭州', '余杭', null, null, null, null, '101', '150', '2', null, null, '1', '3', null, null);
INSERT INTO `shop_user` VALUES ('10', 'oo5b_4yOV8Ka3WxBpvRDhTmHf_D6', null, null, null, null, null, null, null, null, '2020-09-08 10:15:22', '0', '2020-09-01 16:45:54', '欧阳丑', 'https://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eopSRn2lyhoexcFzlZ7g3aaVicX9cGjRg715YmkFbsGYtAAnvdibwSmFnF0C4JpIpMksWWaXwctaVbA/132', null, '小炸', '0', '0', '2020-08-27 17:25:15', '浙江', '杭州', '余杭', null, null, null, null, '90', '512', '3', null, null, '1', '3', null, null);
INSERT INTO `shop_user` VALUES ('17', 'oo5b_408H2U_mLLUiEUtbK0Po0eM', '1d0a3f1262f296c85e9cd208460e8d00', 'iPhone', 'iPhone X (GSM+CDMA)<iPhone10,3>', '7.0.14', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-09-07 13:51:21', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'JBlBClb7QdNAvsKyOqKdzg==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('18', 'oo5b_4wfMSA_2iO1KW1uMNUS0prA', '31151c2c4d4bc596cf9f74738ae43987', 'iMac19,2', 'iMac19,2', '7.0.8', 'undefined', 'mac', 'undefined', '116.62.46.3', '2020-09-11 08:20:00', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', '13967361174', null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'fGQ6HCZ/wHlUeIPJOgjHbw==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('19', 'oo5b_4wfMSA_2iO1KW1uMNUS0prA', 'dc7b3d22203800336c74ba6044d609b5', 'iPhone', 'iPhone X (GSM+CDMA)<iPhone10,3>', '7.0.15', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-09-11 08:20:00', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'QJ7G5v1PWU6AF1rwc848RA==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('20', 'oo5b_4yOqhtP3bGht8N38rBV0xx4', '024fe0675f2cb4696ab215db40068b7a', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-09-23 17:21:04', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'n528huXGRrrJnnzmz1CYPQ==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('21', 'oo5b_4yOqhtP3bGht8N38rBV0xx4', 'fc5464cdb2a575b6a5683f0658cd5ca1', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-09-23 17:21:04', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'n528huXGRrrJnnzmz1CYPQ==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('22', 'oo5b_4yOqhtP3bGht8N38rBV0xx4', '22cbc778215d0755b4a24b2ca0b71d23', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-09-23 17:21:04', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'n528huXGRrrJnnzmz1CYPQ==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('23', 'oo5b_4zeuyt54HrP8REV22DFKtUs', '9660d0923e3a94d0316f9623ed844ae7', 'OPPO', 'PAAM00', '7.0.13', 'undefined', 'android', 'undefined', '116.62.46.3', '2020-09-24 09:31:36', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', '18532102363', null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, '4rrl7WHdqKQ9cSC5KtL8GQ==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('24', 'oo5b_4zc9Jmc3ot4QGoDbUPu9RTU', '211ed9c3637e378d84e6c64c8f436a5f', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-09-24 17:55:13', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, '/zfbYkn7dUguOhtGZy52+Q==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('25', 'oo5b_43EjBp545RNkG64shIbKcwc', '28fcee0659f9300892fd3bbf9b766c87', 'iPhone', 'iPhone XS MAX China-exclusive<iPhone 11,6>', '7.0.8', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-09-27 16:20:52', '0', null, '小倩', 'https://thirdwx.qlogo.cn/mmopen/vi_32/666ZxTwTYHX0MxH0OekZ2oCQnbd0JgymcO3tCyd2mpibOib9TORiaqicJoibv1bvxTQkjrFjyXqpxGr7s2dQsibOeZqw/132', null, null, '0', '0', null, 'Dusseldorf', '', null, null, null, null, null, null, null, null, null, 'e7atXD+C+kE+DU4chkc65A==', null, '1', null, null);
INSERT INTO `shop_user` VALUES ('26', 'oo5b_46yCZOuUSS7Me7JiIzU0uC8', '26f05b6a19de1a41034788453f39ff06', 'iPhone', 'iPhone XS MAX China-exclusive<iPhone 11,6>', '7.0.8', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-09-27 16:20:52', '0', null, '母笑阳', 'https://thirdwx.qlogo.cn/mmopen/vi_32/PiajxSqBRaELdu2lMQ44lzrO8syufEdgbSabCAf8zzkIcR9YQwjQlHaRwKe3aHpuroib7ia5G4ViaoicVzYb63jQ0tw/132', null, null, '0', '0', null, 'Hebei', 'Baoding', null, null, null, null, null, null, null, null, null, 'ORwdpVU1CSPak9jqkZkeZw==', null, '2', null, null);
INSERT INTO `shop_user` VALUES ('27', 'oo5b_4yYGyyUsEW0EjOdpmT01RtE', '206ebec1f1d757cfdc01e8bc81e5cf34', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-09-27 16:51:12', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'zVxHft9puW7eHQIwfG+AKg==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('28', 'oo5b_4zfdGCiFphtoKlfcach12Ao', 'b78f3adfff1a1755294db7dafd9c071d', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-09-28 13:12:41', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'TzPLNi6YTpXUn5+ZT8CKhQ==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('29', 'oo5b_4-ZNiC3V3xqE7AjjcUOVYgY', 'e8ee8331ca659b030aab97450d8ce7d5', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-09-28 15:12:53', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'Vgl76cick7bYEGKQyL+FGQ==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('30', 'oo5b_42qrrXu4OqG-jaRwy9YG_J8', 'e6c897930ab01576d17e825fc57d0e13', 'iPhone', 'iPhone XS MAX China-exclusive<iPhone 11,6>', '7.0.8', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-09-28 18:12:04', '0', null, '魏剑帆', 'https://thirdwx.qlogo.cn/mmopen/vi_32/Qp6EnXhUrLKTu8hE10TaDddu9WhCEfnM7BtU1jwcbMEEKafQFJ66aBvx0BFKckeIlUicJI6kKEOewPTwTzuEaaQ/132', null, null, '0', '0', null, 'Guangdong', 'Guangzhou', null, null, null, null, null, null, null, null, null, 'PtAkRRuIhXiMQI1ubh1jOg==', null, '1', null, null);
INSERT INTO `shop_user` VALUES ('31', 'oo5b_43u3zTIG_luPl-w4WDMyxSs', 'c641440adc7406ca96b783f0dec0e127', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-09-28 19:31:25', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'Vk+d4CiWrPpAZ2ibNMgHkg==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('32', 'oo5b_40--ATCSYzPgX-Jhz1SF8ZA', '4d42f8f50c7daf8ff6e89d7873b10ae8', 'iPhone', 'iPhone X (GSM+CDMA)<iPhone10,3>', '7.0.15', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-09-29 10:29:17', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'UuRWoi4Zf0h0vrcg5eB5Ow==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('33', 'oo5b_47WV14vhhCxewhirZKI7TPA', '9d547a07d5ebe5256f63f5e726cd82cd', 'iPhone', 'iPhone XS MAX China-exclusive<iPhone 11,6>', '7.0.8', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-09-29 14:50:56', '0', null, 'Shinawatra', 'https://thirdwx.qlogo.cn/mmopen/vi_32/52eZlEWhZMmc1HOJLDslKSy3Qv2gktCibXSXibSypfKISCj9RlMq5iawZGLlUpOibpqVSTmrliba6M7zXRUSNKdmBkw/132', null, null, '0', '0', null, 'Shanxi', 'Changzhi', null, null, null, null, null, null, null, null, null, 'riZGn2S76C+e/mfmcau3lw==', null, '2', null, null);
INSERT INTO `shop_user` VALUES ('34', 'oo5b_41Pd8snswDSi6gGgjggiIek', 'ca0729d3af2a5ac399f205c6fff46e11', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-09-29 15:02:16', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'zKTEliGroeoARCLxSplaAQ==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('35', 'oo5b_41Pd8snswDSi6gGgjggiIek', '5e369140898fc28f3a1eeac38ab15b18', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-09-29 15:02:16', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'zKTEliGroeoARCLxSplaAQ==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('36', 'oo5b_45FAFaFDWIiLDq0CtEQYMAA', 'cbe2e42bb8699ebb2d642904c34b86a6', 'iPhone', 'iPhone XS MAX China-exclusive<iPhone 11,6>', '7.0.8', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-09-29 15:30:48', '0', null, '福星高照', 'https://thirdwx.qlogo.cn/mmopen/vi_32/16ZDP2RdE8vxoZjRoPxNib1eKYpO6gC1FNffQPgeddJAmibfDFJfoIL3Cpu8IzbMt51QeTLZS6dvsAhdU9rEo69A/132', null, null, '0', '0', null, 'Henan', 'Zhengzhou', null, null, null, null, null, null, null, null, null, '5Q04YJmiRz9Xa2s54KDhRQ==', null, '2', null, null);
INSERT INTO `shop_user` VALUES ('37', 'oo5b_4zlk_goSJxl6rIFZPaPjQHA', '1145e64ad99a211886f57d63c8d291cd', 'iPhone', 'iPhone XS MAX China-exclusive<iPhone 11,6>', '7.0.8', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-09-29 15:30:48', '0', null, '超_越梦想', 'https://thirdwx.qlogo.cn/mmopen/vi_32/G4xSichm2PreoWXuhl6XdrQgppDicyzicMnLS9H01mwXOcqEibE9RGHibhyVen7hxFjRHuodcFe13apRKvRZ5J1chMg/132', null, null, '0', '0', null, 'Shandong', 'Yantai', null, null, null, null, null, null, null, null, null, 'vl6AFuTN92xq0HcNOc6zag==', null, '2', null, null);
INSERT INTO `shop_user` VALUES ('38', 'oo5b_4-QtaellTIUdkhp95DeccPw', '311e6f9ab467d54efb4c3e68078e0b91', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-09-29 15:42:30', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'Jil3cUHxRd6rmbsQncWGHg==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('39', 'oo5b_4ybpOK1pXlsGb3iVuNTrSLo', '44a201ff032e6b7aca5d156056b8dabd', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-09-29 18:20:58', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'iC19842Gt0kWs1VBC0tmQg==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('40', 'oo5b_4zOJwTPHg-81OM8brnJd0R4', '8ab9103ee0b52c031b2f4b821df7419a', 'HUAWEI', 'VOG-AL10', '7.0.19', 'undefined', 'android', 'undefined', '116.62.46.3', '2020-09-30 09:58:32', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'O4f9jZUJaDlZJN9VILrjVg==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('41', 'oo5b_422sE8uxQiWG22jzo8qqA10', 'e051f89df5ed609f363489d592bef293', 'iPhone', 'iPhone XS Max China-exclusive<iPhone11,6>', '7.0.15', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-09-30 09:58:32', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, '4dTuEXTvys5JtikkA10PQw==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('42', 'oo5b_4zJ5k_JzqNgaDXjBrDI7JAw', '192938e7d7af89d6f887e4a978746074', 'HUAWEI', 'CDY-AN00', '7.0.19', 'undefined', 'android', 'undefined', '116.62.46.3', '2020-09-30 09:58:33', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'yzgv2JtcwdJ7XRwEHWNiMA==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('43', 'oo5b_4zJ5k_JzqNgaDXjBrDI7JAw', '74db6d7a342ae13dc8528bb9a1781c06', 'HUAWEI', 'CDY-AN00', '7.0.19', 'undefined', 'android', 'undefined', '116.62.46.3', '2020-09-30 09:58:33', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'yzgv2JtcwdJ7XRwEHWNiMA==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('44', 'oo5b_47W5QOsEYYOXC2YbZHrXLP0', 'ed0dbb1a47f7b449e7d8e6200875cbd4', 'HUAWEI', 'WLZ-AN00', '7.0.19', 'undefined', 'android', 'undefined', '116.62.46.3', '2020-09-30 09:58:38', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'i6XrAFWueTcFzbVK+ts32A==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('45', 'oo5b_4xSwtLesdC4rOHod8CYjwTY', '7a159bfe7d6556b0eaa954e55fb2cea6', 'iPhone', 'iPhone 11 Pro Max<iPhone12,5>', '7.0.15', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-09-30 09:58:39', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', '13001633366', null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'EJ0lmOXB1kKECBD+ZnaWEA==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('46', 'oo5b_42LXgV8PrLZKJlVIVDuBDGU', '4b1b6742694bd4d00fc6831b025e918c', 'HUAWEI', 'LIO-AN00', '7.0.19', 'undefined', 'android', 'undefined', '116.62.46.3', '2020-09-30 09:58:45', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'WLq05NYaV/w92Nn7mmCTKg==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('47', 'oo5b_4xYMqs3O75YakPfKqBFjVEg', 'df86476075576083b91deae466b710c8', 'iPhone', 'iPhone 11<iPhone12,1>', '7.0.15', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-09-30 09:58:47', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'p9gP4elULa6J2XXOUNuiJA==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('48', 'oo5b_49qxYIDIVv674hr_OZRxUKc', '683f0d30f82750ed52d146a9599814e7', 'iPhone', 'iPhone XR<iPhone11,8>', '7.0.15', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-09-30 09:58:55', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'TDpDcd3KUlCrAhj878vuIg==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('49', 'oo5b_46063-iNdFTt54kQg9zaoVk', 'b5c96c42ca2bff7bc71675f484a94c99', 'iPhone', 'iPhone XS<iPhone11,2>', '7.0.15', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-09-30 09:58:58', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'TtA/KUMNjcaTbMSTP9AFZw==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('50', 'oo5b_44L7XQGAvAQRkjWtozI5J1U', '44a4226edd9b225185d89707f29a8c0e', 'HUAWEI', 'ANA-AN00', '7.0.19', 'undefined', 'android', 'undefined', '116.62.46.3', '2020-09-30 09:59:00', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'BY4fMlgOzXjhF+2SkCKcKA==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('51', 'oo5b_4xt7YWZ_AdxS56dInhe8cKk', '77842ce2298e1f6e909efb60b0e51567', 'iPhone', 'iPhone X (GSM+CDMA)<iPhone10,3>', '7.0.15', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-09-30 09:59:00', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'uXTnFkxwN1/zlz2PJl4s0A==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('52', 'oo5b_40VwRHiJKRbloag-UljC6I0', '882eda5f6d731fcea80bc96aca073b49', 'HUAWEI', 'LYA-AL00', '7.0.19', 'undefined', 'android', 'undefined', '116.62.46.3', '2020-09-30 09:59:02', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'clyswToIsSeWuQtSYVaYUw==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('53', 'oo5b_40VwRHiJKRbloag-UljC6I0', '428fdc82e2d1ae9eb16fcfd6d24166be', 'HUAWEI', 'LYA-AL00', '7.0.19', 'undefined', 'android', 'undefined', '116.62.46.3', '2020-09-30 09:59:02', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'clyswToIsSeWuQtSYVaYUw==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('54', 'oo5b_42fcmdlmL0vxSD8Yn6XGEls', 'cca0f062ff417f648a8030940ea5aab7', 'HUAWEI', 'CLT-AL00', '7.0.19', 'undefined', 'android', 'undefined', '116.62.46.3', '2020-09-30 09:59:21', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'JP9ZVJI8OBYRIcRWmNoFuw==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('55', 'oo5b_42fcmdlmL0vxSD8Yn6XGEls', '1b46a7c8f3a552a9911b623c8d898397', 'HUAWEI', 'CLT-AL00', '7.0.19', 'undefined', 'android', 'undefined', '116.62.46.3', '2020-09-30 09:59:21', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'JP9ZVJI8OBYRIcRWmNoFuw==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('56', 'oo5b_4_ou3qzYuquTUWuQ6qWyNeo', 'da17b495191eb9156ff81356d53e99d3', 'Xiaomi', 'MIX 3', '7.0.19', 'undefined', 'android', 'undefined', '116.62.46.3', '2020-09-30 10:12:32', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'AHD70+EqP5wLXoRcOSoQFA==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('57', 'oo5b_4_ou3qzYuquTUWuQ6qWyNeo', 'c82222b4e6bbbd2e65d41f137fe10275', 'Xiaomi', 'MIX 3', '7.0.19', 'undefined', 'android', 'undefined', '116.62.46.3', '2020-09-30 10:12:32', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'AHD70+EqP5wLXoRcOSoQFA==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('58', 'oo5b_4yj46TpJjSB3pZV3B2UbQSw', '051f275f0e5bd7f708592edb16c666e0', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-01 00:24:11', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'auj4wl8OZ5xbXfGp7ciglg==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('59', 'oo5b_4-Xd0ge7K9QnqZoJvTTaNgM', '04ddcceee3510475d661d5001727b95b', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-01 07:43:38', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'EfxxgJo2Io6v9uRQ99pIug==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('60', 'oo5b_44x851jnvKtyF8Kr5WW4fsE', '470e29baf9e0b7613b801a2250836052', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-01 08:30:01', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'yWtXfnnC5THYib7Zy/QN1Q==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('61', 'oo5b_45ZF4B1Y1JAjy3IEzMz4iJM', '435f7a8e605035e61ae3f5980ae8d703', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-01 08:30:12', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, '1OblOHEk/N4ao0PFsc053A==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('62', 'oo5b_42i6CvNmEhHRg4dwPn5ubt0', '8cd3e3012aad6b2b37267c4dd6cb6e03', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-01 08:32:03', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'ozKiTRU/YTrvkeGC5IRVsw==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('63', 'oo5b_49ELY_vh8rABDiNNm0TGT30', 'e9270167df8a9830c3809a2d94669b6e', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-01 08:34:03', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, '37feSJMqPd7+5//WajlTlQ==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('64', 'oo5b_4xRTgcZ8hLfg0HJc9cBYuUo', 'eee7d87272af27dab2c5d2380aba7a8b', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-01 09:28:11', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, '17LAbKRGRq8e9eIy3hB34A==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('65', 'oo5b_466gZqp9niWBynzPTgqw49w', 'b9386d1b9dcfdc82d099908421d16e3a', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-01 09:37:58', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'AYGShAuFmPO+4WuFaf18xA==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('66', 'oo5b_46DouZZHr2cItZ9kwJgN9G0', 'ed26c72f89ab08e066a7e9eae8cc0de0', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-01 09:42:38', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'QaRCJfpP43dz16WLsrdirw==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('67', 'oo5b_43vQQOdcVEm3aoMFPnUOKXk', '03b0f01cbe1d83347ee298b182d68a9c', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-01 09:46:18', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'AcwmMmADa6ZpMT6cHBuXVg==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('68', 'oo5b_4_UwHPsy-oYlXiHXMMwRcSc', 'e5e59365d87dd301bab468477b6f3ea8', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-05 07:38:36', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'gbzdi4sjcjdfu5u8mHLWIw==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('69', 'oo5b_432ocRSD6qCF8-aIuC0cau4', 'c04b715cb71327da8c02d9b2c59e1ad9', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-05 17:30:39', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'yvTVILonNuvJN9l8s6gyiQ==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('70', 'oo5b_478FOnUJlB6T382KncxhsJE', '8772c84ee31ee0ad1e7d9effcf66b8a2', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-09 06:54:47', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'w/EO45ysqU36oJ+i/wxoyw==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('71', 'oo5b_4_xXnMZw8sya0ebYG6KCqDY', '314b002ec4646382b6a9a2c50ef92b5f', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-10 12:12:33', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'hBCUbp11zFS40NORwO+/nw==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('72', 'oo5b_4wVffUWa845oYqOzHQHAbIg', 'cad9ebd1b6a8707a2bac548cd380f617', 'iPhone', 'iPhone 8 (GSM+CDMA)<iPhone10,1>', '7.0.17', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-10 12:12:38', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'Tsjx6qxELxxTzpXyGLY8Uw==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('73', 'oo5b_4-euDLDx9QPMNYrSYyhfSZc', '9c12f642aa7ab50b359efbeeb3cc4956', 'iPhone', 'iPhone XS MAX China-exclusive<iPhone 11,6>', '7.0.8', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-10 13:31:20', '0', null, '低调', 'https://thirdwx.qlogo.cn/mmopen/vi_32/666ZxTwTYHX0MxH0OekZ2v8iasPlT9pByoShWGy4S8s4K9HzfgsSway9s7a62R0qeYDoAMJRjMELlcTdQp1b9Dw/132', null, null, '0', '0', null, 'Gansu', 'Lanzhou', null, null, null, null, null, null, null, null, null, 'SkFGvo3JWJlpVFFQ/xQljA==', null, '1', null, null);
INSERT INTO `shop_user` VALUES ('74', 'oo5b_4zeWJ6NktVTP2Y4plpnsYYk', '8cb61f37f41d750113dc65295520a057', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-10 13:55:58', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'i20UH0F98B6bM+Ssxw95PQ==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('75', 'oo5b_44LhTqtP-kTJM4LQyGG9lVA', 'a2f11d7e93b5805ad9b3d70e57f05771', 'HUAWEI', 'ELS-AN00', '7.0.19', 'undefined', 'android', 'undefined', '116.62.46.3', '2020-10-10 15:13:37', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'RQZXmeKWmCXtNPCs3UQNmw==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('76', 'oo5b_4zsVKRYZNLJ8J3QoM_iw0Po', 'fb1916f572e544098f078b98a002767c', 'iPhone', 'iPhone 8 Plus (GSM+CDMA)<iPhone10,2>', '7.0.17', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-10 15:15:23', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'tYwN+nSYPhBk2yXsI6UdGg==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('77', 'oo5b_4_2SUfN24tOovvaqsdT0D7Q', '765d7e7d7f5ecac4525ad70b00dde6db', 'iPhone', 'iPhone 11 Pro Max<iPhone12,5>', '7.0.17', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-10 15:21:49', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'cuTjwIPq+Jqk9TZ5syKmmg==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('78', 'oo5b_43jPB7xpTUGbRsA3SOjGebE', '3266f479e70d141450aec3cc28480747', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-10 15:27:23', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'WKuDEy095w8RJDAchIPVZQ==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('79', 'oo5b_43jPB7xpTUGbRsA3SOjGebE', 'c0013d20cf8f1024a67b58601f7095dd', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-10 15:27:23', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'WKuDEy095w8RJDAchIPVZQ==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('80', 'oo5b_44nByI5vjjpp0Lo9jK1rPW8', '0af4607ace21bc520d5558b96b941b84', 'iPhone', 'iPhone 6 Plus<iPhone7,1>', '7.0.17', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-10 15:34:25', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'IJjty+gU0UgMwqo8WrlNAg==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('81', 'oo5b_49T_aY_IFLO2AqiBXgGeDxE', '8e2f2e3a183e2c92704fce550ada91ab', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-10 15:38:57', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'xhPIFuCKkrjnPHqBlLhjjQ==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('82', 'oo5b_4xIOmF2GQq8h3cLyb13Vq70', '2a8106fa1430bcdc8eac983eb26d4078', 'iPhone', 'iPhone 6s Plus<iPhone8,2>', '7.0.17', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-10 15:39:19', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'UDzE1C6TcbqYj3bIM8jZeg==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('83', 'oo5b_45IpBZvSI2EkPwoZiHyt5lA', '7203392d2410ff88d34a95eab1831bb6', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-10 15:40:12', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'fbrGATlpEUkOlOyCKI7y/w==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('84', 'oo5b_48SeHJwkAejK-CpvEEAyd9c', '8e519a32d14401a9794cea9b6a7406de', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-10 15:40:30', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'JiBRGYm5I+95wXFEg7MESw==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('85', 'oo5b_449Vpdy5BWdF-wzTiFeDZnc', '0b45f18cc2c4a945c75cc0b2d2668ea8', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-10 15:45:04', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'H889N9gz4pjIaOAuKMHkhw==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('86', 'oo5b_43X2aDu5MwwsxGH2n3s9Fy4', '25c9c15249c28dab50537beedeaec8d6', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-10 15:48:42', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'TORv7vLvPti2Qwz6dvcQgg==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('87', 'oo5b_43X2aDu5MwwsxGH2n3s9Fy4', '71785eb0d6fa2d95add719fdc8e31aa4', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-10 15:48:42', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, '9ZUxk/gwF20kLhxZ8DrjWg==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('88', 'oo5b_40SngFVbkTL_-zTHFac1TRI', 'babed79e3ea44ec64308b3b834906fc1', 'iPhone', 'iPhone XS MAX China-exclusive<iPhone 11,6>', '7.0.8', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-10 15:59:03', '0', null, '10.11', 'https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJEPMj69Hy9qsSxOOibNUZFg4YrQaS0Ufp23iaELx3xf3hAic7FUcxZDenakbfd0KH6d7Mp5PbUlLCfw/132', null, null, '0', '0', null, 'Hebei', 'Shijiazhuang', null, null, null, null, null, null, null, null, null, 'LTc2GkQu5vsvuvvWMG3Rhg==', null, '2', null, null);
INSERT INTO `shop_user` VALUES ('89', 'oo5b_4yJj8dWhqemD9caU9VTn__U', '7f0c3ef431b62ff779a89803b61860f5', 'iPhone', 'iPhone XS MAX China-exclusive<iPhone 11,6>', '7.0.8', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-10 15:59:03', '0', null, '蓝色妖姬', 'https://thirdwx.qlogo.cn/mmopen/vi_32/PiajxSqBRaEKsvWQDTRhGl9hBicqcax1m09beQTwa3ibxgj2B95RAeH67FoLibfDmBjoFgBAGFZWGQ1npWmIGrFmTw/132', null, null, '0', '0', null, 'Guangdong', 'Shenzhen', null, null, null, null, null, null, null, null, null, 'cnN8KWijvsrO0JRbs51uyw==', null, '1', null, null);
INSERT INTO `shop_user` VALUES ('90', 'oo5b_441tyOTBH0Jwq6z8SncyLRk', 'c45bc3279c06e312ba2a422d4fb60087', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-10 16:04:17', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, '/ThNpMvu1mZrgODpkZSfow==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('91', 'oo5b_4z7pc0pzfxbvdHB8BB0OyL4', 'cdd0b482f6f0c4ad7b61f1315a12abca', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-10 16:14:39', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'pTFVc3Wen6A/5T21mYUcpw==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('92', 'oo5b_4z7pc0pzfxbvdHB8BB0OyL4', 'e643121921072e160d81f0c1eac3171d', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-10 16:14:39', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'r7Y3O0F1IEw4dRrPYNDCIg==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('93', 'oo5b_48wg7fIfy1FZzHMuYn1TM0o', '783c89c435bc107a74882a5c6e9c6348', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-10 16:20:37', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'JPkiETnW3jeMrB1P5l2SHQ==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('94', 'oo5b_4x4LrbFs5zjAZVPpfooUTBo', '95fa6fbfbb467e12c9deb9756dae6e09', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-10 16:21:59', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'SeyRgfGo1FT84mGEsnr77A==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('95', 'oo5b_41bwowG5zXUdIu2HPxLV-3Y', 'ae26ef180eb669fefa01d8500b5c8b45', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-10 16:23:57', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'btSOLuc1wqdyrS8yiuMIvA==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('96', 'oo5b_41bwowG5zXUdIu2HPxLV-3Y', '32dc82ae3df0df18a692d5410fde58db', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-10 16:23:57', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'btSOLuc1wqdyrS8yiuMIvA==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('97', 'oo5b_40FUA1BE_65lB8KeJgcz03k', '10a8cba2fd2a72e421ca9aba77e90830', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-10 16:25:20', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, '9wf+KnULmPcbka/qqhaE3A==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('98', 'oo5b_472YnXZ6yA33mNW83LMvqlQ', '8aa4a78fc8954f860e26b6f1c7e2b5d6', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-10 16:26:08', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, '3o2Gcm+qnU341VJBqlSrIw==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('99', 'oo5b_472YnXZ6yA33mNW83LMvqlQ', '4d271fe7375463fc08475e3862debc6d', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-10 16:26:08', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, '3o2Gcm+qnU341VJBqlSrIw==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('100', 'oo5b_4xLhGBfyCsl58CBvru7lm-c', '375c3eebf92a595156420e99559fc9fc', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-10 16:27:05', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, '+TVQ4KwX8VkZTopP05i2eA==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('101', 'oo5b_4xdiXt3gv8URdUBfi4m_jo8', '1f0e5e82318b087b2fc8536d5081b27d', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-10 16:28:48', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'SMPsnR6Ga76cgIyhF59TQA==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('102', 'oo5b_43YEbpXeUC5g0OOGr0KH1lo', '9dcbd32a5ddbc3fb7db52b58e0ca0850', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-10 16:30:07', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, '04nq76/FSMiqJ7F5aT/xmA==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('103', 'oo5b_4waq0h1YKe5jN5swDrhpa8E', '6e95c5e97e0ad375dfece5603c05e63e', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-10 16:36:47', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'iCRi8FZrOa1C3m+TlPv/ug==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('104', 'oo5b_4waq0h1YKe5jN5swDrhpa8E', '07462c57195a05e327aaca294c46c661', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-10 16:36:47', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'iCRi8FZrOa1C3m+TlPv/ug==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('105', 'oo5b_45iMMwiixNlB4_0rIG_1Blc', '42cedfe8ddd4de6fdb8e8be033ce16d3', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-10 16:37:02', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'cfrw8nEfXaiLZ1MsrZAP/A==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('106', 'oo5b_45iMMwiixNlB4_0rIG_1Blc', '836514719392b1aea0ff5227fa55332b', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-10 16:37:02', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'fV41KtjFPZU8QKpoQMww2Q==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('107', 'oo5b_4wJxCYYfb2vhmJBjNPWa9HE', 'ee2cb1837208389587405c41f0f1b046', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-10 16:46:29', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'rqM+3JMd/514W9A84xu5/Q==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('108', 'oo5b_41uvLozz-I5mN28SeVNjIoE', 'b5772d0609d5ecca53f0a6d4b454e125', 'iPhone', 'iPhone X (GSM+CDMA)<iPhone10,3>', '7.0.17', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-10 16:49:53', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'hxbUctsceKyRf4pmXZ06sg==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('109', 'oo5b_49kAcUJT8qPQGDRIVHj0kNg', 'd9dd3a03ec425b2e935149803d635b8a', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-10 16:50:27', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'zIqDRaB5OwdAiUZiOYlEXg==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('110', 'oo5b_48gNUetBEz2dfpmGLLW6wmk', 'aa6e6d5f7c4b0756edf99da711f4b967', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-10 19:18:26', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, '8NYGfR+7MGTYYBxrMwHe9g==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('111', 'oo5b_42O16m5NewEHAvgLDocbVi4', '14086e75a4674bc80d0273d8c522c151', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-10 19:18:59', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'AO8VwPuuiv0nudTpUrbwvQ==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('112', 'oo5b_42O16m5NewEHAvgLDocbVi4', 'a1e5785dfe065c480752d962b4f053a7', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-10 19:18:59', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'H1/k5q88plKnW708Qg18XQ==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('113', 'oo5b_4xoof0Ts9caliGkCFkBzin0', '473f2b3996b8632e0bd56b6d59babe1d', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-10 19:19:09', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'yZXREArgNO8mA/NhiAhmZA==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('114', 'oo5b_44ZXlmZRh6h8Rxg4yDzkJOg', '7a59acf71c6243e7edbe01714518ea10', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-10 19:20:52', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'ik9tQNPhNGe2m9oinurEuA==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('115', 'oo5b_43xt4KxtsLwZA6eIquCZSXI', '679e3f3265ef283de32a05f1096b6033', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-10 19:26:42', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, '08e+y4mRGwDLqw4By5S3/g==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('116', 'oo5b_43xt4KxtsLwZA6eIquCZSXI', '0a8e3e4be87ea1275df0e5a5a16339e1', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-10 19:26:42', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, '08e+y4mRGwDLqw4By5S3/g==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('117', 'oo5b_477pG20FH4y1_NqjQIDlewg', '95431306c2cdbdc195163af0a7c49213', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-10 19:27:41', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, '6RhhH2kGrFnUNDJ+KibSGg==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('118', 'oo5b_477pG20FH4y1_NqjQIDlewg', 'ab6afee1bf84fb0f57c1d603e93c9c9b', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-10 19:27:41', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'vDnMcjc/XgqVqxpEWl09Xw==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('119', 'oo5b_44nEd-5oMPjVXDRylwfMkuY', '60b2205dd724fb6c9f9225f4931bd44d', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-10 19:28:58', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'SzNHbQc/kO6YX2Vn0gzU4g==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('120', 'oo5b_41h-6JWvFM-les2HlLoT-wU', 'd7149ee66a3b954a624bbe63983d7af3', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-10 19:39:43', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'Fr6KbGWI9VdhWhtRVoOJ/Q==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('121', 'oo5b_41h-6JWvFM-les2HlLoT-wU', '929e9183ace54195028aca2fdc7b9503', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-10 19:39:43', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'Fr6KbGWI9VdhWhtRVoOJ/Q==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('122', 'oo5b_4z0xvx6oD9HOc61JSpB9zLg', 'f6ea37455df45d178b5f93b20eb3ba02', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-11 10:23:23', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'z4GUXf66wxry4GOsMyoSVw==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('123', 'oo5b_4zmJLl3OZMa9M_5cb2xz8c0', '6214100d83ef34a6b5c876ade24a4920', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-11 12:36:18', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'f3JiEL25+K6HYPEbM4M4wA==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('124', 'oo5b_4zmJLl3OZMa9M_5cb2xz8c0', 'de466457a743157b609fabf2ed28ee79', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-11 12:36:18', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'GMe72EVsw/8+PR22PUKNyQ==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('125', 'oo5b_4zQIpTWzaMTPH8WjmJgAAWw', '211482785e118e834bf6aa6fc373f090', 'HUAWEI', 'BLA-AL00', '7.0.19', 'undefined', 'android', 'undefined', '116.62.46.3', '2020-10-11 16:37:33', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'Cd1ngolblO8ah96zm1t17w==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('126', 'oo5b_48cyMdL3WRQrpk1dXuhp6W8', '41eec6cb9d17cd4594c6bb9df054ed61', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-11 19:19:53', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'kBvFTEAF/A1+BkD2u1xnLA==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('127', 'oo5b_4_oAtsDLxsb-jMy-_NYbv8w', '0ece689636b7789889b29721cde77d65', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-11 19:19:53', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, '4jiqOCSCgXoESXKvndz1KQ==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('128', 'oo5b_4wkIR2PS6dUUU3qp3rDggeA', '53f9ec9f37c32300aacd61d4c1014e0a', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-11 19:20:15', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'lwYNWHmjNwQgwENb8grqzg==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('129', 'oo5b_49cIDRr7TI64-bCrL0X8NAY', 'd1cc1b747b5b94243a7ec1cb1f6239eb', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-11 19:20:35', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, '8hsbQNtGSZxmaBli7iqhnA==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('130', 'oo5b_495YtJ-UO6Uz5RiPhot7fi0', 'eae352b526366d92edc98c5401941f39', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-11 19:20:50', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'XiVTj7mJDe3uimECNoIN6w==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('131', 'oo5b_47EyDRf5NAfLXcGw2PwbMu0', '34d0f29b186e86889459fee69b3ae2c2', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-11 19:21:55', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'BCr93pKDsddW1Adz2lJCdA==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('132', 'oo5b_43iE6mjPQTxozZpQ26w_ikw', '258a3e8467fb7b59cdddc33ad9eb5335', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-12 01:22:38', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, '+S49VDGFEWqhfi7OlMV3tg==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('133', 'oo5b_40XUJxq2OAAh65JxtIQBtxQ', 'e4551dc31c3095c1ca6c037f817ad790', 'Xiaomi', 'MI 8', '7.0.19', 'undefined', 'android', 'undefined', '116.62.46.3', '2020-10-12 10:25:19', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'ry3Y8RQey8tQGH6h+wrcdQ==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('134', 'oo5b_4zecy53v3mUWc6D0IfNuHpI', 'eb62bda6bf0ae8580995dc56d1f0803b', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-12 13:36:45', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'FJRFERQA7XBuckQQvUXt8w==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('135', 'oo5b_426eP9HIybAEOPVoUu957AE', '08501ea596c8d3d722ebe9b4492d2126', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-12 14:20:49', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'suaF/Pb6JXpwFkjk3d5e1g==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('136', 'oo5b_41bOZaPKjQtTApfQ73E9aFQ', '3e18d1f8f426f854a163fef49efae402', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-12 15:25:44', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, '+xa0tiHo5dDl3HqiYe+bEA==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('137', 'oo5b_40J3QQ7mSUOKLyfqp9IsMbg', '8b749e765da7f25c36ab533e4dcd83c4', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-12 16:28:51', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'zxLcfzpBw/RL0WQI6SEaWA==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('138', 'oo5b_47eHC-JfKlAKM0PIQ1qAEp4', '9075c8ac140fddb6cc8d1085eadde379', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-12 18:02:33', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'vwh8gSSByesTUgLgUelaZw==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('139', 'oo5b_431B__hDz4Ye4hi_LrBgSxI', '08bbd42ad9b66ff10938621c76b955fe', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-12 19:08:53', '1', '2020-10-13 13:45:38', null, 'http://customersystemimg.tiancekj.com/default/132.jpg', '15656565656', '小维维', '0', '0', null, null, null, null, '0', '0', '0', '0', '99', '52000', '2', '没有要求', 'HeaHs5p6lXd+Bxv11rHyvg==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('140', 'oo5b_41ZljtWhdkbH1bsvrFuuXi8', 'b9e0cd868985c69f5b5d939d78c5372d', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-13 01:23:59', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'Fxh4OSNlCRFCWp2euzsGjw==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('141', 'oo5b_44p3rH5phxB9RuchUwSSBeQ', '1d6e8762e7a7e304ef6a833321b4bdb5', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-13 01:25:05', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'zgbpMTUWmDrSg4I59yuRCQ==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('142', 'oo5b_42G2v1k1uRuleuySrcjUzW8', '954f7a5de4ee426eac60511845de66ba', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-13 04:00:06', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'jc5/CJRnRRJ2Cp5Z33aP7Q==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('143', 'oo5b_407N4xO9JHNe4D3Iq8vsByc', 'e2361b76b21ba87761e2a59d790cf1d4', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-13 12:16:26', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'GAmweambwBQ2eMnVoCoJGQ==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('144', 'oo5b_40aZXRgnsbj41vPHOdayyFk', 'eef8c6a021fa97f6df43d8f25b26a17a', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-13 12:16:40', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'HpIWFHTZuPhBzkKLQLNU+w==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('145', 'oo5b_4-SR8Mac-bXSati5holVO8k', '8e8f77b3d0ed58df0ab4ac925f515b77', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-13 12:40:19', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, '1cN0b88/y5srE8wWVuvz7w==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('146', 'oo5b_4_XuVjx9YhH6GWsFcbUZBf8', 'd46ab4d7abcab319a20bcf187e0d37d3', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-13 14:09:24', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, '8lnky7DizGfs+EBJtoL43A==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('147', 'oo5b_40ik58JR5Oounz7dqWFYtis', '651c028f0c01225ef75e2bda043f1289', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-13 14:37:36', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'L2ZjmJIcjntLubU+EcKd8A==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('148', 'oo5b_4-ME0ra4tRH_slHEePCATEU', 'e2092bc3374418ffb08227f3dffe8c95', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-13 15:43:45', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'GsxIsCwXL3gBJhbodDBmBA==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('149', 'oo5b_45v_M2P4QY2Lf58vVwQRFqM', 'ba62efed14480cf8b7a3466bbc95c2d2', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-13 17:07:32', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'Cbn6D+8aFIYQTgOJzhZ/Ew==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('150', 'oo5b_42wusGcqXiRs5EltvH1mmQE', '3e25ed43f350af3e9e41a35925a8d4d3', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-13 17:16:52', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, '5L+TLkknejuhbwxD+cpnmg==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('151', 'oo5b_46B3m9gyJbHepKmBkg7_i6U', '0176c80912b6ec06e47161d1a89519a0', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-13 17:22:43', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'zFhoo/VsHb4mD9agB1js5Q==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('152', 'oo5b_46lXkKxkrxwjHQO6TtaoSB0', '06bc54d3097e8b00cbff08261e954742', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-13 17:37:12', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'ddUXJsGwJdmrYfXnG5iSlQ==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('153', 'oo5b_42VEdsmfN8G_3M3J-Pf_TPs', '6f2d719a240f546b17b1e07f8095a4d6', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-13 21:58:26', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 's2rkVFQIvlLTWXlry0K72g==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('154', 'oo5b_4_MVg8Qw8fTQLG09F5ECd3o', 'd2a0fd0d066e71b94d84b74342049c3b', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-13 23:40:58', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'qXAWwKLfOdL527tuY0FZvA==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('155', 'oo5b_42UNV-TDtzVIpUmkqOa8bHs', '64e3caf769d9463c4feaa067fffafbd6', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-14 00:08:12', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'bs14up9GDlX4477661XaNg==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('156', 'oo5b_42Cv3R9Vy6gIF__ptcsD9Ls', 'd4029562b77435fbb754115030a3a0d9', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-14 01:59:05', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'uB8hMk09BFiu+tHqDW/asA==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('157', 'oo5b_4819uXAbLWcGAjkRVltWY6s', 'd55ee3ff5e70d70b5789a85c808e2144', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-14 06:58:56', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'R8Gh645OPCDwfgWEak0jRQ==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('158', 'oo5b_40OOj34ELrW0scxWsrq5KH8', '15432fe906a0f36606434ae6c92091fa', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-14 10:01:00', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'as+Kr6+lmNhdcnYdH8vzKA==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('159', 'oo5b_47vyU4QqY9oj4en6kuCysRs', '8d3044f329280eebf35c18270cb0665d', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-14 13:51:56', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'hSmgqerAT9r3RuMZLwnqFA==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('160', 'oo5b_4xQiXnNLtfmLM5NgIY8Uedo', 'e5834a51281a33f4639b415d8cc658a8', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-14 14:16:53', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, '7ZXy+aJTnWfh4+Rr/at6Pg==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('161', 'oo5b_48pKFlKKeGM-xOD8N2ncfHY', '16fd8444b21be9dd65a2e3bfda47dd35', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-14 17:33:11', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'IU+0buTeh9ggvEqXmczEcQ==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('162', 'oo5b_42pLmSpOY7TEcKet5Ax1J8Q', '85d3453b307fa4089116755b60c22658', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-14 19:35:41', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'hJReJ0a+tsg6LLHGAywjQw==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('163', 'oo5b_48Gs4gGJPiXISIfFq7jMbCY', '246f4a126f4726cf2d61b0eb869248de', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-14 21:03:26', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'jtlhKE/Wm50MRFMFQ5lVDg==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('164', 'oo5b_4xg4e78TzVsbjZKRCU93nUs', 'c4b8f17e256ec90bb56e3fae1f3b28f5', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-15 02:02:45', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'Oh4BbF2YMhDp9oVU1yEL/g==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('165', 'oo5b_49BLd3GmqFgOWhYR2Y_XuZ0', 'df640dfdad7dcfde2802cf89b63cef6e', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-15 03:03:42', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'kPGG9s+wwIX+0JlzoMQ6XQ==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('166', 'oo5b_49BMCpGY_qslX_8EpSsMPuc', '112d6c6f94049ef988507cff4eeac549', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-15 06:12:50', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'Nnci36MKQMWW26SMp6faLw==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('167', 'oo5b_4wSqPz1m5Tt4vKXay4TQwgo', 'cf346998045024f27bcd1dbd135efb6d', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-15 06:45:42', '0', null, null, null, null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'smLzJuMafL0OwDkQXFxj1g==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('168', 'oo5b_44y3kFUA_vAXYG4xuRdm1zk', '6676c3111fe7083b9b07a08a9839da29', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-15 10:23:20', '0', null, null, null, null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'sLkyQ+mHfG7q/Rp8yU6L9A==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('169', 'oo5b_48ZoqxegS2ajrIPGCSLSWy4', '3ae65dbd07553f4062f263f563134766', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-15 10:31:28', '0', null, null, null, null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'a0t28kNBM28hkW1DiyZt6Q==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('170', 'oo5b_4yZD8EYwb_zODai7R6Vunsk', '9444acfd4e9a45da99b8fe5ce52d91f2', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-15 10:35:01', '0', null, null, null, null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'Rz3bilkxW/yx9owO6q/XYQ==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('171', 'oo5b_45QsPnezXj5NAKUzzCpPrQ0', '2e492421d28b15050f105253bf7bff19', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-15 11:04:32', '0', null, null, null, null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'CLPFjg8opCxbm71vM9y1+Q==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('172', 'oo5b_41Awn370tcLtNuSnOjKVJgU', '9d96eea95c1dd5ccc5b26c75e3702071', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-15 11:29:38', '0', null, null, null, null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'JIRvPME7miIxFfpErPViFA==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('173', 'oo5b_4zEZJhG4rS77iezZFb9IsCs', '9bf0bcc52ff72a081e0fa7f9b855c43f', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-15 12:10:14', '0', null, null, null, null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'BMDJ6AOEvtjngcQFt29NdA==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('174', 'oo5b_48Pk0mnU0xgkujL-FcmkN_A', '02091f6c236dd6068a994c62d45458dc', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-15 12:10:14', '0', null, null, null, null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, '42dcWudEyavpeObxnIhtxA==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('175', 'oo5b_4x0hrcYIuuAE3sYIcGqIpYE', '3df484ea20679e988bdadb4b47f20913', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-15 12:10:23', '0', null, null, null, null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, '5482PS5AKkyPl1Mfk1YwPw==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('176', 'oo5b_42tgX0z2FVF-XM11Phu262A', '7f0e93def15d3b5ab7e03bb5bf3b28a2', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-15 12:10:37', '0', null, null, null, null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'a8ZqKGOaTnjhpuiKJKxEyg==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('177', 'oo5b_447KDSN58VeA1OSSpOPaveI', 'd1fd4c2a22c095221d2681acd8b16180', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-15 12:10:58', '0', null, null, null, null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'pWOVi1Nf02NuLkfQH6WMvg==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('178', 'oo5b_4wFlgqnQv89gBoquSCigCd0', 'fc99fa91f98b96e31920a01e7bed2fef', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-15 12:16:28', '0', null, null, null, null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, '89PrMATn7eo+q3PJl//MRA==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('179', 'oo5b_4yPcWbIgPrhA4bwQVDxKB5c', '7b2e98c136c2999b150efaffaa80c86c', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-15 12:16:39', '0', null, null, null, null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, '4KrRrKU+Gwyiwwhtb40feA==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('180', 'oo5b_48j5AV9xOmrz_-N6UzslBmk', '06a59bf93bbf7723c920df34545e2508', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-15 12:19:40', '0', null, null, null, null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'vcJQLxr6qLgBRe4Do7o74A==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('181', 'oo5b_42pAHfdG8N-kZllzmjEAPRM', '15e4e52e42b2072afe4746a620a38f0c', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-15 12:49:21', '0', null, null, null, null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'lYSraqNziGqe7zrMwCIbMw==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('182', 'oo5b_45QDfQ25FCXKpPN1S5H2amk', '5ad4277fc5692858afa8287c3369ed43', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-15 12:54:22', '0', null, null, null, null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 's+L9dDdKe2weW01GARdrUQ==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('183', 'oo5b_4_hPQdIe5O6fIoc8xAjAutA', '4d21249851f7f4eb63286bc24e166797', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-15 12:59:54', '0', null, null, null, null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'qsMMl6RQ/FHdknCeWa2R7w==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('184', 'oo5b_45CoEg3tEauURQO9AMA1jaU', '3f10ae4b7885953d8aff965cdefa9418', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-15 13:01:40', '0', null, null, null, null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'Sh66rQLP7IlclwGS+vzYqg==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('185', 'oo5b_43bfdyvek2n63JaoRGNO1OM', 'cb992e095a02b3e53d4fa6fcb115ce04', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-15 13:25:21', '0', null, null, null, null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, '7xBSF78bHD/wwAtcwk6abw==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('186', 'oo5b_49oeWyezcIa4HSoHAN2hkc0', 'e50093a43674b66400d28190a79e1f41', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-15 13:28:41', '0', null, null, null, null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'EOhvSVDnUf0R8PAmt/uclQ==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('187', 'oo5b_47kRCNBeF2RqHSQtVoMO9rU', '2a673a71e609814b431a7a410b3235ff', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-15 13:59:20', '0', null, null, null, null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'UPAvamWP2bNSrCElKprJrg==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('188', 'oo5b_4_eMzTAg4eCY6TvwWBWC8v4', 'ba09e8ec819ca7dc63d4b3c4012eb692', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-15 16:31:52', '0', null, null, null, null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'DTWkvPc+UE7BvfeULPTFrw==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('189', 'oo5b_4-BGLD2sWWzmXwabwwWquAY', 'a96b6f7fa5e4a028fc28a267818acf35', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-15 18:29:23', '0', null, null, null, null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, '/Fept2NEOOfT7pyGOWhziQ==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('190', 'oo5b_49XAgZmZ8sV8PJnYDDpjPqc', '078c1ec0fd1fed4b7444f3edbeb78607', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-16 13:25:37', '0', null, null, null, null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'n8nyCgT5uxMdN+ZU1ma4Kg==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('191', 'oo5b_49oT4swjUsu_Ew5HhaWTz2E', '79ef06a56979368c52b7a390738cc0e9', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-16 13:25:57', '0', null, null, null, null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'b2cl+rTRAFiTQfi/eky7jg==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('192', 'oo5b_47aPn_ZZ5MnDAyZmf8fLP-0', 'e9422d164770a0785bfc67e83350652a', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-16 13:28:41', '0', null, null, null, null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'X0EdQzgHFMfMJ/A0rkl6VQ==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('193', 'oo5b_4xRU_tA-woSxekHAeOW8rBI', '394f543978b9c1c2d429f4426c532323', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-16 13:29:01', '0', null, null, null, null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, '0ZVZkSJyj0rulGRCx3HrZQ==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('194', 'oo5b_4yvUAZLgfyMyvYHxE5WaxUI', '8b652f3bb1dc74c028ce3542be5dce76', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-16 13:29:11', '0', null, null, null, null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'vhzWIZFrFiOAFOJNF6hytQ==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('195', 'oo5b_47yyszUXt6Twa-CgVjUDzEE', '70eb99ecdd678c0213ce5812f3bf2dac', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-16 13:35:53', '0', null, null, null, null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'Pr8iZiMo2hVCkvBQD5iGMA==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('196', 'oo5b_49Ll0Zrv8cszMsF-VEovlgU', '5beeb6602f5537d162abdabb07650f2f', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-16 13:39:15', '0', null, null, null, null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'cj2mBz2yK8TVv+3+HGd9Pg==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('197', 'oo5b_4-qcRwDTqEjTTandnuKIdpY', 'a459b764294d21b93994213bdb16090f', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-16 13:39:23', '0', null, null, null, null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'l+mtTzB289e2GoAmR0OIfQ==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('198', 'oo5b_4_ec7f38nXyQql6Y13tja0U', '200e4b7cadd8bd490aa57c530346e12c', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-16 13:52:41', '0', null, null, null, null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, '43/t+j6HNA7evqevle2cnQ==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('199', 'oo5b_453rIvzlA9WcPqsa-xPbsJ8', 'effec4e08c3e975557b8c7c25d183ec5', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-16 13:55:22', '0', null, null, null, null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'SuN7GTj0Sh1ulB1azNWMaQ==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('200', 'oo5b_48MJc93BFbnbVm4TJVLzmY0', '3e4467f9a2a9fc169d43c19a5a394f18', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-16 13:59:08', '0', null, null, null, null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'UbkwGfHAVrQaRQzCJmVfzA==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('201', 'oo5b_4w34x_cN5RrvJVCAOTOx5kY', 'e90622e4c6e3126731ad749fddb8c349', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-16 14:00:38', '0', null, null, null, null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'baIAc9H2xOOOC4rqx7VH/A==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('202', 'oo5b_48YAOQWFRaFuZ4lgENUk0yI', 'cf03f3c0d489745cd0ca7d1bed769c37', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-16 16:02:02', '0', null, null, null, null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'H6VpIvC9pCOIS4hNOFaHOA==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('203', 'oo5b_4zNxClQO8RP4n5GhZwiwft4', '7aeb9576993c2dd383840f4646fa837f', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-16 19:50:53', '0', null, null, null, null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'E1rr6pfgkzuVxq9g5UgIYg==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('204', 'oo5b_43yyVTpOqljg1u8Swlay7js', '81b2e58690a561827397cded82b47806', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-17 08:26:26', '0', null, null, null, null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'GHAt5Qv9lBxT3CMJs/eaeQ==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('205', 'oo5b_4w0JdbdYdk-hruSGO2e5rVk', '46d68e1c8793bcc80a33d15722235913', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-17 08:41:57', '0', null, null, null, null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'jVw0q99lFpONJTlFokQbWQ==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('206', 'oo5b_43I9YROhmFSMQ9HyAIQ0Fbc', 'a3e307f81557e21483e8d5ce591f5323', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-17 09:45:13', '0', null, null, null, null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'A3WlnAlHgrpHY2CJ5pTWXQ==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('207', 'oo5b_4-PUyblFxmARAFvU2IzRryM', 'fceb3b1d14981ce6acbf2322aaef9de7', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-17 14:55:19', '0', null, null, null, null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'a/16RXM4aPbF/n82KkanuA==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('208', 'oo5b_44jd7m6Llz8HvNofXfl-n2w', 'ad619208fd4a6f33795ec72e3c8c244c', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-18 15:43:51', '0', null, null, null, null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'o6aXFYPV8bZdoTM6SacD3Q==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('209', 'oo5b_4y3mR8S_HRSbmcDrBMNSv60', 'fd0ccfefe080c5ccf14c16858db18a4d', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-18 21:37:48', '0', null, null, null, null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'uH9QPFjYJDV/UU4+rvwc8A==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('210', 'oo5b_4y7oVQaYxBRPbGlOLQOsbaU', '935bfc78b4d5f03436a892d044ed4a86', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-18 21:38:17', '0', null, null, null, null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'CA8nEhvCkhEM7tE93jQB5A==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('211', 'oo5b_46sU_5wj3IzLfZkG1uStXQE', '2fcda1fee6f75d82942ef8ab97169e59', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-18 21:47:33', '0', null, null, null, null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, '//v3uOa0ZjVlxcoFE2rzRA==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('212', 'oo5b_4xkLc32VFVUnfmD-fdUk9dE', 'b71af0446bf2414fa96c5e4d91da359a', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-18 21:52:19', '0', null, null, null, null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, '0cXLsASKD6J3p3fPtfyZqQ==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('213', 'oo5b_4zIalzQBL1fHuy4achxUC2Q', 'e893ff3d00221197ad7914dee477d453', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-18 23:23:49', '0', null, null, null, null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'H3/6jC3UHz+DBWTKdoTcnQ==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('214', 'oo5b_4-DLOTmjnbIAbu0pi2hL5ag', '25b2d12499219f860253b54170e899d4', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-19 11:15:58', '0', null, null, null, null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, '+V2iylRWyG4iee5L/h8olg==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('215', 'oo5b_41kmioNURsO5-TjikLJ6yMA', 'e6af6b21fe3afc243de0e08d0063c6c7', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-20 04:21:13', '0', null, null, null, null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'of1YJ7Ee8PwuCxKfmTS3zA==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('216', 'oo5b_496r7C_kVDN2LZpOzS930zM', '0e42f05771891c2adccae66276ea4f5c', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-20 04:39:50', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'kgxYlPdvb5KOlMQ+sCzadA==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('217', 'oo5b_4yk0rxQ3ZA5_rQsh2TQLbJM', 'b0d3256e8150bae5e60f86bb35cd290f', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-20 04:43:25', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'JeJEqUoYKtvtDZfPZ32rvw==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('218', 'oo5b_44Vb2D71G-b4WbR-lZ6jeXI', '62e25fc95fd70783bd496de604acfbab', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-20 05:19:35', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, '389tOKXRd351zERONIAkaw==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('219', 'oo5b_45O0EaB71nCUwILTYLVJC94', '32e5a61dd9e88c780d2a5157fba3f621', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-20 05:58:57', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'RbK38+I6ogURB7FObhnISg==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('220', 'oo5b_4yp-pS-VIKtwnsbPKcXOVxw', '8c5ffc3ae7be27d9fb8aad95ef758689', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-20 06:39:17', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'h/htI6qBrz3r03XenV5F3Q==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('221', 'oo5b_4xd-cWq86LxFPcay6mHLLcw', '64ba936b9f40b8d9ed3b37f306b2783e', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-20 06:39:52', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'w5sRXtVgM0Vl4OGiTPdwCA==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('222', 'oo5b_4xa26K1cXhU0DV0EUB897hg', '74ad13cc9bef79b502cca349a3426b3d', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-20 06:56:58', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'HMcIhZsbZGz8g4qhaDJVvw==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('223', 'oo5b_42eWEDzrrPIzp9D-HXfiVzM', '1c20e480fb81598057bd515ae95adb3a', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-20 07:14:17', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'bKXZMzxyIzgK9LBRuyUYGw==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('224', 'oo5b_4znoedWyFHMko_2p5Oeg3jY', '09c0964617dbb8e216474100ec311358', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-20 07:53:37', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'mKAx4YIfJSgHTX+teKwAzA==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('225', 'oo5b_42D3xbFqO0mkMLqfdh2Vi6s', 'd134935a1450d87275a24a2bc66574fe', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-20 08:47:52', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'Zv4qS9m/gTWY/LhorK6F3A==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('226', 'oo5b_45aNXWoAW7wztr1bGNCI6wY', '92a869a7177b20ff21f44f4537cc0cfe', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-20 09:13:59', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'wXtyFXlQlsogMsygpfji6A==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('227', 'oo5b_48QDtwc91H1ncMdcxHsyyTQ', 'ff2dd9c5a4b9c2c888710df7a54f3868', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-20 10:42:21', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'GX+y4gYv0wsc7i6sSt6lvg==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('228', 'oo5b_4zIT-J28t_QB32SHpDSAteA', '310f8c5a7d62ba30afcfa6d295987709', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-20 11:06:30', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'hzT9DJVoqm4ET2kFhj8Byw==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('229', 'oo5b_41fjipE-ORsX2EzgSdnkK7o', '406c7a0222f0ea244b607a295687c8b2', 'iPhone', 'iPhone XS MAX China-exclusive<iPhone 11,6>', '7.0.8', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-20 13:45:07', '0', null, '辛福', 'https://thirdwx.qlogo.cn/mmopen/vi_32/PiajxSqBRaEJPQVmI5QAdtTfJ1U8TvEyaib0t73h7icKheUSzhhScYayyB3vMcI62vvgFu110yCg5WSibnF0hVic5Ig/132', null, null, '0', '0', null, 'Anhui', 'Xuancheng', null, null, null, null, null, null, null, null, null, 'kn2MABK4+YYp81NyGCBW4Q==', null, '2', null, null);
INSERT INTO `shop_user` VALUES ('230', 'oo5b_45uQxgiz89nE5btTSJxdOjs', '34491283afc2ff89e737520974059adb', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-20 13:53:32', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'sb8PEPu4HTuGYC2gmBFn3Q==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('231', 'oo5b_4xePYr_ANbXhpFHTUJ7B2MM', 'b62f669d228d974fcfdb59ac3a54b223', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-20 14:18:45', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, '/mwO7yIDQbfEIXgyjjhhYQ==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('232', 'oo5b_42347_BcalmnMVGKNucRpZM', 'dd7c5a86e4c47e678d544f4534323a69', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-20 14:49:51', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, '3tbmR/0Y6F796KfqHSV1dA==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('233', 'oo5b_47wVOxs-qn2XVWF1TLbPjEo', '3e72afc581897e77e0e176da7b9d9270', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-20 15:07:48', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'v8nne9U3wAxnI3+RfDBrwA==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('234', 'oo5b_42wBKRfERQR33ivyPHKIdoU', 'ba5c32cda209f52b4f67971b6b6e09a4', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-20 16:10:36', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'q7JuYP+6a92ZyrXcOEzTyA==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('235', 'oo5b_4ynB8V8tC2drwoo_oKOxkZI', '072abd50f05ec4d51d2e6b32c46b73fc', 'HUAWEI', 'INE-AL00', '7.0.19', 'undefined', 'android', 'undefined', '116.62.46.3', '2020-10-20 16:36:52', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'drPkqWq9U2fgDExqpU7ggg==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('236', 'oo5b_4z6GVRFeWmMPX9n40LMsOOo', 'cdea90cf2a8d6cb37eeb8b6fee2672c8', 'HUAWEI', 'LDN-AL00', '7.0.19', 'undefined', 'android', 'undefined', '116.62.46.3', '2020-10-20 16:48:02', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'IQJUWAijgPTHIoGA3i+17Q==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('237', 'oo5b_4wKd0r2haYCGA-jv6X9sv54', '1fa415e002073e79d20505c06254ba55', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-20 17:39:59', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'u60zUWw3JxBdMDI6mYHZZA==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('238', 'oo5b_4_hJscUOeKdQOzpQz4ZKGNs', '88dbfa611b58fbf3761df162e83b8633', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-20 18:08:20', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'ZRJGAI2lU4TDXSWFHMSy5A==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('239', 'oo5b_46Wnb7BfzMfM7WquLM46HeA', '5d17f652792c76e94a40188293940ed3', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-20 18:16:21', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'l8Npl9+Okvc94ULld6fqHw==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('240', 'oo5b_47RLPWG_-9TmINGl0S09HW0', '3340d7cfa7b6dfd335b4408243eba3db', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-20 18:18:15', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, '3u+hPeMQ90XX2CHV3cAVVw==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('241', 'oo5b_4wsWqWNaRzKYJIzAGUoZ4L8', '798f54a514eaec569cd38333f725b957', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-20 18:19:57', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'PdBX+dz1/UdezcwPg1QE1Q==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('242', 'oo5b_42vQ_Dd8diuHqlFJ_ocrcNI', '0b53ced75b430cdbede6647720e0ebb4', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-20 18:29:18', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'kehI66OLdp33Y6GPj39D4A==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('243', 'oo5b_42KDw-n7eLzecTC69IgG7C8', 'c067dfc1a9f2e5b047231c5c6dee7938', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-20 18:30:57', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'A2/rMpF92c/CB4hcfNWlsQ==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('244', 'oo5b_477oxaEK20XTj-s0eXx5dbA', '82f2e01adf108cb634ae43cc09a431fb', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-20 18:31:24', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, '9FFr1253Tx3FTxEAqPs+Kg==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('245', 'oo5b_4xwBopRekI_Ie74tdaZmB1Q', '23cca27e076ba015722396f92b63ce0b', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-20 18:31:30', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'xMNzM/LQm6UTwgRjd4Simg==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('246', 'oo5b_4xrKMXB4BOiJRJq_t3qUYo0', '94609976d65607e5aa688cbca1ff44a9', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-20 18:35:42', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'r4T2rUbQrRXqLQMFzQluMg==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('247', 'oo5b_41MTNhZDZF29PJNmE8LQ9ZE', 'd500665bc1f9a2ff713c01a9552da923', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-20 18:39:21', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'YJ2Sg1qW5AbfdkklwJL8dA==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('248', 'oo5b_435gYYCkZSt8XGZkMvRiKEE', '819086fe5d834324f0eaf19f87829a18', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-20 18:50:29', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'NpCfy9RO52Anv8IO4DHhvg==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('249', 'oo5b_45eL7CbiSSdVMS4POI3RcOA', '380e5d1eb0025de4a26ddafe062876ec', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-20 18:53:49', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'v1OKVBstDSWXHwfJ3IhhmA==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('250', 'oo5b_48bzIhgxoAw8Gl6OEdalXWA', '7d6624b3c01a70c320c14af5b70be453', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-20 18:58:28', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'woMFj9ixtxxBeh8PH2Dp4w==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('251', 'oo5b_46O7xKXnbvHQltQQGCEwunI', 'c8b2bbccdb59f54a78d89e1fcea54642', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-20 19:01:13', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'Voat2SvbxLjxcwr4cQSb+w==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('252', 'oo5b_4xvwnhGkI1UoPZpU4-nqkGg', '04f35dae1c1711a1438478638f1be35c', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-20 19:01:45', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'o1roiuDiQoHsT7KMX7H7ig==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('253', 'oo5b_4_JSKTZUKRkEOxyJ54cEe7E', 'd1e364f516a3937499cb83a1335fdba9', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-20 20:19:33', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, '+eO6eM/JwwCTWNpmbST8cA==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('254', 'oo5b_441sLXvp8oXfLIUTmV1sFgQ', '2b5e92754b9676d2260a93903a209821', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-20 20:27:54', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'ggoDi44YTMg7fWdJc+7/hA==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('255', 'oo5b_43Wv9vtRYRhjVMKSWGSiqVA', '5ab44fd458695791413fbcc0eeedde1f', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-20 20:33:41', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'B+kCJKW5Kj4caek2xbGr4A==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('256', 'oo5b_4zCBVqbWvYuAnFumoDPoXTk', 'd4f521ef5e406024e8b1b2cbd77290b4', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-20 20:40:25', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'gf5Yyl2nuRzTO0268cxynw==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('257', 'oo5b_49KLb9Jy4CM52WqRKGksWTw', 'f1dae132caf9cd11e50ad7acdb0681e3', 'Xiaomi', 'Redmi 4A', '7.0.19', 'undefined', 'android', 'undefined', '116.62.46.3', '2020-10-21 11:16:37', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, '3qsZjN0lK2KSB77zHv1kWQ==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('258', 'oo5b_44Mwys2thzMwMNanUfqr-I8', '6ec9db098a12fe4422a162594c497eff', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-21 12:59:07', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'oRb0l0jqJqf3z6NW7c0p0A==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('259', 'oo5b_42uQ9EZ1xvybMO9-vCU7CGE', '7b3d45dc98b5d8813f81dd5b3b257933', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-21 16:22:35', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, '23grkE2PkNTdyN1UzpuI6A==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('260', 'oo5b_46uyXgq9ahzFmobsLzmTSlg', 'd5941477a3f26742245b126faa7bdd11', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-21 16:23:27', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'cLmDu9qmpST1iU/YgYPW7w==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('261', 'oo5b_4719UPjr30gZjuCmqktq2TM', '8fcb9470615d736a23231dc67990dca7', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-21 16:23:43', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'FRNqlimrFwWbKiGH7+HDzw==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('262', 'oo5b_49qR1llP1afUQFetLwCt91w', '85b1c5ec92cbbc3591c310f859e98a81', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-21 16:43:58', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'IEM3+iSQzNoGy2FsLVsI3g==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('263', 'oo5b_4_Q11dz45-M6lojn_HORuh8', '1e409b995b5bb552258bf1daa86c3c25', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-21 16:45:52', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'Gr1lifpPlX/EGIszsD5PQg==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('264', 'oo5b_4-gFNpH5TguNiZ6a5TJL7fw', '8be5088b3da9e2c929c1fc73b32abd4e', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-21 16:47:25', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'd9z74eNDGmYXLGwy+srQuw==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('265', 'oo5b_4wtv2b3xxEO6vaUhVTVT6uc', 'da237a16dbe158b8d5f56629ef784498', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-21 16:48:05', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'thybwadIe6+AJlivTel8xw==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('266', 'oo5b_4wy1Vo9abIFLHty1xqWM-TI', '7d3b791fb3b83e68bcd10efcb8a9041d', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-21 17:15:52', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'WG1X7KN+gG/IEgPVA03sWw==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('267', 'oo5b_43s1bk_zJRDWRSleMk95Olc', '655eb386df4b9843ca73965c630876a4', 'Xiaomi', 'Redmi K20 Pro', '7.0.19', 'undefined', 'android', 'undefined', '116.62.46.3', '2020-10-21 18:11:32', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'HHIcSocPEunjOtKjG4RWZA==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('268', 'oo5b_47MeSq4eorcHYzVk67Ykl6I', 'f93b1e36b08c9cc04fa4a941aa9c5c8a', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-21 18:12:08', '0', null, '林木康', 'https://thirdwx.qlogo.cn/mmhead/gGOplQlWUI7Zic3licKvzpoia2GYc5Sq77hxZZwxpkYHhg/132', null, null, '0', '0', null, '', '', null, null, null, null, null, null, null, null, null, 'gNORSqxXcSPbxF5P4vQ/JA==', null, '0', null, null);
INSERT INTO `shop_user` VALUES ('269', 'oo5b_48VFo3m0SGavaLWCGfB7lGg', '3e5ec47fb53e4fa59600acbca41b81d0', 'Xiaomi', 'MI 8', '7.0.18', 'undefined', 'android', 'undefined', '116.62.46.3', '2020-10-21 18:22:48', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, '8yQZN5ElMsYeVtW+l8V22A==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('270', 'oo5b_47aQEN3u8jy5KjrdPDRn2SU', '13a34317a28fe4633f3656da6c1a4947', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-21 19:37:03', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'Eqb3tE5xOi/s3KaUez8m/Q==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('271', 'oo5b_49kqUDDWDAdIGdReZFvm4Vo', 'e06520ae7ae52871fa61378f2153c91a', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-21 19:43:59', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'M87wKs/KKWiSVGJhAooSXQ==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('272', 'oo5b_47AExeOsEA6z0yFu1F0bGmY', '1878528ec993d7dbc43904835d6fdb2e', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-21 19:57:09', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'gHn2exUfrSl0mBzQ7wVBRQ==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('273', 'oo5b_43LTRc5wLF9fcZP7TxuTA2Q', '5f7ca344495ce5c0b88b27acfd68baa3', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-21 20:07:09', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'XcLWINkmirn6iGSRMzwO6A==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('274', 'oo5b_44G60jf5OoR4TNQqcUtPj_I', '329566966f84ccfe136f7353bef46194', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-21 20:27:21', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'axi6hSecRuEirMDhAqF1QA==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('275', 'oo5b_46-SayMR6oo9lCArVTitk2w', '7f962c7c897fc060009ef7be6289fba7', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-21 20:28:47', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'z/RLPKBs+pjibP2o9lRStQ==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('276', 'oo5b_4-z4gzc-jBUKRNaix-ckiyY', '4f13c0ed5d4d4fdcd1ab444dc8a603c2', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-21 20:36:03', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'EyOg99AgoW07bc8aL+OYtw==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('277', 'oo5b_43e9t4Qfj453KKOjAwkqG-M', 'a936da42efa4e89cee94c2dbe4b852df', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-21 20:44:29', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'yYEbRX1BzJd9rivOIChYkQ==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('278', 'oo5b_42NYLmpkJ3NxhjC_VRLgj0g', 'f166750a3d8ac7fc9d75b962a165480c', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-21 20:51:58', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'hEVchRx/uqlCI+tP4QL1ZA==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('279', 'oo5b_41_BdZzpQ0mkwgLpFdSJPFo', '7b83e391a17b185f2ef42d8a17576262', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-21 21:14:48', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, '/ZDPnWcPM5F6MS/17+PvWQ==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('280', 'oo5b_4z77c1RB_hiCFc2ThLtW7js', 'd3a01dd160ac3eb082897e627f5570b7', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-21 21:28:56', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'tWQFsDpfZquykQfwWQJuTg==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('281', 'oo5b_4yP4snb_F_GyO09loxZ3CtU', '2f52dae35199f5bd73ec13d022d306d0', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-21 21:30:01', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'j6ByiuL8WBUEUUsB8+mO7g==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('282', 'oo5b_40nCgsOIfijHdIB_LZ95Wvk', '92081597dea82bb5db8ffe7062d0368f', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-21 21:30:45', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'Hcy1/d3369CoPb/gWAyo5w==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('283', 'oo5b_4xxB-2JjayFRBLGpFF5_PmE', 'b9a07d4008de31cdaedf6e85a27967c8', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-21 21:37:58', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'Q4Q9u91gwJuOTVdC2jTx2Q==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('284', 'oo5b_48YC1x-_qYBaNgvGbcZPmfg', '87fa230f9ba2ccf26ed4831d41b82621', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-21 21:39:16', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'oMfbpXQnq7l9Tnxu1GQmQA==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('285', 'oo5b_42wk-I00aRWGg1BhThM5rjk', '693dc2ce657f8d49cc90efce16c23981', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-21 21:50:12', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, '+Roqd9iDC4aDbwB1MN019w==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('286', 'oo5b_4wm6EYqb3zUcH48qIMv_6gE', 'b07b1e3c613087d80c4dbdb27828d6ee', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-22 11:08:10', '0', null, '冉佳琪', 'https://thirdwx.qlogo.cn/mmhead/MqIfMcqo5NyAajjVxSDZMr91Qrpy6WwrRL4yhQM2oY0/132', null, null, '0', '0', null, '', '', null, null, null, null, null, null, null, null, null, 's+GI0emL85KaTl2QLX1kTg==', null, '0', null, null);
INSERT INTO `shop_user` VALUES ('287', 'oo5b_4-FU3dQZwUDmU9xADeRHXPQ', '98042000cb866c72b174512c7544630a', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-22 13:55:35', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'keaF7a8wDuds62aIvS4DXg==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('288', 'oo5b_4_UsBElTWtJOo7HYL415dG0', 'c97c8f4a8423068adc23b3dabf58350f', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-22 17:20:09', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'uaa0jCBrxV/BK+hHzZxkRg==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('289', 'oo5b_4_UVfe1o4y0UhUsNMOkW7Gg', '54c68f68c069fd6fcaecb3f78fec4c62', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-22 17:34:18', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'yUA1ZiV10i7g2rKfQmcnyw==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('290', 'oo5b_46feEn6CQSkDLzFjLe7hvJo', '03ba81ff089af00c20a2c58c6165667f', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-22 17:42:02', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'KSHSexvHGAbsBZs7QNWk0A==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('291', 'oo5b_43pJIuHj7yHLpfEwkl30jag', 'b0941264d1433afd4e17b6da47fbae56', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-22 17:57:11', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'DZnxGVXccYEE9nGDM5lj7w==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('292', 'oo5b_44WJsGTfj0zv-xKGDvrKm2Q', 'e1835e3e20410b2a9d8b0ad6627cfd1e', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-23 14:32:05', '0', null, '汪泰云', 'https://thirdwx.qlogo.cn/mmhead/8pXUcZ8PuooVfnCTBYcfE525SGlvM9icMdUicu3kiaND5E/132', null, null, '0', '0', null, '', '', null, null, null, null, null, null, null, null, null, 'GXafXso1rzBsTaRNsH3rMw==', null, '0', null, null);
INSERT INTO `shop_user` VALUES ('293', 'oo5b_4yOfAL2CkzwyUZaAhJ9p8wQ', '123a325df7c6e521629fd97ac5c25ba3', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-23 15:35:48', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'X9sqaI+OKEBeDznt78lZYA==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('294', 'oo5b_4_-lt482vgWQXYZzHcXk3i0', '97adca5fddb8ca699d89bcf9f6d6cf7f', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-23 16:13:37', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'SF6WszztP7/zTPGmuSOEMw==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('295', 'oo5b_485hijSzVKL-c5cHu40TPlc', 'b523ce2c8f1b675179014c2f924e4bbe', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-23 16:55:49', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'dIrXL2VJFO1X7apmTAcOPA==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('296', 'oo5b_47AowIQotBjgwiuob-G55cU', '88d6b39d7cf86a2cbee779753ff4700b', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-23 20:18:46', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'YG+MJ6DK2wA9tjJNx0tnRQ==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('297', 'oo5b_45uhQmmjLcahW9VPAQ-Gqj0', 'b6941b765582efdf5de0dd48e3f322ec', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-23 22:02:27', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'WFEYHYW1gQTPuDt4DXxx3Q==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('298', 'oo5b_4yoZJ8kTgMIolVDLfEelyP0', '4004a56181c3c3e23fd508fa081c43d0', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-23 22:18:26', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, '+Ovlg73+mKikmkK+GC1tJg==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('299', 'oo5b_47ZySjvOh7ohoo_QpWaep2U', 'f8c8f69e37d27ab96ff6346c4e49460d', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-24 01:54:34', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'TfLfld6VBiKGVitZeOKFTw==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('300', 'oo5b_4_RPvAPQR2kolxtd5gZwNyI', '4b771ae358a991867319e77659690d14', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-26 16:58:34', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'krLohV3TpI8Vm5l9Dw1ZeA==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('301', 'oo5b_4xxluSsyQBNCFM409RvXm5I', 'b1113fb32629abbeb92e5c34e337f5b2', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-26 17:21:38', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'oC3hgD90XfhsN5ZsB+0UyQ==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('302', 'oo5b_4yD4vdfH0FLzk8_RFQn6z74', '926d1bfb9937771e3d7c7d2d207bb841', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-26 19:09:07', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, '585bAoq8eZaWSlQ9viQObQ==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('303', 'oo5b_44Gq83kZNwzvaUp9oPxXZ1Y', '17a3ac0981b5fb1e52ab4aa4e8258be2', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-28 06:26:02', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'NX+B5jXY7PoHL7/0ykjghQ==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('304', 'oo5b_45HY1wTx0w7Ii2pj5KZTF38', '1ac19c717d0577d0387b65d42f6434c2', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-28 07:48:36', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'HZc6iX4Knwwp109QxRN2sg==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('305', 'oo5b_41hCe_5kSWMTJEkw8S_GakA', 'bdf7fd69b99faf4fab17f0a2076b7cd8', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-28 07:49:08', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, '36HRnn2uexQyODWjp+qfDg==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('306', 'oo5b_49wWDbZCm2tWwqaCuY1X1P8', '5dbcce04b4d2f8f33329c1572201c2c6', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-28 07:50:34', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'qyvL/JFx2pZyWS2/2sM0iw==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('307', 'oo5b_4-SrwIxRHHHvBveA_zcAJbQ', '028d7aa5ea31133f83d9b8ef1c32120c', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-28 08:32:27', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'f5RbbKGnRpCj55yAO/X7Yw==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('308', 'oo5b_406DU9N-yVNb1PnnVM7UL_g', 'a10291bc7bc196f0d56159178507883e', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-28 08:35:48', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'xQ1rFU/MLgacXeH68NmpLg==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('309', 'oo5b_41cmLi2uMuIy6GR90nK5ZSg', '4e5b14bf8f18fec902a3caf218154dcb', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-28 08:55:06', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'Jm6jHDgu4f0ML0grbdvASg==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('310', 'oo5b_426ZvpB-XIk7VFP8BBg_4Lo', 'd0758cb26e520f9b75409403c6de2778', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-28 08:55:53', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'gjq4qOwAa81Vj/MOldaqZw==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('311', 'oo5b_4xuQ6WqysaFmj9XGX8e7f3U', '62222667e4f8fb7a879890f98d422a45', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-28 09:25:35', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'UnGSlbIJBnxVercE/meFqA==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('312', 'oo5b_47UJIOxizmeSU4VUwHtVpyA', '70baeb190990f7b01a819a27f4950c46', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-28 10:59:45', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'BkDb8j/NxSHPtcBv+JWSOA==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('313', 'oo5b_47dL84XPBcMyzqHZ8K1nCz4', 'fffec343228ca0f8cc12641f43d3b013', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-28 11:00:18', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'r/l9npBNGNCyNNxkDymlmQ==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('314', 'oo5b_4zV7nGQiR1mTSNaPwBszRrk', '493839fd03f8c92581a0d8728e1774dd', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-28 11:18:01', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'Q+imQ25+qGDXbSLQAEMC+w==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('315', 'oo5b_4-3VJwMvI-gWvUAWbSh6mPk', 'f348ebe7153b00e7e5594258d8e9780d', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-28 11:23:31', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'iGFo2Z7SHgyP1kpvjy+9Zg==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('316', 'oo5b_450a1hJD4dog-9XemW9DbU8', '7a7348a805f4389d4c7e551c82a8c25c', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-28 11:25:06', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'bBnN45ereSfUdnlJdwC9LQ==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('317', 'oo5b_45XVkyZSg_7DHF1fcEykEpY', '5394fe1257fff1d2130f2e80b0fc9707', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-10-29 05:55:44', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'PWMLHgngx8dSjzYwA8hYAg==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('318', 'oo5b_44tgz3gvmUBQgtmp5zopqqA', '17e53c64d28e1fd55720f39005324e68', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-11-02 02:42:26', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, '6Y5G0nwMxrDHGG/H7ieR3g==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('319', 'oo5b_4yLqXb1sTRSuxUWy_bwuTIs', 'bd9b209af0e28d4ea513446ec2ea7139', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-11-02 04:20:12', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'quron/L2s8g45mTR8JmrYA==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('320', 'oo5b_42uUqmPLyeM252Fnjlu2fkI', '73df51853c082b544ac6432786697ccd', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-11-02 05:58:27', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'orHAse8qcUIhV5xy6u00Zg==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('321', 'oo5b_43UqAEGurKjpeen2303_icA', '72ecf41d222fc26e10490564685d81cb', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-11-02 07:42:33', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, '9h6/TqswvqRMgIZP9Ewovw==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('322', 'oo5b_41lM-CjMI9pPwjMtHNSJ1y0', '1e3202cbce7ef432fd9a6b045fe80a44', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-11-02 07:59:37', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, '0TxTBY8gbCpwLlsmt91PZg==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('323', 'oo5b_46oQUHO62Fj90KykUmsLbXI', '55591b3e35b2d7bfa8a1dca32031c36f', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-11-02 07:59:41', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, '9SAeJb/n5i8aJXl0ksjjTg==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('324', 'oo5b_40Ntr0rinVVoKYX_az1OebA', '609fdfd18edf52bb6abad4501a3c6b56', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-11-02 07:59:45', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'XNxiauCoB8bIhg6QyJa6Ug==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('325', 'oo5b_48vyztJ2kHcVOLd2IMV30gM', 'da2530458c05557fcee5c7279edf1166', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-11-02 07:59:46', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'dTYHFx+XvGQbXqWyCDhI0w==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('326', 'oo5b_46uKOvvQPdz7pD3u_I2qxj8', 'c0e3df9ea1523f9da2ba25c0a716f69c', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-11-02 07:59:49', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'SsS5pXz5JmdqwuzYa9u5kg==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('327', 'oo5b_43HsSbBlVPB3hkRUMjv51rg', '1564ab3ff98f60de108e85d14693e5f7', 'HUAWEI', 'HUAWEI CAZ-AL10', '7.0.19', 'undefined', 'android', 'undefined', '116.62.46.3', '2020-11-02 10:57:59', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'TtB6t1AbA05/D/NQmISXnw==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('328', 'oo5b_4z0E1WoDYqayrqX8-5-Uspg', '75fb5a6b92cd4b194ace313310c3c926', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-11-02 10:58:13', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, '0DCgq2dSuH7Q606salvXDA==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('329', 'oo5b_42GpQULzVFjHXKic3tEBMEw', 'aab8b29cf313e09b51b8fa805412a45a', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-11-02 11:03:10', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, '2Tlljco8o+bVdnKwXckaBw==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('330', 'oo5b_408v01Nxzx8tI5uFACrHL3Y', '905cb200c49cee65a14d5e084484b580', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-11-02 11:03:38', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'TOPexEiWZ/felFKuUz1cdg==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('331', 'oo5b_46FbSyIvSftr6UH55_6A0e4', '9a438ca9d828d8fcccf82827301603f5', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-11-02 11:05:48', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'BfqvpVuKXH2IVmapGktDyQ==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('332', 'oo5b_45xyEW5CERG_L-GwdFEVUtg', '06ab33111e74efbe43fc39ad290313de', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-11-02 11:05:57', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'NzFn3+B3PIn7itEjpjqNKg==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('333', 'oo5b_42dvYYJ8bLwhia98ILU5i6Y', '68c30fc53390a48c80a35d84ad2ce643', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-11-02 11:05:58', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'x0TijEcvKoL2g64tjjB8sw==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('334', 'oo5b_45gUAVFs5su0aGsk0yE5jZQ', '95c50c3208e56295f9fe29da66d59274', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-11-02 11:06:47', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'OaB9qSsUkEhJeCOwsqKCqg==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('335', 'oo5b_4-2hWsC6Vg2BFA646HXIKKg', '7db4456ee8ecf11406f1355abf6d4658', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-11-02 11:07:16', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'DLRBnIiw4SunPk4JmWVkNA==', null, '3', null, null);
INSERT INTO `shop_user` VALUES ('336', 'oo5b_48S7a1aJ4SHcKWxekz-Z0IQ', '8c89ae7d30f72913e9699958d0f6a996', 'iPhone', 'iPhone6', '7.0.3', 'undefined', 'ios', 'undefined', '116.62.46.3', '2020-11-02 13:57:24', '0', null, null, 'http://customersystemimg.tiancekj.com/default/132.jpg', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, 'omR1F5A3Qn56GliaMxA3fQ==', null, '3', null, null);

-- ----------------------------
-- Table structure for shop_user_analysis
-- ----------------------------
DROP TABLE IF EXISTS `shop_user_analysis`;
CREATE TABLE `shop_user_analysis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) DEFAULT NULL COMMENT '商品编号',
  `shop_user_id` int(11) DEFAULT NULL,
  `look_shop_num` int(11) DEFAULT '0' COMMENT '访问次数',
  `ask_num` int(11) DEFAULT '0' COMMENT '资讯次数',
  `look_good_num` int(11) DEFAULT '0' COMMENT '查看商品次数',
  `look_case_num` int(11) DEFAULT '0' COMMENT '查看案例次数',
  `look_video_num` int(11) DEFAULT '0' COMMENT '查看视频次数',
  `look_info_num` int(11) DEFAULT '0' COMMENT '浏览咨询次数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='门店用户的智能分析';

-- ----------------------------
-- Records of shop_user_analysis
-- ----------------------------
INSERT INTO `shop_user_analysis` VALUES ('1', '1', '6', '12', '27', '5', '17', '9', '0');
INSERT INTO `shop_user_analysis` VALUES ('2', '4', null, '0', '177', '46', '376', '0', '0');
INSERT INTO `shop_user_analysis` VALUES ('3', '7', null, '0', '44', '0', '54', '0', '0');
INSERT INTO `shop_user_analysis` VALUES ('4', '3', null, '0', '2', '0', '2', '0', '0');

-- ----------------------------
-- Table structure for shop_user_design
-- ----------------------------
DROP TABLE IF EXISTS `shop_user_design`;
CREATE TABLE `shop_user_design` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) DEFAULT NULL COMMENT '门店id',
  `shop_user_id` int(11) DEFAULT NULL COMMENT '门店用户id',
  `realname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '姓名',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `phone` varchar(11) DEFAULT NULL COMMENT '电话',
  `address` text,
  `house_type` varchar(255) DEFAULT NULL COMMENT '户型',
  `area` varchar(100) DEFAULT NULL COMMENT '面积',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='门店0元设计需求表';

-- ----------------------------
-- Records of shop_user_design
-- ----------------------------
INSERT INTO `shop_user_design` VALUES ('1', '1', '3', '123', '2020-08-23 19:27:35', '13225749455', '北京市', null, '324');
INSERT INTO `shop_user_design` VALUES ('2', '1', '2', '赵', '2020-09-08 11:45:52', null, null, null, null);
INSERT INTO `shop_user_design` VALUES ('3', '1', '9', '钱', '2020-09-08 11:45:55', null, null, null, null);
INSERT INTO `shop_user_design` VALUES ('4', '1', '4', '孙', '2020-08-01 11:46:11', null, null, null, null);
INSERT INTO `shop_user_design` VALUES ('5', '1', '5', '李', '2020-08-01 11:46:21', null, null, null, null);
INSERT INTO `shop_user_design` VALUES ('6', '1', '6', '周', '2020-09-08 11:46:27', null, null, null, null);
INSERT INTO `shop_user_design` VALUES ('7', '1', '7', '吴', '2020-09-08 11:46:30', null, null, null, null);
INSERT INTO `shop_user_design` VALUES ('8', '1', '8', '郑', '2020-09-08 11:46:32', null, null, null, null);
INSERT INTO `shop_user_design` VALUES ('9', '4', '3', '桂成才', '2020-09-27 14:15:55', '13225749377', '北京市', null, '120');
INSERT INTO `shop_user_design` VALUES ('10', '8', '7', '天天', '2020-10-14 17:34:16', '13211112222', '北京市', null, '111');
INSERT INTO `shop_user_design` VALUES ('11', '8', '8', '下下', '2020-10-14 17:34:18', '13211112222', '北京市', null, '111');
INSERT INTO `shop_user_design` VALUES ('12', '8', '9', '地地', '2020-10-14 17:34:20', '13211112222', '北京市', null, '111');
INSERT INTO `shop_user_design` VALUES ('13', '8', '10', '涂涂', '2020-10-14 17:34:23', '13211112222', '北京市', null, '111');
INSERT INTO `shop_user_design` VALUES ('14', '4', '4', '吃多少', '2020-10-21 16:49:19', '17656565656', '北京市', null, '996');
INSERT INTO `shop_user_design` VALUES ('15', '4', '4', '吃多少', '2020-10-21 16:49:28', '17656565656', '北京市', null, '996');
INSERT INTO `shop_user_design` VALUES ('16', '4', '3', '132', '2020-10-21 17:34:22', '18758016435', '北京市', null, '23');

-- ----------------------------
-- Table structure for shop_user_follow
-- ----------------------------
DROP TABLE IF EXISTS `shop_user_follow`;
CREATE TABLE `shop_user_follow` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) DEFAULT NULL COMMENT '门店编号',
  `shop_user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '内容',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='门店用户跟进表';

-- ----------------------------
-- Records of shop_user_follow
-- ----------------------------
INSERT INTO `shop_user_follow` VALUES ('1', '1', '6', '你喊', '2020-08-26 10:17:55');
INSERT INTO `shop_user_follow` VALUES ('2', '1', '6', '你好', '2020-08-26 10:18:18');
INSERT INTO `shop_user_follow` VALUES ('3', '1', '6', '你好', '2020-08-25 10:18:24');
INSERT INTO `shop_user_follow` VALUES ('4', '1', '6', '你好', '2020-08-25 10:18:49');
INSERT INTO `shop_user_follow` VALUES ('5', '1', '6', '不好', '2020-08-28 10:38:59');
INSERT INTO `shop_user_follow` VALUES ('6', '1', '6', '好', '2020-08-28 10:39:03');
INSERT INTO `shop_user_follow` VALUES ('7', '1', '6', '特呗', '2020-08-28 10:40:17');
INSERT INTO `shop_user_follow` VALUES ('8', '1', '6', '加油', '2020-08-23 10:40:20');
INSERT INTO `shop_user_follow` VALUES ('9', '1', '6', '奥利给', '2020-08-23 10:40:25');
INSERT INTO `shop_user_follow` VALUES ('10', '1', '6', '撒旦发射点', '2020-08-28 11:37:06');
INSERT INTO `shop_user_follow` VALUES ('11', '1', '6', '士大夫', '2020-08-28 11:38:42');
INSERT INTO `shop_user_follow` VALUES ('12', '1', '6', '窜对', '2020-08-28 11:41:37');
INSERT INTO `shop_user_follow` VALUES ('13', '1', '6', '发士大夫', '2020-08-28 11:44:13');
INSERT INTO `shop_user_follow` VALUES ('14', '1', '6', '测试', '2020-08-28 17:30:28');
INSERT INTO `shop_user_follow` VALUES ('15', '1', '4', '测试', '2020-08-28 17:31:44');
INSERT INTO `shop_user_follow` VALUES ('16', '1', '6', '阿迪斯', '2020-08-29 10:40:32');
INSERT INTO `shop_user_follow` VALUES ('17', '1', '6', 'llll', '2020-08-29 11:11:13');
INSERT INTO `shop_user_follow` VALUES ('18', '1', '6', '测', '2020-09-06 10:20:38');
INSERT INTO `shop_user_follow` VALUES ('19', '1', '6', '士大夫', '2020-09-06 10:21:57');
INSERT INTO `shop_user_follow` VALUES ('20', '1', '6', '电风扇', '2020-09-06 10:22:03');
INSERT INTO `shop_user_follow` VALUES ('21', '1', '6', '电风扇dd所发生的', '2020-09-06 10:22:30');
INSERT INTO `shop_user_follow` VALUES ('22', '1', '6', '发士大夫', '2020-09-06 10:23:10');
INSERT INTO `shop_user_follow` VALUES ('23', '1', '6', '[object Object]', '2020-09-06 10:25:23');
INSERT INTO `shop_user_follow` VALUES ('24', '1', '6', '[object Object]', '2020-09-06 10:25:27');
INSERT INTO `shop_user_follow` VALUES ('25', '1', '6', '[object Object]', '2020-09-06 10:25:32');
INSERT INTO `shop_user_follow` VALUES ('26', '1', '6', '[object Object]', '2020-09-06 10:25:46');
INSERT INTO `shop_user_follow` VALUES ('27', '1', '6', '[object Object]', '2020-09-06 10:25:47');
INSERT INTO `shop_user_follow` VALUES ('28', '1', '6', '所发生的', '2020-09-06 10:26:16');
INSERT INTO `shop_user_follow` VALUES ('29', '4', '3', '你的手机', '2020-09-28 17:56:34');
INSERT INTO `shop_user_follow` VALUES ('30', '4', '3', '去', '2020-09-28 18:04:31');
INSERT INTO `shop_user_follow` VALUES ('31', '1', '3', '测试', '2020-09-28 18:05:32');
INSERT INTO `shop_user_follow` VALUES ('32', '1', '3', '隋东风', '2020-09-28 18:05:40');
INSERT INTO `shop_user_follow` VALUES ('33', '1', '4', '撒旦飞洒地方', '2020-09-28 18:05:40');
INSERT INTO `shop_user_follow` VALUES ('34', '1', '4', '首发式地方', '2020-09-28 18:05:40');
INSERT INTO `shop_user_follow` VALUES ('35', '1', '4', '阀士大夫十', '2020-09-28 18:05:40');
INSERT INTO `shop_user_follow` VALUES ('36', '1', '4', '第三方·', '2020-09-29 09:36:19');
INSERT INTO `shop_user_follow` VALUES ('37', '7', '3', '我', '2020-10-09 19:44:00');
INSERT INTO `shop_user_follow` VALUES ('38', '1', '3', 'aabbcc', '2020-10-13 13:37:13');
INSERT INTO `shop_user_follow` VALUES ('39', '1', '139', '厕所', '2020-10-14 13:06:57');
INSERT INTO `shop_user_follow` VALUES ('40', '1', '139', '哈哈', '2020-10-14 13:07:25');
INSERT INTO `shop_user_follow` VALUES ('41', '1', '3', '士大夫', '2020-10-14 13:56:37');
INSERT INTO `shop_user_follow` VALUES ('42', '1', '139', '手动阀手动阀手动阀手动阀', '2020-10-14 13:56:47');
INSERT INTO `shop_user_follow` VALUES ('43', '1', '3', '522063', '2020-10-14 14:19:06');
INSERT INTO `shop_user_follow` VALUES ('44', '1', '3', '长城', '2020-10-14 14:19:20');
INSERT INTO `shop_user_follow` VALUES ('45', '8', '7', 'exit', '2020-10-14 17:22:29');
INSERT INTO `shop_user_follow` VALUES ('46', '7', '3', '这种事情', '2020-10-15 13:00:16');

-- ----------------------------
-- Table structure for shop_user_label
-- ----------------------------
DROP TABLE IF EXISTS `shop_user_label`;
CREATE TABLE `shop_user_label` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) DEFAULT NULL COMMENT '门店编号',
  `shop_user_id` int(11) DEFAULT NULL,
  `label_id` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='门店用户标签表';

-- ----------------------------
-- Records of shop_user_label
-- ----------------------------
INSERT INTO `shop_user_label` VALUES ('40', '1', '3', '8', '2020-10-13 13:37:31');
INSERT INTO `shop_user_label` VALUES ('2', '1', '6', '2', '2020-08-27 11:01:44');
INSERT INTO `shop_user_label` VALUES ('41', '1', '3', '14', '2020-10-13 13:37:33');
INSERT INTO `shop_user_label` VALUES ('4', '1', '6', '4', '2020-08-27 11:01:47');
INSERT INTO `shop_user_label` VALUES ('42', '1', '3', '10', '2020-10-13 13:37:37');
INSERT INTO `shop_user_label` VALUES ('6', '1', '6', '6', '2020-08-26 11:01:50');
INSERT INTO `shop_user_label` VALUES ('43', '1', '4', '3', '2020-10-13 13:37:58');
INSERT INTO `shop_user_label` VALUES ('8', '1', '6', '8', '2020-08-26 11:01:53');
INSERT INTO `shop_user_label` VALUES ('44', '1', '4', '1', '2020-10-13 13:38:00');
INSERT INTO `shop_user_label` VALUES ('45', '1', '4', '2', '2020-10-13 13:38:01');
INSERT INTO `shop_user_label` VALUES ('46', '1', '4', '16', '2020-10-13 13:38:19');
INSERT INTO `shop_user_label` VALUES ('30', '1', '6', '12', '2020-08-28 16:29:29');
INSERT INTO `shop_user_label` VALUES ('37', '1', '6', '9', '2020-08-28 17:37:44');
INSERT INTO `shop_user_label` VALUES ('32', '1', '6', '10', '2020-08-28 16:29:35');
INSERT INTO `shop_user_label` VALUES ('47', '1', '139', '1', '2020-10-14 13:06:24');
INSERT INTO `shop_user_label` VALUES ('54', '8', '7', '17', '2020-10-14 17:22:47');
INSERT INTO `shop_user_label` VALUES ('49', '1', '139', '1', '2020-10-14 13:57:00');
INSERT INTO `shop_user_label` VALUES ('50', '1', '3', '3', '2020-10-14 14:05:43');
INSERT INTO `shop_user_label` VALUES ('53', '1', '3', '4', '2020-10-14 14:19:10');
INSERT INTO `shop_user_label` VALUES ('36', '1', '6', '1', '2020-08-28 17:30:15');
INSERT INTO `shop_user_label` VALUES ('38', '1', '4', '1', '2020-09-29 09:40:56');
INSERT INTO `shop_user_label` VALUES ('39', '1', '4', '3', '2020-09-29 09:40:57');
INSERT INTO `shop_user_label` VALUES ('29', '1', '4', '5', '2020-08-28 15:58:13');

-- ----------------------------
-- Table structure for shop_user_locus
-- ----------------------------
DROP TABLE IF EXISTS `shop_user_locus`;
CREATE TABLE `shop_user_locus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) DEFAULT NULL COMMENT '门店编号',
  `shop_user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `is_share` int(5) DEFAULT '0' COMMENT '是否分享',
  `up_num` int(11) DEFAULT '0' COMMENT '点赞次数',
  `look_num` int(11) DEFAULT '0' COMMENT '查看次数',
  `report_num` int(11) DEFAULT '0' COMMENT '转发次数',
  `look_type` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '访问项目。1资讯，2商品，3案例，4视频，5海报，6优惠券,7名片,8咨询',
  `look_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '访问的标题',
  `look_title_id` int(11) DEFAULT NULL COMMENT '访问内容的id',
  `create_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=756 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='门店客户轨迹表';

-- ----------------------------
-- Records of shop_user_locus
-- ----------------------------
INSERT INTO `shop_user_locus` VALUES ('1', '1', '2', '1', '0', '0', '1', '1', '36自曝从不体检', null, '2020-09-07 11:22:19');
INSERT INTO `shop_user_locus` VALUES ('2', '1', '2', '1', '0', '0', '1', '2', '36岁自曝从不体检', null, '2020-09-07 11:29:26');
INSERT INTO `shop_user_locus` VALUES ('3', '1', '4', '1', '0', '0', '1', '3', '36自曝从不体检', null, '2020-09-06 11:24:35');
INSERT INTO `shop_user_locus` VALUES ('4', '1', '2', '1', '0', '0', '1', '4', '36岁自曝从不体检', null, '2020-09-06 11:29:41');
INSERT INTO `shop_user_locus` VALUES ('5', '1', '6', '1', '0', '0', '1', '5', '36岁自曝从不体检', null, '2020-08-28 10:46:54');
INSERT INTO `shop_user_locus` VALUES ('6', '1', '2', '1', '0', '0', '1', '1', '36岁自曝从不体检', null, '2020-09-05 10:47:01');
INSERT INTO `shop_user_locus` VALUES ('7', '1', '5', '1', '0', '0', '1', '2', '36岁自曝从不体检', null, '2020-09-03 10:47:05');
INSERT INTO `shop_user_locus` VALUES ('8', '1', '3', '1', '0', '0', '1', '1', '36岁自曝从不体检', null, '2020-08-05 10:47:08');
INSERT INTO `shop_user_locus` VALUES ('9', '1', '3', '1', '0', '0', '1', '1', '36岁自曝从不体检', null, '2020-09-03 10:47:11');
INSERT INTO `shop_user_locus` VALUES ('10', '1', '4', '0', '0', '0', '0', null, '36岁自曝从不体检', null, '2020-09-08 10:53:46');
INSERT INTO `shop_user_locus` VALUES ('11', '1', '5', '0', '0', '0', '0', null, '36岁自曝从不体检', null, '2020-09-08 10:53:50');
INSERT INTO `shop_user_locus` VALUES ('12', '1', '2', '0', '0', '0', '0', null, '36岁自曝从不体检', null, '2020-09-08 10:53:52');
INSERT INTO `shop_user_locus` VALUES ('13', '1', '5', '0', '0', '0', '0', null, '36岁自曝从不体检', null, '2020-09-08 10:53:55');
INSERT INTO `shop_user_locus` VALUES ('14', '1', '3', '0', '0', '0', '0', null, '36岁自曝从不体检', null, '2020-09-08 10:53:57');
INSERT INTO `shop_user_locus` VALUES ('15', '1', '6', '0', '0', '0', '0', null, '36岁自曝从不体检', null, '2020-09-07 10:53:59');
INSERT INTO `shop_user_locus` VALUES ('16', '4', '3', '0', '0', '1', '0', '2', '浮香', '107081', '2020-09-27 15:37:22');
INSERT INTO `shop_user_locus` VALUES ('17', '4', '3', '0', '0', '1', '0', '3', '镜花重幻', '36', '2020-09-27 15:41:22');
INSERT INTO `shop_user_locus` VALUES ('18', '4', '3', '0', '0', '1', '0', '2', '曼舞', '107080', '2020-09-27 15:41:33');
INSERT INTO `shop_user_locus` VALUES ('19', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '16', '2020-09-27 15:41:46');
INSERT INTO `shop_user_locus` VALUES ('20', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '14', '2020-09-27 16:12:34');
INSERT INTO `shop_user_locus` VALUES ('21', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '14', '2020-09-27 16:14:53');
INSERT INTO `shop_user_locus` VALUES ('22', '4', '3', '0', '0', '1', '0', '2', '盗梦空间', '107079', '2020-09-27 16:15:02');
INSERT INTO `shop_user_locus` VALUES ('23', '4', '3', '0', '0', '1', '0', '3', '镜花重幻', '36', '2020-09-27 16:15:05');
INSERT INTO `shop_user_locus` VALUES ('24', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '16', '2020-09-27 16:18:03');
INSERT INTO `shop_user_locus` VALUES ('25', '4', '3', '0', '0', '1', '0', '3', '镜花重幻', '36', '2020-09-27 16:21:04');
INSERT INTO `shop_user_locus` VALUES ('26', '4', '3', '0', '0', '1', '0', '3', '镜花重幻', '36', '2020-09-27 16:23:44');
INSERT INTO `shop_user_locus` VALUES ('27', '4', '3', '0', '0', '1', '0', '3', '镜花重幻', '36', '2020-09-27 16:31:26');
INSERT INTO `shop_user_locus` VALUES ('28', '4', '3', '0', '0', '1', '0', '3', '镜花重幻', '36', '2020-09-27 16:35:11');
INSERT INTO `shop_user_locus` VALUES ('29', '4', '3', '0', '0', '1', '0', '2', '曼舞', '107080', '2020-09-27 16:35:16');
INSERT INTO `shop_user_locus` VALUES ('30', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '16', '2020-09-27 16:45:44');
INSERT INTO `shop_user_locus` VALUES ('31', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '16', '2020-09-27 16:46:37');
INSERT INTO `shop_user_locus` VALUES ('32', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '16', '2020-09-27 16:47:14');
INSERT INTO `shop_user_locus` VALUES ('33', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨传统与现代元素的碰撞，领略不一样的东方风情！', '15', '2020-09-27 16:47:42');
INSERT INTO `shop_user_locus` VALUES ('34', '4', '3', '0', '0', '1', '0', '3', '镜花重幻', '36', '2020-09-27 16:49:48');
INSERT INTO `shop_user_locus` VALUES ('35', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '16', '2020-09-27 16:50:05');
INSERT INTO `shop_user_locus` VALUES ('36', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '14', '2020-09-27 16:50:12');
INSERT INTO `shop_user_locus` VALUES ('37', '4', '3', '0', '0', '1', '0', '3', '镜花重幻', '36', '2020-09-27 16:57:22');
INSERT INTO `shop_user_locus` VALUES ('38', '4', '3', '0', '0', '1', '0', '3', '镜花重幻', '36', '2020-09-27 17:00:27');
INSERT INTO `shop_user_locus` VALUES ('39', '4', '3', '0', '0', '1', '0', '3', '镜花重幻', '36', '2020-09-27 17:00:45');
INSERT INTO `shop_user_locus` VALUES ('40', '4', '3', '0', '0', '1', '0', '3', '镜花重幻', '36', '2020-09-27 17:01:56');
INSERT INTO `shop_user_locus` VALUES ('41', '4', '3', '0', '0', '1', '0', '3', '镜花重幻', '36', '2020-09-27 17:02:22');
INSERT INTO `shop_user_locus` VALUES ('42', '4', '3', '0', '0', '1', '0', '3', '夏日流光', '35', '2020-09-27 17:03:25');
INSERT INTO `shop_user_locus` VALUES ('43', '4', '3', '0', '0', '1', '0', '2', '浮香', '107081', '2020-09-27 17:04:08');
INSERT INTO `shop_user_locus` VALUES ('44', '4', '3', '0', '0', '1', '0', '2', '自由之城', '107078', '2020-09-27 17:04:12');
INSERT INTO `shop_user_locus` VALUES ('45', '4', '3', '0', '0', '1', '0', '2', '欧卡娅', '107075', '2020-09-27 17:04:18');
INSERT INTO `shop_user_locus` VALUES ('46', '4', '3', '0', '0', '1', '0', '2', '盗梦空间', '107079', '2020-09-27 17:04:29');
INSERT INTO `shop_user_locus` VALUES ('47', '4', '3', '0', '0', '1', '0', '3', '夏日流光', '35', '2020-09-27 17:09:06');
INSERT INTO `shop_user_locus` VALUES ('48', '4', '3', '0', '0', '1', '0', '3', '镜花重幻', '36', '2020-09-27 17:10:09');
INSERT INTO `shop_user_locus` VALUES ('49', '4', '3', '0', '0', '1', '0', '3', '夏日流光', '35', '2020-09-27 17:11:50');
INSERT INTO `shop_user_locus` VALUES ('50', '4', '3', '0', '0', '1', '0', '3', '镜花重幻', '36', '2020-09-27 17:11:54');
INSERT INTO `shop_user_locus` VALUES ('51', '4', '3', '0', '0', '1', '0', '2', '浮香', '107081', '2020-09-27 17:12:00');
INSERT INTO `shop_user_locus` VALUES ('52', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '16', '2020-09-27 17:12:07');
INSERT INTO `shop_user_locus` VALUES ('53', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '16', '2020-09-27 17:13:14');
INSERT INTO `shop_user_locus` VALUES ('54', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '16', '2020-09-27 17:17:13');
INSERT INTO `shop_user_locus` VALUES ('55', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨北欧轻奢风格,不将就是一种生活态度', '13', '2020-09-27 17:23:06');
INSERT INTO `shop_user_locus` VALUES ('56', '4', '3', '0', '0', '1', '0', '3', '镜花重幻', '36', '2020-09-27 17:24:35');
INSERT INTO `shop_user_locus` VALUES ('57', '4', '3', '0', '0', '1', '0', '3', '镜花重幻', '36', '2020-09-27 17:26:44');
INSERT INTO `shop_user_locus` VALUES ('58', '4', '3', '0', '0', '1', '0', '2', '浮香', '107081', '2020-09-27 17:28:06');
INSERT INTO `shop_user_locus` VALUES ('59', '4', '4', '0', '0', '1', '0', '3', '镜花重幻', '36', '2020-09-27 18:17:38');
INSERT INTO `shop_user_locus` VALUES ('60', '4', '4', '0', '0', '1', '0', '3', '镜花重幻', '36', '2020-09-27 18:26:56');
INSERT INTO `shop_user_locus` VALUES ('61', '4', '4', '0', '0', '1', '0', '2', '浮香', '107081', '2020-09-27 18:27:04');
INSERT INTO `shop_user_locus` VALUES ('62', '4', '4', '0', '0', '1', '0', '3', '镜花重幻', '36', '2020-09-27 18:28:38');
INSERT INTO `shop_user_locus` VALUES ('63', '4', '4', '0', '0', '1', '0', '3', '巴黎玫瑰', '34', '2020-09-27 18:28:40');
INSERT INTO `shop_user_locus` VALUES ('64', '4', '4', '0', '0', '1', '0', '2', '浮香', '107081', '2020-09-27 18:28:42');
INSERT INTO `shop_user_locus` VALUES ('65', '4', '4', '0', '0', '1', '0', '2', '浮香', '107081', '2020-09-27 18:29:08');
INSERT INTO `shop_user_locus` VALUES ('66', '4', '4', '0', '0', '1', '0', '3', '镜花重幻', '36', '2020-09-27 18:29:14');
INSERT INTO `shop_user_locus` VALUES ('67', '4', '4', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '16', '2020-09-27 18:29:20');
INSERT INTO `shop_user_locus` VALUES ('68', '4', '4', '0', '0', '1', '0', '3', '镜花重幻', '36', '2020-09-27 18:29:24');
INSERT INTO `shop_user_locus` VALUES ('69', '4', '4', '0', '0', '1', '0', '3', '镜花重幻', '36', '2020-09-27 18:35:50');
INSERT INTO `shop_user_locus` VALUES ('70', '4', '4', '0', '0', '1', '0', '3', '镜花重幻', '36', '2020-09-27 18:36:24');
INSERT INTO `shop_user_locus` VALUES ('71', '4', '4', '0', '0', '1', '0', '3', '镜花重幻', '36', '2020-09-27 18:36:52');
INSERT INTO `shop_user_locus` VALUES ('72', '4', '4', '0', '0', '1', '0', '3', '镜花重幻', '36', '2020-09-27 18:37:02');
INSERT INTO `shop_user_locus` VALUES ('73', '4', '4', '0', '0', '1', '0', '3', '镜花重幻', '36', '2020-09-27 18:37:22');
INSERT INTO `shop_user_locus` VALUES ('74', '4', '4', '0', '0', '1', '0', '3', '镜花重幻', '36', '2020-09-27 18:37:31');
INSERT INTO `shop_user_locus` VALUES ('75', '4', '4', '0', '0', '1', '0', '3', '镜花重幻', '36', '2020-09-27 18:45:03');
INSERT INTO `shop_user_locus` VALUES ('76', '4', '4', '0', '0', '1', '0', '3', '镜花重幻', '36', '2020-09-27 18:45:09');
INSERT INTO `shop_user_locus` VALUES ('77', '4', '4', '0', '0', '1', '0', '3', '镜花重幻', '36', '2020-09-27 18:45:45');
INSERT INTO `shop_user_locus` VALUES ('78', '4', '4', '0', '0', '1', '0', '3', '镜花重幻', '36', '2020-09-27 18:47:47');
INSERT INTO `shop_user_locus` VALUES ('79', '4', '4', '0', '0', '1', '0', '3', '镜花重幻', '36', '2020-09-27 18:48:01');
INSERT INTO `shop_user_locus` VALUES ('80', '4', '4', '0', '0', '1', '0', '3', '镜花重幻', '36', '2020-09-27 18:48:13');
INSERT INTO `shop_user_locus` VALUES ('81', '4', '4', '0', '0', '1', '0', '2', '浮香', '107081', '2020-09-27 18:49:28');
INSERT INTO `shop_user_locus` VALUES ('82', '4', '4', '0', '0', '1', '0', '3', '镜花重幻', '36', '2020-09-27 18:49:51');
INSERT INTO `shop_user_locus` VALUES ('83', '4', '4', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '16', '2020-09-27 18:50:22');
INSERT INTO `shop_user_locus` VALUES ('84', '4', '4', '0', '0', '1', '0', '3', '镜花重幻', '36', '2020-09-27 18:51:20');
INSERT INTO `shop_user_locus` VALUES ('85', '4', '17', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '16', '2020-09-28 10:24:58');
INSERT INTO `shop_user_locus` VALUES ('86', '4', '17', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '14', '2020-09-28 10:25:18');
INSERT INTO `shop_user_locus` VALUES ('87', '4', '17', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '16', '2020-09-28 10:36:00');
INSERT INTO `shop_user_locus` VALUES ('88', '4', '3', '0', '0', '1', '0', '2', '浮香', '107081', '2020-09-28 10:38:35');
INSERT INTO `shop_user_locus` VALUES ('89', '4', '3', '0', '0', '1', '0', '2', '自由之城', '107078', '2020-09-28 10:38:54');
INSERT INTO `shop_user_locus` VALUES ('90', '4', '3', '0', '0', '1', '0', '2', '曼舞', '107080', '2020-09-28 10:38:58');
INSERT INTO `shop_user_locus` VALUES ('91', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '16', '2020-09-28 10:51:05');
INSERT INTO `shop_user_locus` VALUES ('92', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '16', '2020-09-28 11:06:58');
INSERT INTO `shop_user_locus` VALUES ('93', '4', '3', '0', '0', '1', '0', '3', '镜花重幻', '36', '2020-09-28 11:09:37');
INSERT INTO `shop_user_locus` VALUES ('94', '4', '3', '0', '0', '1', '0', '2', '浮香', '107081', '2020-09-28 11:10:09');
INSERT INTO `shop_user_locus` VALUES ('95', '4', '3', '0', '0', '1', '0', '2', '自由之城', '107078', '2020-09-28 11:10:12');
INSERT INTO `shop_user_locus` VALUES ('96', '4', '3', '0', '0', '1', '0', '2', '自由之城', '107078', '2020-09-28 11:10:19');
INSERT INTO `shop_user_locus` VALUES ('97', '4', '3', '0', '0', '1', '0', '3', '巴黎玫瑰', '34', '2020-09-28 11:52:38');
INSERT INTO `shop_user_locus` VALUES ('98', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨传统与现代元素的碰撞，领略不一样的东方风情！', '15', '2020-09-28 11:54:38');
INSERT INTO `shop_user_locus` VALUES ('99', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨传统与现代元素的碰撞，领略不一样的东方风情！', '15', '2020-09-28 11:54:54');
INSERT INTO `shop_user_locus` VALUES ('100', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '16', '2020-09-28 12:21:39');
INSERT INTO `shop_user_locus` VALUES ('101', '4', '3', '0', '0', '1', '0', '2', '自由之城', '107078', '2020-09-28 12:21:46');
INSERT INTO `shop_user_locus` VALUES ('102', '4', '3', '0', '0', '1', '0', '3', '莫奈的调色盘', '38', '2020-09-28 12:21:59');
INSERT INTO `shop_user_locus` VALUES ('103', '4', '3', '0', '0', '1', '0', '3', '莫奈的调色盘', '38', '2020-09-28 12:23:37');
INSERT INTO `shop_user_locus` VALUES ('104', '4', '3', '0', '0', '1', '0', '3', '莫奈的调色盘', '38', '2020-09-28 12:25:29');
INSERT INTO `shop_user_locus` VALUES ('105', '4', '3', '0', '0', '1', '0', '3', '莫奈的调色盘', '38', '2020-09-28 12:31:00');
INSERT INTO `shop_user_locus` VALUES ('106', '4', '3', '0', '0', '1', '0', '3', '巴黎玫瑰', '34', '2020-09-28 12:35:49');
INSERT INTO `shop_user_locus` VALUES ('107', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '14', '2020-09-28 12:50:44');
INSERT INTO `shop_user_locus` VALUES ('108', '4', '3', '0', '0', '1', '0', '3', '莫奈的调色盘', '38', '2020-09-28 12:52:31');
INSERT INTO `shop_user_locus` VALUES ('109', '4', '3', '0', '0', '1', '0', '3', '莫奈的调色盘', '38', '2020-09-28 12:56:57');
INSERT INTO `shop_user_locus` VALUES ('110', '4', '17', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '16', '2020-09-28 13:06:57');
INSERT INTO `shop_user_locus` VALUES ('111', '4', '3', '0', '0', '1', '0', '3', '莫奈的调色盘', '38', '2020-09-28 14:27:08');
INSERT INTO `shop_user_locus` VALUES ('112', '4', '3', '0', '0', '1', '0', '3', '莫奈的调色盘', '38', '2020-09-28 14:28:29');
INSERT INTO `shop_user_locus` VALUES ('113', '4', '3', '0', '0', '1', '0', '3', '莫奈的调色盘', '38', '2020-09-28 14:34:41');
INSERT INTO `shop_user_locus` VALUES ('114', '4', '3', '0', '0', '1', '0', '3', '莫奈的调色盘', '38', '2020-09-28 14:34:47');
INSERT INTO `shop_user_locus` VALUES ('115', '4', '3', '0', '0', '1', '0', '3', '镜花重幻', '36', '2020-09-28 14:37:19');
INSERT INTO `shop_user_locus` VALUES ('116', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '16', '2020-09-28 14:37:24');
INSERT INTO `shop_user_locus` VALUES ('117', '4', '3', '0', '0', '1', '0', '2', '黄金海岸', '107076', '2020-09-28 14:37:36');
INSERT INTO `shop_user_locus` VALUES ('118', '4', '3', '0', '0', '1', '0', '3', '莫奈的调色盘', '38', '2020-09-28 14:37:50');
INSERT INTO `shop_user_locus` VALUES ('119', '4', '3', '0', '0', '1', '0', '3', '巴黎玫瑰', '34', '2020-09-28 14:42:08');
INSERT INTO `shop_user_locus` VALUES ('120', '4', '3', '0', '0', '1', '0', '2', '曼舞', '107080', '2020-09-28 14:42:25');
INSERT INTO `shop_user_locus` VALUES ('121', '4', '17', '0', '0', '1', '0', '3', '大宅风范', '40', '2020-09-28 14:43:16');
INSERT INTO `shop_user_locus` VALUES ('122', '4', '17', '0', '0', '1', '0', '2', '繁花梦', '107101', '2020-09-28 14:44:09');
INSERT INTO `shop_user_locus` VALUES ('123', '4', '17', '0', '0', '1', '0', '3', '浮云悠歌', '47', '2020-09-28 14:51:30');
INSERT INTO `shop_user_locus` VALUES ('124', '4', '17', '0', '0', '1', '0', '3', '半盏流年', '45', '2020-09-28 14:51:47');
INSERT INTO `shop_user_locus` VALUES ('125', '4', '17', '0', '0', '1', '0', '3', '浮云悠歌', '47', '2020-09-28 14:52:13');
INSERT INTO `shop_user_locus` VALUES ('126', '4', '3', '0', '0', '1', '0', '3', '浮云悠歌', '47', '2020-09-28 14:53:48');
INSERT INTO `shop_user_locus` VALUES ('127', '4', '3', '0', '0', '1', '0', '3', '浮云悠歌', '47', '2020-09-28 14:54:30');
INSERT INTO `shop_user_locus` VALUES ('128', '4', '3', '0', '0', '1', '0', '2', '曼舞', '107080', '2020-09-28 15:03:19');
INSERT INTO `shop_user_locus` VALUES ('129', '4', '3', '0', '0', '1', '0', '3', '半盏流年', '45', '2020-09-28 15:03:34');
INSERT INTO `shop_user_locus` VALUES ('130', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '16', '2020-09-28 15:04:05');
INSERT INTO `shop_user_locus` VALUES ('131', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '14', '2020-09-28 15:04:15');
INSERT INTO `shop_user_locus` VALUES ('132', '4', '3', '0', '0', '1', '0', '3', '大宅风范', '40', '2020-09-28 15:05:42');
INSERT INTO `shop_user_locus` VALUES ('133', '4', '3', '0', '0', '1', '0', '2', '曼舞', '107080', '2020-09-28 15:05:48');
INSERT INTO `shop_user_locus` VALUES ('134', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨传统与现代元素的碰撞，领略不一样的东方风情！', '15', '2020-09-28 15:05:52');
INSERT INTO `shop_user_locus` VALUES ('135', '4', '17', '0', '0', '1', '0', '3', '浮云悠歌', '47', '2020-09-28 15:06:29');
INSERT INTO `shop_user_locus` VALUES ('136', '4', '17', '0', '0', '1', '0', '3', '浮云悠歌', '47', '2020-09-28 15:06:40');
INSERT INTO `shop_user_locus` VALUES ('137', '4', '3', '0', '0', '1', '0', '3', '浮云悠歌', '47', '2020-09-28 15:06:50');
INSERT INTO `shop_user_locus` VALUES ('138', '4', '3', '0', '0', '1', '0', '2', '盗梦空间', '107079', '2020-09-28 15:07:03');
INSERT INTO `shop_user_locus` VALUES ('139', '4', '17', '0', '0', '1', '0', '3', '繁华美寻', '39', '2020-09-28 15:07:09');
INSERT INTO `shop_user_locus` VALUES ('140', '4', '17', '0', '0', '1', '0', '3', '大宅风范', '40', '2020-09-28 15:07:09');
INSERT INTO `shop_user_locus` VALUES ('141', '4', '17', '0', '0', '1', '0', '3', '半盏流年', '45', '2020-09-28 15:07:09');
INSERT INTO `shop_user_locus` VALUES ('142', '4', '17', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '16', '2020-09-28 15:07:10');
INSERT INTO `shop_user_locus` VALUES ('143', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '16', '2020-09-28 15:07:15');
INSERT INTO `shop_user_locus` VALUES ('144', '4', '17', '0', '0', '1', '0', '3', '繁华美寻', '39', '2020-09-28 15:15:19');
INSERT INTO `shop_user_locus` VALUES ('145', '4', '17', '0', '0', '1', '0', '3', '大宅风范', '40', '2020-09-28 15:15:22');
INSERT INTO `shop_user_locus` VALUES ('146', '4', '17', '0', '0', '1', '0', '3', '浮云悠歌', '47', '2020-09-28 15:15:25');
INSERT INTO `shop_user_locus` VALUES ('147', '4', '29', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '16', '2020-09-28 15:15:29');
INSERT INTO `shop_user_locus` VALUES ('148', '4', '17', '0', '0', '1', '0', '3', '浮云悠歌', '47', '2020-09-28 15:15:36');
INSERT INTO `shop_user_locus` VALUES ('149', '4', '3', '0', '0', '1', '0', '3', '浮云悠歌', '47', '2020-09-28 15:15:48');
INSERT INTO `shop_user_locus` VALUES ('150', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '14', '2020-09-28 15:15:55');
INSERT INTO `shop_user_locus` VALUES ('151', '4', '29', '0', '0', '1', '0', '2', '繁花梦', '107101', '2020-09-28 15:16:03');
INSERT INTO `shop_user_locus` VALUES ('152', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '14', '2020-09-28 15:16:16');
INSERT INTO `shop_user_locus` VALUES ('153', '4', '29', '0', '0', '1', '0', '2', '烙记', '107100', '2020-09-28 15:16:24');
INSERT INTO `shop_user_locus` VALUES ('154', '4', '29', '0', '0', '1', '0', '1', '御秀每周秀丨传统与现代元素的碰撞，领略不一样的东方风情！', '15', '2020-09-28 15:16:33');
INSERT INTO `shop_user_locus` VALUES ('155', '4', '29', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '14', '2020-09-28 15:16:42');
INSERT INTO `shop_user_locus` VALUES ('156', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '16', '2020-09-28 15:16:45');
INSERT INTO `shop_user_locus` VALUES ('157', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨传统与现代元素的碰撞，领略不一样的东方风情！', '15', '2020-09-28 15:18:37');
INSERT INTO `shop_user_locus` VALUES ('158', '4', '17', '0', '0', '1', '0', '2', '烙记', '107100', '2020-09-28 15:23:55');
INSERT INTO `shop_user_locus` VALUES ('159', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '14', '2020-09-28 15:23:56');
INSERT INTO `shop_user_locus` VALUES ('160', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨传统与现代元素的碰撞，领略不一样的东方风情！', '15', '2020-09-28 15:29:12');
INSERT INTO `shop_user_locus` VALUES ('161', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨传统与现代元素的碰撞，领略不一样的东方风情！', '15', '2020-09-28 15:30:22');
INSERT INTO `shop_user_locus` VALUES ('162', '4', '17', '0', '0', '1', '0', '3', '浮云悠歌', '47', '2020-09-28 15:30:33');
INSERT INTO `shop_user_locus` VALUES ('163', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '14', '2020-09-28 15:31:06');
INSERT INTO `shop_user_locus` VALUES ('164', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨北欧轻奢风格,不将就是一种生活态度', '13', '2020-09-28 15:31:38');
INSERT INTO `shop_user_locus` VALUES ('165', '4', '17', '0', '0', '1', '0', '2', '烙记', '107100', '2020-09-28 15:44:34');
INSERT INTO `shop_user_locus` VALUES ('166', '4', '17', '0', '0', '1', '0', '2', '繁花梦', '107101', '2020-09-28 15:44:46');
INSERT INTO `shop_user_locus` VALUES ('167', '4', '17', '0', '0', '1', '0', '2', '烙记', '107100', '2020-09-28 15:44:50');
INSERT INTO `shop_user_locus` VALUES ('168', '4', '17', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '16', '2020-09-28 15:45:05');
INSERT INTO `shop_user_locus` VALUES ('169', '4', '17', '0', '0', '1', '0', '2', '繁花梦', '107101', '2020-09-28 15:58:34');
INSERT INTO `shop_user_locus` VALUES ('170', '4', '17', '0', '0', '1', '0', '2', '浮香', '107081', '2020-09-28 15:58:36');
INSERT INTO `shop_user_locus` VALUES ('171', '4', '17', '0', '0', '1', '0', '2', '盗梦空间', '107079', '2020-09-28 15:58:40');
INSERT INTO `shop_user_locus` VALUES ('172', '4', '17', '0', '0', '1', '0', '3', '巴黎玫瑰', '34', '2020-09-28 16:10:26');
INSERT INTO `shop_user_locus` VALUES ('173', '4', '17', '0', '0', '1', '0', '3', '浮云悠歌', '47', '2020-09-28 16:10:29');
INSERT INTO `shop_user_locus` VALUES ('174', '4', '17', '0', '0', '1', '0', '3', '浮云悠歌', '47', '2020-09-28 16:10:38');
INSERT INTO `shop_user_locus` VALUES ('175', '4', '3', '0', '0', '1', '0', '3', '巴黎玫瑰', '34', '2020-09-28 16:23:59');
INSERT INTO `shop_user_locus` VALUES ('176', '4', '3', '0', '0', '1', '0', '2', '黄金海岸', '107076', '2020-09-28 16:33:05');
INSERT INTO `shop_user_locus` VALUES ('177', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '14', '2020-09-28 16:33:09');
INSERT INTO `shop_user_locus` VALUES ('178', '4', '3', '0', '0', '1', '0', '3', '浮云悠歌', '47', '2020-09-28 16:35:06');
INSERT INTO `shop_user_locus` VALUES ('179', '4', '3', '0', '0', '1', '0', '2', '欧卡娅', '107075', '2020-09-28 16:35:16');
INSERT INTO `shop_user_locus` VALUES ('180', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨传统与现代元素的碰撞，领略不一样的东方风情！', '15', '2020-09-28 16:35:29');
INSERT INTO `shop_user_locus` VALUES ('181', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '14', '2020-09-28 16:36:33');
INSERT INTO `shop_user_locus` VALUES ('182', '4', '3', '0', '0', '1', '0', '2', '欧卡娅', '107075', '2020-09-28 16:36:37');
INSERT INTO `shop_user_locus` VALUES ('183', '4', '3', '0', '0', '1', '0', '3', '巴黎玫瑰', '34', '2020-09-28 16:36:42');
INSERT INTO `shop_user_locus` VALUES ('184', '4', '3', '0', '0', '1', '0', '3', '半盏流年', '45', '2020-09-28 16:37:14');
INSERT INTO `shop_user_locus` VALUES ('185', '4', '3', '0', '0', '1', '0', '2', '浮香', '107081', '2020-09-28 16:40:33');
INSERT INTO `shop_user_locus` VALUES ('186', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨传统与现代元素的碰撞，领略不一样的东方风情！', '15', '2020-09-28 16:40:36');
INSERT INTO `shop_user_locus` VALUES ('187', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '16', '2020-09-28 16:42:51');
INSERT INTO `shop_user_locus` VALUES ('188', '4', '17', '0', '0', '1', '0', '3', '巴黎玫瑰', '34', '2020-09-28 16:48:36');
INSERT INTO `shop_user_locus` VALUES ('189', '4', '17', '0', '0', '1', '0', '3', '巴黎玫瑰', '34', '2020-09-28 16:48:46');
INSERT INTO `shop_user_locus` VALUES ('190', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨传统与现代元素的碰撞，领略不一样的东方风情！', '15', '2020-09-28 17:11:02');
INSERT INTO `shop_user_locus` VALUES ('191', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '16', '2020-09-28 17:11:02');
INSERT INTO `shop_user_locus` VALUES ('192', '4', '3', '0', '0', '1', '0', '3', '巴黎玫瑰', '34', '2020-09-28 17:12:15');
INSERT INTO `shop_user_locus` VALUES ('193', '4', '3', '0', '0', '1', '0', '2', '烙记', '107100', '2020-09-28 17:12:21');
INSERT INTO `shop_user_locus` VALUES ('194', '4', '3', '0', '0', '1', '0', '3', '浮云悠歌', '47', '2020-09-28 17:13:18');
INSERT INTO `shop_user_locus` VALUES ('195', '4', '3', '0', '0', '1', '0', '3', '浮云悠歌', '47', '2020-09-28 17:13:55');
INSERT INTO `shop_user_locus` VALUES ('196', '4', '3', '0', '0', '1', '0', '3', '浮云悠歌', '47', '2020-09-28 17:15:51');
INSERT INTO `shop_user_locus` VALUES ('197', '4', '3', '0', '0', '1', '0', '3', '浮云悠歌', '47', '2020-09-28 17:33:57');
INSERT INTO `shop_user_locus` VALUES ('198', '4', '3', '0', '0', '1', '0', '3', '浮云悠歌', '47', '2020-09-28 17:35:12');
INSERT INTO `shop_user_locus` VALUES ('199', '4', '3', '0', '0', '1', '0', '3', '浮云悠歌', '47', '2020-09-28 17:37:13');
INSERT INTO `shop_user_locus` VALUES ('200', '4', '3', '0', '0', '1', '0', '3', '浮云悠歌', '47', '2020-09-28 17:40:45');
INSERT INTO `shop_user_locus` VALUES ('201', '4', '3', '0', '0', '1', '0', '3', '浮云悠歌', '47', '2020-09-28 17:59:02');
INSERT INTO `shop_user_locus` VALUES ('202', '4', '3', '0', '0', '1', '0', '3', '浮云悠歌', '47', '2020-09-28 18:01:53');
INSERT INTO `shop_user_locus` VALUES ('203', '4', '3', '0', '0', '1', '0', '3', '半盏流年', '45', '2020-09-28 18:02:36');
INSERT INTO `shop_user_locus` VALUES ('204', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨传统与现代元素的碰撞，领略不一样的东方风情！', '15', '2020-09-28 18:03:19');
INSERT INTO `shop_user_locus` VALUES ('205', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨传统与现代元素的碰撞，领略不一样的东方风情！', '15', '2020-09-28 18:06:18');
INSERT INTO `shop_user_locus` VALUES ('206', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨传统与现代元素的碰撞，领略不一样的东方风情！', '15', '2020-09-28 18:06:32');
INSERT INTO `shop_user_locus` VALUES ('207', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨传统与现代元素的碰撞，领略不一样的东方风情！', '15', '2020-09-28 18:07:12');
INSERT INTO `shop_user_locus` VALUES ('208', '4', '3', '0', '0', '1', '0', '2', '欧卡娅', '107075', '2020-09-28 18:07:28');
INSERT INTO `shop_user_locus` VALUES ('209', '4', '3', '0', '0', '1', '0', '2', '草间弥生', '107077', '2020-09-28 18:08:33');
INSERT INTO `shop_user_locus` VALUES ('210', '4', '3', '0', '0', '1', '0', '3', '繁华美寻', '39', '2020-09-28 18:08:50');
INSERT INTO `shop_user_locus` VALUES ('211', '4', '3', '0', '0', '1', '0', '3', '浮云悠歌', '47', '2020-09-28 18:14:55');
INSERT INTO `shop_user_locus` VALUES ('212', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '16', '2020-09-28 18:15:07');
INSERT INTO `shop_user_locus` VALUES ('213', '4', '17', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '16', '2020-09-28 18:15:13');
INSERT INTO `shop_user_locus` VALUES ('214', '4', '17', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '16', '2020-09-28 18:15:24');
INSERT INTO `shop_user_locus` VALUES ('215', '4', '3', '0', '0', '1', '0', '3', '浮云悠歌', '47', '2020-09-28 18:18:38');
INSERT INTO `shop_user_locus` VALUES ('216', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨北欧轻奢风格,不将就是一种生活态度', '13', '2020-09-28 18:20:02');
INSERT INTO `shop_user_locus` VALUES ('217', '4', '3', '0', '0', '1', '0', '3', '浮云悠歌', '47', '2020-09-28 18:22:40');
INSERT INTO `shop_user_locus` VALUES ('218', '4', '3', '0', '0', '1', '0', '3', '浮云悠歌', '47', '2020-09-28 18:22:40');
INSERT INTO `shop_user_locus` VALUES ('219', '4', '3', '0', '0', '1', '0', '3', '浮云悠歌', '47', '2020-09-28 18:22:53');
INSERT INTO `shop_user_locus` VALUES ('220', '4', '3', '0', '0', '1', '0', '3', '浮云悠歌', '47', '2020-09-28 18:22:58');
INSERT INTO `shop_user_locus` VALUES ('221', '4', '3', '0', '0', '1', '0', '3', '浮云悠歌', '47', '2020-09-28 18:23:22');
INSERT INTO `shop_user_locus` VALUES ('222', '4', '3', '0', '0', '1', '0', '2', '繁花梦', '107101', '2020-09-28 18:29:35');
INSERT INTO `shop_user_locus` VALUES ('223', '4', '3', '0', '0', '1', '0', '2', '草间弥生', '107125', '2020-09-28 18:33:59');
INSERT INTO `shop_user_locus` VALUES ('224', '4', '3', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-09-28 18:35:22');
INSERT INTO `shop_user_locus` VALUES ('225', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-09-28 18:35:23');
INSERT INTO `shop_user_locus` VALUES ('226', '4', '3', '0', '0', '1', '0', '2', '草间弥生', '107125', '2020-09-28 18:35:32');
INSERT INTO `shop_user_locus` VALUES ('227', '4', '3', '0', '0', '1', '0', '3', '繁华美寻', '61', '2020-09-28 18:35:39');
INSERT INTO `shop_user_locus` VALUES ('228', '4', '3', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-09-28 18:35:51');
INSERT INTO `shop_user_locus` VALUES ('229', '4', '3', '0', '0', '1', '0', '3', '暗夜觅彩', '63', '2020-09-28 18:35:55');
INSERT INTO `shop_user_locus` VALUES ('230', '4', '3', '0', '0', '1', '0', '3', '暗夜觅彩', '63', '2020-09-28 18:36:03');
INSERT INTO `shop_user_locus` VALUES ('231', '4', '3', '0', '0', '1', '0', '3', '繁华美寻', '61', '2020-09-28 18:36:07');
INSERT INTO `shop_user_locus` VALUES ('232', '4', '3', '0', '0', '1', '0', '2', '欧卡娅', '107123', '2020-09-28 18:36:11');
INSERT INTO `shop_user_locus` VALUES ('233', '4', '17', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-09-28 18:37:13');
INSERT INTO `shop_user_locus` VALUES ('234', '4', '17', '0', '0', '1', '0', '3', '繁华美寻', '61', '2020-09-28 18:37:23');
INSERT INTO `shop_user_locus` VALUES ('235', '4', '17', '0', '0', '1', '0', '2', '欧卡娅', '107123', '2020-09-28 18:37:26');
INSERT INTO `shop_user_locus` VALUES ('236', '4', '17', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '24', '2020-09-28 18:37:30');
INSERT INTO `shop_user_locus` VALUES ('237', '4', '17', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '24', '2020-09-28 18:41:32');
INSERT INTO `shop_user_locus` VALUES ('238', '4', '17', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-09-28 18:41:37');
INSERT INTO `shop_user_locus` VALUES ('239', '4', '17', '0', '0', '1', '0', '3', '暗夜觅彩', '63', '2020-09-28 18:41:42');
INSERT INTO `shop_user_locus` VALUES ('240', '4', '17', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-09-28 18:42:37');
INSERT INTO `shop_user_locus` VALUES ('241', '4', '17', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '24', '2020-09-28 18:42:43');
INSERT INTO `shop_user_locus` VALUES ('242', '4', '3', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-09-28 18:46:08');
INSERT INTO `shop_user_locus` VALUES ('243', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-09-28 18:46:08');
INSERT INTO `shop_user_locus` VALUES ('244', '4', '17', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-09-28 18:46:34');
INSERT INTO `shop_user_locus` VALUES ('245', '4', '17', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-09-28 18:46:38');
INSERT INTO `shop_user_locus` VALUES ('246', '4', '3', '0', '0', '1', '0', '3', '暗夜觅彩', '63', '2020-09-28 18:46:38');
INSERT INTO `shop_user_locus` VALUES ('247', '4', '17', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-09-28 18:46:54');
INSERT INTO `shop_user_locus` VALUES ('248', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '24', '2020-09-28 18:47:55');
INSERT INTO `shop_user_locus` VALUES ('249', '4', '3', '0', '0', '1', '0', '3', '暗夜觅彩', '63', '2020-09-28 18:48:10');
INSERT INTO `shop_user_locus` VALUES ('250', '4', '17', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-09-28 18:48:54');
INSERT INTO `shop_user_locus` VALUES ('251', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-09-28 18:48:54');
INSERT INTO `shop_user_locus` VALUES ('252', '4', '3', '0', '0', '1', '0', '3', '暗夜觅彩', '63', '2020-09-28 18:49:24');
INSERT INTO `shop_user_locus` VALUES ('253', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-09-28 18:49:40');
INSERT INTO `shop_user_locus` VALUES ('254', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-09-28 18:49:57');
INSERT INTO `shop_user_locus` VALUES ('255', '4', '3', '0', '0', '1', '0', '3', '暗夜觅彩', '63', '2020-09-28 18:50:11');
INSERT INTO `shop_user_locus` VALUES ('256', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-09-28 18:50:14');
INSERT INTO `shop_user_locus` VALUES ('257', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '24', '2020-09-28 18:50:18');
INSERT INTO `shop_user_locus` VALUES ('258', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-09-28 18:51:40');
INSERT INTO `shop_user_locus` VALUES ('259', '4', '3', '0', '0', '1', '0', '3', '暗夜觅彩', '63', '2020-09-28 18:56:18');
INSERT INTO `shop_user_locus` VALUES ('260', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-09-28 18:56:21');
INSERT INTO `shop_user_locus` VALUES ('261', '4', '17', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-09-28 19:00:29');
INSERT INTO `shop_user_locus` VALUES ('262', '4', '17', '0', '0', '1', '0', '3', '暗夜觅彩', '63', '2020-09-28 19:00:33');
INSERT INTO `shop_user_locus` VALUES ('263', '4', '17', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-09-28 19:03:44');
INSERT INTO `shop_user_locus` VALUES ('264', '4', '17', '0', '0', '1', '0', '3', '暗夜觅彩', '63', '2020-09-28 19:03:45');
INSERT INTO `shop_user_locus` VALUES ('265', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-09-28 19:12:10');
INSERT INTO `shop_user_locus` VALUES ('266', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '24', '2020-09-28 19:12:14');
INSERT INTO `shop_user_locus` VALUES ('267', '4', '3', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-09-28 19:12:18');
INSERT INTO `shop_user_locus` VALUES ('268', '4', '3', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-09-28 19:13:15');
INSERT INTO `shop_user_locus` VALUES ('269', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '24', '2020-09-28 19:34:35');
INSERT INTO `shop_user_locus` VALUES ('270', '4', '3', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-09-28 20:21:22');
INSERT INTO `shop_user_locus` VALUES ('271', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-09-28 21:13:07');
INSERT INTO `shop_user_locus` VALUES ('272', '4', '17', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-09-29 09:30:08');
INSERT INTO `shop_user_locus` VALUES ('273', '4', '17', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '24', '2020-09-29 09:30:16');
INSERT INTO `shop_user_locus` VALUES ('274', '4', '3', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-09-29 09:34:56');
INSERT INTO `shop_user_locus` VALUES ('275', '4', '3', '0', '0', '1', '0', '3', '暗夜觅彩', '63', '2020-09-29 09:41:42');
INSERT INTO `shop_user_locus` VALUES ('276', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '24', '2020-09-29 10:15:29');
INSERT INTO `shop_user_locus` VALUES ('277', '4', '17', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-09-29 11:42:06');
INSERT INTO `shop_user_locus` VALUES ('278', '4', '17', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '24', '2020-09-29 11:42:11');
INSERT INTO `shop_user_locus` VALUES ('279', '4', '3', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-09-29 12:59:42');
INSERT INTO `shop_user_locus` VALUES ('280', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-09-29 12:59:42');
INSERT INTO `shop_user_locus` VALUES ('281', '4', '3', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-09-29 12:59:49');
INSERT INTO `shop_user_locus` VALUES ('282', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-09-29 13:01:48');
INSERT INTO `shop_user_locus` VALUES ('283', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-09-29 14:56:44');
INSERT INTO `shop_user_locus` VALUES ('284', '4', '3', '0', '0', '1', '0', '3', '暗夜觅彩', '63', '2020-09-29 15:27:24');
INSERT INTO `shop_user_locus` VALUES ('285', '4', '3', '0', '0', '1', '0', '3', '暗夜觅彩', '63', '2020-09-29 15:32:01');
INSERT INTO `shop_user_locus` VALUES ('286', '4', '3', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-09-29 15:34:35');
INSERT INTO `shop_user_locus` VALUES ('287', '4', '3', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-09-29 15:37:02');
INSERT INTO `shop_user_locus` VALUES ('288', '4', '3', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-09-29 15:52:41');
INSERT INTO `shop_user_locus` VALUES ('289', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-09-29 15:53:14');
INSERT INTO `shop_user_locus` VALUES ('290', '4', '4', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-09-29 16:42:50');
INSERT INTO `shop_user_locus` VALUES ('291', '4', '4', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-09-29 16:43:10');
INSERT INTO `shop_user_locus` VALUES ('292', '4', '4', '0', '0', '1', '0', '3', '暗夜觅彩', '63', '2020-09-29 17:53:19');
INSERT INTO `shop_user_locus` VALUES ('293', '4', '4', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-09-29 17:53:33');
INSERT INTO `shop_user_locus` VALUES ('294', '4', '4', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-09-29 17:53:47');
INSERT INTO `shop_user_locus` VALUES ('295', '4', '4', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-09-29 17:54:08');
INSERT INTO `shop_user_locus` VALUES ('296', '4', '39', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-09-29 18:23:14');
INSERT INTO `shop_user_locus` VALUES ('297', '4', '39', '0', '0', '1', '0', '3', '暗夜觅彩', '63', '2020-09-29 18:23:39');
INSERT INTO `shop_user_locus` VALUES ('298', '4', '3', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-09-29 21:38:05');
INSERT INTO `shop_user_locus` VALUES ('299', '4', '3', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-09-29 22:36:19');
INSERT INTO `shop_user_locus` VALUES ('300', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-09-29 22:36:55');
INSERT INTO `shop_user_locus` VALUES ('301', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '24', '2020-09-29 22:37:03');
INSERT INTO `shop_user_locus` VALUES ('302', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '24', '2020-09-29 22:38:18');
INSERT INTO `shop_user_locus` VALUES ('303', '4', '3', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-09-30 06:03:00');
INSERT INTO `shop_user_locus` VALUES ('304', '4', '3', '0', '0', '1', '0', '3', '暗夜觅彩', '63', '2020-09-30 06:03:33');
INSERT INTO `shop_user_locus` VALUES ('305', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-09-30 09:18:40');
INSERT INTO `shop_user_locus` VALUES ('306', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-09-30 09:19:09');
INSERT INTO `shop_user_locus` VALUES ('307', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-09-30 09:19:18');
INSERT INTO `shop_user_locus` VALUES ('308', '4', '43', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-09-30 09:58:43');
INSERT INTO `shop_user_locus` VALUES ('309', '4', '46', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-09-30 09:58:57');
INSERT INTO `shop_user_locus` VALUES ('310', '4', '45', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-09-30 09:59:16');
INSERT INTO `shop_user_locus` VALUES ('311', '4', '53', '0', '0', '1', '0', '3', '暗夜觅彩', '63', '2020-09-30 09:59:21');
INSERT INTO `shop_user_locus` VALUES ('312', '4', '51', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-09-30 09:59:23');
INSERT INTO `shop_user_locus` VALUES ('313', '4', '45', '0', '0', '1', '0', '3', '暗夜觅彩', '63', '2020-09-30 09:59:26');
INSERT INTO `shop_user_locus` VALUES ('314', '4', '53', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-09-30 09:59:28');
INSERT INTO `shop_user_locus` VALUES ('315', '4', '51', '0', '0', '1', '0', '3', '暗夜觅彩', '63', '2020-09-30 09:59:35');
INSERT INTO `shop_user_locus` VALUES ('316', '4', '53', '0', '0', '1', '0', '3', '暗夜觅彩', '63', '2020-09-30 09:59:43');
INSERT INTO `shop_user_locus` VALUES ('317', '4', '53', '0', '0', '1', '0', '3', '暗夜觅彩', '63', '2020-09-30 09:59:47');
INSERT INTO `shop_user_locus` VALUES ('318', '4', '55', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-09-30 10:00:07');
INSERT INTO `shop_user_locus` VALUES ('319', '4', '51', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-09-30 10:00:10');
INSERT INTO `shop_user_locus` VALUES ('320', '4', '51', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '24', '2020-09-30 10:00:20');
INSERT INTO `shop_user_locus` VALUES ('321', '4', '40', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-09-30 10:00:35');
INSERT INTO `shop_user_locus` VALUES ('322', '4', '48', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-09-30 10:00:45');
INSERT INTO `shop_user_locus` VALUES ('323', '4', '58', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-10-01 00:26:27');
INSERT INTO `shop_user_locus` VALUES ('324', '4', '58', '0', '0', '1', '0', '3', '暗夜觅彩', '63', '2020-10-01 00:26:52');
INSERT INTO `shop_user_locus` VALUES ('325', '4', '67', '0', '0', '1', '0', '3', '暗夜觅彩', '63', '2020-10-01 09:46:21');
INSERT INTO `shop_user_locus` VALUES ('326', '4', '53', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-10-02 00:24:03');
INSERT INTO `shop_user_locus` VALUES ('327', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-10-05 13:42:44');
INSERT INTO `shop_user_locus` VALUES ('328', '4', '3', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-10-05 14:17:58');
INSERT INTO `shop_user_locus` VALUES ('329', '4', '4', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-10-09 09:44:26');
INSERT INTO `shop_user_locus` VALUES ('330', '4', '4', '0', '0', '1', '0', '3', '暗夜觅彩', '63', '2020-10-09 09:44:40');
INSERT INTO `shop_user_locus` VALUES ('331', '4', '4', '0', '0', '1', '0', '3', '暗夜觅彩', '63', '2020-10-09 11:45:10');
INSERT INTO `shop_user_locus` VALUES ('332', '4', '4', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-10-09 11:47:15');
INSERT INTO `shop_user_locus` VALUES ('333', '4', '4', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-10-09 11:47:22');
INSERT INTO `shop_user_locus` VALUES ('334', '4', '4', '0', '0', '1', '0', '3', '暗夜觅彩', '63', '2020-10-09 11:47:28');
INSERT INTO `shop_user_locus` VALUES ('335', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '24', '2020-10-09 13:41:53');
INSERT INTO `shop_user_locus` VALUES ('336', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '24', '2020-10-09 15:28:02');
INSERT INTO `shop_user_locus` VALUES ('337', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-10-09 15:57:50');
INSERT INTO `shop_user_locus` VALUES ('338', '4', '3', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-10-09 16:06:32');
INSERT INTO `shop_user_locus` VALUES ('339', '4', '3', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-10-09 16:30:13');
INSERT INTO `shop_user_locus` VALUES ('340', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-10-09 16:30:24');
INSERT INTO `shop_user_locus` VALUES ('341', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '24', '2020-10-09 16:30:29');
INSERT INTO `shop_user_locus` VALUES ('342', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-10-09 17:20:31');
INSERT INTO `shop_user_locus` VALUES ('343', '4', '3', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-10-09 18:04:53');
INSERT INTO `shop_user_locus` VALUES ('344', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-10-09 18:11:37');
INSERT INTO `shop_user_locus` VALUES ('345', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-10-09 18:12:38');
INSERT INTO `shop_user_locus` VALUES ('346', '4', '18', '0', '0', '1', '0', '3', '暗夜觅彩', '63', '2020-10-09 19:55:20');
INSERT INTO `shop_user_locus` VALUES ('347', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-10-10 09:48:09');
INSERT INTO `shop_user_locus` VALUES ('348', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '24', '2020-10-10 09:48:26');
INSERT INTO `shop_user_locus` VALUES ('349', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-10-10 09:53:25');
INSERT INTO `shop_user_locus` VALUES ('350', '4', '4', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-10-10 11:29:56');
INSERT INTO `shop_user_locus` VALUES ('351', '4', '4', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-10-10 11:31:17');
INSERT INTO `shop_user_locus` VALUES ('352', '4', '4', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-10-10 11:31:23');
INSERT INTO `shop_user_locus` VALUES ('353', '4', '4', '0', '0', '1', '0', '3', '暗夜觅彩', '63', '2020-10-10 11:31:31');
INSERT INTO `shop_user_locus` VALUES ('354', '4', '30', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-10-10 11:39:53');
INSERT INTO `shop_user_locus` VALUES ('355', '4', '30', '0', '0', '1', '0', '3', '暗夜觅彩', '63', '2020-10-10 11:39:57');
INSERT INTO `shop_user_locus` VALUES ('356', '4', '30', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-10-10 11:40:19');
INSERT INTO `shop_user_locus` VALUES ('357', '4', '30', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '24', '2020-10-10 11:40:24');
INSERT INTO `shop_user_locus` VALUES ('358', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-10-10 11:56:19');
INSERT INTO `shop_user_locus` VALUES ('359', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-10-10 11:57:10');
INSERT INTO `shop_user_locus` VALUES ('360', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-10-10 12:08:56');
INSERT INTO `shop_user_locus` VALUES ('361', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-10-10 12:09:25');
INSERT INTO `shop_user_locus` VALUES ('362', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '24', '2020-10-10 12:10:45');
INSERT INTO `shop_user_locus` VALUES ('363', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '24', '2020-10-10 12:11:28');
INSERT INTO `shop_user_locus` VALUES ('364', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '24', '2020-10-10 12:12:28');
INSERT INTO `shop_user_locus` VALUES ('365', '4', '3', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-10-10 12:13:27');
INSERT INTO `shop_user_locus` VALUES ('366', '4', '3', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-10-10 12:14:07');
INSERT INTO `shop_user_locus` VALUES ('367', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-10-10 12:14:18');
INSERT INTO `shop_user_locus` VALUES ('368', '4', '3', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-10-10 12:15:26');
INSERT INTO `shop_user_locus` VALUES ('369', '4', '3', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-10-10 12:37:22');
INSERT INTO `shop_user_locus` VALUES ('370', '4', '3', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-10-10 13:36:23');
INSERT INTO `shop_user_locus` VALUES ('371', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-10-10 13:36:40');
INSERT INTO `shop_user_locus` VALUES ('372', '4', '4', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-10-10 13:50:31');
INSERT INTO `shop_user_locus` VALUES ('373', '4', '3', '0', '0', '1', '0', '3', '暗夜觅彩', '63', '2020-10-10 14:30:23');
INSERT INTO `shop_user_locus` VALUES ('374', '7', '3', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '42', '2020-10-10 14:56:49');
INSERT INTO `shop_user_locus` VALUES ('375', '7', '3', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '42', '2020-10-10 14:57:38');
INSERT INTO `shop_user_locus` VALUES ('376', '7', '3', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '42', '2020-10-10 15:00:19');
INSERT INTO `shop_user_locus` VALUES ('377', '4', '75', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-10-10 15:14:15');
INSERT INTO `shop_user_locus` VALUES ('378', '4', '18', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-10-10 15:19:25');
INSERT INTO `shop_user_locus` VALUES ('379', '4', '18', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-10-10 15:22:09');
INSERT INTO `shop_user_locus` VALUES ('380', '4', '18', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-10-10 15:24:22');
INSERT INTO `shop_user_locus` VALUES ('381', '4', '18', '0', '0', '1', '0', '3', '暗夜觅彩', '63', '2020-10-10 15:24:28');
INSERT INTO `shop_user_locus` VALUES ('382', '4', '23', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-10-10 15:24:50');
INSERT INTO `shop_user_locus` VALUES ('383', '1', '3', '0', '0', '1', '0', '1', '终不察夫民心', '39', '2020-10-10 15:28:11');
INSERT INTO `shop_user_locus` VALUES ('384', '4', '18', '0', '0', '1', '0', '3', '暗夜觅彩', '63', '2020-10-10 15:31:59');
INSERT INTO `shop_user_locus` VALUES ('385', '7', '3', '0', '0', '1', '0', '3', '东方风情', '71', '2020-10-10 15:32:15');
INSERT INTO `shop_user_locus` VALUES ('386', '4', '18', '0', '0', '1', '0', '3', '暗夜觅彩', '63', '2020-10-10 15:32:34');
INSERT INTO `shop_user_locus` VALUES ('387', '4', '18', '0', '0', '1', '0', '3', '暗夜觅彩', '63', '2020-10-10 15:35:40');
INSERT INTO `shop_user_locus` VALUES ('388', '4', '82', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-10-10 15:39:48');
INSERT INTO `shop_user_locus` VALUES ('389', '4', '82', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-10-10 15:39:55');
INSERT INTO `shop_user_locus` VALUES ('390', '4', '82', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-10-10 15:40:45');
INSERT INTO `shop_user_locus` VALUES ('391', '4', '18', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-10-10 15:40:50');
INSERT INTO `shop_user_locus` VALUES ('392', '4', '18', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-10-10 15:40:55');
INSERT INTO `shop_user_locus` VALUES ('393', '4', '18', '0', '0', '1', '0', '3', '暗夜觅彩', '63', '2020-10-10 15:41:16');
INSERT INTO `shop_user_locus` VALUES ('394', '4', '18', '0', '0', '1', '0', '3', '暗夜觅彩', '63', '2020-10-10 15:41:22');
INSERT INTO `shop_user_locus` VALUES ('395', '4', '3', '0', '0', '1', '0', '3', '暗夜觅彩', '63', '2020-10-10 16:06:08');
INSERT INTO `shop_user_locus` VALUES ('396', '4', '3', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-10-10 16:06:44');
INSERT INTO `shop_user_locus` VALUES ('397', '7', '3', '0', '0', '1', '0', '3', '浮云悠歌', '66', '2020-10-10 16:11:12');
INSERT INTO `shop_user_locus` VALUES ('398', '7', '3', '0', '0', '1', '0', '3', '东方风情', '71', '2020-10-10 16:11:26');
INSERT INTO `shop_user_locus` VALUES ('399', '7', '3', '0', '0', '1', '0', '3', '暗夜觅彩', '67', '2020-10-10 16:13:53');
INSERT INTO `shop_user_locus` VALUES ('400', '7', '3', '0', '0', '1', '0', '3', '巴黎玫瑰', '69', '2020-10-10 16:18:00');
INSERT INTO `shop_user_locus` VALUES ('401', '4', '76', '0', '0', '1', '0', '3', '暗夜觅彩', '63', '2020-10-10 16:29:19');
INSERT INTO `shop_user_locus` VALUES ('402', '1', '3', '0', '0', '1', '0', '1', '固时俗之工巧兮', '41', '2020-10-10 17:49:28');
INSERT INTO `shop_user_locus` VALUES ('403', '7', '3', '0', '0', '1', '0', '1', '御秀每周秀丨传统与现代元素的碰撞，领略不一样的东方风情！', '45', '2020-10-10 18:03:09');
INSERT INTO `shop_user_locus` VALUES ('404', '4', '3', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-10-10 19:24:52');
INSERT INTO `shop_user_locus` VALUES ('405', '7', '3', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '44', '2020-10-10 22:09:41');
INSERT INTO `shop_user_locus` VALUES ('406', '4', '3', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-10-10 22:20:28');
INSERT INTO `shop_user_locus` VALUES ('407', '4', '3', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-10-10 22:22:58');
INSERT INTO `shop_user_locus` VALUES ('408', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-10-10 22:25:37');
INSERT INTO `shop_user_locus` VALUES ('409', '7', '3', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '44', '2020-10-11 09:05:28');
INSERT INTO `shop_user_locus` VALUES ('410', '7', '3', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '44', '2020-10-11 09:14:23');
INSERT INTO `shop_user_locus` VALUES ('411', '7', '3', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '44', '2020-10-11 09:20:30');
INSERT INTO `shop_user_locus` VALUES ('412', '4', '3', '0', '0', '1', '0', '3', '暗夜觅彩', '63', '2020-10-11 09:23:16');
INSERT INTO `shop_user_locus` VALUES ('413', '4', '122', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-10-11 10:23:37');
INSERT INTO `shop_user_locus` VALUES ('414', '4', '122', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-10-11 10:26:13');
INSERT INTO `shop_user_locus` VALUES ('415', '4', '122', '0', '0', '1', '0', '3', '暗夜觅彩', '63', '2020-10-11 10:26:19');
INSERT INTO `shop_user_locus` VALUES ('416', '4', '122', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-10-11 10:26:25');
INSERT INTO `shop_user_locus` VALUES ('417', '1', '4', '0', '0', '1', '0', '1', '余虽好修姱以鞿羁兮', '34', '2020-10-12 10:14:30');
INSERT INTO `shop_user_locus` VALUES ('418', '1', '4', '0', '0', '1', '0', '1', '余虽好修姱以鞿羁兮', '34', '2020-10-12 10:15:20');
INSERT INTO `shop_user_locus` VALUES ('419', '1', '4', '0', '0', '1', '0', '1', '怨灵修之浩荡兮', '32', '2020-10-12 10:20:42');
INSERT INTO `shop_user_locus` VALUES ('420', '1', '4', '0', '0', '1', '0', '1', '亦余心之所善兮', '35', '2020-10-12 10:22:25');
INSERT INTO `shop_user_locus` VALUES ('421', '7', '133', '0', '0', '1', '0', '1', '御秀每周秀丨北欧轻奢风格,不将就是一种生活态度', '43', '2020-10-12 10:26:58');
INSERT INTO `shop_user_locus` VALUES ('422', '7', '133', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '42', '2020-10-12 10:27:03');
INSERT INTO `shop_user_locus` VALUES ('423', '7', '133', '0', '0', '1', '0', '1', '御秀每周秀丨北欧轻奢风格,不将就是一种生活态度', '43', '2020-10-12 10:27:32');
INSERT INTO `shop_user_locus` VALUES ('424', '7', '133', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '44', '2020-10-12 10:27:35');
INSERT INTO `shop_user_locus` VALUES ('425', '7', '3', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '44', '2020-10-12 10:29:56');
INSERT INTO `shop_user_locus` VALUES ('426', '7', '4', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '44', '2020-10-12 10:31:24');
INSERT INTO `shop_user_locus` VALUES ('427', '4', '3', '0', '0', '1', '0', '3', '暗夜觅彩', '63', '2020-10-12 11:23:32');
INSERT INTO `shop_user_locus` VALUES ('428', '4', '3', '0', '0', '1', '0', '3', '暗夜觅彩', '63', '2020-10-12 11:23:50');
INSERT INTO `shop_user_locus` VALUES ('429', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-10-12 11:24:14');
INSERT INTO `shop_user_locus` VALUES ('430', '7', '3', '0', '0', '1', '0', '1', '御秀每周秀丨北欧轻奢风格,不将就是一种生活态度', '43', '2020-10-12 11:24:32');
INSERT INTO `shop_user_locus` VALUES ('431', '7', '3', '0', '0', '1', '0', '1', '御秀每周秀丨北欧轻奢风格,不将就是一种生活态度', '43', '2020-10-12 17:58:29');
INSERT INTO `shop_user_locus` VALUES ('432', '7', '3', '0', '0', '1', '0', '1', '御秀每周秀丨北欧轻奢风格,不将就是一种生活态度', '43', '2020-10-12 17:58:38');
INSERT INTO `shop_user_locus` VALUES ('433', '4', '141', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-10-13 01:25:20');
INSERT INTO `shop_user_locus` VALUES ('434', '4', '141', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-10-13 01:27:57');
INSERT INTO `shop_user_locus` VALUES ('435', '4', '141', '0', '0', '1', '0', '3', '暗夜觅彩', '63', '2020-10-13 01:28:04');
INSERT INTO `shop_user_locus` VALUES ('436', '4', '141', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-10-13 01:28:11');
INSERT INTO `shop_user_locus` VALUES ('437', '7', '3', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '44', '2020-10-13 09:48:59');
INSERT INTO `shop_user_locus` VALUES ('438', '4', '4', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-10-13 10:42:17');
INSERT INTO `shop_user_locus` VALUES ('439', '4', '4', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-10-13 10:42:48');
INSERT INTO `shop_user_locus` VALUES ('440', '4', '4', '0', '0', '1', '0', '3', '暗夜觅彩', '63', '2020-10-13 10:42:53');
INSERT INTO `shop_user_locus` VALUES ('441', '4', '4', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-10-13 10:44:14');
INSERT INTO `shop_user_locus` VALUES ('442', '4', '4', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-10-13 10:45:03');
INSERT INTO `shop_user_locus` VALUES ('443', '4', '4', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-10-13 10:52:30');
INSERT INTO `shop_user_locus` VALUES ('444', '4', '4', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-10-13 10:53:17');
INSERT INTO `shop_user_locus` VALUES ('445', '4', '4', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-10-13 10:55:21');
INSERT INTO `shop_user_locus` VALUES ('446', '4', '4', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-10-13 10:56:20');
INSERT INTO `shop_user_locus` VALUES ('447', '4', '4', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-10-13 10:56:24');
INSERT INTO `shop_user_locus` VALUES ('448', '4', '4', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-10-13 11:12:21');
INSERT INTO `shop_user_locus` VALUES ('449', '4', '4', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-10-13 11:12:25');
INSERT INTO `shop_user_locus` VALUES ('450', '4', '4', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-10-13 11:13:32');
INSERT INTO `shop_user_locus` VALUES ('451', '4', '4', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-10-13 11:13:48');
INSERT INTO `shop_user_locus` VALUES ('452', '4', '36', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-10-13 13:53:46');
INSERT INTO `shop_user_locus` VALUES ('453', '4', '36', '0', '0', '1', '0', '3', '暗夜觅彩', '63', '2020-10-13 13:53:54');
INSERT INTO `shop_user_locus` VALUES ('454', '4', '3', '0', '0', '1', '0', '3', '暗夜觅彩', '63', '2020-10-13 13:59:07');
INSERT INTO `shop_user_locus` VALUES ('455', '4', '3', '0', '0', '1', '0', '3', '暗夜觅彩', '63', '2020-10-13 13:59:14');
INSERT INTO `shop_user_locus` VALUES ('456', '4', '146', '0', '0', '1', '0', '3', '暗夜觅彩', '63', '2020-10-13 14:09:26');
INSERT INTO `shop_user_locus` VALUES ('457', '4', '88', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-10-13 14:21:06');
INSERT INTO `shop_user_locus` VALUES ('458', '4', '88', '0', '0', '1', '0', '3', '暗夜觅彩', '63', '2020-10-13 14:21:14');
INSERT INTO `shop_user_locus` VALUES ('459', '4', '3', '0', '0', '1', '0', '3', '暗夜觅彩', '63', '2020-10-14 10:54:22');
INSERT INTO `shop_user_locus` VALUES ('460', '4', '73', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-10-14 13:06:57');
INSERT INTO `shop_user_locus` VALUES ('461', '4', '73', '0', '0', '1', '0', '3', '暗夜觅彩', '63', '2020-10-14 13:07:04');
INSERT INTO `shop_user_locus` VALUES ('462', '7', '3', '0', '0', '1', '0', '3', '东方风情', '78', '2020-10-14 13:09:31');
INSERT INTO `shop_user_locus` VALUES ('463', '4', '17', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-10-14 13:17:41');
INSERT INTO `shop_user_locus` VALUES ('464', '4', '89', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-10-14 14:06:37');
INSERT INTO `shop_user_locus` VALUES ('465', '4', '89', '0', '0', '1', '0', '3', '暗夜觅彩', '63', '2020-10-14 14:06:45');
INSERT INTO `shop_user_locus` VALUES ('466', '7', '3', '0', '0', '1', '0', '3', '暗夜觅彩', '74', '2020-10-14 14:07:36');
INSERT INTO `shop_user_locus` VALUES ('467', '4', '4', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-10-14 15:27:15');
INSERT INTO `shop_user_locus` VALUES ('468', '1', '4', '0', '0', '1', '0', '1', '又申之以揽茝', '26', '2020-10-14 15:28:10');
INSERT INTO `shop_user_locus` VALUES ('469', '4', '4', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-10-14 15:44:08');
INSERT INTO `shop_user_locus` VALUES ('470', '4', '4', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-10-14 15:44:13');
INSERT INTO `shop_user_locus` VALUES ('471', '1', '4', '0', '0', '1', '0', '1', '又申之以揽茝', '26', '2020-10-14 15:45:51');
INSERT INTO `shop_user_locus` VALUES ('472', '1', '4', '0', '0', '1', '0', '1', '众女嫉余之蛾眉兮', '40', '2020-10-14 15:52:47');
INSERT INTO `shop_user_locus` VALUES ('473', '1', '4', '0', '0', '1', '0', '1', '謇朝谇而夕替', '36', '2020-10-14 16:44:11');
INSERT INTO `shop_user_locus` VALUES ('474', '1', '4', '0', '0', '1', '0', '3', '法律框架', '72', '2020-10-14 16:50:40');
INSERT INTO `shop_user_locus` VALUES ('475', '1', '4', '0', '0', '1', '0', '3', '法律框架', '72', '2020-10-14 16:50:49');
INSERT INTO `shop_user_locus` VALUES ('476', '1', '4', '0', '0', '1', '0', '3', '案例test', '86', '2020-10-14 16:51:09');
INSERT INTO `shop_user_locus` VALUES ('477', '1', '4', '0', '0', '1', '0', '3', '案例test', '86', '2020-10-14 16:51:14');
INSERT INTO `shop_user_locus` VALUES ('478', '4', '4', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-10-14 18:10:38');
INSERT INTO `shop_user_locus` VALUES ('479', '4', '4', '0', '0', '1', '0', '3', '暗夜觅彩', '63', '2020-10-14 18:10:43');
INSERT INTO `shop_user_locus` VALUES ('480', '1', '4', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '51', '2020-10-14 18:11:43');
INSERT INTO `shop_user_locus` VALUES ('481', '1', '4', '0', '0', '1', '0', '1', '虽九死其犹未悔', '27', '2020-10-14 18:11:48');
INSERT INTO `shop_user_locus` VALUES ('482', '1', '4', '0', '0', '1', '0', '3', '案例test', '86', '2020-10-14 18:12:03');
INSERT INTO `shop_user_locus` VALUES ('483', '4', '163', '0', '0', '1', '0', '3', '暗夜觅彩', '63', '2020-10-14 21:03:40');
INSERT INTO `shop_user_locus` VALUES ('484', '4', '163', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-10-14 21:04:30');
INSERT INTO `shop_user_locus` VALUES ('485', '4', '163', '0', '0', '1', '0', '3', '暗夜觅彩', '63', '2020-10-14 21:04:35');
INSERT INTO `shop_user_locus` VALUES ('486', '4', '163', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-10-14 21:04:42');
INSERT INTO `shop_user_locus` VALUES ('487', '4', '163', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-10-14 21:04:46');
INSERT INTO `shop_user_locus` VALUES ('488', '4', '167', '0', '0', '1', '0', '3', '暗夜觅彩', '63', '2020-10-15 06:45:57');
INSERT INTO `shop_user_locus` VALUES ('489', '4', '25', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-10-15 08:27:27');
INSERT INTO `shop_user_locus` VALUES ('490', '4', '25', '0', '0', '1', '0', '3', '暗夜觅彩', '63', '2020-10-15 08:27:34');
INSERT INTO `shop_user_locus` VALUES ('491', '4', '3', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-10-15 10:23:09');
INSERT INTO `shop_user_locus` VALUES ('492', '4', '3', '0', '0', '1', '0', '3', '暗夜觅彩', '63', '2020-10-15 10:23:32');
INSERT INTO `shop_user_locus` VALUES ('493', '4', '3', '0', '0', '1', '0', '3', '暗夜觅彩', '63', '2020-10-15 10:23:39');
INSERT INTO `shop_user_locus` VALUES ('494', '7', '3', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '42', '2020-10-15 10:30:55');
INSERT INTO `shop_user_locus` VALUES ('495', '7', '3', '0', '0', '1', '0', '3', '东方风情', '92', '2020-10-15 10:31:27');
INSERT INTO `shop_user_locus` VALUES ('496', '7', '3', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '44', '2020-10-15 11:32:38');
INSERT INTO `shop_user_locus` VALUES ('497', '7', '3', '0', '0', '1', '0', '1', '御秀每周秀丨北欧轻奢风格,不将就是一种生活态度', '43', '2020-10-15 11:32:48');
INSERT INTO `shop_user_locus` VALUES ('498', '7', '3', '0', '0', '1', '0', '3', '东方风情', '92', '2020-10-15 12:51:19');
INSERT INTO `shop_user_locus` VALUES ('499', '4', '3', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-10-15 13:01:09');
INSERT INTO `shop_user_locus` VALUES ('500', '4', '3', '0', '0', '1', '0', '3', '暗夜觅彩', '63', '2020-10-15 13:01:22');
INSERT INTO `shop_user_locus` VALUES ('501', '7', '17', '0', '0', '1', '0', '3', '东方风情', '92', '2020-10-15 16:36:42');
INSERT INTO `shop_user_locus` VALUES ('502', '7', '17', '0', '0', '1', '0', '3', '东方风情', '92', '2020-10-15 16:39:14');
INSERT INTO `shop_user_locus` VALUES ('503', '4', '17', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-10-15 16:40:12');
INSERT INTO `shop_user_locus` VALUES ('504', '4', '17', '0', '0', '1', '0', '3', '繁华美寻', '65', '2020-10-15 16:41:43');
INSERT INTO `shop_user_locus` VALUES ('505', '4', '17', '0', '0', '1', '0', '3', '浮云悠歌', '99', '2020-10-16 08:38:29');
INSERT INTO `shop_user_locus` VALUES ('506', '7', '3', '0', '0', '1', '0', '3', '黎明之约', '91', '2020-10-16 09:55:39');
INSERT INTO `shop_user_locus` VALUES ('507', '7', '3', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '42', '2020-10-16 11:02:49');
INSERT INTO `shop_user_locus` VALUES ('508', '7', '3', '0', '0', '1', '0', '3', '繁华美寻', '121', '2020-10-16 17:05:46');
INSERT INTO `shop_user_locus` VALUES ('509', '4', '4', '0', '0', '1', '0', '3', '浮云悠歌', '99', '2020-10-16 18:00:13');
INSERT INTO `shop_user_locus` VALUES ('510', '4', '4', '0', '0', '1', '0', '3', '浮云悠歌', '99', '2020-10-16 18:04:25');
INSERT INTO `shop_user_locus` VALUES ('511', '4', '4', '0', '0', '1', '0', '3', '暗夜觅彩', '100', '2020-10-16 18:05:38');
INSERT INTO `shop_user_locus` VALUES ('512', '4', '4', '0', '0', '1', '0', '3', '浮云悠歌', '99', '2020-10-16 18:23:16');
INSERT INTO `shop_user_locus` VALUES ('513', '4', '3', '0', '0', '1', '0', '3', '暗夜觅彩', '100', '2020-10-16 18:23:24');
INSERT INTO `shop_user_locus` VALUES ('514', '4', '3', '0', '0', '1', '0', '3', '浮云悠歌', '99', '2020-10-16 18:31:13');
INSERT INTO `shop_user_locus` VALUES ('515', '7', '18', '0', '0', '1', '0', '3', '繁华美寻', '121', '2020-10-17 08:44:33');
INSERT INTO `shop_user_locus` VALUES ('516', '7', '17', '0', '0', '1', '0', '3', '东方风情', '123', '2020-10-17 08:45:32');
INSERT INTO `shop_user_locus` VALUES ('517', '7', '17', '0', '0', '1', '0', '3', '东方风情', '123', '2020-10-17 08:45:35');
INSERT INTO `shop_user_locus` VALUES ('518', '7', '18', '0', '0', '1', '0', '3', '暗夜觅彩', '119', '2020-10-17 08:45:42');
INSERT INTO `shop_user_locus` VALUES ('519', '7', '17', '0', '0', '1', '0', '3', '东方风情', '123', '2020-10-17 08:46:00');
INSERT INTO `shop_user_locus` VALUES ('520', '7', '17', '0', '0', '1', '0', '3', '东方风情', '123', '2020-10-17 08:49:34');
INSERT INTO `shop_user_locus` VALUES ('521', '7', '17', '0', '0', '1', '0', '3', '繁华美寻', '121', '2020-10-17 08:53:06');
INSERT INTO `shop_user_locus` VALUES ('522', '7', '206', '0', '0', '1', '0', '3', '东方风情', '123', '2020-10-17 09:45:37');
INSERT INTO `shop_user_locus` VALUES ('523', '4', '3', '0', '0', '1', '0', '3', '暗夜觅彩', '100', '2020-10-17 10:01:36');
INSERT INTO `shop_user_locus` VALUES ('524', '4', '3', '0', '0', '1', '0', '3', '浮云悠歌', '99', '2020-10-17 10:52:53');
INSERT INTO `shop_user_locus` VALUES ('525', '4', '37', '0', '0', '1', '0', '3', '暗夜觅彩', '100', '2020-10-17 14:42:58');
INSERT INTO `shop_user_locus` VALUES ('526', '4', '37', '0', '0', '1', '0', '3', '浮云悠歌', '99', '2020-10-17 14:43:06');
INSERT INTO `shop_user_locus` VALUES ('527', '4', '3', '0', '0', '1', '0', '3', '浮云悠歌', '99', '2020-10-18 12:47:29');
INSERT INTO `shop_user_locus` VALUES ('528', '4', '3', '0', '0', '1', '0', '3', '浮云悠歌', '99', '2020-10-18 12:47:48');
INSERT INTO `shop_user_locus` VALUES ('529', '7', '3', '0', '0', '1', '0', '3', '东方风情', '123', '2020-10-18 12:48:41');
INSERT INTO `shop_user_locus` VALUES ('530', '4', '208', '0', '0', '1', '0', '3', '浮云悠歌', '99', '2020-10-18 15:44:05');
INSERT INTO `shop_user_locus` VALUES ('531', '4', '3', '0', '0', '1', '0', '3', '浮云悠歌', '99', '2020-10-18 19:43:59');
INSERT INTO `shop_user_locus` VALUES ('532', '4', '3', '0', '0', '1', '0', '3', '暗夜觅彩', '100', '2020-10-18 19:44:20');
INSERT INTO `shop_user_locus` VALUES ('533', '4', '3', '0', '0', '1', '0', '3', '浮云悠歌', '99', '2020-10-18 19:45:07');
INSERT INTO `shop_user_locus` VALUES ('534', '4', '3', '0', '0', '1', '0', '3', '浮云悠歌', '99', '2020-10-18 19:45:55');
INSERT INTO `shop_user_locus` VALUES ('535', '4', '3', '0', '0', '1', '0', '3', '浮云悠歌', '99', '2020-10-19 06:52:01');
INSERT INTO `shop_user_locus` VALUES ('536', '4', '3', '0', '0', '1', '0', '3', '暗夜觅彩', '100', '2020-10-19 09:56:42');
INSERT INTO `shop_user_locus` VALUES ('537', '4', '3', '0', '0', '1', '0', '3', '暗夜觅彩', '100', '2020-10-19 10:12:39');
INSERT INTO `shop_user_locus` VALUES ('538', '7', '3', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '44', '2020-10-19 10:22:07');
INSERT INTO `shop_user_locus` VALUES ('539', '7', '3', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '44', '2020-10-19 10:22:25');
INSERT INTO `shop_user_locus` VALUES ('540', '7', '3', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '44', '2020-10-19 10:23:11');
INSERT INTO `shop_user_locus` VALUES ('541', '7', '3', '0', '0', '1', '0', '3', '东方风情', '123', '2020-10-19 10:24:08');
INSERT INTO `shop_user_locus` VALUES ('542', '4', '89', '0', '0', '1', '0', '3', '暗夜觅彩', '100', '2020-10-19 10:29:41');
INSERT INTO `shop_user_locus` VALUES ('543', '4', '89', '0', '0', '1', '0', '3', '浮云悠歌', '99', '2020-10-19 10:29:49');
INSERT INTO `shop_user_locus` VALUES ('544', '7', '3', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '44', '2020-10-19 10:41:29');
INSERT INTO `shop_user_locus` VALUES ('545', '4', '3', '0', '0', '1', '0', '3', '浮云悠歌', '99', '2020-10-19 13:12:56');
INSERT INTO `shop_user_locus` VALUES ('546', '4', '3', '0', '0', '1', '0', '3', '暗夜觅彩', '100', '2020-10-19 13:31:36');
INSERT INTO `shop_user_locus` VALUES ('547', '4', '4', '0', '0', '1', '0', '3', '暗夜觅彩', '100', '2020-10-19 17:49:27');
INSERT INTO `shop_user_locus` VALUES ('548', '7', '4', '0', '0', '1', '0', '3', '东方风情', '123', '2020-10-19 17:57:26');
INSERT INTO `shop_user_locus` VALUES ('549', '1', '4', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '51', '2020-10-19 18:03:17');
INSERT INTO `shop_user_locus` VALUES ('550', '1', '4', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '51', '2020-10-19 18:08:06');
INSERT INTO `shop_user_locus` VALUES ('551', '1', '4', '0', '0', '1', '0', '1', '謇朝谇而夕替', '36', '2020-10-19 18:08:27');
INSERT INTO `shop_user_locus` VALUES ('552', '1', '4', '0', '0', '1', '0', '1', '既替余以蕙纕兮', '37', '2020-10-19 18:09:57');
INSERT INTO `shop_user_locus` VALUES ('553', '1', '4', '0', '0', '1', '0', '1', '既替余以蕙纕兮', '37', '2020-10-19 18:10:30');
INSERT INTO `shop_user_locus` VALUES ('554', '1', '4', '0', '0', '1', '0', '1', '长太息以掩涕兮', '38', '2020-10-19 18:10:43');
INSERT INTO `shop_user_locus` VALUES ('555', '1', '4', '0', '0', '1', '0', '3', '法律框架3', '114', '2020-10-19 18:11:06');
INSERT INTO `shop_user_locus` VALUES ('556', '7', '4', '0', '0', '1', '0', '3', '黎明之约', '122', '2020-10-19 18:20:23');
INSERT INTO `shop_user_locus` VALUES ('557', '4', '4', '0', '0', '1', '0', '3', '暗夜觅彩', '100', '2020-10-19 18:21:51');
INSERT INTO `shop_user_locus` VALUES ('558', '4', '4', '0', '0', '1', '0', '3', '暗夜觅彩', '100', '2020-10-20 09:14:22');
INSERT INTO `shop_user_locus` VALUES ('559', '1', '3', '0', '0', '1', '0', '3', '法律框架3', '114', '2020-10-20 11:18:21');
INSERT INTO `shop_user_locus` VALUES ('560', '4', '229', '0', '0', '1', '0', '3', '暗夜觅彩', '100', '2020-10-20 13:45:15');
INSERT INTO `shop_user_locus` VALUES ('561', '4', '229', '0', '0', '1', '0', '3', '浮云悠歌', '99', '2020-10-20 13:45:23');
INSERT INTO `shop_user_locus` VALUES ('562', '4', '229', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-10-20 13:45:48');
INSERT INTO `shop_user_locus` VALUES ('563', '4', '229', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '24', '2020-10-20 13:45:52');
INSERT INTO `shop_user_locus` VALUES ('564', '4', '4', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-10-20 15:06:59');
INSERT INTO `shop_user_locus` VALUES ('565', '4', '4', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '24', '2020-10-20 15:07:04');
INSERT INTO `shop_user_locus` VALUES ('566', '4', '4', '0', '0', '1', '0', '3', '暗夜觅彩', '100', '2020-10-20 15:08:54');
INSERT INTO `shop_user_locus` VALUES ('567', '7', '3', '0', '0', '1', '0', '3', '东方风情', '123', '2020-10-20 15:10:09');
INSERT INTO `shop_user_locus` VALUES ('568', '4', '4', '0', '0', '1', '0', '3', '暗夜觅彩', '100', '2020-10-20 15:10:53');
INSERT INTO `shop_user_locus` VALUES ('569', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-10-20 15:49:03');
INSERT INTO `shop_user_locus` VALUES ('570', '7', '3', '0', '0', '1', '0', '3', '东方风情', '123', '2020-10-20 15:49:44');
INSERT INTO `shop_user_locus` VALUES ('571', '7', '3', '0', '0', '1', '0', '3', '黎明之约', '122', '2020-10-20 15:50:58');
INSERT INTO `shop_user_locus` VALUES ('572', '7', '3', '0', '0', '1', '0', '3', '东方风情', '123', '2020-10-20 15:52:37');
INSERT INTO `shop_user_locus` VALUES ('573', '4', '4', '0', '0', '1', '0', '3', '暗夜觅彩', '100', '2020-10-20 15:52:46');
INSERT INTO `shop_user_locus` VALUES ('574', '7', '3', '0', '0', '1', '0', '3', '黎明之约', '122', '2020-10-20 15:52:50');
INSERT INTO `shop_user_locus` VALUES ('575', '4', '4', '0', '0', '1', '0', '3', '暗夜觅彩', '100', '2020-10-20 15:53:13');
INSERT INTO `shop_user_locus` VALUES ('576', '7', '3', '0', '0', '1', '0', '3', '黎明之约', '122', '2020-10-20 15:53:16');
INSERT INTO `shop_user_locus` VALUES ('577', '4', '4', '0', '0', '1', '0', '3', '暗夜觅彩', '100', '2020-10-20 15:53:23');
INSERT INTO `shop_user_locus` VALUES ('578', '1', '4', '0', '0', '1', '0', '3', '法律框架3', '114', '2020-10-20 15:54:24');
INSERT INTO `shop_user_locus` VALUES ('579', '1', '4', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '51', '2020-10-20 15:55:32');
INSERT INTO `shop_user_locus` VALUES ('580', '7', '4', '0', '0', '1', '0', '3', '东方风情', '123', '2020-10-20 15:56:41');
INSERT INTO `shop_user_locus` VALUES ('581', '7', '3', '0', '0', '1', '0', '3', '东方风情', '123', '2020-10-20 15:58:09');
INSERT INTO `shop_user_locus` VALUES ('582', '7', '3', '0', '0', '1', '0', '3', '东方风情', '123', '2020-10-20 15:58:14');
INSERT INTO `shop_user_locus` VALUES ('583', '7', '3', '0', '0', '1', '0', '1', '御秀每周秀丨传统与现代元素的碰撞，领略不一样的东方风情！', '45', '2020-10-20 15:59:21');
INSERT INTO `shop_user_locus` VALUES ('584', '7', '3', '0', '0', '1', '0', '1', '御秀每周秀丨传统与现代元素的碰撞，领略不一样的东方风情！', '45', '2020-10-20 15:59:24');
INSERT INTO `shop_user_locus` VALUES ('585', '7', '3', '0', '0', '1', '0', '1', '御秀每周秀丨传统与现代元素的碰撞，领略不一样的东方风情！', '45', '2020-10-20 15:59:41');
INSERT INTO `shop_user_locus` VALUES ('586', '7', '3', '0', '0', '1', '0', '1', '御秀每周秀丨传统与现代元素的碰撞，领略不一样的东方风情！', '45', '2020-10-20 16:00:01');
INSERT INTO `shop_user_locus` VALUES ('587', '7', '4', '0', '0', '1', '0', '3', '东方风情', '123', '2020-10-20 16:05:34');
INSERT INTO `shop_user_locus` VALUES ('588', '7', '3', '0', '0', '1', '0', '1', '御秀每周秀丨传统与现代元素的碰撞，领略不一样的东方风情！', '45', '2020-10-20 16:08:37');
INSERT INTO `shop_user_locus` VALUES ('589', '4', '4', '0', '0', '1', '0', '3', '暗夜觅彩', '100', '2020-10-20 16:08:41');
INSERT INTO `shop_user_locus` VALUES ('590', '7', '3', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '44', '2020-10-20 16:09:05');
INSERT INTO `shop_user_locus` VALUES ('591', '4', '4', '0', '0', '1', '0', '3', '暗夜觅彩', '100', '2020-10-20 16:10:45');
INSERT INTO `shop_user_locus` VALUES ('592', '4', '4', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-10-20 16:12:07');
INSERT INTO `shop_user_locus` VALUES ('593', '4', '234', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-10-20 16:12:33');
INSERT INTO `shop_user_locus` VALUES ('594', '4', '234', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '24', '2020-10-20 16:13:20');
INSERT INTO `shop_user_locus` VALUES ('595', '4', '234', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-10-20 16:13:37');
INSERT INTO `shop_user_locus` VALUES ('596', '7', '3', '0', '0', '1', '0', '3', '东方风情', '123', '2020-10-20 16:34:34');
INSERT INTO `shop_user_locus` VALUES ('597', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-10-20 16:48:52');
INSERT INTO `shop_user_locus` VALUES ('598', '4', '4', '0', '0', '1', '0', '3', '暗夜觅彩', '100', '2020-10-20 17:23:36');
INSERT INTO `shop_user_locus` VALUES ('599', '1', '4', '0', '0', '1', '0', '3', '法律框架3', '114', '2020-10-20 17:47:03');
INSERT INTO `shop_user_locus` VALUES ('600', '1', '4', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '51', '2020-10-20 17:47:13');
INSERT INTO `shop_user_locus` VALUES ('601', '1', '4', '0', '0', '1', '0', '3', '法律框架3', '114', '2020-10-20 17:47:25');
INSERT INTO `shop_user_locus` VALUES ('602', '1', '4', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '51', '2020-10-20 17:47:32');
INSERT INTO `shop_user_locus` VALUES ('603', '4', '3', '0', '0', '1', '0', '3', '暗夜觅彩', '100', '2020-10-20 17:52:26');
INSERT INTO `shop_user_locus` VALUES ('604', '4', '3', '0', '0', '1', '0', '3', '暗夜觅彩', '100', '2020-10-20 17:54:18');
INSERT INTO `shop_user_locus` VALUES ('605', '4', '3', '0', '0', '1', '0', '3', '暗夜觅彩', '100', '2020-10-20 17:55:33');
INSERT INTO `shop_user_locus` VALUES ('606', '4', '3', '0', '0', '1', '0', '3', '暗夜觅彩', '100', '2020-10-20 17:57:10');
INSERT INTO `shop_user_locus` VALUES ('607', '4', '3', '0', '0', '1', '0', '3', '暗夜觅彩', '100', '2020-10-20 18:08:13');
INSERT INTO `shop_user_locus` VALUES ('608', '4', '238', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-10-20 18:08:22');
INSERT INTO `shop_user_locus` VALUES ('609', '4', '3', '0', '0', '1', '0', '3', '暗夜觅彩', '100', '2020-10-20 18:08:59');
INSERT INTO `shop_user_locus` VALUES ('610', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-10-20 18:09:44');
INSERT INTO `shop_user_locus` VALUES ('611', '4', '3', '0', '0', '1', '0', '3', '暗夜觅彩', '100', '2020-10-20 18:09:54');
INSERT INTO `shop_user_locus` VALUES ('612', '4', '3', '0', '0', '1', '0', '3', '暗夜觅彩', '100', '2020-10-20 18:10:34');
INSERT INTO `shop_user_locus` VALUES ('613', '4', '3', '0', '0', '1', '0', '3', '暗夜觅彩', '100', '2020-10-20 18:37:14');
INSERT INTO `shop_user_locus` VALUES ('614', '7', '3', '0', '0', '1', '0', '3', '东方风情', '123', '2020-10-20 18:37:22');
INSERT INTO `shop_user_locus` VALUES ('615', '7', '23', '0', '0', '1', '0', '3', '东方风情', '123', '2020-10-20 18:37:38');
INSERT INTO `shop_user_locus` VALUES ('616', '7', '3', '0', '0', '1', '0', '1', '御秀每周秀丨传统与现代元素的碰撞，领略不一样的东方风情！', '45', '2020-10-20 18:38:24');
INSERT INTO `shop_user_locus` VALUES ('617', '7', '23', '0', '0', '1', '0', '1', '御秀每周秀丨传统与现代元素的碰撞，领略不一样的东方风情！', '45', '2020-10-20 18:38:42');
INSERT INTO `shop_user_locus` VALUES ('618', '7', '3', '0', '0', '1', '0', '3', '东方风情', '123', '2020-10-20 18:55:07');
INSERT INTO `shop_user_locus` VALUES ('619', '4', '229', '0', '0', '1', '0', '3', '暗夜觅彩', '100', '2020-10-21 09:59:15');
INSERT INTO `shop_user_locus` VALUES ('620', '4', '229', '0', '0', '1', '0', '3', '浮云悠歌', '99', '2020-10-21 09:59:23');
INSERT INTO `shop_user_locus` VALUES ('621', '4', '229', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-10-21 09:59:48');
INSERT INTO `shop_user_locus` VALUES ('622', '4', '229', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '24', '2020-10-21 09:59:52');
INSERT INTO `shop_user_locus` VALUES ('623', '4', '3', '0', '0', '1', '0', '3', '暗夜觅彩', '100', '2020-10-21 10:18:25');
INSERT INTO `shop_user_locus` VALUES ('624', '4', '4', '0', '0', '1', '0', '3', '暗夜觅彩', '100', '2020-10-21 10:20:03');
INSERT INTO `shop_user_locus` VALUES ('625', '4', '3', '0', '0', '1', '0', '3', '暗夜觅彩', '100', '2020-10-21 10:23:48');
INSERT INTO `shop_user_locus` VALUES ('626', '4', '257', '0', '0', '1', '0', '3', '浮云悠歌', '99', '2020-10-21 11:16:55');
INSERT INTO `shop_user_locus` VALUES ('627', '4', '33', '0', '0', '1', '0', '3', '暗夜觅彩', '100', '2020-10-21 11:49:05');
INSERT INTO `shop_user_locus` VALUES ('628', '4', '33', '0', '0', '1', '0', '3', '浮云悠歌', '99', '2020-10-21 11:49:12');
INSERT INTO `shop_user_locus` VALUES ('629', '4', '33', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-10-21 11:49:38');
INSERT INTO `shop_user_locus` VALUES ('630', '4', '33', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '24', '2020-10-21 11:49:42');
INSERT INTO `shop_user_locus` VALUES ('631', '4', '3', '0', '0', '1', '0', '3', '暗夜觅彩', '100', '2020-10-21 12:24:38');
INSERT INTO `shop_user_locus` VALUES ('632', '7', '3', '0', '0', '1', '0', '3', '东方风情', '123', '2020-10-21 13:17:08');
INSERT INTO `shop_user_locus` VALUES ('633', '7', '23', '0', '0', '1', '0', '3', '东方风情', '123', '2020-10-21 13:17:22');
INSERT INTO `shop_user_locus` VALUES ('634', '7', '23', '0', '0', '1', '0', '3', '东方风情', '123', '2020-10-21 13:17:31');
INSERT INTO `shop_user_locus` VALUES ('635', '7', '3', '0', '0', '1', '0', '1', '御秀每周秀丨传统与现代元素的碰撞，领略不一样的东方风情！', '45', '2020-10-21 13:18:44');
INSERT INTO `shop_user_locus` VALUES ('636', '7', '23', '0', '0', '1', '0', '1', '御秀每周秀丨传统与现代元素的碰撞，领略不一样的东方风情！', '45', '2020-10-21 13:19:02');
INSERT INTO `shop_user_locus` VALUES ('637', '7', '3', '0', '0', '1', '0', '1', '御秀每周秀丨传统与现代元素的碰撞，领略不一样的东方风情！', '45', '2020-10-21 13:19:25');
INSERT INTO `shop_user_locus` VALUES ('638', '7', '3', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '44', '2020-10-21 13:19:30');
INSERT INTO `shop_user_locus` VALUES ('639', '7', '23', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '44', '2020-10-21 13:19:52');
INSERT INTO `shop_user_locus` VALUES ('640', '4', '3', '0', '0', '1', '0', '3', '浮云悠歌', '99', '2020-10-21 13:34:01');
INSERT INTO `shop_user_locus` VALUES ('641', '4', '3', '0', '0', '1', '0', '3', '浮云悠歌', '99', '2020-10-21 13:38:47');
INSERT INTO `shop_user_locus` VALUES ('642', '7', '3', '0', '0', '1', '0', '3', '东方风情', '123', '2020-10-21 13:52:20');
INSERT INTO `shop_user_locus` VALUES ('643', '7', '3', '0', '0', '1', '0', '3', '东方风情', '123', '2020-10-21 14:00:44');
INSERT INTO `shop_user_locus` VALUES ('644', '7', '3', '0', '0', '1', '0', '3', '东方风情', '123', '2020-10-21 14:07:28');
INSERT INTO `shop_user_locus` VALUES ('645', '7', '3', '0', '0', '1', '0', '3', '东方风情', '123', '2020-10-21 14:35:40');
INSERT INTO `shop_user_locus` VALUES ('646', '7', '3', '0', '0', '1', '0', '3', '黎明之约', '122', '2020-10-21 14:36:05');
INSERT INTO `shop_user_locus` VALUES ('647', '7', '3', '0', '0', '1', '0', '1', '御秀每周秀丨传统与现代元素的碰撞，领略不一样的东方风情！', '45', '2020-10-21 14:40:05');
INSERT INTO `shop_user_locus` VALUES ('648', '4', '3', '0', '0', '1', '0', '3', '越极简，越High-Level', '142', '2020-10-21 15:34:45');
INSERT INTO `shop_user_locus` VALUES ('649', '4', '89', '0', '0', '1', '0', '3', '北欧+轻奢混搭,恰到好处的精致都市风', '148', '2020-10-21 16:21:48');
INSERT INTO `shop_user_locus` VALUES ('650', '4', '89', '0', '0', '1', '0', '3', 'European Style 欧式艺术的空间觉醒', '147', '2020-10-21 16:21:56');
INSERT INTO `shop_user_locus` VALUES ('651', '4', '89', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-10-21 16:22:21');
INSERT INTO `shop_user_locus` VALUES ('652', '4', '89', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '24', '2020-10-21 16:22:26');
INSERT INTO `shop_user_locus` VALUES ('653', '1', '3', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '51', '2020-10-21 16:34:32');
INSERT INTO `shop_user_locus` VALUES ('654', '1', '3', '0', '0', '1', '0', '1', '既替余以蕙纕兮', '37', '2020-10-21 16:37:09');
INSERT INTO `shop_user_locus` VALUES ('655', '7', '3', '0', '0', '1', '0', '3', '巴黎玫瑰', '120', '2020-10-21 16:39:55');
INSERT INTO `shop_user_locus` VALUES ('656', '3', '3', '0', '0', '1', '0', '3', '342', '149', '2020-10-21 16:42:30');
INSERT INTO `shop_user_locus` VALUES ('657', '3', '3', '0', '0', '1', '0', '1', '软装大牌--启上官网', '53', '2020-10-21 16:43:58');
INSERT INTO `shop_user_locus` VALUES ('658', '4', '3', '0', '0', '1', '0', '3', '北欧+轻奢混搭,恰到好处的精致都市风', '148', '2020-10-21 16:44:09');
INSERT INTO `shop_user_locus` VALUES ('659', '4', '3', '0', '0', '1', '0', '3', '北欧+轻奢混搭,恰到好处的精致都市风', '148', '2020-10-21 16:46:37');
INSERT INTO `shop_user_locus` VALUES ('660', '4', '3', '0', '0', '1', '0', '3', '北欧+轻奢混搭,恰到好处的精致都市风', '148', '2020-10-21 16:47:45');
INSERT INTO `shop_user_locus` VALUES ('661', '3', '3', '0', '0', '1', '0', '3', '342', '149', '2020-10-21 16:47:55');
INSERT INTO `shop_user_locus` VALUES ('662', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '24', '2020-10-21 17:17:25');
INSERT INTO `shop_user_locus` VALUES ('663', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-10-21 17:24:50');
INSERT INTO `shop_user_locus` VALUES ('664', '4', '3', '0', '0', '1', '0', '3', '120㎡华美栖居，追溯午夜巴黎的奇幻之旅', '145', '2020-10-21 17:33:56');
INSERT INTO `shop_user_locus` VALUES ('665', '4', '3', '0', '0', '1', '0', '3', 'European Style 欧式艺术的空间觉醒', '147', '2020-10-21 17:42:44');
INSERT INTO `shop_user_locus` VALUES ('666', '4', '73', '0', '0', '1', '0', '3', '北欧+轻奢混搭,恰到好处的精致都市风', '148', '2020-10-21 18:10:53');
INSERT INTO `shop_user_locus` VALUES ('667', '4', '73', '0', '0', '1', '0', '3', 'European Style 欧式艺术的空间觉醒', '147', '2020-10-21 18:10:58');
INSERT INTO `shop_user_locus` VALUES ('668', '4', '73', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-10-21 18:11:20');
INSERT INTO `shop_user_locus` VALUES ('669', '4', '73', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '24', '2020-10-21 18:11:24');
INSERT INTO `shop_user_locus` VALUES ('670', '4', '268', '0', '0', '1', '0', '3', '北欧+轻奢混搭,恰到好处的精致都市风', '148', '2020-10-21 18:13:19');
INSERT INTO `shop_user_locus` VALUES ('671', '4', '268', '0', '0', '1', '0', '3', 'European Style 欧式艺术的空间觉醒', '147', '2020-10-21 18:13:56');
INSERT INTO `shop_user_locus` VALUES ('672', '4', '268', '0', '0', '1', '0', '3', 'Modern Art 如夏花一样对生活的狂热', '146', '2020-10-21 18:14:02');
INSERT INTO `shop_user_locus` VALUES ('673', '4', '268', '0', '0', '1', '0', '3', '北欧+轻奢混搭,恰到好处的精致都市风', '148', '2020-10-21 18:14:09');
INSERT INTO `shop_user_locus` VALUES ('674', '4', '268', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-10-21 18:15:14');
INSERT INTO `shop_user_locus` VALUES ('675', '4', '268', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '24', '2020-10-21 18:15:59');
INSERT INTO `shop_user_locus` VALUES ('676', '4', '268', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-10-21 18:16:07');
INSERT INTO `shop_user_locus` VALUES ('677', '4', '268', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-10-21 18:16:13');
INSERT INTO `shop_user_locus` VALUES ('678', '4', '268', '0', '0', '1', '0', '3', '北欧+轻奢混搭,恰到好处的精致都市风', '148', '2020-10-21 18:18:48');
INSERT INTO `shop_user_locus` VALUES ('679', '4', '3', '0', '0', '1', '0', '3', 'European Style 欧式艺术的空间觉醒', '147', '2020-10-22 10:37:15');
INSERT INTO `shop_user_locus` VALUES ('680', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-10-22 10:42:44');
INSERT INTO `shop_user_locus` VALUES ('681', '4', '3', '0', '0', '1', '0', '3', '120㎡华美栖居，追溯午夜巴黎的奇幻之旅', '145', '2020-10-22 10:47:12');
INSERT INTO `shop_user_locus` VALUES ('682', '4', '3', '0', '0', '1', '0', '3', '北欧+轻奢混搭,恰到好处的精致都市风', '148', '2020-10-22 10:49:57');
INSERT INTO `shop_user_locus` VALUES ('683', '4', '4', '0', '0', '1', '0', '3', '北欧+轻奢混搭,恰到好处的精致都市风', '148', '2020-10-22 10:51:24');
INSERT INTO `shop_user_locus` VALUES ('684', '4', '4', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-10-22 10:52:57');
INSERT INTO `shop_user_locus` VALUES ('685', '1', '4', '0', '0', '1', '0', '3', '法律框架3', '114', '2020-10-22 10:53:55');
INSERT INTO `shop_user_locus` VALUES ('686', '4', '4', '0', '0', '1', '0', '3', 'European Style 欧式艺术的空间觉醒', '147', '2020-10-22 10:53:58');
INSERT INTO `shop_user_locus` VALUES ('687', '4', '4', '0', '0', '1', '0', '3', '北欧+轻奢混搭,恰到好处的精致都市风', '148', '2020-10-22 10:55:56');
INSERT INTO `shop_user_locus` VALUES ('688', '4', '286', '0', '0', '1', '0', '3', '北欧+轻奢混搭,恰到好处的精致都市风', '148', '2020-10-22 11:09:22');
INSERT INTO `shop_user_locus` VALUES ('689', '4', '286', '0', '0', '1', '0', '3', 'European Style 欧式艺术的空间觉醒', '147', '2020-10-22 11:09:53');
INSERT INTO `shop_user_locus` VALUES ('690', '4', '286', '0', '0', '1', '0', '3', 'Modern Art 如夏花一样对生活的狂热', '146', '2020-10-22 11:09:58');
INSERT INTO `shop_user_locus` VALUES ('691', '4', '286', '0', '0', '1', '0', '3', '北欧+轻奢混搭,恰到好处的精致都市风', '148', '2020-10-22 11:10:05');
INSERT INTO `shop_user_locus` VALUES ('692', '4', '286', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-10-22 11:11:10');
INSERT INTO `shop_user_locus` VALUES ('693', '4', '286', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '24', '2020-10-22 11:11:55');
INSERT INTO `shop_user_locus` VALUES ('694', '4', '286', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-10-22 11:12:02');
INSERT INTO `shop_user_locus` VALUES ('695', '4', '286', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-10-22 11:12:07');
INSERT INTO `shop_user_locus` VALUES ('696', '4', '3', '0', '0', '1', '0', '3', '北欧+轻奢混搭,恰到好处的精致都市风', '148', '2020-10-22 11:13:40');
INSERT INTO `shop_user_locus` VALUES ('697', '4', '286', '0', '0', '1', '0', '3', '北欧+轻奢混搭,恰到好处的精致都市风', '148', '2020-10-22 11:15:31');
INSERT INTO `shop_user_locus` VALUES ('698', '4', '286', '0', '0', '1', '0', '3', 'European Style 欧式艺术的空间觉醒', '147', '2020-10-22 11:15:35');
INSERT INTO `shop_user_locus` VALUES ('699', '4', '37', '0', '0', '1', '0', '3', '北欧+轻奢混搭,恰到好处的精致都市风', '148', '2020-10-22 13:36:15');
INSERT INTO `shop_user_locus` VALUES ('700', '4', '37', '0', '0', '1', '0', '3', 'European Style 欧式艺术的空间觉醒', '147', '2020-10-22 13:36:24');
INSERT INTO `shop_user_locus` VALUES ('701', '4', '37', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-10-22 13:36:51');
INSERT INTO `shop_user_locus` VALUES ('702', '4', '37', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '24', '2020-10-22 13:36:55');
INSERT INTO `shop_user_locus` VALUES ('703', '7', '3', '0', '0', '1', '0', '3', '东方风情', '123', '2020-10-22 13:39:21');
INSERT INTO `shop_user_locus` VALUES ('704', '7', '3', '0', '0', '1', '0', '1', '御秀每周秀丨传统与现代元素的碰撞，领略不一样的东方风情！', '45', '2020-10-22 13:39:43');
INSERT INTO `shop_user_locus` VALUES ('705', '7', '3', '0', '0', '1', '0', '3', '东方风情', '123', '2020-10-22 13:44:07');
INSERT INTO `shop_user_locus` VALUES ('706', '7', '3', '0', '0', '1', '0', '3', '暗夜觅彩', '119', '2020-10-22 13:44:12');
INSERT INTO `shop_user_locus` VALUES ('707', '7', '3', '0', '0', '1', '0', '1', '御秀每周秀丨传统与现代元素的碰撞，领略不一样的东方风情！', '45', '2020-10-22 13:44:19');
INSERT INTO `shop_user_locus` VALUES ('708', '4', '287', '0', '0', '1', '0', '3', '北欧+轻奢混搭,恰到好处的精致都市风', '148', '2020-10-22 13:55:39');
INSERT INTO `shop_user_locus` VALUES ('709', '4', '287', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-10-22 13:55:43');
INSERT INTO `shop_user_locus` VALUES ('710', '4', '3', '0', '0', '1', '0', '3', 'European Style 欧式艺术的空间觉醒', '147', '2020-10-22 14:00:38');
INSERT INTO `shop_user_locus` VALUES ('711', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-10-22 14:00:51');
INSERT INTO `shop_user_locus` VALUES ('712', '7', '3', '0', '0', '1', '0', '3', '黎明之约', '122', '2020-10-22 14:37:22');
INSERT INTO `shop_user_locus` VALUES ('713', '4', '3', '0', '0', '1', '0', '3', 'Modern Art 如夏花一样对生活的狂热', '146', '2020-10-22 14:41:50');
INSERT INTO `shop_user_locus` VALUES ('714', '4', '3', '0', '0', '1', '0', '3', '北欧+轻奢混搭,恰到好处的精致都市风', '148', '2020-10-22 14:42:26');
INSERT INTO `shop_user_locus` VALUES ('715', '3', '3', '0', '0', '1', '0', '1', '软装大牌--启上官网', '53', '2020-10-22 15:03:47');
INSERT INTO `shop_user_locus` VALUES ('716', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-10-22 15:06:03');
INSERT INTO `shop_user_locus` VALUES ('717', '4', '32', '0', '0', '1', '0', '3', '艺术共生与灵魂共鸣，温暖岁月的诗', '143', '2020-10-23 08:33:45');
INSERT INTO `shop_user_locus` VALUES ('718', '4', '17', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-10-23 08:46:38');
INSERT INTO `shop_user_locus` VALUES ('719', '4', '17', '0', '0', '1', '0', '3', '北欧+轻奢混搭,恰到好处的精致都市风', '148', '2020-10-23 08:46:46');
INSERT INTO `shop_user_locus` VALUES ('720', '4', '17', '0', '0', '1', '0', '3', '艺术共生与灵魂共鸣，温暖岁月的诗', '143', '2020-10-23 08:46:50');
INSERT INTO `shop_user_locus` VALUES ('721', '4', '17', '0', '0', '1', '0', '3', '艺术共生与灵魂共鸣，温暖岁月的诗', '143', '2020-10-23 08:46:56');
INSERT INTO `shop_user_locus` VALUES ('722', '4', '3', '0', '0', '1', '0', '3', '匠心巧啄，塑造诗意的Artistic Realm', '141', '2020-10-23 10:28:04');
INSERT INTO `shop_user_locus` VALUES ('723', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-10-23 10:58:28');
INSERT INTO `shop_user_locus` VALUES ('724', '4', '3', '0', '0', '1', '0', '3', '北欧+轻奢混搭,恰到好处的精致都市风', '148', '2020-10-23 11:46:19');
INSERT INTO `shop_user_locus` VALUES ('725', '4', '292', '0', '0', '1', '0', '3', '北欧+轻奢混搭,恰到好处的精致都市风', '148', '2020-10-23 14:33:15');
INSERT INTO `shop_user_locus` VALUES ('726', '4', '292', '0', '0', '1', '0', '3', '艺术共生与灵魂共鸣，温暖岁月的诗', '143', '2020-10-23 14:33:50');
INSERT INTO `shop_user_locus` VALUES ('727', '4', '292', '0', '0', '1', '0', '3', '北欧+轻奢混搭,恰到好处的精致都市风', '148', '2020-10-23 14:33:57');
INSERT INTO `shop_user_locus` VALUES ('728', '4', '292', '0', '0', '1', '0', '3', '艺术共生与灵魂共鸣，温暖岁月的诗', '143', '2020-10-23 14:34:02');
INSERT INTO `shop_user_locus` VALUES ('729', '4', '292', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-10-23 14:34:58');
INSERT INTO `shop_user_locus` VALUES ('730', '4', '3', '0', '0', '1', '0', '3', '演绎温雅生活，探索细碎幸福', '140', '2020-10-23 15:40:59');
INSERT INTO `shop_user_locus` VALUES ('731', '4', '292', '0', '0', '1', '0', '3', '越极简，越High-Level', '142', '2020-10-23 21:25:30');
INSERT INTO `shop_user_locus` VALUES ('732', '4', '292', '0', '0', '1', '0', '3', '演绎温雅生活，探索细碎幸福', '140', '2020-10-23 21:26:06');
INSERT INTO `shop_user_locus` VALUES ('733', '4', '292', '0', '0', '1', '0', '3', '现代遇上Light Luxury 演绎质感生活', '139', '2020-10-23 21:26:12');
INSERT INTO `shop_user_locus` VALUES ('734', '4', '292', '0', '0', '1', '0', '3', '北欧+轻奢混搭,恰到好处的精致都市风', '148', '2020-10-23 21:26:18');
INSERT INTO `shop_user_locus` VALUES ('735', '4', '292', '0', '0', '1', '0', '1', '御秀每周秀丨欧式+轻奢,给你不一样的轻奢高级感!', '25', '2020-10-23 21:27:23');
INSERT INTO `shop_user_locus` VALUES ('736', '4', '292', '0', '0', '1', '0', '1', '御秀每周秀丨满满都是高级感，精致又有格调的现代风装修', '24', '2020-10-23 21:28:05');
INSERT INTO `shop_user_locus` VALUES ('737', '4', '292', '0', '0', '1', '0', '3', '越极简，越High-Level', '142', '2020-10-23 21:30:39');
INSERT INTO `shop_user_locus` VALUES ('738', '4', '292', '0', '0', '1', '0', '3', '越极简，越High-Level', '142', '2020-10-23 21:30:45');
INSERT INTO `shop_user_locus` VALUES ('739', '4', '292', '0', '0', '1', '0', '3', '演绎温雅生活，探索细碎幸福', '140', '2020-10-23 21:30:51');
INSERT INTO `shop_user_locus` VALUES ('740', '4', '3', '0', '0', '1', '0', '3', '900㎡女企业家别墅私宅，奢华而不浮华', '136', '2020-10-28 18:01:16');
INSERT INTO `shop_user_locus` VALUES ('741', '7', '3', '0', '0', '1', '0', '3', '东方风情', '123', '2020-10-30 12:08:23');
INSERT INTO `shop_user_locus` VALUES ('742', '7', '3', '0', '0', '1', '0', '1', '御秀每周秀丨传统与现代元素的碰撞，领略不一样的东方风情！', '45', '2020-10-30 12:09:16');
INSERT INTO `shop_user_locus` VALUES ('743', '4', '18', '0', '0', '1', '0', '3', '北欧+轻奢混搭,恰到好处的精致都市风', '148', '2020-11-02 10:35:40');
INSERT INTO `shop_user_locus` VALUES ('744', '7', '18', '0', '0', '1', '0', '3', '繁华美寻', '121', '2020-11-02 10:46:14');
INSERT INTO `shop_user_locus` VALUES ('745', '4', '18', '0', '0', '1', '0', '3', 'Modern Art 如夏花一样对生活的狂热', '146', '2020-11-02 10:58:56');
INSERT INTO `shop_user_locus` VALUES ('746', '4', '18', '0', '0', '1', '0', '3', 'Modern Art 如夏花一样对生活的狂热', '146', '2020-11-02 10:59:34');
INSERT INTO `shop_user_locus` VALUES ('747', '4', '332', '0', '0', '1', '0', '3', '现代遇上Light Luxury 演绎质感生活', '139', '2020-11-02 11:05:58');
INSERT INTO `shop_user_locus` VALUES ('748', '4', '18', '0', '0', '1', '0', '3', 'Modern Art 如夏花一样对生活的狂热', '146', '2020-11-03 09:39:24');
INSERT INTO `shop_user_locus` VALUES ('749', '4', '18', '0', '0', '1', '0', '1', '御秀每周秀丨北欧轻奢风格,不将就是一种生活态度', '54', '2020-11-03 09:39:40');
INSERT INTO `shop_user_locus` VALUES ('750', '4', '18', '0', '0', '1', '0', '1', '御秀每周秀丨北欧轻奢风格,不将就是一种生活态度', '54', '2020-11-03 09:40:10');
INSERT INTO `shop_user_locus` VALUES ('751', '4', '3', '0', '0', '1', '0', '1', '御秀每周秀丨北欧轻奢风格,不将就是一种生活态度', '54', '2020-11-03 09:51:24');
INSERT INTO `shop_user_locus` VALUES ('752', '7', '3', '0', '0', '1', '0', '1', '御秀每周秀丨传统与现代元素的碰撞，领略不一样的东方风情！', '45', '2020-11-03 09:52:05');
INSERT INTO `shop_user_locus` VALUES ('753', '4', '3', '0', '0', '1', '0', '3', '北欧+轻奢混搭,恰到好处的精致都市风', '148', '2020-11-03 18:01:43');
INSERT INTO `shop_user_locus` VALUES ('754', '4', '3', '0', '0', '1', '0', '3', 'Modern Art 如夏花一样对生活的狂热', '146', '2020-11-04 21:07:39');
INSERT INTO `shop_user_locus` VALUES ('755', '4', '3', '0', '0', '1', '0', '3', '北欧+轻奢混搭,恰到好处的精致都市风', '148', '2020-11-05 11:41:04');

-- ----------------------------
-- Table structure for shop_user_seller
-- ----------------------------
DROP TABLE IF EXISTS `shop_user_seller`;
CREATE TABLE `shop_user_seller` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) DEFAULT NULL COMMENT '门店编号',
  `user_id` int(11) DEFAULT NULL COMMENT '客户编号',
  `status` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '状态',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `is_collect` tinyint(1) unsigned DEFAULT '1' COMMENT '1-表示浏览2-表示关注',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='用户关注的门店表';

-- ----------------------------
-- Records of shop_user_seller
-- ----------------------------
INSERT INTO `shop_user_seller` VALUES ('22', '1', '3', '1', '2020-09-23 18:28:32', '2');
INSERT INTO `shop_user_seller` VALUES ('23', '4', '3', '1', '2020-09-27 11:53:28', '2');
INSERT INTO `shop_user_seller` VALUES ('24', '1', '4', '1', '2020-09-27 12:00:56', '1');
INSERT INTO `shop_user_seller` VALUES ('28', '7', '3', '1', '2020-10-10 12:31:58', '1');
INSERT INTO `shop_user_seller` VALUES ('29', '7', '108', '1', '2020-10-10 16:49:53', '1');
INSERT INTO `shop_user_seller` VALUES ('30', '7', '123', '1', '2020-10-11 12:36:19', '1');
INSERT INTO `shop_user_seller` VALUES ('31', '7', '133', '1', '2020-10-12 10:25:19', '1');
INSERT INTO `shop_user_seller` VALUES ('32', '7', '4', '1', '2020-10-12 10:31:10', '1');
INSERT INTO `shop_user_seller` VALUES ('33', '7', '135', '1', '2020-10-12 14:20:50', '1');
INSERT INTO `shop_user_seller` VALUES ('34', '7', '135', '1', '2020-10-12 14:20:55', '1');
INSERT INTO `shop_user_seller` VALUES ('35', '7', '135', '1', '2020-10-12 14:20:56', '1');
INSERT INTO `shop_user_seller` VALUES ('36', '7', '135', '1', '2020-10-12 14:21:00', '1');
INSERT INTO `shop_user_seller` VALUES ('37', '7', '135', '1', '2020-10-12 14:21:02', '1');
INSERT INTO `shop_user_seller` VALUES ('38', '7', '136', '1', '2020-10-12 15:25:44', '1');
INSERT INTO `shop_user_seller` VALUES ('39', '1', '139', '1', '2020-10-12 19:08:53', '1');
INSERT INTO `shop_user_seller` VALUES ('40', '7', '144', '1', '2020-10-13 12:16:40', '1');
INSERT INTO `shop_user_seller` VALUES ('41', '7', '145', '1', '2020-10-13 12:40:20', '1');
INSERT INTO `shop_user_seller` VALUES ('42', '7', '154', '1', '2020-10-13 23:40:59', '1');
INSERT INTO `shop_user_seller` VALUES ('43', '7', '155', '1', '2020-10-14 00:08:12', '1');
INSERT INTO `shop_user_seller` VALUES ('44', '7', '156', '1', '2020-10-14 01:59:06', '1');
INSERT INTO `shop_user_seller` VALUES ('45', '7', '139', '1', '2020-10-14 02:41:41', '1');
INSERT INTO `shop_user_seller` VALUES ('46', '7', '23', '1', '2020-10-14 13:04:32', '1');
INSERT INTO `shop_user_seller` VALUES ('47', '8', '7', '1', '2020-10-14 17:18:18', '1');
INSERT INTO `shop_user_seller` VALUES ('48', '8', '8', '1', '2020-10-14 17:18:21', '1');
INSERT INTO `shop_user_seller` VALUES ('49', '8', '9', '1', '2020-10-14 17:18:23', '1');
INSERT INTO `shop_user_seller` VALUES ('50', '8', '10', '1', '2020-10-14 17:18:25', '1');
INSERT INTO `shop_user_seller` VALUES ('51', '7', '161', '1', '2020-10-14 17:33:12', '1');
INSERT INTO `shop_user_seller` VALUES ('52', '1', '130', '1', '2020-10-15 03:28:33', '1');
INSERT INTO `shop_user_seller` VALUES ('53', '1', '130', '1', '2020-10-15 03:28:34', '1');
INSERT INTO `shop_user_seller` VALUES ('54', '1', '130', '1', '2020-10-15 03:28:39', '1');
INSERT INTO `shop_user_seller` VALUES ('55', '1', '130', '1', '2020-10-15 03:28:41', '1');
INSERT INTO `shop_user_seller` VALUES ('56', '1', '130', '1', '2020-10-15 03:28:53', '1');
INSERT INTO `shop_user_seller` VALUES ('57', '7', '166', '1', '2020-10-15 06:12:50', '1');
INSERT INTO `shop_user_seller` VALUES ('58', '7', '17', '1', '2020-10-15 11:25:09', '1');
INSERT INTO `shop_user_seller` VALUES ('59', '1', '185', '1', '2020-10-15 13:25:22', '1');
INSERT INTO `shop_user_seller` VALUES ('60', '7', '188', '1', '2020-10-15 16:31:52', '1');
INSERT INTO `shop_user_seller` VALUES ('61', '7', '189', '1', '2020-10-15 18:29:23', '1');
INSERT INTO `shop_user_seller` VALUES ('62', '1', '189', '1', '2020-10-15 18:29:32', '1');
INSERT INTO `shop_user_seller` VALUES ('63', '7', '194', '1', '2020-10-16 13:29:11', '1');
INSERT INTO `shop_user_seller` VALUES ('64', '7', '18', '1', '2020-10-17 08:43:55', '1');
INSERT INTO `shop_user_seller` VALUES ('65', '3', '3', '1', '2020-10-21 15:38:02', '1');
INSERT INTO `shop_user_seller` VALUES ('66', '1', '108', '1', '2020-10-30 12:25:47', '1');
INSERT INTO `shop_user_seller` VALUES ('67', '4', '327', '1', '2020-11-02 10:57:59', '1');
INSERT INTO `shop_user_seller` VALUES ('68', '4', '18', '1', '2020-11-04 16:29:54', '1');

-- ----------------------------
-- Table structure for shop_video
-- ----------------------------
DROP TABLE IF EXISTS `shop_video`;
CREATE TABLE `shop_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) DEFAULT NULL COMMENT '门店编号',
  `type_id` int(11) DEFAULT NULL,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '标题',
  `img` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '视频文件URL',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '内容',
  `look_num` int(11) DEFAULT '0' COMMENT '查看次数',
  `up_num` int(11) DEFAULT '0' COMMENT '点赞次数',
  `be_custmer_num` int(11) DEFAULT '0' COMMENT '获客人数',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `is_show` int(5) DEFAULT '1' COMMENT '是否展示',
  `sort` int(5) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='门店小视频表';

-- ----------------------------
-- Records of shop_video
-- ----------------------------
INSERT INTO `shop_video` VALUES ('8', '1', '1', null, 'video/2020-09-21/1600654895820.mp4', null, null, null, null, '2020-09-21 10:21:36', '1', null);
INSERT INTO `shop_video` VALUES ('9', '1', '1', '我是刚刚上传的视频', 'video/2020-09-21/1600657606287.mp4', null, '0', '0', '0', '2020-09-21 11:06:46', '1', null);
INSERT INTO `shop_video` VALUES ('10', '1', '1', '是否说法萨芬是否就是打开房间啊深刻理解法律框架', 'video/2020-09-21/1600657904478.mp4', null, '0', '0', '0', '2020-09-21 11:11:44', '0', null);

-- ----------------------------
-- Table structure for shop_video_type
-- ----------------------------
DROP TABLE IF EXISTS `shop_video_type`;
CREATE TABLE `shop_video_type` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `shop_id` int(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL COMMENT '商品类型',
  `is_show` int(5) DEFAULT '1' COMMENT '1使用0禁用默认值1',
  `sorting` int(50) DEFAULT '0' COMMENT '排序',
  `type_id` int(50) DEFAULT NULL COMMENT '分级',
  `ico_img` varchar(100) DEFAULT NULL COMMENT '图标',
  `color` varchar(200) DEFAULT '000000-666666' COMMENT '字体渐变色',
  `keyword` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '关键词',
  `pc_color` varchar(100) DEFAULT NULL,
  `phone_img` varchar(100) DEFAULT NULL COMMENT '手机分类图标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='门店小视频的类型表';

-- ----------------------------
-- Records of shop_video_type
-- ----------------------------
INSERT INTO `shop_video_type` VALUES ('1', '1', '门面', '1', '0', null, null, '000000-666666', null, null, null);

-- ----------------------------
-- Table structure for shop_word
-- ----------------------------
DROP TABLE IF EXISTS `shop_word`;
CREATE TABLE `shop_word` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) DEFAULT NULL COMMENT '门店编号',
  `type_id` int(11) DEFAULT NULL COMMENT '类型编号',
  `content` varchar(255) DEFAULT NULL COMMENT '内容',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='话术管理表';

-- ----------------------------
-- Records of shop_word
-- ----------------------------

-- ----------------------------
-- Table structure for shop_word_type
-- ----------------------------
DROP TABLE IF EXISTS `shop_word_type`;
CREATE TABLE `shop_word_type` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `shop_id` int(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL COMMENT '商品类型',
  `is_show` int(5) DEFAULT '1' COMMENT '1使用0禁用默认值1',
  `sorting` int(50) DEFAULT '0' COMMENT '排序',
  `type_id` int(50) DEFAULT NULL COMMENT '分级',
  `ico_img` varchar(100) DEFAULT NULL COMMENT '图标',
  `color` varchar(200) DEFAULT '000000-666666' COMMENT '字体渐变色',
  `keyword` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '关键词',
  `pc_color` varchar(100) DEFAULT NULL,
  `phone_img` varchar(100) DEFAULT NULL COMMENT '手机分类图标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='门店小视频的类型表';

-- ----------------------------
-- Records of shop_word_type
-- ----------------------------
INSERT INTO `shop_word_type` VALUES ('1', '1', '其他', '1', '0', null, null, '000000-666666', null, null, null);

-- ----------------------------
-- Table structure for t_label
-- ----------------------------
DROP TABLE IF EXISTS `t_label`;
CREATE TABLE `t_label` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) DEFAULT NULL COMMENT '门店编号',
  `label` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '标签内容',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='参考标签表';

-- ----------------------------
-- Records of t_label
-- ----------------------------
INSERT INTO `t_label` VALUES ('1', '1', '自信', '2020-07-28 13:54:32');
INSERT INTO `t_label` VALUES ('2', '1', '服务细心', '2020-08-27 13:54:49');
INSERT INTO `t_label` VALUES ('3', '1', '善良', '2020-07-28 13:55:14');
INSERT INTO `t_label` VALUES ('4', '1', '可爱', '2020-08-27 14:21:18');
INSERT INTO `t_label` VALUES ('5', '1', '数据', '2020-08-28 14:21:30');
INSERT INTO `t_label` VALUES ('6', '1', '我好', '2020-08-28 14:21:21');
INSERT INTO `t_label` VALUES ('7', '1', '大家好', '2020-08-26 14:21:33');
INSERT INTO `t_label` VALUES ('8', '1', '才是真好', '2020-08-26 14:21:24');
INSERT INTO `t_label` VALUES ('9', '1', '还行吧', '2020-08-26 14:21:38');
INSERT INTO `t_label` VALUES ('10', '1', '遗憾', '2020-08-28 14:21:27');
INSERT INTO `t_label` VALUES ('11', '1', '该', '2020-08-26 14:21:42');
INSERT INTO `t_label` VALUES ('12', '1', '撒旦发顺丰', '2020-08-28 16:25:34');
INSERT INTO `t_label` VALUES ('13', '1', '实打实打算·', '2020-08-28 16:27:40');
INSERT INTO `t_label` VALUES ('14', '1', '士大夫', '2020-08-29 11:12:31');
INSERT INTO `t_label` VALUES ('15', '7', '好的', null);
INSERT INTO `t_label` VALUES ('16', '1', '哈哈', null);
INSERT INTO `t_label` VALUES ('17', '8', '特价', null);
