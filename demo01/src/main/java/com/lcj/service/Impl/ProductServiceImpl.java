package com.lcj.service.Impl;

import com.lcj.dao.ProductDao;
import com.lcj.dao.impl.ProductDaoImpl;
import com.lcj.entity.Product;
import com.lcj.service.ProductService;

import java.util.List;

public class ProductServiceImpl implements ProductService {
    ProductDao productDao = new ProductDaoImpl();
    @Override
    public int insertProduct(Product product) {
        return productDao.insertProduct(product);
    }

    @Override
    public int updateProduct(Product product) {
        return productDao.updateProduct(product);
    }

    @Override
    public int deleteProduct(Long id) {
        return productDao.deleteProduct(id);
    }

    @Override
    public Product queryProductById(Long id) {
        return productDao.queryProductById(id);
    }

    @Override
    public List<Product> queryAllProducts() {
        return productDao.queryAllProducts();
    }
}
