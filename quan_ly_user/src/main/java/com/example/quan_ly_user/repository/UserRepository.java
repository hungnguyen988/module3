package com.example.quan_ly_user.repository;

import com.example.quan_ly_user.dao.UserDao;
import com.example.quan_ly_user.model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserRepository implements IUserRepository {
    UserDao userDao = new UserDao();

    private static final String INSERT_USER = "insert into users(name,email,country) values(?,?,?)";
    private static final String UPDATE_USER = "update users set name =?,email=?,country=? where id =?";
    private static final String DELETE_USER = "delete from users where id =?";
    private static final String SELECT_ALL_USERS = "select * from users";
    private static final String SELECT_USER_BY_ID = "select * from users where id =?";
    private static final String SOFT_BY_NAME = "select * from users order by name,country";


    public UserRepository() {
    }


    @Override
    public void insertUser(User user) {
        try (Connection connection = userDao.getConnection();
             PreparedStatement statement = connection.prepareStatement(INSERT_USER)) {
            statement.setString(1, user.getName());
            statement.setString(2, user.getEmail());
            statement.setString(3, user.getCountry());
             statement.executeUpdate();
        }catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public User selectUser(int id) {
        User user = null;
        try (Connection connection = userDao.getConnection();
             PreparedStatement statement = connection.prepareStatement(SELECT_USER_BY_ID)) {
            statement.setInt(1, id);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                int userId = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String email = resultSet.getString("email");
                String country = resultSet.getString("country");
                user= new User(userId, name, email, country);
            }

        }catch (SQLException e) {
            e.printStackTrace();

        }
        return user;
    }

    @Override
    public List<User> selectAllUsers() {
        List<User> users = new ArrayList<>();
        try (Connection connection = userDao.getConnection();
             PreparedStatement statement = connection.prepareStatement(SELECT_ALL_USERS);) {
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                int userId = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String email = resultSet.getString("email");
                String country = resultSet.getString("country");
                users.add(new User(userId, name, email, country));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return users;
    }

    @Override
    public boolean deleteUser(int id)  {
        try (Connection connection = userDao.getConnection();
             PreparedStatement statement = connection.prepareStatement(DELETE_USER)) {
            statement.setInt(1, id);
            int rows = statement.executeUpdate();
            return rows > 0;
        }catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public boolean updateUser(User user)  {
        try (Connection connection = userDao.getConnection();
        PreparedStatement statement = connection.prepareStatement(UPDATE_USER)) {
            statement.setString(1, user.getName());
            statement.setString(2, user.getEmail());
            statement.setString(3, user.getCountry());
            statement.setInt(4, user.getId());
            int rows = statement.executeUpdate();
            return rows > 0;
        }catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public List<User> softByUserName() {
        List<User> users = new ArrayList<>();
        try (Connection connection = userDao.getConnection();
             PreparedStatement statement = connection.prepareStatement(SOFT_BY_NAME);) {
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                int userId = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String email = resultSet.getString("email");
                String country = resultSet.getString("country");
                users.add(new User(userId, name, email, country));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return users;
    }
}
