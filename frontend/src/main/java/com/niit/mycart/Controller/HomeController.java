package com.niit.mycart.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {

	@RequestMapping("/")
	public String home() {
		return "home";
	}

	@RequestMapping("/customer/cart")
	public String cartMethod() {

		return "Cart";
	}
	@RequestMapping("/customer/cart/billingaddress")
	public String  billingMethod() {

		return "billingaddress";
	}

	@RequestMapping("/login")
	public String login(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout, Model model) {
		if (error != null) {
			model.addAttribute("error", "Invalid username and password");
		}

		if (logout != null) {
			model.addAttribute("msg", "You have been logged out successfully.");
		}

		return "login";
	}

	@RequestMapping("/about")
	public String about() {
		return "about";
	}
}
