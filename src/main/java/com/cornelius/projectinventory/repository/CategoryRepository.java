package com.cornelius.projectinventory.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.cornelius.projectinventory.entity.Categories;

public interface CategoryRepository extends JpaRepository<Categories, Integer>  {
	@Query("select c.catName from Categories c")
	List<Categories> findAllCategoriesByName();
}
