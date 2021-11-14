package com.lcj.dao.impl;

import com.lcj.dao.BaseDao;
import com.lcj.dao.Userdao;
import com.lcj.entity.User;

import java.util.List;

public class UserdaoImpl extends BaseDao implements Userdao {
    @Override
    public int insertUser(User user) {
        String sql = "INSERT INTO `T_user` (`username`, `password`, `gender`, `email`, `telephone`, `introduce`, `activeCode`, `state`, `role`, `registTime`) VALUES (?, ?, ?, ?,?,?,?,?,?,?)";
        return super.update(sql, user.getUsername(), user.getPassword(), user.getGender(), user.getEmail(), user.getTelephone(), user.getIntroduce(), user.getActiveCode(), user.getState(), user.getRole(), user.getRegistTime());
    }

    @Override
    public int updateUser(User user) {
        String sql = "UPDATE `T_user` SET `username` = ?, `password` = ?, `email` = ?, `telephone` = ?, `introduce` = ?,`activeCode` = ?, `state` = ?, `role` = ?, `registTime` = ? WHERE `id` = ? ";
        return super.update(sql, user.getUsername(), user.getPassword(), user.getEmail(), user.getTelephone(), user.getIntroduce(), user.getActiveCode(), user.getState(), user.getRole(), user.getRegistTime(), user.getId());
    }

    @Override
    public int deleteUser(Long userId) {
        String sql = "DELETE FROM `T_user` WHERE `id` = ?";
        return super.update(sql, userId);
    }

    @Override
    public User queryUserByUsername(String username) {
        String sql = "SELECT * FROM `T_user` WHERE `username` = ?";
        return super.queryForOne(User.class, sql, username);
    }

    @Override
    public User queryUserByUsernameAndPassword(User user) {
        String sql = "SELECT * FROM `T_user` WHERE `username` = ? AND `password`= ?";
        return super.queryForOne(User.class, sql, user.getUsername(), user.getPassword());
    }

    @Override
    public List<User> queryAllUsers() {
        String sql = "SELECT * FROM `T_user`";
        return super.queryForList(User.class,sql);
    }

    @Override
    public User queryUserByUserId(Long userId) {
        String sql = "SELECT * FROM `T_user` WHERE `id` = ?";
        return super.queryForOne(User.class,sql,userId);
    }
}
