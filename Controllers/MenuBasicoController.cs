using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ProyectoPeluqueria.Controllers
{
    public class MenuBasicoController : Controller
    {
        // GET: MenuBasico
        public ActionResult Index()
        {
            return View();
        }
    }
}