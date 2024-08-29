@isTest
public class Test_MyClass_Test {
    
    @isTest
    static void testGetWelcomeMessage() {
        String result = Test_Myclass.getWelcomeMessage();
        System.assertEquals('Hello', result);
    }
}
