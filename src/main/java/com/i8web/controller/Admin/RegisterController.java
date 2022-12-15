package com.i8web.controller.Admin;

import com.i8web.Service.Admin.SessionService;
import com.i8web.entity.Admin.Order;
import com.i8web.entity.Admin.UserAccount;
import com.i8web.model.Admin.LoginModel;
import com.i8web.model.Admin.OrderModel;
import com.i8web.model.Admin.ShipperModel;
import com.i8web.model.Admin.SignupModel;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class RegisterController {
	@Autowired
	LoginModel loginModel;
	@Autowired
	SignupModel signupModel;
	@Autowired
	ShipperModel shipperModel;
	@Autowired
	SessionService sessionService;
	@Autowired
	OrderModel orderModel;

	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public ModelAndView loginPage(HttpSession session) {
		if(session.getAttribute("adminAccount") == null) {
			ModelAndView mav = new ModelAndView("admin/register/login");
			mav.addObject("isError", false);
			return mav;
		}
		ModelAndView mav = new ModelAndView("admin/order/list");
		mav.addObject("userAccount", session.getAttribute("adminAccount"));
		return mav;
	}

	@RequestMapping(value = "/useradmin/login", method = RequestMethod.POST)
	public String checkLogin(@RequestParam("username") String username,
			@RequestParam("password") String password) {
		if (loginModel.checkDataLogin(username, password)) {
			sessionService.set("adminAccount", username);
			return "redirect:/admin/order/list";
		} else {
			return "redirect:/admin";
		}
	}

	@RequestMapping(value = "/admin/signup", method = RequestMethod.GET)
	public ModelAndView signPage() {
		ModelAndView mav = new ModelAndView("admin/register/signup");
		return mav;
	}

	@RequestMapping(value = "/admin/login", method = RequestMethod.POST)
	public ModelAndView checkSignup(@RequestParam("username") String username,
			@RequestParam("password") String password, @RequestParam("email") String email,
			@RequestParam("name") String name) {
		if (signupModel.signupAccount(username, password, email, name)) {
			ModelAndView mav = new ModelAndView("admin/register/login");
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/register/signup");
			mav.addObject("isError", signupModel.errorMessageString);
			return mav;
		}
	}
	
	
}