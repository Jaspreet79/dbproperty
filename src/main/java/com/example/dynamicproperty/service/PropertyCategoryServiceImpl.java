package com.example.dynamicproperty.service;

import com.example.dynamicproperty.dao.PropertyCategoryRepository;
import com.example.dynamicproperty.model.PropertyCategory;
import com.example.dynamicproperty.vo.PropertyCategoryVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.LinkedList;
import java.util.List;


@Component
public class PropertyCategoryServiceImpl implements PropertyCategoryService {


    @Autowired
    private PropertyCategoryRepository propertyCategoryRepository;

    @Override
    public List<PropertyCategoryVO> getProductCategoryList(long productId) throws Exception {

        Iterable<PropertyCategory> propertyCategories = propertyCategoryRepository.findById(productId);

        List<PropertyCategoryVO> propertyCategoryVOList = new LinkedList<>();
        for (PropertyCategory propertyCategory : propertyCategories) {
            System.out.println("Jaspreet Singh " + propertyCategory.getId());
            PropertyCategoryVO propertyCategoryVO = new PropertyCategoryVO();
            propertyCategoryVO.setId(propertyCategory.getId());
            propertyCategoryVO.setPropertyCategory(propertyCategory.getPropertyCategory());
            propertyCategoryVO.setDisplayName(propertyCategory.getDisplayName());
            propertyCategoryVO.setDescription(propertyCategory.getDescription());
            propertyCategoryVO.setCreatedOn(propertyCategory.getCreatedOn());
            propertyCategoryVO.setUpdatedOn(propertyCategory.getUpdatedOn());
            propertyCategoryVO.setSuiteProductId(propertyCategory.getSuiteProduct().getId());
            propertyCategoryVOList.add(propertyCategoryVO);
        }
        return propertyCategoryVOList;
    }
}
