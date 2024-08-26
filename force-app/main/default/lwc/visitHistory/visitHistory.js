import { LightningElement,api, track, wire} from 'lwc';
import getVisitList from '@salesforce/apex/VisitHistoryController.getVisitList';


export default class VisitHistory extends LightningElement {

    @api recordId; //レコードID
    @track visitList = [];

    //初期処理
    connectedCallback(){
    
      getVisitList({accountId : this.recordId}).then((result)=>{
        this.visitList = result;
        console.log(result);
      }).catch(error=>{
        console.log(error);
      });
    }

}