package com.queenprime.api.repository;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;


import com.queenprime.api.domain.Mylist;
import com.queenprime.api.domain.Entities;


import org.springframework.data.repository.CrudRepository;


public interface MylistRepository extends JpaRepository<Mylist, Integer>, CrudRepository<Mylist, Integer> {
	List<Mylist> findAllByuserId(Integer userId);
	
}
