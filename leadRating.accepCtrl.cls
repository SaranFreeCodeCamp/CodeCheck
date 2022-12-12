public class accepCtrl{

    public set<id> idSet{get;set;}
    
    public accepCtrl(ApexPages.StandardSetController controller)
    {
        idSet = new set<id>();
        ApexPages.StandardSetController setCon = controller;
        for(Object1__c obj : (Object1__c[])setCon.getSelected())
            idSet.add(obj.Id);
    }
    
    public void acceptVal()
    {
        list<Object1__c> objList = new list<Object1__c>();
        for(Object1__c obj : [select id, name from Object1__c where id in: idSet])
            objList.add(obj);
            
        system.debug('########' + objList);
    }
}