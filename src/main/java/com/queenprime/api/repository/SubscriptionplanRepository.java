package com.queenprime.api.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.queenprime.api.domain.Subscriptionplan;
import org.springframework.data.repository.CrudRepository;


public interface SubscriptionplanRepository extends CrudRepository<Subscriptionplan, Integer>  {

}
