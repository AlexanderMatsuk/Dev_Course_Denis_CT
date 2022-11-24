trigger LeadTrigger on Lead (before insert) {
    if (trigger.isBefore && trigger.isInsert){
        List<Lead> lstlead = new List<Lead>();
        for (Lead l : lstlead) {
            
        }
    }

}