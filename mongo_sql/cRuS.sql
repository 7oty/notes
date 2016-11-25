/*
 mongo中的增删改查
 */

/*create database*/
/*use database_name*/
use admin

/*create collections (table)*/
db.admin_collections.insert({"name":"lee", "age":12})

/*drop database*/
use admin
db.dropDatabase()

/*drop collection*/
db.collection_name.drop()

/*insert document*/
/*db.collection_name.insert({key:values})*/
db.admin_collection.insert({name:"seaung",age:12, tags:["man":"help", "link":"git"], likes:100})

/*update document*/
/*db.collection_name.update()*/
db.admin_collection.update({"name":"seaung"}, {$set:{"name":"l_seaung"}})

/*select document*/
/*db.collection_name.find()*/
/*db.collection_name.pertty*/
db.admin_collection.find().pertty()
