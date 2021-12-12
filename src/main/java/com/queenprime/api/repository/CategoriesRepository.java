package com.queenprime.api.repository;

import com.queenprime.api.domain.Categories;
import com.queenprime.api.domain.Entities;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface CategoriesRepository extends JpaRepository<Categories, Integer>, CrudRepository<Categories, Integer> {
    List<Categories> findAllById(Integer id);
}
