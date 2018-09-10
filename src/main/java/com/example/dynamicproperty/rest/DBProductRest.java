package com.example.dynamicproperty.rest;

import com.example.dynamicproperty.service.ProductService;
import com.example.dynamicproperty.vo.SuiteProductVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api")
public class DBProductRest {

    @Autowired
     private ProductService productService;

    @RequestMapping(path = "/product", produces = MediaType.APPLICATION_JSON_VALUE, method = RequestMethod.GET)
    public List<SuiteProductVO>  getPropertyList() throws Exception {
        List<SuiteProductVO> productServicePropertyList = productService.getProductList();
        System.out.println("Size is "+ productServicePropertyList.size());
        for (SuiteProductVO suiteProductVO : productServicePropertyList )
        {
            System.out.println(suiteProductVO.getId());
            System.out.println(suiteProductVO.getDescription());
            System.out.println(suiteProductVO.getDisplayName());
            System.out.println(suiteProductVO.getSuiteProductName());
            System.out.println(suiteProductVO.getCreatedOn());
            System.out.println(suiteProductVO.getUpdatedOn());

        }
        return productServicePropertyList;
    }
}
