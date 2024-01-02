trigger Airline_Trigger on Airline__c (before delete) 
{
    list<Airline__c>air = [select ID,(select Airline_Name__c from Boarding_Detail__c) from Airline__c where ID == trigger.old];
    if(air.size()>0)
    {
        for(Airline__c a: air)
        {
            trigger.oldMap.get(a.ID).addError('Enable to Delted Related Airline');

        }
    }
}