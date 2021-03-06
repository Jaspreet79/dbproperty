package com.example.dynamicproperty.rest;


import com.example.dynamicproperty.model.DynamicProperty;
import com.example.dynamicproperty.service.PropertyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api")
public class DBPropertyRest {

    @Autowired
    private PropertyService propertyService;

    @RequestMapping(path = "/hello", produces = MediaType.APPLICATION_JSON_VALUE, method = RequestMethod.GET)
    public  List<DynamicProperty> getPropertyList() throws Exception {

        List<DynamicProperty> dynamicPropertyList = propertyService.getPropertyList();
        return dynamicPropertyList;
    }
}
