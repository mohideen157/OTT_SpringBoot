package com.queenprime.api.repository;

import com.queenprime.api.domain.Carddetails;
import com.queenprime.api.domain.User;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CarddetailsRepository extends CrudRepository<Carddetails, Integer> {

}
