package com.crud.operations.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import com.crud.operations.dao.ProductDao;
import com.crud.operations.model.Product;

@Controller
public class MainController {

    @Autowired
    private ProductDao productDao;

    @RequestMapping("/")
    public String home(Model model) {

        List<Product> products = productDao.getProducts();
        model.addAttribute("products", products);

        return "index";
    }

    @RequestMapping("/add-product")
    public String addProduct(Model model) {
        model.addAttribute("title", "Add Product");
        return "add_product_form";
    }

    @RequestMapping(path = "/handle-product", method = RequestMethod.POST)
    public RedirectView handleProduct(@ModelAttribute Product product, HttpServletRequest request) {
        System.out.println(product);
        productDao.createProduct(product);
        RedirectView redirectView = new RedirectView();
        redirectView.setUrl(request.getContextPath() + "/");

        return redirectView;
    }

    @RequestMapping(path = "/delete/{productId}")
    public RedirectView deleteProduct(HttpServletRequest request, @PathVariable("productId") int productId) {
        productDao.deleteProduct(productId);
        RedirectView redirectView = new RedirectView();
        redirectView.setUrl(request.getContextPath() + "/");

        return redirectView;
    }

    @RequestMapping(path = "/update/{productId}")
    public String updateProduct(@PathVariable("productId") int productId, Model model) {
        Product product = productDao.getProduct(productId);
        model.addAttribute("product", product);
        return "update_product_form";
    }
}
