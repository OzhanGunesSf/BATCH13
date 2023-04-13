//Endpoint : https://batch-13-dev-ed.develop.my.salesforce.com/services/apexrest/Case/
@RestResource(urlMapping = '/Case/*')
global with sharing class CaseManager {
    
    /**
        *  This method is exposing Case record by their Salesforce Id
        * Endpoint : https://batch-13-dev-ed.develop.my.salesforce.com/services/apexrest/Case/5008d00000Jey96AAB
        * Http Method : GET
    */
    @HttpGet
    global static Case getCaseById(){
        //grab the caseId from the end of the URL
        RestRequest request = RestContext.request;
        String uri = request.requestURI;

        Integer lastIndex = uri.lastIndexOf('/'); //to find the index of last "/" character
        Id caseId = uri.substring(lastIndex+1);

        Case cs = [SELECT Id, CaseNumber, Subject, Description, Type, Priority
                   FROM Case
                   WHERE Id =: caseId];
        return cs;
    }
}