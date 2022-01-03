using SMS_MVC_Project_2022.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SMS_MVC_Project_2022.Data.Repository
{
  public  interface IStudentRepository
    {
        // CRUD ==> Insert, Select, Update, Delete
        public List<StudentModel> GetAllStudent();
        public StudentModel GetByStudentId(int STudentId);

        public StudentModel UpdateStuentInfo(StudentModel stud);
        public StudentModel InsertStuentInfo(StudentModel stud);
        public void DeleteStudent(int studentId  );

    }
}
