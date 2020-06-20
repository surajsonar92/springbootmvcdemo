package com.library.demo.service;

import java.util.List;

import com.library.demo.entity.Book;

public interface BookService{
	
	public List<Book> getAllBooks();
	public void addBook(Book book);
	public void updateBook(Book book);
	public Book getBookById(Long book_id);
	public void deleteBook(Long book_id);

}
