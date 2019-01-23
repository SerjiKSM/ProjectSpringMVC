package ua.kiev.prog.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.JstlView;
import org.springframework.web.servlet.view.UrlBasedViewResolver;
import ua.kiev.prog.dao.AdvDAO;
import ua.kiev.prog.dao.AdvDAOImpl;
import ua.kiev.prog.dao.ProductDAO;
import ua.kiev.prog.dao.ProductDAOImpl;
import ua.kiev.prog.services.SessionService;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

@Configuration
@ComponentScan("ua.kiev.prog")
@EnableWebMvc
public class AppConfig extends WebMvcConfigurerAdapter {
    @Bean
    public EntityManager entityManager() {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("AdvJPA");
        return emf.createEntityManager();
    }

    @Bean
    public ProductDAO productDAO(){
        return new ProductDAOImpl();
    }

    @Bean
    public AdvDAO advDAO() {
        return new AdvDAOImpl();
    }

    @Bean
    public UrlBasedViewResolver setupViewResolver() {
        UrlBasedViewResolver resolver = new UrlBasedViewResolver();
        resolver.setContentType("text/html;charset=UTF-8");
        resolver.setPrefix("/WEB-INF/pages/");
        resolver.setSuffix(".jsp");
        resolver.setViewClass(JstlView.class);
        resolver.setOrder(1);
        return resolver;
    }

    @Bean
    public CommonsMultipartResolver multipartResolver() {
        return new CommonsMultipartResolver();
    }

    @Bean
    public SessionService serviceSession() {
        return new SessionService();
    }


    @Override
    public void addResourceHandlers(final ResourceHandlerRegistry registry) {
        //registry.addResourceHandler("/resources/**").addResourceLocations("classpath:/resources/static/").setCachePeriod(31556926);
        registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");
//        registry.addResourceHandler("/resources/****").addResourceLocations("/resources/");
    }
}
