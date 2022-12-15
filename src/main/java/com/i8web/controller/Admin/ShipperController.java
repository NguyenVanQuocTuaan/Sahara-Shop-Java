package com.i8web.controller.Admin;

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

import com.i8web.Service.Admin.SessionService;
import com.i8web.entity.Admin.Order;
import com.i8web.model.Admin.LoginModel;
import com.i8web.model.Admin.OrderModel;
import com.i8web.model.Admin.ShipperModel;
import com.i8web.model.Admin.SignupModel;

@Controller
public class ShipperController {
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
	@RequestMapping(value = "/shipper", method = RequestMethod.GET)
	public ModelAndView loginShipper(HttpSession session) {
		if(session.getAttribute("shipperAccount") == null) {
			ModelAndView mav = new ModelAndView("admin/register_shipper/login");
			mav.addObject("isError", false);
			return mav;
		}
		ModelAndView mav = new ModelAndView("admin/shipper/list");
		return mav;
	}
	
	@RequestMapping(value = "/shipper/login", method = RequestMethod.POST)
	public String checkLoginShipper(@RequestParam("username") String username, HttpSession session,
			@RequestParam("password") String password) {
		if (shipperModel.checkDataLogin(username, password)) {
			session.setAttribute("shipperAccount", username);
			return "redirect:/shipper/order/list";
		} else {
			return "redirect:/shipper";
		}
	}
	
	@RequestMapping(value = "/shipper/signup", method = RequestMethod.GET)
	public ModelAndView signPageShipper() {
		ModelAndView mav = new ModelAndView("admin/register_shipper/signup");
		return mav;
	}
	@RequestMapping(value = "/shipper/sign", method = RequestMethod.POST)
	public ModelAndView checkSignupShipper(@RequestParam("username") String username,
			@RequestParam("password") String password, @RequestParam("email") String email,
			@RequestParam("name") String name) {
		if (shipperModel.signupAccount(username, password, email, name)) {
			ModelAndView mav = new ModelAndView("admin/register_shipper/login");
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/register_shipper/signup");
			mav.addObject("isError", "Tài khoản đã tồn tại!");
			return mav;
		}
	}
	
	@RequestMapping(value = "/shipper/order/list", method = RequestMethod.GET)
	public ModelAndView pageShipperOrder(HttpSession session) {
		if(session.getAttribute("shipperAccount") == null) {
			ModelAndView mav = new ModelAndView("admin/register_shipper/login");
			mav.addObject("isError", false);
			return mav;
		}
		ModelAndView mav = new ModelAndView("admin/shipper/list");
		mav.addObject("orders", shipperModel.getDataOrder());
		return mav;
	}
	
	@RequestMapping(value = "/shipper/order/detail/{id}", method = RequestMethod.GET)
	public ModelAndView getDetail(@PathVariable int id,@ModelAttribute("order") Order order,HttpServletRequest req) {
		ModelAndView mav = new ModelAndView("/admin/shipper/detail");
		System.out.println(id);
		mav.addObject("listOrder", orderModel.GetOrderById(id));
		mav.addObject("orders", orderModel.getData());
		mav.addObject("productDetails", orderModel.getProductByOrderID(id));
		return mav;
	}
	
	@RequestMapping(value = "/shipper/order/detail/{id}", method = RequestMethod.POST)
	public String postDetail(@PathVariable int id,@ModelAttribute("order") Order order,HttpServletRequest req,HttpSession session) {
		orderModel.UpdateDataOrder(order);
		return "redirect:/shipper/order/detail/{id}";
	}
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logoutAdmin(HttpSession session) {
		session.removeAttribute("adminAccount");
		return "redirect:/admin";
	}
	@RequestMapping(value = "/shipper/logout", method = RequestMethod.GET)
	public String logoutShipper(HttpSession session) {
		session.removeAttribute("shipperAccount");
		return "redirect:/shipper";
	}
}
