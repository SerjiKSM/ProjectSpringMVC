package ua.kiev.prog.dao;


import ua.kiev.prog.model.ProductCategory;

public interface ProductCategoryDAO {

    public ProductCategory getProductCategoryId(String category_id);

    public ProductCategory getProductCategory(String category);

}
