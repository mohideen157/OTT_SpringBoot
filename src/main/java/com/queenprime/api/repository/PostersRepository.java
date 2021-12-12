package com.queenprime.api.repository;

import com.queenprime.api.domain.Posters;
import com.queenprime.api.domain.Video;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

public interface PostersRepository extends JpaRepository<Posters, Integer> {
}
