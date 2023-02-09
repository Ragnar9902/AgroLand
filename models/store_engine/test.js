//var mongodb = require("./mongoDB");
//MongoStorage = mongodb.MongoStorage;
import {MongoStorage} from "./mongoDB.js";

db = MongoStorage();
db.connect();