package ua.kiev.prog.dao;


import ua.kiev.prog.model.Product;

import java.util.List;

public interface ProductDAO {

    List<Product> list();
    List<Product> list(String pattern);
    void add(Product product);
    void delete(long id);
    byte[] getPhoto(long id);

}
