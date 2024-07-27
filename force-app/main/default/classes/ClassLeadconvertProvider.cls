public with sharing class ClassLeadconvertProvider {
   @AuraEnabled
   public static string allRecord(){
    try {
        return 'success';
    } catch (Exception e) {
        throw new AuraHandledException(e.getMessage());
    }
   }
}