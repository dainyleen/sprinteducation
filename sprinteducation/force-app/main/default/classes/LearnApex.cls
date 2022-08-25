public with sharing class LearnApex {
   
        public static void createContact() {
        
            Contact contactRecord = new Contact();
            
            contactRecord.FirstName = 'Jane';
            contactRecord.LastName = 'Keys';
            contactRecord.Email = 'test@missionready.com';
            contactRecord.MobilePhone = '027123456';
             contactRecord.MailingStreet = '101 Ballarat Street';
            contactRecord.MailingCity = 'Ellerslie';
            
            insert contactRecord;
            System.debug(contactRecord);
        }

}