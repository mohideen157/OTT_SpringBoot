package com.queenprime.api.repository;

import com.queenprime.api.domain.Categories;
import com.queenprime.api.domain.Entities;
import com.queenprime.api.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface EntitiesRepository extends JpaRepository<Entities, Integer>, CrudRepository<Entities, Integer> {
    List<Entities> findAllById(Integer id);
}

