/*
 Navicat Premium Data Transfer

 Source Server         : exam
 Source Server Type    : MySQL
 Source Server Version : 50644
 Source Host           : 34.92.131.32:3306
 Source Schema         : exam

 Target Server Type    : MySQL
 Target Server Version : 50644
 File Encoding         : 65001

 Date: 15/11/2020 19:34:42
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for dictionary
-- ----------------------------
DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE `dictionary`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `p_id` int(11) NOT NULL,
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `en_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cn_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `attribute1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `attribute2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `attribute3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_dictionary_dictionary_1`(`p_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dictionary
-- ----------------------------
INSERT INTO `dictionary` VALUES (1, 0, '/', '/', 'home', '根路径', '', '打撒', '是', '手打', NULL, NULL);
INSERT INTO `dictionary` VALUES (2, 1, '根-1', '/-数据抓取管理', '安尔碘无撒', '数据抓取管理', 'false', '收到阿萨德', '4646', '打撒', '打撒按时按时打撒阿萨德sad', 'yes');
INSERT INTO `dictionary` VALUES (3, 1, '/-1', '/-阿斯顿撒多', 'Data scraping management', '阿斯顿撒多', 'false', '46456', '', '阿萨德按时', '', 'yes');

-- ----------------------------
-- Table structure for personnel
-- ----------------------------
DROP TABLE IF EXISTS `personnel`;
CREATE TABLE `personnel`  (
  `number` int(11) NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `class_subject` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `roles` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`number`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of personnel
-- ----------------------------
INSERT INTO `personnel` VALUES (1100, '张三', '4', '000000', '管理员');
INSERT INTO `personnel` VALUES (1101, '王五', '计科2班', '000000', '老师');
INSERT INTO `personnel` VALUES (1102, '李四', '计科2班', '000000', '学生');

-- ----------------------------
-- Table structure for question_bank
-- ----------------------------
DROP TABLE IF EXISTS `question_bank`;
CREATE TABLE `question_bank`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `topice` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `option_a` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `option_b` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `option_c` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `option_d` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `answer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `score` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `question_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of question_bank
-- ----------------------------
INSERT INTO `question_bank` VALUES (6, '栈和队列的共同特点是(      )。', '只允许在端点处插入和删除元素', '都是先进后出', '都是先进先出', '没有共同点', 'A', '3', '单选题');
INSERT INTO `question_bank` VALUES (7, '用链接方式存储的队列，在进行插入运算时(   )', '仅修改头指针', '头、尾指针都要修改', '仅修改尾指针', '头、尾指针可能都要修改', 'D', '3', '单选题');
INSERT INTO `question_bank` VALUES (8, '以下数据结构中哪一个是非线性结构？(   )', '队列', '栈', '线性表', '二叉树', 'D', '3', '单选题');
INSERT INTO `question_bank` VALUES (9, '设有一个二维数组A[m][n]，假设A[0][0]存放位置在644(10)，A[2][2]存放位置在676(10)，每个元素占一个空间，问A[3][3](10)存放在什么位置？脚注(10)表示用10进制表示', '688', '678', '692 ', '696', 'C', '3', '单选题');
INSERT INTO `question_bank` VALUES (10, '树最适合用来表示(      )', '有序数据元素', '无序数据元素', '元素之间具有分支层次关系的数据', '元素之间无联系的数据', 'C', '3', '单选题');
INSERT INTO `question_bank` VALUES (11, '若有18个元素的有序表存放在一维数组A[19]中，第一个元素放A[1]中，现进行二分查找，则查找A［3］的比较序列的下标依次为(      )', ' 1，2，3', '9，5，2，3', ' 9，5，3', '9，4，2，3', 'D', '3', '单选题');
INSERT INTO `question_bank` VALUES (12, '对n个记录的文件进行快速排序，所需要的辅助存储空间大致为', 'O（1）', 'O（n）', 'O（1og2n）', 'O（n2）', 'C', '3', '单选题');
INSERT INTO `question_bank` VALUES (13, '对于线性表（7，34，55，25，64，46，20，10）进行散列存储时，若选用H（K）=K %9作为散列函数，则散列地址为1的元素有（   ）个，', '1', '2', '3', '4', 'D', '3', '单选题');
INSERT INTO `question_bank` VALUES (14, '设有6个结点的无向图，该图至少应有(      )条边才能确保是一个连通图。', '5', '6', '7', '8', 'A', '3', '单选题');
INSERT INTO `question_bank` VALUES (15, '通常从四个方面评价算法的质量：_________、_________、_________和_________。', NULL, NULL, NULL, NULL, '正确性   易读性   强壮性   高效率', '10', '主观题');
INSERT INTO `question_bank` VALUES (16, '一个算法的时间复杂度为(n3+n2log2n+14n)/n2，其数量级表示为________。', NULL, NULL, NULL, NULL, 'O(n)', '10', '主观题');
INSERT INTO `question_bank` VALUES (17, '假定一棵树的广义表表示为A（C，D（E，F，G），H（I，J）），则树中所含的结点数为_¬¬¬¬_________个，树的深度为___________，树的度为_________。', NULL, NULL, NULL, NULL, '9    3    3', '10', '主观题');
INSERT INTO `question_bank` VALUES (18, '后缀算式9 2 3 +- 10 2 / -的值为__________。中缀算式（3+4X）-2Y/3对应的后缀算式为_______________________________。', NULL, NULL, NULL, NULL, '-1      3 4 X * + 2 Y * 3 / -', '10', '主观题');
INSERT INTO `question_bank` VALUES (19, '若用链表存储一棵二叉树时，每个结点除数据域外，还有指向左孩子和右孩子的两个指针。在这种存储结构中，n个结点的二叉树共有________个指针域，其中有________个指针域是存放了地址，有________________个指针是空指针。', NULL, NULL, NULL, NULL, '2n   n-1     n+1', '10', '主观题');
INSERT INTO `question_bank` VALUES (20, '对于一个具有n个顶点和e条边的有向图和无向图，在其对应的邻接表中，所含边结点分别有_______个和________个。', NULL, NULL, NULL, NULL, 'e    2e', '10', '主观题');
INSERT INTO `question_bank` VALUES (21, 'AOV网是一种___________________的图。', NULL, NULL, NULL, NULL, '有向无回路', '10', '主观题');
INSERT INTO `question_bank` VALUES (22, '在一个具有n个顶点的无向完全图中，包含有________条边，在一个具有n个顶点的有向完全图中，包含有________条边', NULL, NULL, NULL, NULL, 'n(n-1)/2     n(n-1)', '10', '主观题');
INSERT INTO `question_bank` VALUES (23, '假定一个线性表为(12,23,74,55,63,40)，若按Key % 4条件进行划分，使得同一余数的元素成为一个子表，则得到的四个子表分别为____________________________、___________________、_______________________和__________________________。', NULL, NULL, NULL, NULL, '（12，40）    （  ）   （74）   （23,55，63）', '10', '主观题');
INSERT INTO `question_bank` VALUES (24, '向一棵B_树插入元素的过程中，若最终引起树根结点的分裂，则新树比原树的高度___________。', NULL, NULL, NULL, NULL, '增加1', '10', '主观题');
INSERT INTO `question_bank` VALUES (25, '	在堆排序的过程中，对任一分支结点进行筛运算的时间复杂度为________，整个堆排序过程的时间复杂度为________。', NULL, NULL, NULL, NULL, 'O(log2n)   O(nlog2n)', '10', '主观题');
INSERT INTO `question_bank` VALUES (26, '在快速排序、堆排序、归并排序中，_________排序是稳定的。', NULL, NULL, NULL, NULL, '归并', '10', '主观题');
INSERT INTO `question_bank` VALUES (27, '下面关于线性表的叙述错误的是（   ）。', '线性表采用顺序存储必须占用一片连续的存储空间', '线性表采用链式存储不必占用一片连续的存储空间', '线性表采用链式存储便于插入和删除操作的实现', '线性表采用顺序存储便于插入和删除操作的实现', 'D', '3', '单选题');
INSERT INTO `question_bank` VALUES (28, '设哈夫曼树中的叶子结点总数为m，若用二叉链表作为存储结构，则该哈夫曼树中总共有（  ）个空指针域', '2m-1', '2m', '2m+1', '4m', 'B', '3', '单选题');
INSERT INTO `question_bank` VALUES (29, '设顺序循环队列Q[0：M-1]的头指针和尾指针分别为F和R，头指针F总是指向队头元素的前一位置，尾指针R总是指向队尾元素的当前位置，则该循环队列中的元素个数为（  ）', 'R-F', ' F-R', '(R-F+M)％M', '(F-R+M)％M', 'C', '3', '单选题');
INSERT INTO `question_bank` VALUES (30, '设某棵二叉树的中序遍历序列为ABCD，前序遍历序列为CABD，则后序遍历该二叉树得到序列为（   ）。', 'BADC', 'BCDA', 'CDAB', 'CBDA', 'A', '3', '单选题');
INSERT INTO `question_bank` VALUES (31, '设某完全无向图中有n个顶点，则该完全无向图中有（  ）条边。', 'n(n-1)/2', 'n(n-1)', 'n2 ', 'n2-1', 'A', '3', '单选题');
INSERT INTO `question_bank` VALUES (32, '设某棵二叉树中有2000个结点，则该二叉树的最小高度为（  ）。', '9', '10', '11', '12', 'C', '3', '单选题');
INSERT INTO `question_bank` VALUES (33, '设某有向图中有n个顶点，则该有向图对应的邻接表中有（  ）个表头结点。', ' n-1', 'n', 'n+1', '2n-1', 'B', '3', '单选题');
INSERT INTO `question_bank` VALUES (34, '设一组初始记录关键字序列(5，2，6，3，8)，以第一个记录关键字5为基准进行一趟快速排序的结果为（  ）。', '2，3，5，8，6', '3，2，5，8，6', '3，2，5，6，8', '2，3，6，5，8', 'C', '3', '单选题');
INSERT INTO `question_bank` VALUES (35, '用链接方式存储的队列，在进行插入运算时(   )', '只允许在端点处插入和删除元素', '头、尾指针都要修改 ', '都是先进先出', '头、尾指针可能都要修改', 'ABC', '5', '多选题');
INSERT INTO `question_bank` VALUES (36, '用链接方式存储的队列，在进行插入运算时(   )', '只允许在端点处插入和删除元素', '头、尾指针都要修改 ', '都是先进先出', '头、尾指针可能都要修改', 'ABC', '5', '多选题');
INSERT INTO `question_bank` VALUES (37, '用链接方式存储的队列，在进行插入运算时(   )', '只允许在端点处插入和删除元素', '头、尾指针都要修改 ', '都是先进先出', '头、尾指针可能都要修改', 'ABC', '5', '多选题');
INSERT INTO `question_bank` VALUES (38, '用链接方式存储的队列，在进行插入运算时(   )', '只允许在端点处插入和删除元素', '头、尾指针都要修改 ', '都是先进先出', '头、尾指针可能都要修改', 'ABC', '5', '多选题');
INSERT INTO `question_bank` VALUES (39, '用链接方式存储的队列，在进行插入运算时(   )', '只允许在端点处插入和删除元素', '头、尾指针都要修改 ', '都是先进先出', '头、尾指针可能都要修改', 'ABC', '5', '多选题');
INSERT INTO `question_bank` VALUES (40, '用链接方式存储的队列，在进行插入运算时(   )', '只允许在端点处插入和删除元素', '头、尾指针都要修改 ', '都是先进先出', '头、尾指针可能都要修改', 'ABC', '5', '多选题');

-- ----------------------------
-- Table structure for test_paper
-- ----------------------------
DROP TABLE IF EXISTS `test_paper`;
CREATE TABLE `test_paper`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_id` int(11) NULL DEFAULT NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `update_id` int(11) NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  `option_1` int(255) NULL DEFAULT NULL,
  `option_2` int(255) NULL DEFAULT NULL,
  `option_3` int(255) NULL DEFAULT NULL,
  `option_4` int(255) NULL DEFAULT NULL,
  `option_5` int(255) NULL DEFAULT NULL,
  `option_6` int(255) NULL DEFAULT NULL,
  `option_7` int(255) NULL DEFAULT NULL,
  `option_8` int(255) NULL DEFAULT NULL,
  `option_9` int(255) NULL DEFAULT NULL,
  `option_10` int(255) NULL DEFAULT NULL,
  `option_11` int(255) NULL DEFAULT NULL,
  `option_12` int(255) NULL DEFAULT NULL,
  `option_13` int(255) NULL DEFAULT NULL,
  `option_14` int(255) NULL DEFAULT NULL,
  `option_15` int(255) NULL DEFAULT NULL,
  `options_1` int(255) NULL DEFAULT NULL,
  `options_2` int(255) NULL DEFAULT NULL,
  `options_3` int(255) NULL DEFAULT NULL,
  `options_4` int(255) NULL DEFAULT NULL,
  `options_5` int(255) NULL DEFAULT NULL,
  `subjective_1` int(255) NULL DEFAULT NULL,
  `subjective_2` int(255) NULL DEFAULT NULL,
  `subjective_3` int(255) NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `total_score` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of test_paper
-- ----------------------------
INSERT INTO `test_paper` VALUES (1, 1102, '2020-11-07 07:00:16', 1101, '2020-11-15 05:00:59', 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, '批阅', 12);
INSERT INTO `test_paper` VALUES (2, 1102, '2020-11-15 04:18:50', 1101, '2020-11-15 05:08:11', 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, '批阅', 6);
INSERT INTO `test_paper` VALUES (3, 1102, '2020-11-15 04:29:17', NULL, NULL, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, '交卷', 6);
INSERT INTO `test_paper` VALUES (4, 1102, '2020-11-15 05:13:13', NULL, NULL, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, '创建', NULL);

-- ----------------------------
-- Table structure for test_question
-- ----------------------------
DROP TABLE IF EXISTS `test_question`;
CREATE TABLE `test_question`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tp_id` int(11) NOT NULL,
  `lib_id` int(11) NULL DEFAULT NULL,
  `libanwser` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `useranwser` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_id` int(11) NULL DEFAULT NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `update_id` int(11) NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  `grade` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `machine_grade` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `machine_date` datetime(0) NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 93 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of test_question
-- ----------------------------
INSERT INTO `test_question` VALUES (1, 1, 27, 'D', 'A', 1102, '2020-11-07 07:00:16', NULL, '2020-11-15 04:18:27', '0', NULL, NULL, '交卷');
INSERT INTO `test_question` VALUES (2, 1, 11, 'D', 'A', 1102, '2020-11-07 07:00:16', NULL, '2020-11-15 04:18:27', '0', NULL, NULL, '交卷');
INSERT INTO `test_question` VALUES (3, 1, 7, 'D', 'A', 1102, '2020-11-07 07:00:16', NULL, '2020-11-15 04:18:28', '0', NULL, NULL, '交卷');
INSERT INTO `test_question` VALUES (4, 1, 34, 'C', 'C', 1102, '2020-11-07 07:00:16', NULL, '2020-11-15 04:18:28', '3', NULL, NULL, '交卷');
INSERT INTO `test_question` VALUES (5, 1, 6, 'A', 'C', 1102, '2020-11-07 07:00:16', NULL, '2020-11-15 04:18:28', '0', NULL, NULL, '交卷');
INSERT INTO `test_question` VALUES (6, 1, 31, 'A', 'A', 1102, '2020-11-07 07:00:16', NULL, '2020-11-15 04:18:28', '3', NULL, NULL, '交卷');
INSERT INTO `test_question` VALUES (7, 1, 8, 'D', 'B', 1102, '2020-11-07 07:00:16', NULL, '2020-11-15 04:18:28', '0', NULL, NULL, '交卷');
INSERT INTO `test_question` VALUES (8, 1, 13, 'D', 'A', 1102, '2020-11-07 07:00:16', NULL, '2020-11-15 04:18:28', '0', NULL, NULL, '交卷');
INSERT INTO `test_question` VALUES (9, 1, 33, 'B', 'A', 1102, '2020-11-07 07:00:16', NULL, '2020-11-15 04:18:28', '0', NULL, NULL, '交卷');
INSERT INTO `test_question` VALUES (10, 1, 29, 'C', 'C', 1102, '2020-11-07 07:00:16', NULL, '2020-11-15 04:18:29', '3', NULL, NULL, '交卷');
INSERT INTO `test_question` VALUES (11, 1, 14, 'A', 'B', 1102, '2020-11-07 07:00:16', NULL, '2020-11-15 04:18:29', '0', NULL, NULL, '交卷');
INSERT INTO `test_question` VALUES (12, 1, 30, 'A', 'C', 1102, '2020-11-07 07:00:16', NULL, '2020-11-15 04:18:29', '0', NULL, NULL, '交卷');
INSERT INTO `test_question` VALUES (13, 1, 28, 'B', 'C', 1102, '2020-11-07 07:00:16', NULL, '2020-11-15 04:18:29', '0', NULL, NULL, '交卷');
INSERT INTO `test_question` VALUES (14, 1, 9, 'C', 'C', 1102, '2020-11-07 07:00:16', NULL, '2020-11-15 04:18:29', '3', NULL, NULL, '交卷');
INSERT INTO `test_question` VALUES (15, 1, 10, 'C', 'B', 1102, '2020-11-07 07:00:16', NULL, '2020-11-15 04:18:29', '0', NULL, NULL, '交卷');
INSERT INTO `test_question` VALUES (16, 1, 37, 'ABC', 'B', 1102, '2020-11-07 07:00:16', NULL, '2020-11-15 04:18:29', '0', NULL, NULL, '交卷');
INSERT INTO `test_question` VALUES (17, 1, 35, 'ABC', 'B', 1102, '2020-11-07 07:00:16', NULL, '2020-11-15 04:18:29', '0', NULL, NULL, '交卷');
INSERT INTO `test_question` VALUES (18, 1, 38, 'ABC', 'B', 1102, '2020-11-07 07:00:16', NULL, '2020-11-15 04:18:30', '0', NULL, NULL, '交卷');
INSERT INTO `test_question` VALUES (19, 1, 36, 'ABC', 'B', 1102, '2020-11-07 07:00:16', NULL, '2020-11-15 04:18:30', '0', NULL, NULL, '交卷');
INSERT INTO `test_question` VALUES (20, 1, 39, 'ABC', 'B', 1102, '2020-11-07 07:00:16', NULL, '2020-11-15 04:18:30', '0', NULL, NULL, '交卷');
INSERT INTO `test_question` VALUES (21, 1, 25, 'O(log2n)   O(nlog2n)', '王企鹅多无群多无', 1102, '2020-11-07 07:00:16', NULL, NULL, '0', NULL, NULL, '批阅');
INSERT INTO `test_question` VALUES (22, 1, 24, '增加1', '驱蚊器服务区分', 1102, '2020-11-07 07:00:16', NULL, NULL, '0', NULL, NULL, '批阅');
INSERT INTO `test_question` VALUES (23, 1, 23, '（12，40）    （  ）   （74）   （23,55，63）', '千万人废弃物的', 1102, '2020-11-07 07:00:16', NULL, NULL, '0', NULL, NULL, '批阅');
INSERT INTO `test_question` VALUES (24, 2, 30, 'A', 'C', 1102, '2020-11-15 04:18:50', NULL, '2020-11-15 04:22:38', '0', NULL, NULL, '交卷');
INSERT INTO `test_question` VALUES (25, 2, 13, 'D', 'C', 1102, '2020-11-15 04:18:50', NULL, '2020-11-15 04:22:38', '0', NULL, NULL, '交卷');
INSERT INTO `test_question` VALUES (26, 2, 34, 'C', 'B', 1102, '2020-11-15 04:18:51', NULL, '2020-11-15 04:22:38', '0', NULL, NULL, '交卷');
INSERT INTO `test_question` VALUES (27, 2, 32, 'C', 'C', 1102, '2020-11-15 04:18:51', NULL, '2020-11-15 04:22:38', '3', NULL, NULL, '交卷');
INSERT INTO `test_question` VALUES (28, 2, 28, 'B', 'C', 1102, '2020-11-15 04:18:51', NULL, '2020-11-15 04:22:38', '0', NULL, NULL, '交卷');
INSERT INTO `test_question` VALUES (29, 2, 11, 'D', 'B', 1102, '2020-11-15 04:18:51', NULL, '2020-11-15 04:22:39', '0', NULL, NULL, '交卷');
INSERT INTO `test_question` VALUES (30, 2, 10, 'C', 'A', 1102, '2020-11-15 04:18:51', NULL, '2020-11-15 04:22:39', '0', NULL, NULL, '交卷');
INSERT INTO `test_question` VALUES (31, 2, 14, 'A', 'B', 1102, '2020-11-15 04:18:52', NULL, '2020-11-15 04:22:39', '0', NULL, NULL, '交卷');
INSERT INTO `test_question` VALUES (32, 2, 6, 'A', 'B', 1102, '2020-11-15 04:18:52', NULL, '2020-11-15 04:22:39', '0', NULL, NULL, '交卷');
INSERT INTO `test_question` VALUES (33, 2, 7, 'D', 'A', 1102, '2020-11-15 04:18:52', NULL, '2020-11-15 04:22:39', '0', NULL, NULL, '交卷');
INSERT INTO `test_question` VALUES (34, 2, 8, 'D', 'C', 1102, '2020-11-15 04:18:52', NULL, '2020-11-15 04:22:39', '0', NULL, NULL, '交卷');
INSERT INTO `test_question` VALUES (35, 2, 31, 'A', 'B', 1102, '2020-11-15 04:18:53', NULL, '2020-11-15 04:22:39', '0', NULL, NULL, '交卷');
INSERT INTO `test_question` VALUES (36, 2, 9, 'C', 'C', 1102, '2020-11-15 04:18:53', NULL, '2020-11-15 04:22:39', '3', NULL, NULL, '交卷');
INSERT INTO `test_question` VALUES (37, 2, 27, 'D', 'B', 1102, '2020-11-15 04:18:53', NULL, '2020-11-15 04:22:40', '0', NULL, NULL, '交卷');
INSERT INTO `test_question` VALUES (38, 2, 29, 'C', 'B', 1102, '2020-11-15 04:18:53', NULL, '2020-11-15 04:22:40', '0', NULL, NULL, '交卷');
INSERT INTO `test_question` VALUES (39, 2, 36, 'ABC', '', 1102, '2020-11-15 04:18:54', NULL, '2020-11-15 04:22:40', '0', NULL, NULL, '交卷');
INSERT INTO `test_question` VALUES (40, 2, 38, 'ABC', '', 1102, '2020-11-15 04:18:55', NULL, '2020-11-15 04:22:40', '0', NULL, NULL, '交卷');
INSERT INTO `test_question` VALUES (41, 2, 39, 'ABC', '', 1102, '2020-11-15 04:18:55', NULL, '2020-11-15 04:22:40', '0', NULL, NULL, '交卷');
INSERT INTO `test_question` VALUES (42, 2, 37, 'ABC', '', 1102, '2020-11-15 04:18:55', NULL, '2020-11-15 04:22:40', '0', NULL, NULL, '交卷');
INSERT INTO `test_question` VALUES (43, 2, 35, 'ABC', '', 1102, '2020-11-15 04:18:56', NULL, '2020-11-15 04:22:40', '0', NULL, NULL, '交卷');
INSERT INTO `test_question` VALUES (44, 2, 20, 'e    2e', '王企鹅多无群多无', 1102, '2020-11-15 04:18:56', NULL, '2020-11-15 05:08:11', '0', NULL, NULL, '批阅');
INSERT INTO `test_question` VALUES (45, 2, 19, '2n   n-1     n+1', '驱蚊器服务区分', 1102, '2020-11-15 04:18:56', NULL, '2020-11-15 05:08:11', '0', NULL, NULL, '批阅');
INSERT INTO `test_question` VALUES (46, 2, 25, 'O(log2n)   O(nlog2n)', 'fdgsddxvcvsdg', 1102, '2020-11-15 04:18:56', NULL, '2020-11-15 05:08:11', '0', NULL, NULL, '批阅');
INSERT INTO `test_question` VALUES (47, 3, 34, 'C', 'C', 1102, '2020-11-15 04:29:17', NULL, '2020-11-15 04:59:44', '3', NULL, NULL, '交卷');
INSERT INTO `test_question` VALUES (48, 3, 33, 'B', 'B', 1102, '2020-11-15 04:29:17', NULL, '2020-11-15 04:59:44', '3', NULL, NULL, '交卷');
INSERT INTO `test_question` VALUES (49, 3, 7, 'D', 'C', 1102, '2020-11-15 04:29:18', NULL, '2020-11-15 04:59:44', '0', NULL, NULL, '交卷');
INSERT INTO `test_question` VALUES (50, 3, 8, 'D', 'B', 1102, '2020-11-15 04:29:18', NULL, '2020-11-15 04:59:44', '0', NULL, NULL, '交卷');
INSERT INTO `test_question` VALUES (51, 3, 32, 'C', 'B', 1102, '2020-11-15 04:29:18', NULL, '2020-11-15 04:59:44', '0', NULL, NULL, '交卷');
INSERT INTO `test_question` VALUES (52, 3, 30, 'A', 'C', 1102, '2020-11-15 04:29:18', NULL, '2020-11-15 04:59:44', '0', NULL, NULL, '交卷');
INSERT INTO `test_question` VALUES (53, 3, 27, 'D', 'A', 1102, '2020-11-15 04:29:18', NULL, '2020-11-15 04:59:44', '0', NULL, NULL, '交卷');
INSERT INTO `test_question` VALUES (54, 3, 9, 'C', 'B', 1102, '2020-11-15 04:29:19', NULL, '2020-11-15 04:59:44', '0', NULL, NULL, '交卷');
INSERT INTO `test_question` VALUES (55, 3, 29, 'C', 'B', 1102, '2020-11-15 04:29:19', NULL, '2020-11-15 04:59:45', '0', NULL, NULL, '交卷');
INSERT INTO `test_question` VALUES (56, 3, 10, 'C', 'B', 1102, '2020-11-15 04:29:19', NULL, '2020-11-15 04:59:45', '0', NULL, NULL, '交卷');
INSERT INTO `test_question` VALUES (57, 3, 13, 'D', 'C', 1102, '2020-11-15 04:29:19', NULL, '2020-11-15 04:59:45', '0', NULL, NULL, '交卷');
INSERT INTO `test_question` VALUES (58, 3, 28, 'B', 'C', 1102, '2020-11-15 04:29:20', NULL, '2020-11-15 04:59:45', '0', NULL, NULL, '交卷');
INSERT INTO `test_question` VALUES (59, 3, 6, 'A', 'B', 1102, '2020-11-15 04:29:20', NULL, '2020-11-15 04:59:45', '0', NULL, NULL, '交卷');
INSERT INTO `test_question` VALUES (60, 3, 12, 'C', 'B', 1102, '2020-11-15 04:29:20', NULL, '2020-11-15 04:59:45', '0', NULL, NULL, '交卷');
INSERT INTO `test_question` VALUES (61, 3, 11, 'D', 'B', 1102, '2020-11-15 04:29:20', NULL, '2020-11-15 04:59:45', '0', NULL, NULL, '交卷');
INSERT INTO `test_question` VALUES (62, 3, 36, 'ABC', '', 1102, '2020-11-15 04:29:20', NULL, '2020-11-15 04:59:45', '0', NULL, NULL, '交卷');
INSERT INTO `test_question` VALUES (63, 3, 35, 'ABC', 'C', 1102, '2020-11-15 04:29:21', NULL, '2020-11-15 05:00:03', '0', NULL, NULL, '交卷');
INSERT INTO `test_question` VALUES (64, 3, 39, 'ABC', 'BC', 1102, '2020-11-15 04:29:22', NULL, '2020-11-15 05:00:05', '0', NULL, NULL, '交卷');
INSERT INTO `test_question` VALUES (65, 3, 38, 'ABC', 'BCD', 1102, '2020-11-15 04:29:22', NULL, '2020-11-15 05:00:06', '0', NULL, NULL, '交卷');
INSERT INTO `test_question` VALUES (66, 3, 37, 'ABC', 'ABCD', 1102, '2020-11-15 04:29:22', NULL, '2020-11-15 05:00:07', '0', NULL, NULL, '交卷');
INSERT INTO `test_question` VALUES (67, 3, 16, 'O(n)', '王企鹅多无群多无', 1102, '2020-11-15 04:29:23', NULL, NULL, NULL, NULL, NULL, '交卷');
INSERT INTO `test_question` VALUES (68, 3, 26, '归并', 'asfsafasf', 1102, '2020-11-15 04:29:23', NULL, NULL, NULL, NULL, NULL, '交卷');
INSERT INTO `test_question` VALUES (69, 3, 17, '9    3    3', '千万人废弃物的', 1102, '2020-11-15 04:29:23', NULL, NULL, NULL, NULL, NULL, '交卷');
INSERT INTO `test_question` VALUES (70, 4, 10, 'C', NULL, 1102, '2020-11-15 05:13:14', NULL, NULL, NULL, NULL, NULL, '创建');
INSERT INTO `test_question` VALUES (71, 4, 33, 'B', NULL, 1102, '2020-11-15 05:13:14', NULL, NULL, NULL, NULL, NULL, '创建');
INSERT INTO `test_question` VALUES (72, 4, 9, 'C', NULL, 1102, '2020-11-15 05:13:14', NULL, NULL, NULL, NULL, NULL, '创建');
INSERT INTO `test_question` VALUES (73, 4, 32, 'C', NULL, 1102, '2020-11-15 05:13:14', NULL, NULL, NULL, NULL, NULL, '创建');
INSERT INTO `test_question` VALUES (74, 4, 34, 'C', NULL, 1102, '2020-11-15 05:13:14', NULL, NULL, NULL, NULL, NULL, '创建');
INSERT INTO `test_question` VALUES (75, 4, 6, 'A', NULL, 1102, '2020-11-15 05:13:15', NULL, NULL, NULL, NULL, NULL, '创建');
INSERT INTO `test_question` VALUES (76, 4, 29, 'C', NULL, 1102, '2020-11-15 05:13:15', NULL, NULL, NULL, NULL, NULL, '创建');
INSERT INTO `test_question` VALUES (77, 4, 12, 'C', NULL, 1102, '2020-11-15 05:13:15', NULL, NULL, NULL, NULL, NULL, '创建');
INSERT INTO `test_question` VALUES (78, 4, 8, 'D', NULL, 1102, '2020-11-15 05:13:16', NULL, NULL, NULL, NULL, NULL, '创建');
INSERT INTO `test_question` VALUES (79, 4, 28, 'B', NULL, 1102, '2020-11-15 05:13:16', NULL, NULL, NULL, NULL, NULL, '创建');
INSERT INTO `test_question` VALUES (80, 4, 27, 'D', NULL, 1102, '2020-11-15 05:13:16', NULL, NULL, NULL, NULL, NULL, '创建');
INSERT INTO `test_question` VALUES (81, 4, 14, 'A', NULL, 1102, '2020-11-15 05:13:16', NULL, NULL, NULL, NULL, NULL, '创建');
INSERT INTO `test_question` VALUES (82, 4, 31, 'A', NULL, 1102, '2020-11-15 05:13:16', NULL, NULL, NULL, NULL, NULL, '创建');
INSERT INTO `test_question` VALUES (83, 4, 30, 'A', NULL, 1102, '2020-11-15 05:13:17', NULL, NULL, NULL, NULL, NULL, '创建');
INSERT INTO `test_question` VALUES (84, 4, 11, 'D', NULL, 1102, '2020-11-15 05:13:17', NULL, NULL, NULL, NULL, NULL, '创建');
INSERT INTO `test_question` VALUES (85, 4, 38, 'ABC', NULL, 1102, '2020-11-15 05:13:17', NULL, NULL, NULL, NULL, NULL, '创建');
INSERT INTO `test_question` VALUES (86, 4, 36, 'ABC', NULL, 1102, '2020-11-15 05:13:17', NULL, NULL, NULL, NULL, NULL, '创建');
INSERT INTO `test_question` VALUES (87, 4, 39, 'ABC', NULL, 1102, '2020-11-15 05:13:18', NULL, NULL, NULL, NULL, NULL, '创建');
INSERT INTO `test_question` VALUES (88, 4, 35, 'ABC', NULL, 1102, '2020-11-15 05:13:19', NULL, NULL, NULL, NULL, NULL, '创建');
INSERT INTO `test_question` VALUES (89, 4, 37, 'ABC', NULL, 1102, '2020-11-15 05:13:19', NULL, NULL, NULL, NULL, NULL, '创建');
INSERT INTO `test_question` VALUES (90, 4, 18, '-1      3 4 X * + 2 Y * 3 / -', NULL, 1102, '2020-11-15 05:13:19', NULL, NULL, NULL, NULL, NULL, '创建');
INSERT INTO `test_question` VALUES (91, 4, 23, '（12，40）    （  ）   （74）   （23,55，63）', NULL, 1102, '2020-11-15 05:13:19', NULL, NULL, NULL, NULL, NULL, '创建');
INSERT INTO `test_question` VALUES (92, 4, 24, '增加1', NULL, 1102, '2020-11-15 05:13:20', NULL, NULL, NULL, NULL, NULL, '创建');

SET FOREIGN_KEY_CHECKS = 1;
