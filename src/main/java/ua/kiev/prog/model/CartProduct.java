package ua.kiev.prog.model;

import javax.persistence.*;

@Entity
@Table(name = "productSold")
public class CartProduct {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    private String article;

    @OneToOne(cascade=CascadeType.ALL)
    @JoinColumn(name = "category_id")
    private ProductCategory productCategory;
    private String name;
    private int quantity;
    private double price;

    public CartProduct(String article, ProductCategory productCategory, String name, int quantity, double price) {
        this.article = article;
        this.productCategory = productCategory;
        this.name = name;
        this.quantity = quantity;
        this.price = price;
    }

    public CartProduct() {
    }

    public CartProduct(int id, String name, int quantity, double price) {
        this.id = id;
        this.name = name;
        this.quantity = quantity;
        this.price = price;
    }

    public CartProduct(int id, String name, int price) {
        this.id = id;
        this.name = name;
        this.price = price;
    }

    public CartProduct(int id, String article, String name) {
        this.id = id;
        this.article = article;
        this.name = name;

    }

    public CartProduct(String article, String name) {
        this.article = article;
        this.name = name;
    }

    public CartProduct(String article, String name, ProductCategory productCategory) {
        this.article = article;
        this.name = name;
        this.productCategory = productCategory;
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

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getArticle() {
        return article;
    }

    public void setArticle(String article) {
        this.article = article;
    }

}
