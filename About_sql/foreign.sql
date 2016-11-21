/*外键的创建，删除和添加*/
/*
 格式：
 CONSTRAINT 外键名 FOREIGN KEY(关联字段) REFERENCES 外表名(关联字段)
 */
create table orders(
id int not null auto_increment primary_key,
orderNum int not null,
);

create table person(
id int not null auto_increment primary_key,
name varchar(30) not null,
address varchar(50),
constraint fk_perorder foreign key (id) references person(id)
);

/*在已存在的表添加外键*/
/*
 格式：
 ALTER TABLE 表名 ADD FOREIGN KEY (关联字段) REFERENCES 外表(关联字段)
 */

 ALTER TABLE orders ADD FOREIGN KEY (关联字段) REFERENCES person(关联字段)

/*删除外键*
格式：
ALTER TABLE TAB_NAME DROP FOREIGN KEY 外键名;
*/

ALTER person DROP FOREIGN KEY id;
/*this is taht*/
