public with sharing class GetRecordAllOppLine {
   @AuraEnabled
   public static string getRecordId(){
    try {
       return'success'; 
    } catch (Exception e) {
        throw new AuraHandledException(e.getMessage());
    }
   }
}