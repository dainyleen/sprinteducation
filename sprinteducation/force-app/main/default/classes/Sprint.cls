public class Sprint {
    
      public static void bulkCreateUpdateStudentRecords() {

    // Create (3) new students and randomly assign Prior Qualification & Enrolment Progression
    List<Student__c> studentList = new List<Student__c>();

    Student__c st1 = new Student__c();
    st1.Name = 'Dainy Veloria';
    st1.Prior_Qualification__c = 'Below Tertiary';
    st1.Enrolment_Progression__c = 'Ultimate';
    studentList.add(st1);

    Student__c st2 = new Student__c();
    st2.Name = 'John Mayer';
    st2.Prior_Qualification__c = 'Tertiary Graduate';
    st2.Enrolment_Progression__c = 'Advanced';
    studentList.add(st2);

    Student__c st3 = new Student__c();
    st3.Name = 'Ferdie Marcos';
    st3.Prior_Qualification__c = 'Tertiary Post-Graduate';
    st3.Enrolment_Progression__c = 'Advanced';
    studentList.add(st3);

    insert studentList;
    
    // Update "studentList" to the following logic
    List<Student__c> updateStudentList = new List<Student__c>();

    // If Prior Qualification == 'Below Tertiary' then Enrolment Progression == 'Advanced'
    for(Student__c st:studentList) {
      if(st.Prior_Qualification__c == 'Below Tertiary') {
        Student__c stud1 = new Student__c();
        stud1.Enrolment_Progression__c = 'Advanced';
        stud1.Id = st.Id;
        updateStudentList.add(stud1);
      }
    // If Prior Qualification == 'Tertiary Graduate' then Enrolment Progression == 'Ultimate'
      if(st.Prior_Qualification__c == 'Tertiary Graduate') {
        Student__c stud2 = new Student__c();
        stud2.Enrolment_Progression__c = 'Ultimate';
        stud2.Id = st.Id;
        updateStudentList.add(stud2);
      }
    // If Prior Qualification == 'Tertiary Graduate' then Enrolment Progression == 'Ultimate'
      if(st.Prior_Qualification__c == 'Tertiary Post-Graduate') {
        Student__c stud3 = new Student__c();
        stud3.Enrolment_Progression__c = 'Extra';
        stud3.Id = st.Id;
        updateStudentList.add(stud3);
      }
    }

    update updateStudentList;

  }
}