package com.cornelius.projectinventory.controller;

import java.util.Locale.Category;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.cornelius.projectinventory.entity.Brands;
import com.cornelius.projectinventory.entity.Categories;
import com.cornelius.projectinventory.entity.Products;
import com.cornelius.projectinventory.service.AppService;


@Controller
public class InventoryController {
	@Autowired
	AppService appService;

	@GetMapping("/")
	public String getHome(ModelMap model) {
		model.addAttribute("brand", new Brands());
		model.addAttribute("categoryItems", appService.getCatRepo().findAllCategoriesByName());
		model.addAttribute("brandItems", appService.getBrandRepo().findAllBrandsByName());
		model.addAttribute("category", new Categories());
		model.addAttribute("product", new Products());
		return "dashboard";
	}

	@PostMapping(value = "/saveCategory")
	public String saveCategory(@ModelAttribute("category") Categories category, ModelMap model) {
		appService.getCatRepo().save(category);
		model.addAttribute("category", new Categories());
		model.addAttribute("brand", new Brands());
		model.addAttribute("categoryItems", appService.getCatRepo().findAll());
		return "dashboard";
	}

	@PostMapping("/saveBrand")
	public String saveBrand(@ModelAttribute("brand") Brands brand, ModelMap model) {
		appService.getBrandRepo().save(brand);
		model.addAttribute("brand", new Brands());
		model.addAttribute("category", new Categories());
		model.addAttribute("categoryItems", appService.getCatRepo().findAll());
		return "dashboard";
	}

	@PostMapping("/saveProduct")
	public String saveProduct(@ModelAttribute("product") Products product, ModelMap model) {
		appService.getProdRepo().save(product);
		model.addAttribute("categoryItems", appService.getProdRepo().findAll());
		return "dashboard";
	}
}
