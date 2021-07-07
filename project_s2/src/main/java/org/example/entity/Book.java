package org.example.entity;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name="ksiazki")
public class Book {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id")
    private int id;
    @Column(name="nazwa")
    private String name;
    @Column(name="wydawnictwo")
    private String publisher;
    @Column(name="cena")
    private float price;
    @ManyToOne(cascade =
            {CascadeType.DETACH,CascadeType.MERGE,CascadeType.PERSIST,CascadeType.REFRESH})
    @JoinColumn(name="kategoria_id")
    private Category category;

    @ManyToMany(fetch = FetchType.EAGER)
    @JoinTable(
            name="autorzy_to_ksiazki",//nazwa tabeli
            joinColumns = @JoinColumn(name="ksiazka_id"), //co laczymy
            inverseJoinColumns = @JoinColumn(name="autor_id") //z czym laczymy
    )
    private Set<Author> authors;

    public Book() {}

    public Book(String id) {
        this.id = Integer.parseInt(id);
    }

    public Book(String name, String publisher, float price) {
        this.name = name;
        this.publisher = publisher;
        this.price = price;
    }

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

    public String getPublisher() {
        return publisher;
    }

    public void setPublisher(String publisher) {
        this.publisher = publisher;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public Set<Author> getAuthors() {
        return authors;
    }

    public void setAuthors(Set<Author> authors) {
        this.authors = authors;
    }

    public void addAuthor(Author author){
        if (authors == null)
            authors = new HashSet<>();

        authors.add(author);
    }

    public void removeAuthor(Author author) {
        if (authors != null) {
            authors.remove(author);
        }
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    @Override
    public String toString() {
        return "Book{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", publisher='" + publisher + '\'' +
                ", price=" + price + '\'' +
                ", category=" + category + '\'' +
                '}';
    }
}
