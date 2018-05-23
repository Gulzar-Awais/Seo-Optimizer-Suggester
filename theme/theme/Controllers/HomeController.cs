using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using theme.Models;

namespace theme.Controllers


{

    public class HomeController : Controller
    {
        private mydb db = new mydb();
        // GET: Home
        public ActionResult Index()
        {
            var list = db.us.ToList();
            return View(list);
        }
        public ActionResult Create()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Create(user s)
        {
            if(ModelState.IsValid)
            {
                db.us.Add(s);
                db.SaveChanges();
                TempData["Message"] = "record has been saved";
                return RedirectToAction("Index");

            }
            return View(s);
        }
        public ActionResult Edit(int? id)
        {
            var data = db.us.Find(id);
            if (data == null)
            {
                return RedirectToAction("Index");
            }
            return View(data);
        }
        [HttpPost]
        public ActionResult Edit(user u)
        {
            if (ModelState.IsValid)
            {
                db.Entry(u).State = EntityState.Modified;
                db.SaveChanges();
                TempData["Message"] = "recoed has been edit";
                return RedirectToAction("Index");
            }
            return View(u);
        }
        public ActionResult Delete(int? id)
        {
            var data = db.us.Find(id);
            if (data != null)
            {
                db.us.Remove(data);
                db.SaveChanges();
                TempData["Message"] = "recoed has been remove";
            }
            return RedirectToAction("Index");
        }
        
    }
}

