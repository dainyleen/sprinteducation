trigger SprintTrainingTrigger on Student__c (after insert, after update) {

    for(Student__c stud:Trigger.new) {
        
        List<Enrolment_Records__c> enrolmentRecords = new List<Enrolment_Records__c>();
        
        if(Trigger.isAfter) {
            if(Trigger.isInsert) {
                Enrolment_Records__c newEnrolmentRec = new Enrolment_Records__c();
                newEnrolmentRec.Courses_Offered__c= 'a095i000000LV2lAAG';
                newEnrolmentRec.Student_Name__c = stud.Id;
                enrolmentRecords.add(newEnrolmentRec);
                insert enrolmentRecords;
            }
        }
        
    }  

}
