package br.com.rchlo.store.domain;

import javax.persistence.*;

@Entity
public class ProductImage {

    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    private Product product;

    private String imageUrl;

}
