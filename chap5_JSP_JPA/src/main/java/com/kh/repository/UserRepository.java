package com.kh.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.kh.entity.JSPUser;

@Repository
public interface UserRepository extends JpaRepository<JSPUser, Integer> {

}
