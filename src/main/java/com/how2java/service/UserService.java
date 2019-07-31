package com.how2java.service;

import com.how2java.pojo.User;
import org.springframework.stereotype.Service;

@Service
public interface UserService {
public User get(String username,String password);
public String add(User user);
}
