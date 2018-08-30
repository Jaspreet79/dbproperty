package com.example.dynamicproperty.model;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "DB_DYNAMIC_PROPERTY")
public class DynamicProperty {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "db_property_Sequence")
    @SequenceGenerator(name = "db_property_Sequence", sequenceName = "DB_PROPERTY_SEQUENCE")
    protected Long id;

    protected String propertyName;
    protected String description;
    protected String propertyDefaultValue;
    protected String propertyValue;
    protected Boolean modify;
    protected PropertyCategory propertyCategory;
    protected PropertyType propertyType;
    protected SuiteProduct suiteProduct;
    protected Date createdOn;
    protected Date updatedOn;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getPropertyName() {
        return propertyName;
    }

    public void setPropertyName(String propertyName) {
        this.propertyName = propertyName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getPropertyDefaultValue() {
        return propertyDefaultValue;
    }

    public void setPropertyDefaultValue(String propertyDefaultValue) {
        this.propertyDefaultValue = propertyDefaultValue;
    }

    public String getPropertyValue() {
        return propertyValue;
    }

    public void setPropertyValue(String propertyValue) {
        this.propertyValue = propertyValue;
    }

    public Boolean getModify() {
        return modify;
    }

    public void setModify(Boolean modify) {
        this.modify = modify;
    }

    public PropertyCategory getPropertyCategory() {
        return propertyCategory;
    }

    public void setPropertyCategory(PropertyCategory propertyCategory) {
        this.propertyCategory = propertyCategory;
    }

    public PropertyType getPropertyType() {
        return propertyType;
    }

    public void setPropertyType(PropertyType propertyType) {
        this.propertyType = propertyType;
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
