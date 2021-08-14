package br.com.rchlo.store.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.rchlo.store.domain.Category;

public interface CategoryRepository extends JpaRepository<Category, Long>{
    List<Category> findAllByOrderByPosition();

}
