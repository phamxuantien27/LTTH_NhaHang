﻿using LTTH_NhaHang.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;

namespace LTTH_NhaHang.Areas.Admin.Controllers
{
    [Authorize]
    public class AdminController : Controller
    {
        Model1 db = new Model1();
        // GET: Admin/Admin
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Blog()
        {
            return View();
        }
        public ActionResult Monan()
        {
            return View();
        }
        public ActionResult Loaimonan()
        {
            return View();
        }
        public ActionResult Nguoidung()
        {
            return View();
        }
        [AllowAnonymous]
        public ActionResult Login()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Logout()
        {
            FormsAuthentication.SignOut();
            return View("Login");
        }
        [HttpPost]
        [AllowAnonymous]
        public ActionResult Login(string username, string pwd)
        {
            var user = db.NGUOIDUNGs.Where(x => x.username == username).FirstOrDefault();
            if (user == null)
            {
                return View();
            }
            else
            {
                if (pwd == user.password)
                {
                    Session["Nguoidung"] = user;
                    return View("Monan");
                }
                else
                {
                    return View();
                }
            }
        }
    }
}