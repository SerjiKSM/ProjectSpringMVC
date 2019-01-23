package ua.kiev.prog.model;

import javax.persistence.*;

@Entity
@Table(name = "product")
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;

    private String article;
    private String name;
    private String fullName;
    private double price;
    private String comment;

    @OneToOne(cascade=CascadeType.ALL)

    @JoinColumn(name = "photo_id")
    private Photo photo;

    @ManyToOne(cascade=CascadeType.ALL)
    @JoinColumn(name = "category_id")
    private ProductCategory productCategory;

    public Product() {
    }

    public Product(String article, String name, String fullName, double price, String comment, Photo photo, ProductCategory productCategory) {
        this.article = article;
        this.name = name;
        this.fullName = fullName;
        this.price = price;
        this.comment = comment;
        this.photo = photo;
        this.productCategory = productCategory;
    }

    public ProductCategory getProductCategory() {
        return productCategory;
    }

    public void setProductCategory(ProductCategory productCategory) {
        this.productCategory = productCategory;
    }

    public long getId() {
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

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public String getArticle() {
        return article;
    }

    public void setArticle(String article) {
        this.article = article;
    }

    public Photo getPhoto() {
        return photo;
    }

    public void setPhoto(Photo photo) {
        this.photo = photo;
    }



}
