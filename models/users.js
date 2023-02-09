import { BaseModel } from "./base.js";

class User extends BaseModel {
    constructor(name, perID){
        super();
        this._name = name;
        this._perID = perID;

    }

}