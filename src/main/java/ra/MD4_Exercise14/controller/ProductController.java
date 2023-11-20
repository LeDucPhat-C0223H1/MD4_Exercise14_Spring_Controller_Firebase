package ra.MD4_Exercise14.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import ra.MD4_Exercise14.model.Product;
import ra.MD4_Exercise14.serviceImpl.ProductService;

@Controller
@RequestMapping("/exercise14")
public class ProductController {
    @Autowired
    ProductService productService;

    @PostMapping("/add")
    public String doAddProduct(
            @RequestParam("name") String name,
            @RequestParam("imageUrl") String imageUrl,
            @RequestParam("price") double price,
            @RequestParam("desc") String desc,
            @RequestParam("stock") int stock,
            @RequestParam("status") boolean status) {
        Product newProduct = new Product(name,imageUrl,price,desc,stock,status);
        productService.save(newProduct);
        return "redirect:/exercise14/product";
    }

    @PostMapping("/edit")
    public String doEditProduct(
            @RequestParam("id") int id,
            @RequestParam("name") String name,
            @RequestParam("imageUrl") String imageUrl,
            @RequestParam("price") double price,
            @RequestParam("desc") String desc,
            @RequestParam("stock") int stock,
            @RequestParam("status") boolean status) {
        Product editProduct = new Product(id,name,imageUrl,price,desc,stock,status);
        productService.save(editProduct);
        return "redirect:/exercise14/product";
    }

    @GetMapping("/delete-product")
    public String doDeleteProduct(@RequestParam("id") int id){
        productService.deleteById(id);
        return "redirect:/exercise14/product";
    }
}
