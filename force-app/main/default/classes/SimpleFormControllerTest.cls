@isTest
public class SimpleFormControllerTest {
    @isTest
    static void testSubmitFormValidData() {
        SimpleFormController controller = new SimpleFormController();
        
        controller.name = 'John Doe';
        controller.age = 30;
        
        controller.submitForm();
        
        System.assertEquals('Hello John Doe! You are 30 years old.', controller.result, 'The result message is not as expected.');
    }
}
