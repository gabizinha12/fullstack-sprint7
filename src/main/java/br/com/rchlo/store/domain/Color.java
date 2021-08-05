package br.com.rchlo.store.domain;

public enum Color {

    BLUE("Azul"),
    GRAY("Cinza"),
    GREEN("Verde"),
    PINK("Rosa"),
    RED("Vermelha"),
    WHITE("Branca");

    private String description;

    Color(String description) {
        this.description = description;
    }

    public String getDescription() {
        return description;
    }
}
