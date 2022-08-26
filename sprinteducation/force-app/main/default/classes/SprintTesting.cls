@isTest
public with sharing class SprintTesting {
  @isTest
  private static void testingSprintApexClass() {

    Test.startTest();
    Student__c studTest = new Student__c();
    studTest.Name = 'Gimme Moore';
    studTest.Prior_Qualification__c = 'Tertiary Graduate';
    studTest.Enrolment_Progression__c = 'Advanced';
    insert studTest;

    List<Student__c> studentList = new List<Student__c>();

    String enrolmentProgression;
    
    for(Student__c st:studentList) {
      enrolmentProgression = st.Enrolment_Progression__c;
    }

    System.assertEquals('Ultimate', enrolmentProgression , 'Error Message');
    Test.stopTest();

  }

}
