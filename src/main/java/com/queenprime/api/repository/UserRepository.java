package com.queenprime.api.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.queenprime.api.domain.User;

import java.util.List;


@Repository
public interface UserRepository extends CrudRepository<User, Integer> {
	User findByUserName(String userName);
	User findByEmail(String email);

	//@Query("select u from User u where (email = :emailOrMobile )")
	User findByEmailOrMobile(String email, String mobile);
}
