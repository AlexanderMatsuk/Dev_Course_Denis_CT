public with sharing class AccountHandler {
    public static Account insertNewAccount(String accName) {
        Account acc = null;
        //new comment
        //try catch
        // another comment from VS code
        try{
            acc = new Account(Name = accName);
            insert acc;
        } catch(DmlException e){
            return null;
        }
        return acc;
    }
}