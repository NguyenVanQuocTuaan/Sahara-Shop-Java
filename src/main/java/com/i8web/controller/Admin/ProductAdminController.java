package com.i8web.controller.Admin;




import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


import com.i8web.Service.Admin.CategoriesPostService;
import com.i8web.Service.Admin.CategoriesProductService;
import com.i8web.Service.Admin.ProductService;
import com.i8web.entity.Admin.Products;

@Controller

public class ProductAdminController extends BaseProductController{
	@Autowired
	ProductService productService;
	CategoriesProductService categoriesProductService;
	@RequestMapping(value = "/admin/product/create", method = RequestMethod.GET)
	   public ModelAndView create(HttpSession session) {
		if (session.getAttribute("adminAccount") == null) {
			ModelAndView mav = new ModelAndView("admin/register/login");
			mav.addObject("isError", false);
			return mav;
		}
	      _mav.addObject("product", new Products());
	      _mav.setViewName("admin/product/create");
	      return _mav;
	   }
	 @RequestMapping(value = "/admin/product/create", method = RequestMethod.POST)
	   public String create(@ModelAttribute("product") Products product,HttpServletRequest req) {
	      
	      productService.insertProduct(product);
	      
	      return "redirect:/admin/product/list";
	   }
	   @RequestMapping(value = "/admin/product/list", method = RequestMethod.GET)
	   public ModelAndView list(HttpSession session) {
		   if (session.getAttribute("adminAccount") == null) {
				ModelAndView mav = new ModelAndView("admin/register/login");
				mav.addObject("isError", false);
				return mav;
			}
	      ModelAndView mav = new ModelAndView("/admin/product/list");
	      mav.addObject("products", productService.getListProducts());
	      return mav;
	   }
	   @RequestMapping(value = "DeleteProduct/{id}")
	   public String delete(@PathVariable int id,HttpServletRequest req) {
	   productService.deleteProduct(id);
	   return "redirect:/admin/product/list";
	   } 
	   @RequestMapping(value = "/EditProduct/{id}", method = RequestMethod.GET)
	   public ModelAndView getEdit(@PathVariable int id,@ModelAttribute("product") Products product, HttpSession session) {
		   if (session.getAttribute("adminAccount") == null) {
				ModelAndView mav = new ModelAndView("admin/register/login");
				mav.addObject("isError", false);
				return mav;
			}
	      _mav.addObject("products", productService.getListProducts());
	      _mav.addObject("ProductId", productService.GetProductById(id));
	      _mav.setViewName("/admin/product/edit");
	      return _mav;
	   }
	   @RequestMapping(value = "/EditProduct/{id}", method = RequestMethod.POST)
	   public String postEdit(@PathVariable int id,@ModelAttribute("product") Products product,HttpServletRequest req) {
		   String description = req.getParameter("desc");
		   String detail = req.getParameter("detail");
		   String image = req.getParameter("image");
		   String fileValue = req.getParameter("file");
		   productService.updateProduct(product,description,detail,getValueImage(fileValue, image));
	      return "redirect:/admin/product/list";
	   }
	   public String getValueImage(String fileValue, String image) {
		   if(fileValue == "") {
			   return image;
}
		   else {
			   return fileValue;
		   }
	   }
	   
		
}