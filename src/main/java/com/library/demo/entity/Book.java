package com.library.demo.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Book {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	
	private Long bookId;
	
	private String bookName;
	
	private String aurthor;
	
	private String description;
	
	private String price;

	public Book() {
		
		
	}
	
	
	public Book(Long bookId, String bookName, String aurthor, String description, String price) {
		super();
		this.bookId = bookId;
		this.bookName = bookName;
		this.aurthor = aurthor;
		this.description = description;
		this.price = price;
	}


	public Long getBookId() {
		return bookId;
	}


	public void setBookId(Long bookId) {
		this.bookId = bookId;
	}


	public String getBookName() {
		return bookName;
	}


	public void setBookName(String bookName) {
		this.bookName = bookName;
	}


	public String getAurthor() {
		return aurthor;
	}


	public void setAurthor(String aurthor) {
		this.aurthor = aurthor;
	}


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}


	public String getPrice() {
		return price;
	}


	public void setPrice(String price) {
		this.price = price;
	}
	
	@Override
	public String toString() {
		return "Book [bookId=" + bookId + ", bookName=" + bookName + ", aurthor=" + aurthor + ", description="
				+ description + ", price=" + price + "]";
	}

	
}
