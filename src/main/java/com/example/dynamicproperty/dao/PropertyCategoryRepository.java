package com.example.dynamicproperty.dao;

import com.example.dynamicproperty.model.PropertyCategory;
import org.springframework.data.repository.CrudRepository;

public interface PropertyCategoryRepository extends CrudRepository<PropertyCategory,String> {

    Iterable<PropertyCategory> findById(long productId);
}
