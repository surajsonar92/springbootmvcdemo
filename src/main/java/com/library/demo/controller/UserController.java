package com.library.demo.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.library.demo.entity.Book;
import com.library.demo.entity.User;
import com.library.demo.service.BookService;
import com.library.demo.service.UserService;

@Controller
public class UserController {
	@Autowired
	UserService userService;
	
	@Autowired
	BookService bookService;

	@GetMapping(value = "/")
	public String showRegistrationPage(Model model) {
		return "register";
	}

	@GetMapping(value = "/user/login")
	public String showLoginPage() {
		return "login";
	}

	@GetMapping(value = "/user/profile")
	public String showProfilePage(HttpSession session,Model model) {
		String url = "profile";
		if (session.getAttribute("user") == null) {
			url = "login";
		}
		List<Book> allBooks = bookService.getAllBooks();		
		model.addAttribute("allBooks", allBooks);
		return url;
	}

	@GetMapping(value = "/user/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "login";
	}

	@PostMapping("/user/save")
	public String save(@ModelAttribute("user")User user,Model model)
	{
		userService.registerUser(user);
		model.addAttribute("message","Registered Sucessfully!");
		return "redirect:/user/login";
		
		
	}

	@RequestMapping(value="/user/logincheck",method = RequestMethod.POST)
	public String loginCheck(@ModelAttribute("user")User user,Model model,HttpSession session,@RequestParam Map<String,String> requestParams)throws Exception
	{
		User userInfo=userService.getUserByEmailId(requestParams.get("emailId"));
		if(userInfo.getEmailId().equals(requestParams.get("emailId")) && userInfo.getPassword().equals(requestParams.get("password")))
		{
			session.setAttribute("user",userInfo);
			
		}else
		{
			model.addAttribute("message","username or password did not match. Please try again!");
			return "/login";
		}
		return "redirect:/user/profile";
		
		
	}
}
