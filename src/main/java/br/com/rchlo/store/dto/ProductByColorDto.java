package br.com.rchlo.store.dto;

import br.com.rchlo.store.domain.Color;

public class ProductByColorDto {

    private final String color;
    private final long amount;

    public ProductByColorDto(Color color, long amount) {
        this.color = color.getDescription();
        this.amount = amount;
    }

    public String getColor() {
        return color;
    }

    public long getAmount() {
        return amount;
    }
}
