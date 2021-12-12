package com.queenprime.api.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.queenprime.api.domain.Video;
import org.springframework.data.repository.CrudRepository;

public interface VideoRepository extends CrudRepository<Video, Integer> {


}