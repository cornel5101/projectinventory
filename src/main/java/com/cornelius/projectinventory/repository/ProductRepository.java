package com.cornelius.projectinventory.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cornelius.projectinventory.entity.Products;

public interface ProductRepository extends JpaRepository<Products, Integer>  {

}
