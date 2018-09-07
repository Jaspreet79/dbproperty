package com.example.dynamicproperty.service;

import com.example.dynamicproperty.dao.DynamicPropertyRepository;
import com.example.dynamicproperty.model.DynamicProperty;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.LinkedList;
import java.util.List;

@Component
public class PropertyServiceImpl implements PropertyService {

    @Autowired
    private DynamicPropertyRepository dynamicPropertyRepository;

    public List<DynamicProperty> getPropertyList() throws Exception {

        List<DynamicProperty> dynamicPropertyList = new LinkedList<>();
        Iterable<DynamicProperty> articles = dynamicPropertyRepository.findAll();
        for (DynamicProperty property : articles) {
            dynamicPropertyList.add(property);
        }
        return dynamicPropertyList;
    }
}
