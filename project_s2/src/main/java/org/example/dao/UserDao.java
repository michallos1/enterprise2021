package org.example.dao;

import org.example.entity.User;

public interface UserDao {
    void saveUser(User user);
    User getUser(String userId);
}
