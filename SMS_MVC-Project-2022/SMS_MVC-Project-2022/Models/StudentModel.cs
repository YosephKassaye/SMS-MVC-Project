using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace SMS_MVC_Project_2022.Models
{
    public class StudentModel
    {
        [Key]
        public int StudentId { get; set; }
        public string FName { get; set; }
        public string LName { get; set; }
        public DateTime? DOB { get; set; }
        public int DepartmentId { get; set; }
        public string Gender { get; set; }
        public string Email { get; set; }
        public string SSN { get; set; }
}
}
