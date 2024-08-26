public with sharing class VisitHistoryController {

    // 訪問履歴の取得
    @AuraEnabled(cacheable=true)
    public static List<Visit__c> getVisitList(Id accountId) {
         return [select id, name, StartDatetime__c, Location__c, Overview__c from Visit__c where Account__c = :accountId];
    }
}