package org.example.dao;

import org.example.entity.Author;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class AuthorDaoImpl implements AuthorDao{
    private SessionFactory sessionFactory;
    @Autowired
    public void setSessionFactory(SessionFactory sessionFactory){
        this.sessionFactory = sessionFactory;
    }


    @Override
    public List<Author> getAuthor() {
        //sesja hibernate
        Session currentSession = sessionFactory.getCurrentSession();
        //zapytanie
        Query<Author> query = currentSession.createQuery(" from Author", Author.class);
        List<Author> author = query.getResultList();
        return author;
    }

    @Override
    public void saveAuthor(Author author) {
        Session session = sessionFactory.getCurrentSession();
        session.save(author);
    }

    @Override
    public Author getAuthor(int authorId) {
        Session session = sessionFactory.getCurrentSession();
//        return session.get(Author.class, authorId);
        return new Author();
    }

    @Override
    public void deleteAuthor(int authorId) {

    }
}
