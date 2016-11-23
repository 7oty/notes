/*
 db.createUser创建mongodb数据库用户并设置密码
 */

 db.createUser(
    {
        user:"you",
        pwd:"yourpassword",
        roles:[{ role:"userAdmin", db:"admin" }]
    }
)

/*db.auth("username", "password")验证创建的帐号*/

/*创建用户名为you的用户，并指定数据库为：admin，拥有的权限为：userAdmin*/
/*mongo 共拥有以下权限：
 read：允许用户读取指定数据库
 readWrite：允许用户读写指定数据库
 dbAdmin：允许用户在指定数据库中执行管理函数，如索引创建，删除，查看同计或访问system.profile
 userAdmin：允许用户向system.users集合写入，可以找指定数据库里创建，删除和管理用户
 clusterAdmin：只在admin数据库中可用，赋予用户所用分片和复制集相关函数的管理权限
 readAnyDatabase：只在admin数据库中可用，赋予用户所有数据库的读权限
 readWriteAnyDatabase：只在admin数据库中可用，赋予用户所有数据库的读写权限
 userAdminAnyDatabase：只在admin数据库中可用，赋予用户所有数据库的userAdmin权限
 dbAdminAnyDatabase：只在admin数据库中可用，赋予用户所有数据库的dbAdmin权限。
 root：只在admin数据库中可用。超级账号，超级权限
 */
