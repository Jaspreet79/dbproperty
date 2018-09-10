package com.example.dynamicproperty.service;

import com.example.dynamicproperty.dao.SuiteProductRepository;
import com.example.dynamicproperty.model.SuiteProduct;
import com.example.dynamicproperty.vo.SuiteProductVO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.LinkedList;
import java.util.List;

@Component
public class ProductServiceImpl implements ProductService {

    @Autowired
    private SuiteProductRepository suiteProductRepository;

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Override
    public List<SuiteProductVO> getProductList() throws Exception {
        List<SuiteProductVO> suiteProductVOLinkedList = new LinkedList<>();

        Iterable<SuiteProduct> suiteProducts = suiteProductRepository.findAll();
        for (SuiteProduct product : suiteProducts) {
            SuiteProductVO suiteProductVO = new SuiteProductVO();
            suiteProductVO.setId(product.getId());
            suiteProductVO.setSuiteProductName(product.getSuiteProductName());
            suiteProductVO.setDisplayName(product.getDisplayName());
            suiteProductVO.setDescription(product.getDescription());
            suiteProductVO.setCreatedOn(product.getCreatedOn());
            suiteProductVO.setUpdatedOn(product.getUpdatedOn());
            suiteProductVOLinkedList.add(suiteProductVO);
            logger.info("test code for products listing ");
        }
        return suiteProductVOLinkedList;
    }
}
