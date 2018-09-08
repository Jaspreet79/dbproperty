
package com.example.dynamicproperty.vo;

import com.example.dynamicproperty.model.SuiteProduct;

import java.util.Date;

public class PropertyCategoryVO {
    private Long id;
    private String propertyCategory;
    private String displayName;
    private String description;
    private Date createdOn;
    private Date updatedOn;
    private SuiteProduct suiteProduct;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getPropertyCategory() {
        return propertyCategory;
    }

    public void setPropertyCategory(String propertyCategory) {
        this.propertyCategory = propertyCategory;
    }

    public String getDisplayName() {
        return displayName;
    }

    public void setDisplayName(String displayName) {
        this.displayName = displayName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public SuiteProduct getSuiteProduct() {
        return suiteProduct;
    }

    public void setSuiteProduct(SuiteProduct suiteProduct) {
        this.suiteProduct = suiteProduct;
    }

    public Date getCreatedOn() {
        return createdOn;
    }

    public void setCreatedOn(Date createdOn) {
        this.createdOn = createdOn;
    }

    public Date getUpdatedOn() {
        return updatedOn;
    }

    public void setUpdatedOn(Date updatedOn) {
        this.updatedOn = updatedOn;
    }
}
