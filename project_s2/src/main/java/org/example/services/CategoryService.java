package org.example.services;

import org.example.entity.Category;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface CategoryService {
    List<Category> getCategories();
    void saveCategory(Category category);
    Category getCategory(int categoryId);
    void deleteCategory(int categoryId);


}
