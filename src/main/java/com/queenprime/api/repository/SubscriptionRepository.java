package com.queenprime.api.repository;

import com.queenprime.api.domain.Subscription;
import com.queenprime.api.domain.User;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SubscriptionRepository extends CrudRepository<Subscription, Integer> {

}
