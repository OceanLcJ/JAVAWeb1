package com.lcj.service.Impl;

import com.lcj.dao.Userdao;
import com.lcj.dao.impl.UserdaoImpl;
import com.lcj.entity.User;
import com.lcj.service.UserService;

public class UserServiceImpl implements UserService {

    Userdao userdao = new UserdaoImpl();

    @Override
    public int registUser(User user) {
        return userdao.insertUser(user);
    }

    @Override
    public User login(User user) {
        return userdao.queryUserByUsernameAndPassword(user);
    }

    @Override
    public boolean existsUsername(String username) {
        return (userdao.queryUserByUsername(username) != null);
    }
}
