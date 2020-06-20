package com.library.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.library.demo.entity.Book;
@Repository
public interface BookRepository extends JpaRepository<Book, Long> {

}
