package com.cornelius.projectinventory.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cornelius.projectinventory.entity.User;

public interface UserRepository extends JpaRepository<User, Integer>  {

}
