package com.kh.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.entity.JPAHamburger;
import com.kh.repository.HamburgerRepository;

@Service
public class HamburgerService {

	@Autowired
	private HamburgerRepository hamburgerRepository;
	
	public List<JPAHamburger> getAllHamburgers() {
		return hamburgerRepository.findAll();
	}
	
	public void addHamburger(JPAHamburger jpaHamburger) {
		hamburgerRepository.save(jpaHamburger);
	}
}
