package com.how2java.service.ServiceIml;

import com.how2java.mapper.UserMapper;
import com.how2java.pojo.User;
import com.how2java.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceIml implements UserService {
    @Autowired
    UserMapper userMapper;


    public User get(String username, String password) {
        User user = userMapper.get(username);
              if (user!=null && user.getPassword().equals(password)){
                  return user;
              }
        return null;
    }

    @Override
    public String add(User user) {
        return userMapper.add(user);
    }
}
