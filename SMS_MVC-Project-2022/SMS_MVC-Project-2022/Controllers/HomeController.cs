using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using SMS_MVC_Project_2022.Data.Repository;
using SMS_MVC_Project_2022.Models;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;

namespace SMS_MVC_Project_2022.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;

        private readonly IStudentRepository _studentRepo;

        public HomeController(ILogger<HomeController> logger, IStudentRepository studentrepo)
        {
            _logger = logger;
            _studentRepo = studentrepo;
        }

        public IActionResult Index()
        {
            var result=_studentRepo.GetAllStudent();
            return View(result);
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
