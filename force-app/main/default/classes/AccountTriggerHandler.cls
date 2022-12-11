public with sharing class AccountTriggerHandler {
    public static void handleBeforeInsert (List<Account> accList) {
        for(Account a : accList) {
            a.Description = 'New description from Trigger';
        }
    }
     public static void handleAfterInsert (List<Account> accList) {
        for(Account a : accList) {
            Task aTask = new Task();
            aTask.ownerId = a.ownerId;
            aTask.subject = 'New Account Task';
            aTask.whatId = a.Id;
            aTask.priority = 'Normal';
            Insert aTask;
        }
     }
}
