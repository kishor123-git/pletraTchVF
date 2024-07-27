public with sharing class ApexProviderGetApp {
   @AuraEnabled
   public static string getRecord(){
    try {
        return 'success';
    } catch (Exception e) {
        throw new AuraHandledException(e.getMessage());
    }
   }
}