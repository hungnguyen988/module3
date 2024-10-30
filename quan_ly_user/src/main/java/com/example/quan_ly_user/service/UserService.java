package com.example.quan_ly_user.service;

import com.example.quan_ly_user.model.User;
import com.example.quan_ly_user.repository.IUserRepository;
import com.example.quan_ly_user.repository.UserRepository;

import java.sql.SQLException;
import java.util.List;

public class UserService implements IUserService {
    IUserRepository userRepository = new UserRepository();


    @Override
    public void insertUser(User user)  {
        userRepository.insertUser(user);
    }

    @Override
    public User selectUser(int id) {
        return userRepository.selectUser(id)  ;
    }

    @Override
    public List<User> selectAllUsers() {
        return userRepository.selectAllUsers();
    }

    @Override
    public boolean deleteUser(int id)  {
        return userRepository.deleteUser(id) ;
    }

    @Override
    public boolean updateUser(User user)  {
        return userRepository.updateUser(user)  ;
    }

    public List<User> softByUserName(){
        return userRepository.softByUserName();
    }

    @Override
    public String insertUpdateUserTransaction() {
        return userRepository.insertUpdateUserTransaction();
    }


}
