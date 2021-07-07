package org.example.services;

import org.example.entity.User;
import org.springframework.stereotype.Service;

@Service
public interface UserService {
    void saveUser(User user);
    User getUser(String userId);
}
