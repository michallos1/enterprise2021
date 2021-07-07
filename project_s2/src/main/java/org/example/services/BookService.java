package org.example.services;

import org.example.entity.Book;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface BookService {
    List<Book> getBooks();
    void saveBook(Book book);
    Book getBook(int bookId);
    void deleteBook(int bookId);
}
