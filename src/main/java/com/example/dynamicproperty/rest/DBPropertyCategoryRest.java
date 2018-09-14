package com.example.dynamicproperty.rest;


import com.example.dynamicproperty.service.PropertyCategoryService;
import com.example.dynamicproperty.vo.PropertyCategoryVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api")
public class DBPropertyCategoryRest {

    @Autowired
    private PropertyCategoryService propertyCategoryService;

    @RequestMapping(path = "/properycategory", produces = MediaType.APPLICATION_JSON_VALUE, method = RequestMethod.GET)
    public List<PropertyCategoryVO> getPropertyCategoryList(@RequestParam long id) throws Exception {
        List<PropertyCategoryVO> propertyCategoryList = propertyCategoryService.getProductCategoryList(id);
        System.out.println("Size is "+ propertyCategoryList.size());
        return propertyCategoryList;
    }
}
