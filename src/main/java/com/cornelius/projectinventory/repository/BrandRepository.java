package com.cornelius.projectinventory.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.cornelius.projectinventory.entity.Brands;

public interface BrandRepository extends JpaRepository<Brands, Integer>  {
	@Query("select c.brandName from Brands c")
	List<Brands> findAllBrandsByName();
}
