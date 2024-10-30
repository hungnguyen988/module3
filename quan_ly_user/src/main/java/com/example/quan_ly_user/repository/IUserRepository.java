package com.example.quan_ly_user.repository;

import com.example.quan_ly_user.model.User;

import java.util.List;

public interface IUserRepository {
    void insertUser(User user);

    User selectUser(int id);

    List<User> selectAllUsers();

    boolean deleteUser(int id);

    boolean updateUser(User user);

    List<User> softByUserName();



    String insertUpdateUserTransaction();
}
