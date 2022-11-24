trigger AccountTrigger on Account (before insert, before update, before
    delete, after insert, after update, after delete,  after undelete) {
    if (Trigger.isBefore && Trigger.isInsert) {
        AccountTriggerHandler.handleBeforeInsert (Trigger.new);
    } else if (Trigger.isAfter && Trigger.isInsert) {
        AccountTriggerHandler.handleAfterInsert (Trigger.new);
    }

}