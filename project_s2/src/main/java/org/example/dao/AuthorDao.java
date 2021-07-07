package org.example.dao;

import org.example.entity.Author;

import java.util.List;

public interface AuthorDao {
    List<Author> getAuthor();
    void saveAuthor(Author author);
    Author getAuthor(int authorId);
    void deleteAuthor(int authorId);
}
