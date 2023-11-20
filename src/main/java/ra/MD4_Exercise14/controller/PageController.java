package ra.MD4_Exercise14.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import ra.MD4_Exercise14.model.Product;
import ra.MD4_Exercise14.serviceImpl.ProductService;

import java.util.List;

@Controller
@RequestMapping("/exercise14")
public class PageController {
    @Autowired
    ProductService productService;

    @RequestMapping("/home")
    public String homePage(){
        return "home";
    }

    @RequestMapping("/product")
    public String productPage( Model model){
        List<Product> products = productService.findAll();
        model.addAttribute("products",products);
        return "list-product";
    }

    @RequestMapping("/about-us")
    public String aboutUsPage(){
        return "about-us";
    }

    @RequestMapping("/profile")
    public String profilePage(){
        return "profile";
    }

    @RequestMapping("/cart")
    public  String cartPage(){
        return "cart";
    }

    @RequestMapping("/login")
    public  String loginPage(){
        return "login";
    }

    @RequestMapping("/register")
    public  String registerPage(){
        return "register";
    }

    @RequestMapping("/form-add-product")
    public  String addProductPage(){
        return "add-product";
    }

    @RequestMapping("/detail-product")
    public  String detailProductPage(@RequestParam("id") int id, Model model){
        Product product = productService.findById(id);
        if (product != null){
            model.addAttribute("product", product);
            return "detail-product";
        }else {
            return "404";
        }
    }

    @RequestMapping("/form-edit-product")
    public  String editProductPage(@RequestParam("id") int id, Model model){
        Product product = productService.findById(id);
        if (product != null){
            model.addAttribute("product", product);
            return "edit-product";
        }else {
            return "404";
        }
    }


    /**************************************************************************************************/
    /* href="/exercise14/detail-product/${prod.getId()} */
    //@RequestMapping("/form-edit-product/{id}")
    //public  String editProductPage(@PathVariable int id){
    //        return "edit-product";
    //    }
}
