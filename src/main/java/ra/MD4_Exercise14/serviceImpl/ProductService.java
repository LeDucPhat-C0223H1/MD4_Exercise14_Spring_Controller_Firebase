package ra.MD4_Exercise14.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ra.MD4_Exercise14.daoImpl.ProductDao;
import ra.MD4_Exercise14.model.Product;
import ra.MD4_Exercise14.service.IProductService;

import java.util.List;

@Service
public class ProductService implements IProductService {
    @Autowired
    private ProductDao productDao;

    @Override
    public List<Product> findAll() {
        return productDao.findAll();
    }

    @Override
    public Product findById(Integer id) {
        return productDao.findById(id);
    }

    @Override
    public boolean save(Product product) {
        return productDao.save(product);
    }

    @Override
    public void deleteById(Integer id) {
        productDao.deleteById(id);
    }
}
