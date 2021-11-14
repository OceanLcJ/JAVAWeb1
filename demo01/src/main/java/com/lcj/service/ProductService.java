package com.lcj.service;

import com.lcj.entity.Product;

import java.util.List;

public interface ProductService {
    /**
     * 新增商品 dao 方法
     *
     * @param product 需要新增的商品对象
     * @return 受影响的行数
     */
    int insertProduct(Product product);

    /**
     * 修改商品 dao 方法
     *
     * @param product 需要修改的商品对象
     * @return 受影响的行数
     */
    int updateProduct(Product product);

    /**
     * 删除商品方法
     * @param id 被删除的商品id
     * @return 受影响的行数
     */
    int deleteProduct(Long id);

    /**
     * 根据 id 查找单个商品
     * @param id 商品id
     * @return 查找的商品信息
     */
    Product queryProductById(Long id);

    /**
     * 查找所有商品记录
     * @return 所有商品记录
     */
    List<Product> queryAllProducts();
}
