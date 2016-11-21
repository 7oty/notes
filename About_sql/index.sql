/*****************
*创建索引
*删除索引
*添加索引
*格式：
*CREATE TABLE TAB_NAME(
FIELD_NAME FILED_TYPE [...EXPRESSION]
[UNIQUE|FULLTEXT|SPATIAL]<KEY|INDEX> [INDEX_NAME](ATTRA_NAME[(LENGTH)]) DESC | ASC
)
*/

/*普通索引*/
CRETATE TABLE studentinfo(
ID INT NOT NULL AUTO_INCREMENT PRIMARY_KEY,
name VARCHAR(50) NOT NULL,
age TINYINT UNSIGNED,
INDEX in_id(id) ASC
)ENGINE=InnoDB default CAHRSET=UTF8;

/*唯一索引*/
CREATE TABLE tearchinfo(
id int not null auto_increment primary_key,
name varchar(50) not null,
tearch_id int not null,
UNIQUE KEY uni_key(tearch_id)
);

/*全文索引*/

create table permission(
id int not null auto_increment primary_key,
userdesc VARCHAR(20) NOT NULL,
FULLTEXT INDEX full_userdesc(userdesc)
);

/*多列索引*/
create table today(
id tinyint unsigned auto_increment primary_key,
first varchar(20) not null,
second varchar(20) not null,
threed varchar(20) not null,
index multi_t1_t2_t3(first,second, threed)
);

/*空间索引*/

create table spaces(
id tinyint unsigned auto_increment key,
SPATIAL index space_id(id)
)engine=myisam;

/*删除索引*/
/*drop index index_name on tab_name*/

DROP INDEX multi_t1_t2_t3 ON today;

/*在已存在的表上创建索引
 ALTER TABLE TAB_name ADD [UNIQUE|SPATIAL|INDEX|FULLTEXT|] INDEX INDEX_NAME;
 */
ALTER TABLE space ADD UNIQUE SPACE_INDEX;

