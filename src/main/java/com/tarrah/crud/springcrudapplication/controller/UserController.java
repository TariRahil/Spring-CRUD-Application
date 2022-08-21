package com.tarrah.crud.springcrudapplication.controller;

import com.tarrah.crud.springcrudapplication.model.User;
import com.tarrah.crud.springcrudapplication.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class UserController {

    @Autowired
    private UserService userService;


    @RequestMapping("createUser") //add to URL
    public String showCreate(){
        return "createUserPage"; //page Name
    }

    @RequestMapping("saveUser")
    public String saveUser(@ModelAttribute("user") User user,
                           ModelMap modelMap){
        User savedUser = userService.add(user);
        String msg = "user saved successfully by id: "+ savedUser.getId();
        modelMap.addAttribute("msg",msg);
        return "createUserPage";
    }

    @RequestMapping("viewUsers")
    public String viewAllUsers(ModelMap modelMap){
        List<User> users = userService.findAll();
        modelMap.addAttribute("users",users);
        return "viewUsersListPage";
    }

    @RequestMapping("editUser")
    public String editUser(@RequestParam("id") Integer id ,
                           ModelMap modelMap){
        User user = userService.findById(id);
        modelMap.addAttribute("user",user);
        return "editUserPage";
    }

    @RequestMapping("updateUser")
    public String updateUser(@ModelAttribute("user") User user,
                           ModelMap modelMap){
        User updatedUser = userService.update(user);
        String msg = "user updated successfully by id: "+ updatedUser.getId();
        modelMap.addAttribute("msg",msg);
        return "editUserPage";
    }

    @RequestMapping("deleteUser")
    public String deleteUser(@RequestParam("id") Integer id , ModelMap modelMap){
        userService.delete(id);
        List<User> users = userService.findAll();
        modelMap.addAttribute("users",users);
        return "viewUsersListPage";
    }

}
