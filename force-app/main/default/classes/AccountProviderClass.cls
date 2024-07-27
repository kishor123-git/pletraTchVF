public class AccountProviderClass {
    
   @AuraEnabled
   public static list<Account> insertDataAccount(string Name,Date Date){
    try {
        return [select id,Name,Type from Account where Name =:Name];
      
    } catch (Exception e) {
        throw new AuraHandledException(e.getMessage());
    }
   }
    

}