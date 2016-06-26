@isTest
private class TsetForWorkPeriodController {

    @TestSetup private static void CreateTestData()
    {
        List<Account> accList = new List<Account>();
        for (Integer i = 0; i < 10; i++)
        {
            accList.add(new Account(Name = 'Test' + i));
        }
        
        insert accList;
        
        List<Account> acc = [SELECT Id, Name FROM Account];
        List<Order__c> orderList = new List<Order__c>();
        for (Integer i = 0; i < 10; i+=2)
        {
            orderList.add(new Order__c(Name = 'Order' + i, Account__c = acc.get(i).Id));
        }
        
        insert orderList;
        
        List<Rate__c> rateList = new List<Rate__c>();
        for (Integer i = 0; i < 10; i+=2)
        {
            rateList.add(new Rate__c(Name = 'TestRate' + i, Customer_Rate__c = i*500, Employer_Rate__c = i*200));
        }
        
        insert rateList;
        
        List<Order__c> ordList = [SELECT Id FROM Order__c];
        List<Rate__c> rates = [SELECT Id FROM Rate__c];
        List<Work_Period__c> wplist = new List<Work_Period__c>();
        for (Integer i = 0; i < ordList.size(); i++)
        {
            wplist.add(new Work_Period__c(Name = 'TestPeriod' + i, Order__c = ordlist.get(i).Id, Rate__c = rates.get(i).Id));
        }
        
        insert wplist;
    }
    
    @isTest private static void TestWorkPeriodController()
    {
        List<Account> accList = [SELECT Id,Name FROM Account];
        WorkPeriodController testController = new WorkPeriodController();
        
        System.assertEquals(10, acclist.size());
        System.assertEquals(5, testController.countCompanies);
    }
}