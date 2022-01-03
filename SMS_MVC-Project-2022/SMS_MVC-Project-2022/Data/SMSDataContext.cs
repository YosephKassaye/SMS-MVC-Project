using Microsoft.EntityFrameworkCore;
using SMS_MVC_Project_2022.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SMS_MVC_Project_2022.Data
{
    public class SMSDataContext: DbContext 
    {
        public SMSDataContext(DbContextOptions<SMSDataContext> options):base(options)
        { }


        public DbSet<StudentModel> Student { get; set; }
        public DbSet<DepartmentModel> Department { get; set; }
        public DbSet<FacultyModel> Faculty { get; set; }
      
    }
}
