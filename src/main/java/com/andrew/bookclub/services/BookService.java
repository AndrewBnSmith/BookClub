package com.andrew.bookclub.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.andrew.bookclub.models.Book;
import com.andrew.bookclub.repositories.BookRepository;

@Service
public class BookService {
	
	@Autowired
	private BookRepository bookRepo;
	
	
	// CREATE / UPDATE A RECIPE
	public Book save(Book bookObj) {
		return bookRepo.save(bookObj);
	}
	
	// GET ALL RECIPE
	public List<Book> getAllBooks(){
		return bookRepo.findAll();
	}
	
	// GET ONE RECIPE
	public Book getOneBook(Long id) {
		return bookRepo.findById(id).orElse(null);
	}
	
	// DELETE ONE RECIPE
	public void deleteOneBook(Long id) {
		bookRepo.deleteById(id);
	}
}