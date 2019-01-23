package ua.kiev.prog.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import ua.kiev.prog.dao.AdvDAO;
import ua.kiev.prog.dao.ProductDAO;
import ua.kiev.prog.model.*;
import ua.kiev.prog.services.SessionService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

@Controller
//@RequestMapping("/SpringMVC_war_exploded")
@RequestMapping("/")
public class MainController {

    @Autowired
    private AdvDAO advDAO;

//	@RequestMapping("/")
//	public ModelAndView listAdvs() {
//		return new ModelAndView("index", "advs", advDAO.list());
//	}

	@RequestMapping(value = "/add_page", method = RequestMethod.POST)
	public String addPage(Model model) {
		return "add_page";
	}

	@RequestMapping(value = "/search", method = RequestMethod.POST)
	public ModelAndView search(@RequestParam(value="pattern") String pattern) {
		return new ModelAndView("index", "advs", advDAO.list(pattern));
	}

	@RequestMapping("/delete")
	public ModelAndView delete(@RequestParam(value="id") long id) {
		advDAO.delete(id);
		return new ModelAndView("index", "advs", advDAO.list());
	}

//	@RequestMapping("/image/{file_id}")
//	public void getFile(HttpServletRequest request, HttpServletResponse response, @PathVariable("file_id") long fileId) {
//		try {
//			byte[] content = advDAO.getPhoto(fileId);
//			response.setContentType("image/png");
//			response.getOutputStream().write(content);
//		} catch (IOException ex) {
//			ex.printStackTrace();
//		}
//	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public ModelAndView addAdv(@RequestParam(value="name") String name,
						 @RequestParam(value="shortDesc") String shortDesc,
						 @RequestParam(value="longDesc", required=false) String longDesc,
						 @RequestParam(value="phone") String phone,
						 @RequestParam(value="price") double price,
						 @RequestParam(value="photo") MultipartFile photo,
						 HttpServletRequest request,
						 HttpServletResponse response)
    {
		try {
			Advertisement adv = new Advertisement(
					name, shortDesc, longDesc, phone, price,
					photo.isEmpty() ? null : new Photo(photo.getOriginalFilename(), photo.getBytes())
			);
			advDAO.add(adv);
			return new ModelAndView("index", "advs", advDAO.list());
		} catch (IOException ex) {
			response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
			return null;
		}
	}


   // Product

    @Autowired
    private ProductDAO productDAO;

    @Autowired
    private SessionService sessionService;

    @RequestMapping("/")
    public ModelAndView listAdvs() {
//        return new ModelAndView("index", "advs", advDAO.list());

        return new ModelAndView("PageIndexStore", "", "");

//        return new ModelAndView("test", "", "");
    }

    @RequestMapping(value = "/add_product", method = RequestMethod.POST)
    public String addPageProduct(Model model) {
        return "PadeAddProduct";
    }

    //    @RequestMapping(value = "/get_product", method = RequestMethod.POST)
    @RequestMapping(value = "/getWoomenSneakers")
    public ModelAndView listWoomenSneakersProducts(@RequestParam(value="category") String category) {
        return new ModelAndView("PageProduct", "products", productDAO.list(category));

    }

    @RequestMapping(value = "/get_product")
    public ModelAndView listProducts() {
        return new ModelAndView("PageProduct", "products", productDAO.list());
    }

    @RequestMapping("/image/{file_id}")
    public void getFile(HttpServletRequest request, HttpServletResponse response, @PathVariable("file_id") long fileId) {
        try {
            byte[] content = productDAO.getPhoto(fileId);
            response.setContentType("image/png");
            response.getOutputStream().write(content);
        } catch (IOException ex) {
            ex.printStackTrace();
        }
    }

    @RequestMapping(value = "/addProduct", method = RequestMethod.POST)
    public ModelAndView addProduct(@RequestParam(value="article") String article,
                               @RequestParam(value="name", required=true) String name,
                               @RequestParam(value="fullName", required=false) String fullName,
                               @RequestParam(value="price", required=false) double price,
                               @RequestParam(value="comment") String comment,
                               @RequestParam(value="photo") MultipartFile photo,
                               @RequestParam(value="category") ProductCategory productCategory,
                               HttpServletRequest request,
                               HttpServletResponse response)
    {

        try {
           Product product = new Product(article, name, fullName, price, comment,
                              photo.isEmpty() ? null : new Photo(photo.getOriginalFilename(), photo.getBytes()), productCategory);

            productDAO.add(product);
            return new ModelAndView("PageProduct", "products", productDAO.list());

        } catch (IOException e) {
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);

            return null;
        }



    }

    @RequestMapping("/deleteProduct")
    public ModelAndView deleteProduct(@RequestParam(value="id") long id) {

        productDAO.delete(id);
        return new ModelAndView("PageProduct", "products", productDAO.list());
    }


//        @RequestMapping(value = "/cart")
//        public String getCart(){
//            return "PageCart";
//    }

    @RequestMapping("/cart")
    public ModelAndView cart(HttpServletRequest request) {
        HttpSession session = request.getSession();
        sessionService.checkSessionAttributes(session);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("cartProductList", sessionService.getAttributeAllProductsInCart(session));
        modelAndView.addObject("cartCount", sessionService.getAttributeQuantityOfProductsInCart(session));
        modelAndView.addObject("amount", sessionService.getAmountOfProductsInCart(session));
        modelAndView.setViewName("PageCart");

        System.out.println("121212121212121212121212121212133333333333333333331212121212121212");

        return modelAndView;
    }


@RequestMapping(value = "/cart", method = RequestMethod.POST)
public ModelAndView cart(
                        //@RequestParam(value = "id") int id,
                        @RequestParam(value = "article") String article,
                        //@RequestParam(value = "category") ProductCategory productCategory,
                         // @RequestParam(value="photo") MultipartFile photo,
                         //@RequestParam(value = "productCategory") String productCategory,
                         //@RequestParam(value = "photoLinkPreview") String photoLinkPreview,
                         @RequestParam(value = "name") String name,
//                         @RequestParam(value = "price") int price,
                         //@RequestParam(value = "currency") String currency,
                         //@RequestParam(value = "size") String size,
                         HttpServletRequest request) {

    System.out.println("QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ!!!!!!!!!!!!!!!!!!!!!!!#######################");

    HttpSession session = request.getSession();
    sessionService.checkSessionAttributes(session);
//    CartProduct oneProductInCart = new CartProduct(id, name, price);
    //CartProduct oneProductInCart = new CartProduct();
//    CartProduct oneProductInCart = new CartProduct(id, name);
    //CartProduct oneProductInCart = new CartProduct(article, name, productCategory);
    CartProduct oneProductInCart = new CartProduct(article, name );
    ArrayList<CartProduct> cartProductList = sessionService.getAttributeAllProductsInCart(session);
    cartProductList.add(oneProductInCart);
    sessionService.setSessionAttribute(session, "cartProductList", cartProductList);
    sessionService.setSessionAttribute(session, "cartCount", cartProductList.size());
    ModelAndView modelAndView = new ModelAndView();
    modelAndView.addObject("cartProductList", sessionService.getAttributeAllProductsInCart(session));
    modelAndView.addObject("cartCount", sessionService.getAttributeQuantityOfProductsInCart(session));
    modelAndView.addObject("amount", sessionService.getAmountOfProductsInCart(session));
    modelAndView.setViewName("PageCart");
    return modelAndView;
}

}