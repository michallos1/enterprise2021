package org.example.dao;

import org.example.entity.Book;

import java.util.List;

public interface BookDao {
    List<Book> getBooks();
    void saveBook(Book book);
    Book getBook(int bookId);
    void deleteBook(int bookId);
}
