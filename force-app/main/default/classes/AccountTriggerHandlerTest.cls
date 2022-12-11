@isTest
public with sharing class AccountTriggerHandlerTest {
    @isTest public static void testInsert(){
        List<Account> myAcc = TestDataFactory.GenerateAccounts(200);
        test.startTest();
        insert myAcc;
        test.stopTest();
        List<Account> insertedAccount = [SELECT Id, Name, Description FROM Account WHERE Id IN : myAcc];
        List<Task> insertedTask = [SELECT Id, Subject FROM Task WHERE whatId IN : myAcc];
        for (Account acc : insertedAccount){
            System.assertEquals('New description from Trigger', acc.Description);
        }
        for (Task tsk : insertedTask){
            System.assertEquals('New Account Task', tsk.Subject);
        }
        
    }
    
}
