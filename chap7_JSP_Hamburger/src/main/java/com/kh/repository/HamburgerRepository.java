package com.kh.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.kh.entity.JPAHamburger;

@Repository
public interface HamburgerRepository extends JpaRepository<JPAHamburger, Integer> {

}
