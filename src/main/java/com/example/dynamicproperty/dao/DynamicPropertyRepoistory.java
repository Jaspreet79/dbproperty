package com.example.dynamicproperty.dao;

import com.example.dynamicproperty.model.DynamicProperty;
import org.springframework.data.repository.CrudRepository;

public interface DynamicPropertyRepoistory extends CrudRepository<DynamicProperty,String> {
}
