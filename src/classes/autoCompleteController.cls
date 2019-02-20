//anupam081
//controller for autocomplete search

public with sharing class autoCompleteController {
    @AuraEnabled
    public static List < sObject > fetchValues(String searchKeyWord, String ObjectName, List<sObject> ExcludeitemsList) {
        String searchKey = '%' + searchKeyWord + '%';              
        
        // Create a Dynamic SOQL Query For Fetch Record List with LIMIT 5 and exclude already selected records  
        String sQuery =  'select id, Name from ' +ObjectName;
        sQuery += ' where Name LIKE: searchKey AND Id NOT IN : ExcludeitemsList order by createdDate DESC limit 5';
        List <sObject> lstOfRecords = new List<sObject>();
        List <sObject> lstOfRecords = Database.query(sQuery);        
        
        return returnList;
    }
}