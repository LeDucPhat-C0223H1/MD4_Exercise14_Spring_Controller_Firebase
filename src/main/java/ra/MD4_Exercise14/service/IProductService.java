package ra.MD4_Exercise14.service;

import org.springframework.web.multipart.MultipartFile;
import ra.MD4_Exercise14.dto.request.ProductRequest;
import ra.MD4_Exercise14.model.Product;

public interface IProductService extends IGenericService<Product, ProductRequest, Integer> {
    void edit (Product product, MultipartFile file);
}
