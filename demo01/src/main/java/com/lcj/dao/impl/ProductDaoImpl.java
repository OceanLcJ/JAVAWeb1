package com.lcj.dao.impl;

import com.lcj.Utils.JdbcUtils;
import com.lcj.dao.BaseDao;
import com.lcj.dao.ProductDao;
import com.lcj.entity.Product;

import java.sql.Connection;
import java.util.List;

public class ProductDaoImpl extends BaseDao implements ProductDao {
    @Override
    public int insertProduct(Product product) {
        String sql = "INSERT INTO `T_product` (`name`, `price`, `category`, `pnum`, `imgurl`, `description`) VALUES (?, ?, ?, ?, ?, ?)";
        return super.update(sql,product.getName(),product.getPrice(),product.getCategory(),product.getpNum(),product.getImgUrl(),product.getDescription());
    }

    @Override
    public int updateProduct(Product product) {
        String sql = "UPDATE `T_product` SET `name` = ?, `price` = ?, `category` = ?, `pnum` = ?, `imgurl` = ?,`description` = ?  WHERE `id` = ? ";
        return super.update(sql, product.getName(), product.getPrice(), product.getCategory(), product.getpNum(), product.getImgUrl(), product.getDescription(), product.getId());
    }

    @Override
    public int deleteProduct(Long id) {
        String sql = "DELETE FROM `T_product` WHERE `id` = ?";
        return super.update(sql, id);
    }

    @Override
    public Product queryProductById(Long id) {
        String sql = "SELECT * FROM `T_product` WHERE `id` = ?";
        return super.queryForOne(Product.class, sql, id);
    }

    @Override
    public List<Product> queryAllProducts() {
        String sql = "SELECT * FROM `T_product`";
        return super.queryForList(Product.class, sql);
    }

}
