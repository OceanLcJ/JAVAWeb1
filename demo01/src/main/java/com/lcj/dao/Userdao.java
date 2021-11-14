package com.lcj.dao;

import com.lcj.entity.User;

import java.util.List;

public interface Userdao {
    int insertUser(User user);

    int updateUser(User user);

    int deleteUser(Long userId);

    User queryUserByUsername(String username);

    User queryUserByUsernameAndPassword(User user);

    List<User> queryAllUsers();

    User queryUserByUserId(Long userId);


}
