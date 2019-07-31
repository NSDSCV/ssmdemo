package com.how2java.mapper;

import com.how2java.pojo.User;


public interface UserMapper {
    public User get(String username);
    public String add(User user);
}
