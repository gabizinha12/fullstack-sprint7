package br.com.rchlo.store.dto;

import java.util.List;
import java.util.stream.Collectors;

import br.com.rchlo.store.domain.Category;

public class CategoryDto {
	private final String name;
	public String getName() {
		return name;
	}
	public String getSlug() {
		return slug;
	}
	private final String slug;
	 public CategoryDto(Category category) {
	        this.name = category.getName();
	        this.slug = category.getSlug();
	    }
	 public static List<CategoryDto> convertToDto(List<Category> categoriesList) {
		 return categoriesList.stream().map(CategoryDto::new).collect(Collectors.toList());
	 }

}
