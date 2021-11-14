package com.lcj.service;

import com.lcj.entity.User;

public interface UserService {

    int registUser(User user);

    User login(User user);

    boolean existsUsername(String username);
}
