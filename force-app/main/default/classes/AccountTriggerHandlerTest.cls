@isTest
public with sharing class AccountTriggerHandlerTest {
    @isTest public static void testInsert(){
        Account myAcc = new Account(Name = 'Test Account');
        test.startTest();
        insert myAcc;
        test.stopTest();
    }
}
