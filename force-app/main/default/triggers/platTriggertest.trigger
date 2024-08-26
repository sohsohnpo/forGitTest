trigger platTriggertest on platEvent__e (after insert) {

    // List to hold all cases to be created.
    List<Case> cases = new List<Case>();
    // Get queue Id for case owner
    Group queue = [SELECT Id FROM Group WHERE Name='Regional Dispatch' AND Type='Queue'];
    // Iterate through each notification.
    for (platEvent__e event : Trigger.New) {
        if (event.X1__c == 'test') {
            // Create Case to dispatch new team.
            Case cs = new Case();
            cs.Priority = 'High';
            cs.Subject = 'News team dispatch to ';
           cs.OwnerId = queue.Id;
            cases.add(cs);
        }
   }
    // Insert all cases corresponding to events received.
    insert cases;
}