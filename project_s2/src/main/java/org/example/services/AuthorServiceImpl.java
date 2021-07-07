package org.example.services;

import org.example.dao.AuthorDao;
import org.example.entity.Author;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class AuthorServiceImpl implements AuthorService{

    @Autowired
    private AuthorDao authorDao;

    @Override
    @Transactional
    public List<Author> getAuthor() {
        return authorDao.getAuthor();
    }

    @Override
    @Transactional
    public void saveAuthor(Author author) {
        authorDao.saveAuthor(author);
    }

    @Override
    @Transactional
    public Author getAuthor(int authorId) {
        return authorDao.getAuthor(authorId);
    }

    @Override
    @Transactional
    public void deleteAuthor(int authorId) {
        authorDao.deleteAuthor(authorId);
    }
}
