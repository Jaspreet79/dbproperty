package com.example.dynamicproperty.service;

import com.example.dynamicproperty.vo.SuiteProductVO;

import java.util.List;

public interface ProductService {

    public List<SuiteProductVO> getProductList () throws Exception;
}
