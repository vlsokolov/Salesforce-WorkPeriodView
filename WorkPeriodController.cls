public with sharing class WorkPeriodController {

    Public List<Work_Period__c> workPeriodList{set; get;}
    Public Set<String> companies {set; get;}
    Public Integer countCompanies {set; get;}
    
    public WorkPeriodController()
    {
         workPeriodList = new List<Work_Period__c>([SELECT Name, Order__r.Name, Order__r.Account__r.Name, 
                                                    Rate__r.Customer_Rate__c, Rate__r.Employer_Rate__c 
                                                    FROM Work_Period__c]); 
        companies = new Set<String>();
        for (Work_Period__c period: workPeriodList)
        {
            companies.add(period.Order__r.Account__r.Name);
        }
        
        countCompanies = companies.size();
    }
        
}