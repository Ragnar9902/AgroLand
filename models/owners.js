import { BaseModel } from "./base.js";

class Owner extends BaseModel {
    constructor (name, perID){
        super();
        this._name = name;
        this._perID = perID;
    }
}