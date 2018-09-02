package com.example.dynamicproperty.dao;

import com.example.dynamicproperty.model.DynamicProperty;
import org.springframework.data.repository.CrudRepository;

public interface DynamicPropertyRepository extends CrudRepository<DynamicProperty,String> {
}
