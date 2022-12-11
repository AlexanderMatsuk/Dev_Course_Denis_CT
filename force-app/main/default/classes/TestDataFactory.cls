@isTest
public with sharing class TestDataFactory {
    public static List<Account> GenerateAccounts (Integer numAcc){
        List<Account> listOfAccs = new List<Account>();
        for (Integer i = 0; i < numAcc; i++){
            Account accToGenerate = new Account(Name = 'Test Account '+i);
            listOfAccs.add(accToGenerate);
        }
        return listOfAccs;

    }
}
