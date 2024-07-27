public with sharing class TaskThreeLwcProCompoClass {
    @AuraEnabled
    public static list<PricebookEntry> getProductRecord(string picklist, List<PricebookEntry> selectedProduct){
        try {
            system.debug('picklist :::' +  picklist  + '>>>>>>' + 'selectedProduct :::::'+ selectedProduct);
            Set<id> productsId = new Set<id>();
            if(selectedProduct != Null){
                for(PricebookEntry p : selectedProduct){
                    productsId.add(p.id);
                }
            }
            system.debug('Enter the  Pisklist Name::'+picklist);
            
            if(picklist!=null && selectedProduct == Null){
                return [SELECT Id, Product2Id, Product2.Name,Product2.Categoury__c,Pricebook2Id, Pricebook2.Name, UnitPrice FROM PricebookEntry where Product2.Categoury__c=: picklist OR Product2.Name LIKE : picklist];
            }else if(picklist!=null && selectedProduct != Null){
                return [SELECT Id, Product2Id, Product2.Name,Product2.Categoury__c,Pricebook2Id, Pricebook2.Name, UnitPrice FROM PricebookEntry where id NOT IN : productsId ];
            }
            return null;
            	
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
}