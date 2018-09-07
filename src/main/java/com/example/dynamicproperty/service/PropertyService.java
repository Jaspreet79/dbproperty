package com.example.dynamicproperty.service;


import com.example.dynamicproperty.model.DynamicProperty;

import java.util.List;

public interface PropertyService {

    public List<DynamicProperty> getPropertyList () throws Exception;
}
