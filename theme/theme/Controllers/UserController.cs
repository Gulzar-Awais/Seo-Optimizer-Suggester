using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data.Entity;
using theme.Models;

namespace theme.Controllers
{
    public class UserController : Controller
    {
        // GET: User
        private mydb db = new mydb();
        // GET: User
        public ActionResult Index()
        {

            return View();
        }
        public ActionResult Create()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(users s)
        {
            if (ModelState.IsValid)
            {
                db.usrs.Add(s);
                db.SaveChanges();
                return RedirectToAction("login");
            }
            return View(s);
        }
        public ActionResult login()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]

        public ActionResult login(users s)
        {
            var v = db.usrs.Where(m => m.name == s.name && m.password == s.password);
            if (v != null)
            {
                Session["islogin"] = true;
                Session["role"] = s.name;
                return Redirect("~/SeoOptimizer.aspx");
            }

            return View();
        }
        public ActionResult logout()
        {
            Session.Clear();
            return RedirectToAction("login");
        }
    }
}