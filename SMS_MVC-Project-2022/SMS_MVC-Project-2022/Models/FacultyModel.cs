using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace SMS_MVC_Project_2022.Models
{
    public class FacultyModel
    {
        [Key]
        public int FacultyId { get; set; }
        public string FacultyName { get; set; }
    }
}
