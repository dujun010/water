-- -----------------------------------------------
-- 创建teacher数据库   并且创建名为:teacher的表 --
-- -----------------------------------------------

drop database IF EXISTS `teacher`;
CREATE DATABASE teacher;

SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `ID` varchar(50) NOT NULL,
  `NAME` varchar(50) default NULL COMMENT '教师名称',
  `TEACHING_COURSE` varchar(10) default NULL COMMENT '授课',
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `teacher` VALUES ('Teacher.Li', '李老师', 'JAVA');



-- -----------------------------------------------
-- 创建student数据库   并且创建名为:student的表 --
-- -----------------------------------------------

drop database IF EXISTS `student`;
CREATE DATABASE student;

SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `ID` varchar(20) NOT NULL,
  `NAME` varchar(20) default NULL,
  `AGE` int(11) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `student` VALUES ('Student.zhang', '张三', '22');
INSERT INTO student values('Student.lisi','李四',23);
INSERT INTO student values('Student.wangwu','王五',25);
INSERT INTO student values('Student.zhaoliu','赵六',21);
INSERT INTO student values('Student.sunqi','孙七',19);
INSERT INTO student values('Student.wangba','王八',22);
INSERT INTO student values('Student.dujiu','杜九',25);
INSERT INTO student values('Student.qianshi','前十',26);
INSERT INTO student values('Student.xinagxiao','邢啸',21);
INSERT INTO student values('Student.taoqin','陶沁',22);
INSERT INTO student values('Student.miaolin','苗林',21);
INSERT INTO student values('Student.jingqing','荆晴',20);
INSERT INTO student values('Student.bixiaobei','毕晓蓓',23);
INSERT INTO student values('Student.shaoruochen','邵锐宸',26);
INSERT INTO student values('Student.jiangluyuao','蒋露瑶',33);
INSERT INTO student values('Student.quanxini','全昕妮',32);
INSERT INTO student values('Student.huazhenwei','花振伟',30);
INSERT INTO student values('Student.baozhihong','包志鸿',28);
INSERT INTO student values('Student.linyanlin','蔺焱林',26);
INSERT INTO student values('Student.sixuena','司雪娜',29);
INSERT INTO student values('Student.xiangjingxian','向静娴',25);
INSERT INTO student values('Student.shenzishu','申子舒',27);
INSERT INTO student values('Student.chenbaoling','陈宝玲',23);
INSERT INTO student values('Student.niejinyang','聂近洋',23);
INSERT INTO student values('Student.mabinglin','马秉霖',23);
INSERT INTO student values('Student.zhouchenghao','周程浩',23);
INSERT INTO student values('Student.liujiahao','刘家豪',23);
INSERT INTO student values('Student.sunjinyang','苏近洋',23);
INSERT INTO student values('Student.wuwenhao','吴文昊',23);
INSERT INTO student values('Student.zhouweiqi','周伟祺',23);
INSERT INTO student values('Student.jimeng','季蒙',23);
INSERT INTO student values('Student.hemocheng','和墨程',23);
INSERT INTO student values('Student.liqi','利奇',23);
