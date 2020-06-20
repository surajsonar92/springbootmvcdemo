package com.library.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.library.demo.entity.Book;
import com.library.demo.entity.User;
import com.library.demo.service.BookService;

@Controller
public class BookController {
	
	@Autowired
	BookService bookService;
	
	@GetMapping("/book/add")
	public String showAddBookPage() {
		return "add-book";
	}
	
	@RequestMapping("/book/save")
	public String save(@ModelAttribute("book")Book book)
	{
		bookService.addBook(book);
		return "redirect:/user/profile";
		
		
	}
	@GetMapping("/book/edit/{bookId}")
	public String showUpdateBookPage(@PathVariable("bookId") Long bookId,Model model) {
		Book book=bookService.getBookById(bookId);
		model.addAttribute("updateBookInfo", book);
		return "add-book";
	}
	@RequestMapping("/book/update")
	public String updateBook(Model model,@ModelAttribute("book")Book book) {
		bookService.updateBook(book);
		model.addAttribute("message","Book Updated Sucessfully!");
		return "redirect:/user/profile";
	}
	@RequestMapping("/book/delete/{bookId}")
	public String deleteBook(@PathVariable("bookId") Long bookId,Model model) {
		bookService.deleteBook(bookId);
		model.addAttribute("message","Book Deleted Sucessfully!");
		return "redirect:/user/profile";
	}
	
	
	

}
