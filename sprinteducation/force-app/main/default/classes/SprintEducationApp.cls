public with sharing class SprintEducationApp {
   public static void bulkCreateUpdateStudentRecords() {

    // Create (3) new students and write "Below Tertiary" as their initial Prior Qualification and 'Advanced' as their Enrolment Progression
    List<Student__c> studentList = new List<Student__c>();

    Student__c st1 = new Student__c();
    st1.Name = 'Dainy Veloria';
    st1.Prior_Qualification__c = 'Below Tertiary';
    st1.Enrolment_Progression__c = 'Advanced';
    studentList.add(st1);

    Student__c st2 = new Student__c();
    st2.Name = 'John Mayer';
    st2.Prior_Qualification__c = 'Below Tertiary';
    st2.Enrolment_Progression__c = 'Advanced';
    studentList.add(st2);

    Student__c st3 = new Student__c();
    st3.Name = 'Ferdie Marcos';
    st3.Prior_Qualification__c = 'Below Tertiary';
    st3.Enrolment_Progression__c = 'Advanced';
    studentList.add(st3);

  }
}