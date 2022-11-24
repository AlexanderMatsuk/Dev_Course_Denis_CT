public class AccountUtils{
    public static List<Account> accountsByState( String param) {
        List<Account> myAccounts = [SELECT Id, Name FROM Account WHERE BillingState =: param];
        System.debug(myAccounts);
        return myAccounts;
    }
}