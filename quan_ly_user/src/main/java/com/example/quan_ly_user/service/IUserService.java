package com.example.quan_ly_user.service;

import com.example.quan_ly_user.model.User;

import java.util.List;

public interface IUserService {
    public void insertUser(User user);

    User selectUser(int id);

    List<User> selectAllUsers();

    boolean deleteUser(int id);

    boolean updateUser(User user);

    List<User> softByUserName();
}
