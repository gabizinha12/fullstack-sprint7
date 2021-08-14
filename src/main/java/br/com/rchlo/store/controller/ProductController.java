package br.com.rchlo.store.controller;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import br.com.rchlo.store.domain.Product;
import br.com.rchlo.store.dto.ProductByColorDto;
import br.com.rchlo.store.dto.ProductDto;
import br.com.rchlo.store.repository.ProductRepository;

@RestController
@RequestMapping("/products")
public class ProductController {

    private final ProductRepository productRepository;

    public ProductController(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    @GetMapping
    @Cacheable(value = "productsList")
    public List<ProductDto> products() {
        return productRepository.findAllByOrderByName().stream().map(ProductDto::new).collect(Collectors.toList());
    }

    @GetMapping("/reports/products/by-color")
    public List<ProductByColorDto> productByColorReport() {
        return productRepository.productsByColor();
    }
    
    @GetMapping("/pagination") 
    public Page<ProductDto> paginate(@RequestParam(required=false) String name, @PageableDefault(sort="name", direction=Sort.Direction.ASC)Pageable pagination) {
    	if(name == null) {
    		Page<Product> products = productRepository.findAll(pagination);
    		return ProductDto.converter(products);
    	} else {
    		Page<Product> products = productRepository.findByName(name, pagination);
    		return ProductDto.converter(products);
    	}
    }
    
    @GetMapping("/clear-cache") 
    @CacheEvict(value = "productsList", allEntries=true) 
    public Page<ProductDto> cleanCache(@RequestParam(required=false) String name, @PageableDefault(sort="name", direction=Sort.Direction.ASC)Pageable pagination) {
    	if(name == null) {
    		Page<Product> products = productRepository.findAll(pagination);
    		return ProductDto.converter(products);
    	} else {
    		Page<Product> products = productRepository.findByName(name, pagination);
    		return ProductDto.converter(products);
    	}
    }

}


