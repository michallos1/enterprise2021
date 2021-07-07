package org.example.services;

import org.example.entity.Author;
import java.util.List;

public interface AuthorService {

    List<Author> getAuthor();
    void saveAuthor(Author author);
    Author getAuthor(int authorId);
    void deleteAuthor(int authorId);
}
