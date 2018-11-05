package com.cornelius.projectinventory.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cornelius.projectinventory.repository.BrandRepository;
import com.cornelius.projectinventory.repository.CategoryRepository;
import com.cornelius.projectinventory.repository.ProductRepository;
import com.cornelius.projectinventory.repository.UserRepository;

@Service
public class AppService {
	
	@Autowired
	BrandRepository brandRepo;
	@Autowired
	ProductRepository prodRepo;
	@Autowired
	CategoryRepository catRepo;
	@Autowired
	UserRepository userRepo;
	public BrandRepository getBrandRepo() {
		return brandRepo;
	}
	public void setBrandRepo(BrandRepository brandRepo) {
		this.brandRepo = brandRepo;
	}
	public ProductRepository getProdRepo() {
		return prodRepo;
	}
	public void setProdRepo(ProductRepository prodRepo) {
		this.prodRepo = prodRepo;
	}
	public CategoryRepository getCatRepo() {
		return catRepo;
	}
	public void setCatRepo(CategoryRepository catRepo) {
		this.catRepo = catRepo;
	}
	public UserRepository getUserRepo() {
		return userRepo;
	}
	public void setUserRepo(UserRepository userRepo) {
		this.userRepo = userRepo;
	}
	
	

}
