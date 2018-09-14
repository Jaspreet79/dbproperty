package com.example.dynamicproperty.service;

import com.example.dynamicproperty.vo.PropertyCategoryVO;

import java.util.List;


public interface PropertyCategoryService {

        public List<PropertyCategoryVO> getProductCategoryList (long productId) throws Exception;
}
