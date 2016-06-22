/*
Navicat MySQL Data Transfer

Source Server         : localhost_3307
Source Server Version : 50520
Source Host           : localhost:3307
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2015-10-09 19:27:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for about
-- ----------------------------
DROP TABLE IF EXISTS `about`;
CREATE TABLE `about` (
  `id` varchar(255) CHARACTER SET utf8 NOT NULL,
  `about` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of about
-- ----------------------------
INSERT INTO `about` VALUES ('about_company', 'XXX菜园是沪上知名大型国有综合性食品产业集团——XX食品（集团）有限公司倾力推出的官方生鲜电商平台。XX菜园由XX食品集团所属XXX公司负责建设运营。致力于打造一个具有特色的、开放共享的、以人为本的社会化生鲜电商平台。矢志于成为一家用户满意、员工幸福、行业领先、贡献社会的创新型互联网企业。');
INSERT INTO `about` VALUES ('about_products', '产品来自新西兰、意大利、智利、澳大利亚、美国、南非、墨西哥、泰国、越南、菲律宾等近20个国家和地区。拥有总面积逾万亩的蔬果农场基地，为新品实验，品质管控，稳定的货源提供了完善的保证。根据生鲜食品的特殊性，独创了一套科学的分区冷链管理系统。根据产品性质不同，分冷冻区（-18度），冷藏区（0-10度），操作区（18-22度）三类冷库区域。');
INSERT INTO `about` VALUES ('about_services', '便捷达：同城极速配送，4小时内送达。便捷送：优惠多多，参与就有积分送。便捷付：支持货到付现金、POS刷卡、网上支付，得心应手。便捷换：无理由退换，不满意也可以退换。');

-- ----------------------------
-- Table structure for admintable
-- ----------------------------
DROP TABLE IF EXISTS `admintable`;
CREATE TABLE `admintable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adminname` varchar(255) CHARACTER SET utf8 NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `role` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `entrytime` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`,`adminname`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of admintable
-- ----------------------------
INSERT INTO `admintable` VALUES ('1', 'dage1', '123', 'Admin', '2015/2/1');
INSERT INTO `admintable` VALUES ('2', 'dage2', '123', 'Saler', '2015/1/1');

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `price` float NOT NULL,
  `author` varchar(255) CHARACTER SET utf8 NOT NULL,
  `publisher` varchar(255) CHARACTER SET ucs2 NOT NULL,
  `type` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('3', '正面管教', '18.9', '简·尼尔森', '京华出版社', '家教方法');
INSERT INTO `book` VALUES ('4', '你是最好的自己', '21.7', '杨杨,张皓宸', '湖南文艺出版社', '叛逆/成长');
INSERT INTO `book` VALUES ('5', '追风筝的人', '17.4', '卡勒德·胡赛尼', '上海人民出版社', '情感/其他 ');
INSERT INTO `book` VALUES ('9', 'safdsaf', '123', 'sadfasdf', 'asdfasdf', '23123');
INSERT INTO `book` VALUES ('10', '123', '123', '123', '123', '123');
INSERT INTO `book` VALUES ('11', 'sdfgdfs', '123', 'gsdfgsd', 'dafgasfd', 'adsfasdf');

-- ----------------------------
-- Table structure for coldknowledge
-- ----------------------------
DROP TABLE IF EXISTS `coldknowledge`;
CREATE TABLE `coldknowledge` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coldknowledge` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of coldknowledge
-- ----------------------------
INSERT INTO `coldknowledge` VALUES ('1', '从50片树叶中提取的能量可供一个苹果生长。');
INSERT INTO `coldknowledge` VALUES ('2', '梨树能够承受的温度低至－40摄氏度。');
INSERT INTO `coldknowledge` VALUES ('3', '古希腊诗人荷马在他的诗歌中几次提到梨。');
INSERT INTO `coldknowledge` VALUES ('4', '众所周知，李子的表皮具有通便作用。');
INSERT INTO `coldknowledge` VALUES ('5', '菠萝曾经十分稀有，被称为水果之王。');
INSERT INTO `coldknowledge` VALUES ('6', '百香果在微微皱起时最甜。');
INSERT INTO `coldknowledge` VALUES ('7', '一颗苹果树最多能结出果实达100年。');
INSERT INTO `coldknowledge` VALUES ('8', '平均每人每年吃65个苹果。');
INSERT INTO `coldknowledge` VALUES ('9', '西瓜的92％是水分！');
INSERT INTO `coldknowledge` VALUES ('10', '吃李子有助于体内铁的吸收。');
INSERT INTO `coldknowledge` VALUES ('11', '在印度南部的喀拉拉邦，婚礼上必须摆放椰子花卉。');
INSERT INTO `coldknowledge` VALUES ('12', '英国水兵曾靠吃酸橙预防坏血病。');
INSERT INTO `coldknowledge` VALUES ('13', '全世界上大约生长着10，000种苹果。');
INSERT INTO `coldknowledge` VALUES ('14', '一个苹果25％的体积都是空气。这也是它们为什么能在水中漂浮！');
INSERT INTO `coldknowledge` VALUES ('15', '如果你种下一颗柑橘种子，你有可能收获不止一颗柑橘树。');
INSERT INTO `coldknowledge` VALUES ('16', '挤压柠檬前先加热，可以挤压出更多的汁液。');
INSERT INTO `coldknowledge` VALUES ('17', '每年全世界生长了超过六千万吨的苹果。');
INSERT INTO `coldknowledge` VALUES ('18', '菠萝不是一个单果，它含有高达200个幼果集群。');
INSERT INTO `coldknowledge` VALUES ('19', '香蕉皮的内表面可用于打光皮鞋。');
INSERT INTO `coldknowledge` VALUES ('20', '没有什么词与柑橘(orange)押韵。');
INSERT INTO `coldknowledge` VALUES ('21', '正因为他们所喝的酸橙汁，英国水兵曾经被称为吃酸橙的人。');
INSERT INTO `coldknowledge` VALUES ('22', '研究苹果树生长的学科叫果树学。');
INSERT INTO `coldknowledge` VALUES ('23', '在澳大利亚第二受欢迎的芒果种类是“R2E2”！');
INSERT INTO `coldknowledge` VALUES ('24', '严格说来，柑橘属于浆果类。');
INSERT INTO `coldknowledge` VALUES ('25', '洗衣服时加入半杯柠檬汁可起到亮白作用。');
INSERT INTO `coldknowledge` VALUES ('26', '柑橘是世界上最常见的木本水果。');
INSERT INTO `coldknowledge` VALUES ('27', '百香果最早在巴西生长。');
INSERT INTO `coldknowledge` VALUES ('28', '成熟的柠檬树每年可产1，000到2，000个果实。');
INSERT INTO `coldknowledge` VALUES ('29', '每年可收获二百多亿个椰子！');
INSERT INTO `coldknowledge` VALUES ('30', '百香果的花是巴拉圭国花。');
INSERT INTO `coldknowledge` VALUES ('31', '日本李子，实际上起源于中国。');
INSERT INTO `coldknowledge` VALUES ('32', '两餐之间吃香蕉可帮助孕妇避免晨吐。');
INSERT INTO `coldknowledge` VALUES ('33', '在一些国家，猴子被训练用于采摘椰子！');
INSERT INTO `coldknowledge` VALUES ('34', '菠萝含有菠萝蛋白酶，用来防止冷冻啤酒变得混浊。');
INSERT INTO `coldknowledge` VALUES ('35', '苹果的抗氧化能力几乎是香蕉的5倍。');
INSERT INTO `coldknowledge` VALUES ('36', '李子在世界上除南极洲以外的大陆上都有生长。');
INSERT INTO `coldknowledge` VALUES ('37', '酸橙中不含脂肪、饱和脂肪、钠和胆固醇。');
INSERT INTO `coldknowledge` VALUES ('38', '草莓是属于蔷薇花科。');
INSERT INTO `coldknowledge` VALUES ('39', '苹果种子含有微量毒素，但不足以对人体造成危害。');
INSERT INTO `coldknowledge` VALUES ('40', '具有紫色果实的百香果品种是自复混肥的品种。');
INSERT INTO `coldknowledge` VALUES ('41', '柠檬的含糖量高于草莓。');
INSERT INTO `coldknowledge` VALUES ('42', '香蕉树是草本植物而不是木本植物。');
INSERT INTO `coldknowledge` VALUES ('43', '奇异果的另一个中文名字是杨桃（阳桃）。');
INSERT INTO `coldknowledge` VALUES ('44', '香蕉含有维生素B6，能调节血糖水平和你的心情！');
INSERT INTO `coldknowledge` VALUES ('45', '早期的探险家将西瓜作为供给水源。');
INSERT INTO `coldknowledge` VALUES ('46', '每5个澳大利亚人中，只有一个每天吃苹果。');
INSERT INTO `coldknowledge` VALUES ('47', '世界上三分之一的菠萝产自夏威夷。');
INSERT INTO `coldknowledge` VALUES ('48', '罗马人将草莓用于很多医疗方法。');
INSERT INTO `coldknowledge` VALUES ('49', '奇异果含有了用于软化肉的分子！');
INSERT INTO `coldknowledge` VALUES ('50', '未成熟的菠萝是有毒的。');

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_time` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `vegetable_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `comments` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES ('1', '2015-06-02', '精选智利蓝莓', 'zhangsan', 'zz@sina.com', '味道不错，很甜，好评！');
INSERT INTO `comments` VALUES ('2', '2015-06-03', '精选智利蓝莓', 'zhangsan', 'zz@sina.com', '再买一盒还是不错哈哈');
INSERT INTO `comments` VALUES ('3', '2015-06-03', '精选智利蓝莓', 'lisi', 'ls@sina.com', '看了评论不错，我也买一盒');
INSERT INTO `comments` VALUES ('4', '2015-05-01', '海南芒果（小台农）', 'wangwu', 'ww@sina.com', '真的味道好好啊，好喜欢啊');
INSERT INTO `comments` VALUES ('5', '2015-05-03', '海南芒果（小台农）', 'wangwu', 'ww@sina.com', '再卖10个，送人哈哈');
INSERT INTO `comments` VALUES ('9', '2015-06-06', '海南芒果（小台农）', 'zzz', 'zzz@sina.com', '爽');
INSERT INTO `comments` VALUES ('10', '2015-06-06', '海南芒果（小台农）', 'zzz', 'zzz@sina.com', '再来一盒\r\n');
INSERT INTO `comments` VALUES ('23', '2015-06-06', '百蔬乐 嫩菜豆', 'zzz', 'zzz@sina.com', '好好吃');
INSERT INTO `comments` VALUES ('24', '2015-06-06', '精选智力蓝莓', 'zzz', 'zzz@sina.com', '来买一个试试');
INSERT INTO `comments` VALUES ('25', '2015-06-11', '精选智力蓝莓', 'zzz', 'zzz@sina.com', '你好');
INSERT INTO `comments` VALUES ('26', '2015-06-13', '精选智力蓝莓', 'lisi', 'ls@sina.com', '买个尝尝看');
INSERT INTO `comments` VALUES ('27', '2015-10-02', '百蔬乐 嫩菜豆', 'zhangsan', 'zs@sina.com', '这个够新鲜我喜欢');
INSERT INTO `comments` VALUES ('28', '2015-10-07', '泰国 良姜', 'zhangsan', 'zs@sina.com', '能治百病，不错不错');
INSERT INTO `comments` VALUES ('29', '2015-10-08', '美国华盛顿甜脆红地厘蛇果', 'zhangsan', 'zs@sina.com', '苹果很好吃\r\n');

-- ----------------------------
-- Table structure for contact
-- ----------------------------
DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 NOT NULL,
  `subject` varchar(255) CHARACTER SET utf8 NOT NULL,
  `message` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of contact
-- ----------------------------
INSERT INTO `contact` VALUES ('1', 'XX公司', 'XX@XX.com', 'XXX.xxx.com', '订购产品', '我们想订购你们的产品，如果大批量购货能否给我们以一个批发价，公司福利价.请与我们的邮箱进行洽谈');
INSERT INTO `contact` VALUES ('4', '王经理', '王经理@sina.com', '王经理.XXcompany.com', '洽谈入股', '我想入股你们公司不知道有什么要求么');
INSERT INTO `contact` VALUES ('5', '哈哈', '哈哈', '哈哈', '哈哈', '哈哈');
INSERT INTO `contact` VALUES ('6', '嘻嘻', '嘻嘻', '嘻嘻', '嘻嘻', '嘻嘻');
INSERT INTO `contact` VALUES ('7', '测试1', '测试1', '测试1', '测试1', '测试1');
INSERT INTO `contact` VALUES ('8', 'asd', 'asdf', 'sadfas', 'asdfsdf', 'dfasfasdf');
INSERT INTO `contact` VALUES ('9', '百度', 'baidu@baidu.com', 'www.baidu.com', '公司订购', '我们需要你们的产品作为员工福利');

-- ----------------------------
-- Table structure for index_benefits
-- ----------------------------
DROP TABLE IF EXISTS `index_benefits`;
CREATE TABLE `index_benefits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `index_benefit` varchar(255) CHARACTER SET utf8 NOT NULL,
  `index_title` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of index_benefits
-- ----------------------------
INSERT INTO `index_benefits` VALUES ('1', '蔬菜中的纤维质可以促进身体的代谢功能，达到控制体重的目的。', '在这,你可以用便宜的价格买到每一种蔬果');
INSERT INTO `index_benefits` VALUES ('2', '蔬菜含有丰富的维生素且蔬菜中含有丰富的钾、钙、钠、铁质等碱性矿物质，不仅能平稳血液中的酸碱值，也是小朋友生长需要的营养素重要来源', '在这，你可以买到基本上你想买的所有种类的蔬果');
INSERT INTO `index_benefits` VALUES ('3', '多吃蔬菜，除了可延缓食物消化吸收的速率，更能健胃整肠，调整血液品质及身体体质。', '在这，你可以买到无公害无农药残留的有机蔬果');

-- ----------------------------
-- Table structure for ordersend
-- ----------------------------
DROP TABLE IF EXISTS `ordersend`;
CREATE TABLE `ordersend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 NOT NULL,
  `product_id` varchar(255) CHARACTER SET utf8 NOT NULL,
  `price` float NOT NULL,
  `countquantity` int(11) NOT NULL,
  `totalprice` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of ordersend
-- ----------------------------
INSERT INTO `ordersend` VALUES ('8', 'zzz', 'iv1', '20', '1', '20');
INSERT INTO `ordersend` VALUES ('9', 'zzz', 'iv3', '24', '1', '24');
INSERT INTO `ordersend` VALUES ('10', 'zzz', 'if4', '39', '1', '39');
INSERT INTO `ordersend` VALUES ('11', 'zzz', 'iv2', '22', '1', '22');
INSERT INTO `ordersend` VALUES ('12', 'zzz', 'iv5', '35', '1', '35');
INSERT INTO `ordersend` VALUES ('15', 'zhangsan', 'if2', '88', '1', '88');
INSERT INTO `ordersend` VALUES ('16', 'zhangsan', 'iv6', '12', '1', '12');
INSERT INTO `ordersend` VALUES ('17', 'asdfasdfasdfasf', 'iv2', '22', '1', '22');

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` varchar(255) CHARACTER SET utf8 NOT NULL,
  `vegetable_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `type` varchar(255) CHARACTER SET utf8 NOT NULL,
  `price` float NOT NULL,
  `photo_address` varchar(255) CHARACTER SET utf8 NOT NULL,
  `vegetable_description` varchar(255) CHARACTER SET utf8 NOT NULL,
  `vegetable_benefit` varchar(255) CHARACTER SET utf8 NOT NULL,
  `promulgator` varchar(255) CHARACTER SET utf8 NOT NULL,
  `release_time` varchar(255) CHARACTER SET utf8 NOT NULL,
  `response` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('df1', '海南芒果（小台农）', '国产水果', '25', 'images/df1(Blog).jpg', '台农芒亦称“台龙芒”，是金煌和爱文芒果的杂交，兼具爱文和金煌芒果的优点。果体鲜亮金黄，果肉细腻多汁，入口滑嫩，有一股淡淡的清香。富含维生素A，C等多种营养素，素有“热带果王”之美称。', '芒果有“热带水果之王”的美称，营养价值高。超高维生素A含量', 'Admin', '2015-6-2', '0');
INSERT INTO `products` VALUES ('df2', '南汇8424西瓜', '国产水果', '58', 'images/df2(Blog).jpg', '精选正宗的南汇8424西瓜，炎炎夏日中带来一丝清凉与水润，皮薄肉红，瓜瓤爽脆多汁，鲜甜可口，是真正的上海本地好西瓜。', '零胆固醇，零脂肪,富含维生素A,B1,B2,C等物质', 'Admin', '2015-6-2', '0');
INSERT INTO `products` VALUES ('df3', '四川安岳柠檬', '国产水果', '20', 'images/df3(Blog).jpg', '四川安岳鲜香黄柠檬，个头较大，色泽鲜亮滋润，果蒂稍青、新鲜完整，散发浓郁柠檬清香，口感浓酸爽口，汁多肉鲜，富含维生素C和柠檬酸，生津止渴，开胃护肤，老少皆宜。', '富含维生素C和柠檬酸，生津止渴，开胃护肤', 'Admin', '2015-6-2', '0');
INSERT INTO `products` VALUES ('df4', '江西赣南脐橙', '国产水果', '24', 'images/df4(Blog).jpg', '由于赣南得天独厚的土壤条件，所生产的脐橙果大形正，橙红鲜艳，光洁美观，肉质脆嫩、化渣，风味浓甜芳香，含果汁饱满。', '橙红鲜艳，浓甜芳香', 'Admin', '2015-6-2', '0');
INSERT INTO `products` VALUES ('df5', '新疆库尔勒香梨', '国产水果', '88', 'images/df5(Blog).jpg', '新疆香梨，是新疆极富盛名的果品之一，当地人称其为“奶西姆提”，意为喷香的梨子。新疆香梨香气浓郁，皮非常薄，肉嫩而脆，甘甜多汁，是润秋燥，生津止渴佳品。', '皮非常薄，肉嫩而脆，甘甜多汁，是润秋燥，生津止渴佳品。', 'Admin', '2015-6-2', '0');
INSERT INTO `products` VALUES ('df6', '云南夏黑葡萄', '国产水果', '49', 'images/df6(Blog).jpg', '夏黑葡萄，果粒圆润整齐，果皮厚且脆，果肉硬脆，皮肉紧贴，汁多无籽，一口一个，酸甜可口，可不吐皮，是我国市场上超好吃的葡萄品种之一。', '肠胃好助手,果皮黑亮，颗粒紧实，浑圆饱满', 'Admin', '2015-6-2', '0');
INSERT INTO `products` VALUES ('dv1', '有机菠菜', '国产蔬菜', '12', 'images/dv1(Blog).jpg', '品质优良的新鲜菠菜，保持了最原始的味道。可以翻炒，蒸煮。它们略带苦味，经常被用来制作沙拉。', '精选自有机农场 带来更多健康保障', 'Admin', '2015-6-2', '0');
INSERT INTO `products` VALUES ('dv2', '有机番茄', '国产蔬菜', '22', 'images/dv2(Blog).jpg', '来自上海专业有机农场Shanghai Organics，承诺无农药污染、使用天然化肥、健康好口味，保证您的身体健康。有机西红柿营养价值比普通西红柿高出许多，含有丰富的胡萝卜素，膳食纤维，维生素C和钾。', '果皮极薄 滋味浓郁 色泽红艳', 'Admin', '2015-6-2', '0');
INSERT INTO `products` VALUES ('dv3', '有机黄洋葱', '国产蔬菜', '24', 'images/dv3(Blog).jpg', '不同于紫洋葱的辛辣，黄洋葱风味虽浓但偏甜，水分多，适宜炸洋葱圈或拌沙拉食用。也可以搭配番茄一起切片生食，脆脆的口感，味道和谐极了，酸甜清爽。', '不同于紫洋葱的辛辣，更多甜润', 'Admin', '2015-6-2', '0');
INSERT INTO `products` VALUES ('dv4', '有机灰树花', '国产蔬菜', '12', 'images/dv4(Blog).jpg', '灰树花又称舞茸。来自上海有机农场的优质灰树花，气味清香，肉质柔嫩，味如鸡丝，脆似玉兰，营养价值丰富，煲汤、清炒、凉拌皆适宜，是一种不可多得的药食两用菌', '药食两用菌，美味营养', 'Admin', '2015-6-2', '0');
INSERT INTO `products` VALUES ('dv5', '有机土豆', '国产蔬菜', '20', 'images/dv5(Blog).jpg', '精心挑选专业有机农场的绿色食品，承诺无农药污染、使用天然化肥、健康好口味，保证您的身体健康。土豆营养价值丰富，碳水化合物含量极高，是您补充热量的最佳选择！它还具有宽畅通便、利水消肿、降糖降脂、美容养颜等功效。', '绿色食品 健康好口味', 'Admin', '2015-6-2', '0');
INSERT INTO `products` VALUES ('dv6', '有机油麦菜', '国产蔬菜', '18', 'images/dv6(Blog).jpg', '油麦菜，又名莜麦菜，有的地方又叫苦菜，口感极为鲜嫩、清香、具有独特风味，含有大量维生素和大量钙、铁、蛋白质、脂肪、维生素A、维生素B1、维生素B2等营养成分，是生食蔬菜中的上品，有“凤尾”之称。', '味微苦 可生食 有凤尾美称', 'Admin', '2015-6-2', '0');
INSERT INTO `products` VALUES ('if1', '精选智力蓝莓', '进口水果', '79', 'images/if1(Blog).jpg', '精选蓝莓，个大甜脆，质量上乘。蓝莓意为蓝色浆果之意，蓝莓果实中含有很多抗氧化物，营养丰盛。', '蓝莓营养丰富，不仅富含常规营养成分，而且还含有极为丰富的黄酮类和多糖类化合物，因此又被称为“水果皇后”和“浆果之王”。', 'Admin', '2015-6-2', '0');
INSERT INTO `products` VALUES ('if2', '美国华盛顿甜脆红地厘蛇果', '进口水果', '88', 'images/if2(Blog).jpg', '高等级红地厘蛇果，颜色红润，味道香甜。 红蛇果是一种营养高，口味佳的水果。红蛇果含有果糖，葡萄糖，蔗糖，多种维生素，胡罗卜素，多种矿物质，其中果胶和钾居水果类之首。适合所有人群，号称“记忆之果”气味馥郁芳香，口感甘美。', '营养高，口味佳。含有果糖，葡萄糖，蔗糖，多种维生素，胡罗卜素，多种矿物质，其中果胶和钾居水果类之首。', 'Admin', '2015-6-2', '0');
INSERT INTO `products` VALUES ('if3', '泰国金枕头榴莲', '进口水果', '108', 'images/if3(Blog).jpg', '泰国金枕头榴莲为当季新鲜到货，果粒更多，味道更甜，肉厚软滑。富含多种维生素，7种人体需要的氨基酸和钙磷铁镁锌等矿物质。天天果园精选榴莲中的优质品种，其味道没有其它品种那么强烈，适合榴莲初尝者', '水果之王榴莲，因为它又香又甜；吃过的人都会抵挡不住对它的留恋而情深绵绵。说它臭，那是不懂的人才会说。', 'Admin', '2015-6-2', '0');
INSERT INTO `products` VALUES ('if4', '新奇士美国瓦伦西亚橙', '进口水果', '39', 'images/if4(Blog).jpg', '精选新奇士，浓郁的橙味，经典的酸甜口感比例。得天独厚的自然馨香，充沛的VC和超低的卡路里，带给你酸爽初夏。', '橙子含有丰富的维生素C，β-胡萝卜素，柠檬酸，维生素A，B族维生素，烯类，醇类，醛类等营养素。', 'Admin', '2015-6-2', '0');
INSERT INTO `products` VALUES ('if5', '越南红心火龙果', '进口水果', '69', 'images/if5(Blog).jpg', '今年我最“红”心火龙果不仅果皮鲜红，果肉颜色也呈鲜艳的玫瑰红，给人娇艳欲滴的感觉。甜而不腻，且水分更多，口感好，清淡中透着兰花芳香，回味久，细细品味，越嚼越甜。', '富含抗氧化剂，膳食纤维，钙磷铁，维生素，超低卡路里。', 'Admin', '2015-6-2', '0');
INSERT INTO `products` VALUES ('if6', '智利有籽红提', '进口水果', '79', 'images/if6(Blog).jpg', '提子是世界上最古老的蔬果之一，它的果肉、果皮，甚至核，都蕴藏着丰富的营养素，可谓全身都是宝。精选新鲜上市的智利有籽红提，清脆爽口，皮薄肉厚。皮很容易剥，但是建议您“吃提子不吐提子皮”，因为提子的大部分植物营养素都包含在果皮内。', '抹不去的“靓丽”，惹人垂涎的美艳。挑动你每一根味蕾神经。', 'Admin', '2015-6-2', '0');
INSERT INTO `products` VALUES ('iv1', '百蔬乐 嫩菜豆', '进口蔬菜', '20', 'images/iv1(Blog).jpg', '百蔬乐冷冻菜豆，用冷冻方式锁住美味，储存方便、食用方便，极适用于做沙拉和小菜。', '翠绿鲜嫩的开胃菜', 'Admin', '2015-6-2', '0');
INSERT INTO `products` VALUES ('iv2', '百蔬乐 甜玉米粒', '进口蔬菜', '22', 'images/iv2(Blog).jpg', '百蔬乐甜玉米粒，用冷冻方式锁住美味，储存、食用方便。法国进口，精选优质玉米粒制成，口感清爽，营养丰富。', '口感清爽香甜', 'Admin', '2015-6-2', '0');
INSERT INTO `products` VALUES ('iv3', '百蔬乐 豌豆', '进口蔬菜', '24', 'images/iv3(Blog).jpg', '百蔬乐冷冻豌豆，用冷冻方式锁住美味，储存方便、食用方便，美味随时享。此豌豆颗粒较大，适宜做配菜。', '美味随时享', 'Admin', '2015-6-2', '0');
INSERT INTO `products` VALUES ('iv4', '百蔬乐 椰菜(西兰花)', '进口蔬菜', '28', 'images/iv4(Blog).jpg', '百蔬乐冷冻椰菜，用冷冻方式锁住美味，储存方便、食用方便，健康美味。', '健康美味随享', 'Admin', '2015-6-2', '0');
INSERT INTO `products` VALUES ('iv5', '墨西哥 牛油果', '进口蔬菜', '35', 'images/iv5(Blog).jpg', ' 这种奶油状水果可用来制成果汁，切成碎片拌入虾和小生菜沙拉里；加入柠檬生吃；或和水果搅拌在一起，制成营养的婴儿食品。它具有近20种必需营养元素，包括膳食纤维，钾，维他命E,B和叶酸。也可作为营养促进剂，确保身体吸收更多的脂溶性营养物质。', '细腻柔滑 味道甘美', 'Admin', '2015-6-2', '0');
INSERT INTO `products` VALUES ('iv6', '泰国 良姜', '进口蔬菜', '12', 'images/iv6(Blog).jpg', ' 良姜的功效与作用是消食止痛,温胃散寒,治脘腹冷痛,胃寒呕吐,嗳气吞酸。良姜的食用方法有僵蚕良姜茶,香附良姜鸡肉汤,良姜胡椒猪肚汤,良姜粥,良姜香附茶,肉桂良姜茶等。', '兼具食用于药用功效', 'Admin', '2015-6-2', '0');

-- ----------------------------
-- Table structure for register
-- ----------------------------
DROP TABLE IF EXISTS `register`;
CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of register
-- ----------------------------

-- ----------------------------
-- Table structure for shoppingcart
-- ----------------------------
DROP TABLE IF EXISTS `shoppingcart`;
CREATE TABLE `shoppingcart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 NOT NULL,
  `product_id` varchar(255) CHARACTER SET utf8 NOT NULL,
  `price` float NOT NULL,
  `count` int(11) NOT NULL,
  `totalprice` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of shoppingcart
-- ----------------------------
INSERT INTO `shoppingcart` VALUES ('8', 'zzz', 'iv1', '20', '1', '20');
INSERT INTO `shoppingcart` VALUES ('9', 'zzz', 'iv3', '24', '1', '24');
INSERT INTO `shoppingcart` VALUES ('10', 'zzz', 'if4', '39', '1', '39');
INSERT INTO `shoppingcart` VALUES ('11', 'zzz', 'iv2', '22', '1', '22');
INSERT INTO `shoppingcart` VALUES ('12', 'zzz', 'iv5', '35', '1', '35');
INSERT INTO `shoppingcart` VALUES ('14', 'lisi', 'iv2', '22', '1', '22');
INSERT INTO `shoppingcart` VALUES ('15', 'lisi', 'df6', '49', '1', '49');
INSERT INTO `shoppingcart` VALUES ('16', 'zhangsan', 'id=', '0', '1', '0');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 NOT NULL,
  `nickname` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `fullname` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `qqnumber` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `interest` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `carrer` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `companyname` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `position` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `education` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`,`username`,`email`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'zhangsan', '202CB962AC59075B964B07152D234B70', 'zs@sina.com', '张三', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `user` VALUES ('2', 'lisi', '202CB962AC59075B964B07152D234B70', 'ls@sina.com', '123', '123', 'man', '132', '132', '123', '132', '123', '132', '132', 'bachelor');
INSERT INTO `user` VALUES ('3', 'wangwu', '202CB962AC59075B964B07152D234B70', 'ww@sina.com', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `user` VALUES ('4', 'zhaoliu', '202CB962AC59075B964B07152D234B70', 'zz@sina.com', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `user` VALUES ('6', 'sadfd', '546040820A24E73822C2D297515F65A4', '123@sina.com', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `user` VALUES ('7', 'yjj', '7FA08E5DE310679D3F046347C80A1BC1', 'yjj@yjj.com', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `user` VALUES ('8', 'aa', '4124BC0A9335C27F086F24BA207A4912', 'aa@aa.com', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `user` VALUES ('9', 'yiersan', '81DC9BDB52D04DC20036DBD8313ED055', 'yes@sina.com', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('10', 'usernamesignup', 'CA8BAD283F1D42CF0F30FDF616FB523F', 'emailsignup', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('11', 'username', 'D440AED189A13FF970DAC7E7E8F987B2', 'email', 'nickname', 'phone', 'sex', 'fullname', 'country', 'QQNumber', 'interest', 'career', 'companyname', 'position', 'education');
INSERT INTO `user` VALUES ('12', 'zzz', 'F3ABB86BD34CF4D52698F14C0DA1DC60', 'zzz@sina.com', '1', '1', 'man', '1', '1', '1', '1', '1', '1', '1', 'elementary');
INSERT INTO `user` VALUES ('14', '张三', 'F3ABB86BD34CF4D52698F14C0DA1DC60', 'zhangsan@sina.com', '贝尔格里尔斯', '123', 'man', '春哥', '中国', '123123', '毁灭地球', '无', '无', '无', 'elementary');
INSERT INTO `user` VALUES ('15', '你好啊', '202CB962AC59075B964B07152D234B70', '你好啊@sina.com', '你好啊', '12314124123', 'man', '你好啊', '你好啊', '你好啊', '你好啊', '你好啊', '你好啊', '你好啊', 'doctor');
INSERT INTO `user` VALUES ('16', '123', '202CB962AC59075B964B07152D234B70', '123@s', '123', '132123', 'man', '123', '123', '123', '123', '123', '123', '132', 'elementary');
INSERT INTO `user` VALUES ('17', '测试用户1', 'CC17C30CD111C7215FC8F51F8790E0E1', 'test@sina.com', '测试', '110', 'man', '测试专员1', '中国', '100', 'Jogging', '测试员', '果蔬公司', '测试员', 'doctor');
INSERT INTO `user` VALUES ('18', 'sfdasdf', 'asdfasdfasdf@sina.com', 's123', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('19', 'adfasdfasdf', 'asdfasdfasdssf@sina.com', 's123', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('20', 'woshiceshi', 'C63539E85D07BDF2B55DBC9BCCA20FEE', 'wscs@sohu.com', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('21', 'woceshi', '81DC9BDB52D04DC20036DBD8313ED055', 'wcs@126.com', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('22', '1234123', '81DC9BDB52D04DC20036DBD8313ED055', '1234123@qq.com', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('23', 'nihaome', '81DC9BDB52D04DC20036DBD8313ED055', 'nihaome@qq.com', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('24', 'detail', '81DC9BDB52D04DC20036DBD8313ED055', 'detail@qq.com', 'detail', '123124214', 'man', 'detail', 'detail', 'detail', 'detail', null, 'detail', 'detail', 'doctor');
INSERT INTO `user` VALUES ('25', 'sadfsdfsadf', '202CB962AC59075B964B07152D234B70', 'asdfasd@qq.com', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('26', 'asdfasdfasdfasf', '202CB962AC59075B964B07152D234B70', 'asdfas@qq.com', 'sadf', '23123', 'man', '213', '123123123', '123123', '123123', null, '123123', '213123123', 'elementary');
