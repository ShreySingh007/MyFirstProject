public with sharing class Airline {
    public static List<Airline__c> getBusiness() {
        return [SELECT Name, Boarding__c, Cost_Per_Seat__c,Destination__c,No_Of_Bookings__c FROM Airline__c WHERE Seat_Type__c = 'Business Class' WITH SECURITY_ENFORCED];
    }
}
