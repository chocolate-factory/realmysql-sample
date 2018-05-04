﻿CREATE TABLE tb_article (
  article_id INT NOT NULL AUTO_INCREMENT,
  write_memberid INT NOT NULL,
  write_dttm DATETIME NOT NULL,
  PRIMARY KEY (article_id),
  KEY ix_writememberid_writedttm (write_memberid,write_dttm)
) ENGINE=INNODB;

CREATE TABLE tb_friend (
  member_id INT(11) NOT NULL,
  friend_member_id INT(11) NOT NULL,
  PRIMARY KEY (member_id,friend_member_id)
) ENGINE=INNODB;

INSERT INTO tb_article (article_id, write_memberid, write_dttm) VALUES
        ('16','5','2011-05-03 02:12:11'), ('12','5','2011-04-11 23:11:59'),
        ('11','5','2011-02-19 02:12:16'), ('5','5','2011-01-29 12:00:06') ,
        ('21','4','2011-07-01 12:00:06'), ('20','4','2011-05-28 16:11:25'),
        ('10','4','2011-02-13 02:12:16'), ('6','4','2011-01-29 16:11:22') ,
        ('23','3','2011-07-18 12:00:06'), ('18','3','2011-05-11 16:11:25'),
        ('17','3','2011-05-08 02:12:16'), ('4','3','2011-01-01 16:11:25') ,
        ('2','3','2010-12-10 02:12:16') , ('1','3','2010-10-10 12:00:06') ,
        ('15','2','2011-04-29 16:11:25'), ('13','2','2011-04-28 02:12:16'),
        ('14','2','2011-04-28 02:12:15'), ('8','2','2011-02-09 23:11:63') ,
        ('7','2','2011-02-01 12:00:06') , ('22','1','2011-07-10 16:11:25'),
        ('19','1','2011-05-22 02:12:16'), ('9','1','2011-02-12 23:11:64') ,
        ('3','1','2010-12-25 12:00:07');

INSERT INTO tb_friend (member_id, friend_member_id) VALUES (4,2),(4,4),(4,5);

-- // 회원 테이블은 꼭 필요치 않으므로 생략함
-- // 단 회원의 번호와 회원의 이름은 아래와 같이 준비되어 있다고 가정하자.
-- // 회원번호   회원명
-- // 1          김철수
-- // 2          마동탁
-- // 3          이대리
-- // 4          이성욱
-- // 5          홍길동
