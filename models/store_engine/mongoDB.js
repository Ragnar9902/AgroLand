import 'mongoose';
import * as dotenv from 'dotenv' // see https://github.com/motdotla/dotenv#how-do-i-use-dotenv-with-import
dotenv.config()
if(process.env.NODE_ENV != 'produccion'){
}
const mongo_uri = process.env.URI_MONGO;

export class MongoStorage {
    constructor(){

    }
    connect(){
        mongoose.connect(mongo_uri, {

        }).then(db => console.log('database connected'))
          .catch(err => console.log(err));
    }
}