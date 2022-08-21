package com.tarrah.crud.springcrudapplication.impl;

import com.tarrah.crud.springcrudapplication.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.tarrah.crud.springcrudapplication.repos.UserRepository;
import com.tarrah.crud.springcrudapplication.service.UserService;

import java.util.List;
import java.util.Optional;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserRepository userRepository;

    @Override
    public User add(User user) {
        User savedUser = userRepository.save(user);
        return savedUser;
    }

    @Override
    public List<User> findAll() {
        return userRepository.findAll();
    }

    @Override
    public User findById(Integer id) {
        User user = userRepository.findById(id).get();
        return user;
    }

    @Override
    public User update(User user) {
        User update = userRepository.save(user);
        return update;
    }

    @Override
    public void delete(Integer id) {
         //userRepository.deleteById(id);
        Optional<User> user = userRepository.findById(id);
        if (user.isPresent())
            userRepository.delete(user.get());
    }


}
