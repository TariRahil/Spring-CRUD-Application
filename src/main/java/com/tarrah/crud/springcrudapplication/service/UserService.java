package com.tarrah.crud.springcrudapplication.service;

import com.tarrah.crud.springcrudapplication.model.User;

import java.util.List;

public interface UserService {
    User add(User user);

    List<User> findAll();
    User findById(Integer id);

    User update(User user);

    void delete(Integer id);
}
