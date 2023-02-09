export class BaseModel {
    constructor(){
        this._id = this.generateID(); 
    }

    generateID(){}

    get id(){
        return this._id;
    }
    
    save(){}
}