import { LightningElement, track } from 'lwc';
import getWelcomeMessage from '@salesforce/apex/Test_Myclass.getWelcomeMessage';

export default class TestMyClass extends LightningElement {
    @track message;

    connectedCallback() {
        this.fetchMessage();
    }

    fetchMessage() {
        getWelcomeMessage()
            .then(result => {
                this.message = result;
            })
            .catch(error => {
                this.message = 'Error retrieving message';
                console.error('Error:', error);
            });
    }
}
