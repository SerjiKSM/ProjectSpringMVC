package ua.kiev.prog.dao;


import org.springframework.beans.factory.annotation.Autowired;
import ua.kiev.prog.model.ProductCategory;

import javax.persistence.EntityManager;

public class ProductCategoryDAOImpl implements ProductCategoryDAO {

    @Autowired
    private EntityManager entityManager;


    @Override
    public ProductCategory getProductCategoryId(String category_id) {

        javax.persistence.Query query = entityManager.createQuery("SELECT a FROM ProductCategory a  WHERE a.id =:arg", ProductCategory.class);
        query.setParameter("arg", category_id);
        return (ProductCategory) query.getResultList().get(0);

        //return null;
    }

    @Override
    public ProductCategory getProductCategory(String category) {

        javax.persistence.Query query = entityManager.createQuery("SELECT a FROM ProductCategory a  WHERE a.category =:arg", ProductCategory.class);
        query.setParameter("arg", category);
        return (ProductCategory) query.getResultList().get(0);

    }

}
