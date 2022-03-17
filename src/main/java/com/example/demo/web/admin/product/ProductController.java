package com.example.demo.web.admin.product;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * Автор: Андрей Котов
 */
@Controller
public class ProductController {
    @GetMapping("/admin/product/products")
    public String showProductList(){return ("/admin/product/products"); }

}
