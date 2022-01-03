using SMS_MVC_Project_2022.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SMS_MVC_Project_2022.Data.Repository
{
    public class StudentRepository : IStudentRepository
    {
        private readonly SMSDataContext _context;

        public StudentRepository(SMSDataContext context)
        {
            _context = context;

        }
        public void DeleteStudent(int studentId)
        {
            throw new NotImplementedException();
        }

        public List<StudentModel> GetAllStudent()
        {
            var result = _context.Student.ToList();
            return result;
        }

        public StudentModel GetByStudentId(int StudentId)
        {
            var result = _context.Student.FirstOrDefault(x => x.StudentId == StudentId);
            return result;
        }

        public StudentModel InsertStuentInfo(StudentModel stud)
        {
            throw new NotImplementedException();
        }

        public StudentModel UpdateStuentInfo(StudentModel stud)
        {
            throw new NotImplementedException();
        }
    }
}
