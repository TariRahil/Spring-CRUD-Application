package com.tarrah.crud.springcrudapplication.repos;

import com.tarrah.crud.springcrudapplication.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Integer>{

}
