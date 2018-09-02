package com.example.dynamicproperty.dao;

import com.example.dynamicproperty.model.PropertyCategory;
import org.springframework.data.repository.CrudRepository;

public interface PropertyCategoryRepoistory extends CrudRepository<PropertyCategory,String> {
}
