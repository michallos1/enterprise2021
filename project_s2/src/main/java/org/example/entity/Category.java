package org.example.entity;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name="kategorie")
public class Category {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id")
    private int id;
    @Column(name="nazwa")
    private String name;

    public Category() {}

    public Category(String id) {
        this.id = Integer.parseInt(id);
    }


    @OneToMany(fetch = FetchType.LAZY,mappedBy = "category",cascade = CascadeType.ALL)
    List<Book> books;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<Book> getBooks() {
        return books;
    }
    public void setBooks(List<Book> books) {
        this.books = books;
    }
    public void addBook(Book book){
        if (books.isEmpty()) {
            books = new ArrayList<>();
        }
        book.setCategory(this);
        books.add(book);
    }


    @Override
    public String toString() {
        return "Kategoria{" +
                "id=" + id +
                ", nazwa='" + name + '\'' +
                '}';
    }
}
