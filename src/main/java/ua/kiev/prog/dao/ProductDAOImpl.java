package ua.kiev.prog.dao;


import org.springframework.beans.factory.annotation.Autowired;
import ua.kiev.prog.model.Photo;
import ua.kiev.prog.model.Product;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import java.util.List;

public class ProductDAOImpl implements ProductDAO {

    @Autowired
    private EntityManager entityManager;


    @Override
    public List<Product> list() {
        Query query = entityManager.createQuery("SELECT a FROM Product a", Product.class);
        return (List<Product>) query.getResultList();
    }

    @Override
    public List<Product> list(String category_id) {

        Query query = entityManager.createQuery("SELECT a FROM Product a WHERE a.category_id =:arg", Product.class);
        query.setParameter("arg", category_id);
        return (List<Product>) query.getResultList();

    }

    @Override
    public void add(Product product) {
        try {
            entityManager.getTransaction().begin();
            entityManager.persist(product);
            entityManager.getTransaction().commit();
        } catch (Exception ex) {
            entityManager.getTransaction().rollback();
            ex.printStackTrace();
        }
    }

    @Override
    public void delete(long id) {
        try {
            entityManager.getTransaction().begin();
            Product product = entityManager.find(Product.class, id);
            entityManager.remove(product);
            entityManager.getTransaction().commit();
        } catch (Exception ex) {
            entityManager.getTransaction().rollback();
            ex.printStackTrace();
        }
    }

    @Override
    public byte[] getPhoto(long id) {
        try {
            Photo photo = entityManager.find(Photo.class, id);
            return photo.getBody();
        } catch (Exception ex) {
            ex.printStackTrace();
            return null;
        }
    }
}
