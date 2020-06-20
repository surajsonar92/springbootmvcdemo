package com.library.demo.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.library.demo.entity.Book;
import com.library.demo.repository.BookRepository;

@Service
public class BookServiceImpl implements BookService {
	@Autowired
	BookRepository bookrepository;

	@Override
	public List<Book> getAllBooks() {

		return bookrepository.findAll();
	}

	@Override
	public void addBook(Book book) {

		bookrepository.saveAndFlush(book);
	}

	@Override
	public Book getBookById(Long book_id) {

		Optional<Book> bookdata = bookrepository.findById(book_id);
		try {
			if (!bookdata.isPresent()) {

				throw new BookNotFoundException("No records found by ID : " + book_id);
			}

		} catch (BookNotFoundException b) {
			b.printStackTrace();

		}
		return bookdata.get();

	}

	@Override
	public void deleteBook(Long book_id) {
		
		bookrepository.deleteById(book_id);

	}

	@Override
	public void updateBook(Book book) {
		System.out.println("before update.."+book);
		bookrepository.save(book);
		System.out.println("After update.."+book);
		
	}

}
