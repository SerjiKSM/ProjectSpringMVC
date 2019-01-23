package ua.kiev.prog.services;

import ua.kiev.prog.model.CartProduct;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;

public class SessionService {

    public void checkSessionAttributes(HttpSession session) {
        try {
            ArrayList<CartProduct> cartProductList = (ArrayList<CartProduct>) session.getAttribute("cartProductList");
            int cartCount = (int) session.getAttribute("cartCount");
        } catch (Exception e) {
            ArrayList<CartProduct> cartProductList = new ArrayList<CartProduct>();
            session.setAttribute("cartProductList", cartProductList);
            session.setAttribute("cartCount", cartProductList.size());
        }
    }

    public ArrayList<CartProduct> getAttributeAllProductsInCart(HttpSession session) {
        return (ArrayList<CartProduct>) session.getAttribute("cartProductList");
    }

    public void setSessionAttribute(HttpSession session, String name, Object object) {
        session.setAttribute(name, object);
    }

    public int getAttributeQuantityOfProductsInCart(HttpSession session) {
        return (int) session.getAttribute("cartCount");
    }

    public int getAmountOfProductsInCart(HttpSession session) {
        int amount = 0;
        ArrayList<CartProduct> cartProductList = (ArrayList<CartProduct>) session.getAttribute("cartProductList");
        for (int i = 0; i < cartProductList.size(); i++) {
            amount += cartProductList.get(i).getPrice();
        }
        return amount;
    }

}
