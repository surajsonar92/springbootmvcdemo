package com.library.demo.service;

public class BookNotFoundException extends Exception {

	private static final long serialVersionUID = 9070469553846276552L;
	
	public BookNotFoundException(){}
	
	public BookNotFoundException(String msg)
	{
		super(msg);
	}
}