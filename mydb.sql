/*
 Navicat Premium Data Transfer

 Source Server         : testconn
 Source Server Type    : MySQL
 Source Server Version : 80026
 Source Host           : localhost:3306
 Source Schema         : mydb

 Target Server Type    : MySQL
 Target Server Version : 80026
 File Encoding         : 65001

 Date: 05/11/2022 14:20:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bonus
-- ----------------------------
DROP TABLE IF EXISTS `bonus`;
CREATE TABLE `bonus` (
  `ENAME` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `JOB` varchar(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `SAL` double(7,2) DEFAULT NULL,
  `COMM` double(7,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of bonus
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dept
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept` (
  `DEPTNO` int NOT NULL AUTO_INCREMENT,
  `DNAME` varchar(14) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `LOC` varchar(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`DEPTNO`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of dept
-- ----------------------------
BEGIN;
INSERT INTO `dept` (`DEPTNO`, `DNAME`, `LOC`) VALUES (10, 'ACCOUNTING', 'NEW YORK');
INSERT INTO `dept` (`DEPTNO`, `DNAME`, `LOC`) VALUES (20, 'RESEARCH', 'DALLAS');
INSERT INTO `dept` (`DEPTNO`, `DNAME`, `LOC`) VALUES (30, 'SALES', 'CHICAGO');
INSERT INTO `dept` (`DEPTNO`, `DNAME`, `LOC`) VALUES (40, 'OPERATIONS', 'BOSTON');
INSERT INTO `dept` (`DEPTNO`, `DNAME`, `LOC`) VALUES (42, 'OPRATIONS', 'beijing');
INSERT INTO `dept` (`DEPTNO`, `DNAME`, `LOC`) VALUES (44, '人事部', '江苏省扬州市');
COMMIT;

-- ----------------------------
-- Table structure for emp
-- ----------------------------
DROP TABLE IF EXISTS `emp`;
CREATE TABLE `emp` (
  `EMPNO` int NOT NULL AUTO_INCREMENT,
  `ENAME` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `JOB` varchar(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `MGR` int DEFAULT NULL,
  `HIREDATE` date DEFAULT NULL,
  `SAL` double(7,2) DEFAULT NULL,
  `COMM` double(7,2) DEFAULT NULL,
  `DEPTNO` int DEFAULT NULL,
  PRIMARY KEY (`EMPNO`) USING BTREE,
  KEY `FK_DEPTNO` (`DEPTNO`) USING BTREE,
  CONSTRAINT `FK_DEPTNO` FOREIGN KEY (`DEPTNO`) REFERENCES `dept` (`DEPTNO`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7941 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of emp
-- ----------------------------
BEGIN;
INSERT INTO `emp` (`EMPNO`, `ENAME`, `JOB`, `MGR`, `HIREDATE`, `SAL`, `COMM`, `DEPTNO`) VALUES (7369, 'SMITH', 'MANAGER', 7902, '2022-10-17', 900.00, 90.00, 20);
INSERT INTO `emp` (`EMPNO`, `ENAME`, `JOB`, `MGR`, `HIREDATE`, `SAL`, `COMM`, `DEPTNO`) VALUES (7499, 'ALLEN', 'SALESMAN', 7698, '1981-02-20', 1600.00, 300.00, 30);
INSERT INTO `emp` (`EMPNO`, `ENAME`, `JOB`, `MGR`, `HIREDATE`, `SAL`, `COMM`, `DEPTNO`) VALUES (7521, 'WARD', 'SALESMAN', 7698, '1981-02-22', 1250.00, 500.00, 30);
INSERT INTO `emp` (`EMPNO`, `ENAME`, `JOB`, `MGR`, `HIREDATE`, `SAL`, `COMM`, `DEPTNO`) VALUES (7566, 'JONES', 'MANAGER', 7839, '1981-04-02', 2975.00, 0.00, 20);
INSERT INTO `emp` (`EMPNO`, `ENAME`, `JOB`, `MGR`, `HIREDATE`, `SAL`, `COMM`, `DEPTNO`) VALUES (7654, 'MARTIN', 'SALESMAN', 7698, '1981-09-28', 1250.00, 1400.00, 30);
INSERT INTO `emp` (`EMPNO`, `ENAME`, `JOB`, `MGR`, `HIREDATE`, `SAL`, `COMM`, `DEPTNO`) VALUES (7698, 'BLAKE', 'MANAGER', 7839, '1981-05-01', 2850.00, 0.00, 30);
INSERT INTO `emp` (`EMPNO`, `ENAME`, `JOB`, `MGR`, `HIREDATE`, `SAL`, `COMM`, `DEPTNO`) VALUES (7782, 'CLARK', 'MANAGER', 7839, '1981-06-09', 2450.00, 0.00, 10);
INSERT INTO `emp` (`EMPNO`, `ENAME`, `JOB`, `MGR`, `HIREDATE`, `SAL`, `COMM`, `DEPTNO`) VALUES (7788, 'SCOTT', 'ANALYST', 7566, '1987-04-19', 3000.00, 0.00, 20);
INSERT INTO `emp` (`EMPNO`, `ENAME`, `JOB`, `MGR`, `HIREDATE`, `SAL`, `COMM`, `DEPTNO`) VALUES (7839, 'KING', 'PRESIDENT', NULL, '1981-11-17', 5000.00, 0.00, 10);
INSERT INTO `emp` (`EMPNO`, `ENAME`, `JOB`, `MGR`, `HIREDATE`, `SAL`, `COMM`, `DEPTNO`) VALUES (7844, 'TURNER', 'SALESMAN', 7698, '1981-09-08', 1500.00, 0.00, 30);
INSERT INTO `emp` (`EMPNO`, `ENAME`, `JOB`, `MGR`, `HIREDATE`, `SAL`, `COMM`, `DEPTNO`) VALUES (7876, 'ADAMS', 'CLERK', 7788, '1987-05-23', 1100.00, 0.00, 20);
INSERT INTO `emp` (`EMPNO`, `ENAME`, `JOB`, `MGR`, `HIREDATE`, `SAL`, `COMM`, `DEPTNO`) VALUES (7900, 'JAMES', 'CLERK', 7698, '1981-12-03', 950.00, 0.00, 30);
INSERT INTO `emp` (`EMPNO`, `ENAME`, `JOB`, `MGR`, `HIREDATE`, `SAL`, `COMM`, `DEPTNO`) VALUES (7902, 'FORD', 'ANALYST', 7566, '1981-12-03', 3000.00, 0.00, 20);
INSERT INTO `emp` (`EMPNO`, `ENAME`, `JOB`, `MGR`, `HIREDATE`, `SAL`, `COMM`, `DEPTNO`) VALUES (7934, 'MILLER', 'CLERK', 7782, '1982-01-23', 1300.00, 0.00, 10);
COMMIT;

-- ----------------------------
-- Table structure for findGift
-- ----------------------------
DROP TABLE IF EXISTS `findGift`;
CREATE TABLE `findGift` (
  `id` int DEFAULT NULL,
  `question` varchar(255) DEFAULT NULL,
  `option1` varchar(255) DEFAULT NULL,
  `option2` varchar(255) DEFAULT NULL,
  `choice1` int DEFAULT NULL,
  `choice2` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of findGift
-- ----------------------------
BEGIN;
INSERT INTO `findGift` (`id`, `question`, `option1`, `option2`, `choice1`, `choice2`) VALUES (1, '眼前出现了一个大湖，你要从哪个方向绕过去？', '左', '右', 2, 4);
INSERT INTO `findGift` (`id`, `question`, `option1`, `option2`, `choice1`, `choice2`) VALUES (2, '面前有两条路，请问你要探索哪边？', '上', '下', 7, 3);
INSERT INTO `findGift` (`id`, `question`, `option1`, `option2`, `choice1`, `choice2`) VALUES (3, '眼前出现了一只野兽，请问你打算怎么办？', '退回去', '冲过去', 2, 7);
INSERT INTO `findGift` (`id`, `question`, `option1`, `option2`, `choice1`, `choice2`) VALUES (4, '你突然感到空气有些稀薄，请问你打算？', '打坐休整', '继续前进', 5, 6);
INSERT INTO `findGift` (`id`, `question`, `option1`, `option2`, `choice1`, `choice2`) VALUES (5, '你看到了一个阴影正在靠近你。', '纹丝不动', '起身就走', 9, 7);
INSERT INTO `findGift` (`id`, `question`, `option1`, `option2`, `choice1`, `choice2`) VALUES (6, '你的移动变得越来越缓慢，请问你打算？', '大喊三声', '返回喝水', 9, 1);
INSERT INTO `findGift` (`id`, `question`, `option1`, `option2`, `choice1`, `choice2`) VALUES (7, '阴影越来越近，你的速度却越来越慢，你要退回前方重新选择吗？', '要', '不要', 1, 8);
COMMIT;

-- ----------------------------
-- Table structure for project
-- ----------------------------
DROP TABLE IF EXISTS `project`;
CREATE TABLE `project` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `pname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `money` int DEFAULT NULL,
  PRIMARY KEY (`pid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of project
-- ----------------------------
BEGIN;
INSERT INTO `project` (`pid`, `pname`, `money`) VALUES (1, ' ***大学OA', 500000);
INSERT INTO `project` (`pid`, `pname`, `money`) VALUES (2, '学生选课系统', 100000);
INSERT INTO `project` (`pid`, `pname`, `money`) VALUES (3, '讲师测评系统', 20000);
INSERT INTO `project` (`pid`, `pname`, `money`) VALUES (4, '线上问答系统 ', 20000);
COMMIT;

-- ----------------------------
-- Table structure for projectrecord
-- ----------------------------
DROP TABLE IF EXISTS `projectrecord`;
CREATE TABLE `projectrecord` (
  `empno` int NOT NULL,
  `pid` int NOT NULL,
  PRIMARY KEY (`empno`,`pid`) USING BTREE,
  KEY `fk_project_pro` (`pid`) USING BTREE,
  CONSTRAINT `fk_emp_pro` FOREIGN KEY (`empno`) REFERENCES `emp` (`EMPNO`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_project_pro` FOREIGN KEY (`pid`) REFERENCES `project` (`pid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of projectrecord
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for salgrade
-- ----------------------------
DROP TABLE IF EXISTS `salgrade`;
CREATE TABLE `salgrade` (
  `GRADE` int NOT NULL,
  `LOSAL` double(7,2) DEFAULT NULL,
  `HISAL` double(7,2) DEFAULT NULL,
  PRIMARY KEY (`GRADE`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of salgrade
-- ----------------------------
BEGIN;
INSERT INTO `salgrade` (`GRADE`, `LOSAL`, `HISAL`) VALUES (1, 700.00, 1200.00);
INSERT INTO `salgrade` (`GRADE`, `LOSAL`, `HISAL`) VALUES (2, 1201.00, 1400.00);
INSERT INTO `salgrade` (`GRADE`, `LOSAL`, `HISAL`) VALUES (3, 1401.00, 2000.00);
INSERT INTO `salgrade` (`GRADE`, `LOSAL`, `HISAL`) VALUES (4, 2001.00, 3000.00);
INSERT INTO `salgrade` (`GRADE`, `LOSAL`, `HISAL`) VALUES (5, 3001.00, 9999.00);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
