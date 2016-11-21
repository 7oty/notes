/*用户的创建和删除
 格式：
    CREATE USER user[IDENTIFIED BY [PASSWORD] 'PASSWORD']
    [IDENTIFIED BY [PASSWORD] 'PASSWORD'.....]
    user:表示用户名称，其格式为“username@hostname”
    IDENTIFIED BY：设置用户密码
    PASSWORD：使用哈希算法对密码进行加密
    password：密码
    使用GRANT创建用户：
    GRANT priv_type ON database.table
    TO user [IDENTIFIED BY [PASSWORD] 'password']
            [INDENTIFIED BY [PASSWORD] 'password' ...]
            [WITH GRANT OPTION]
    priv_type：权限类型
    database.table：表示用户的权限的范围，指定数据库和表上使用自己的权限
    user：表示用户名称，同CREATE USER
    IDENTIFIED BY：设置用户密码
    PASSWORD：使用哈希算法对密码进行加密
    password：密码
    WITH GRANT OPTION:表示可对其他用户赋予权限

    DROP USER:
    DROP USER user1, user2,......
 */
 /*
exmaple：
*/

CREATE USER 'admin@localhost'
IDENTIFIED BY PASSWORD  'this is password';

GRANT SELECT,UPDATE ON *.* TO "admin@localhost" IDENTIFIED BY PASSWORD "admin123456";

DROP USER admin;
