package com.example.dynamicproperty.model;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "DB_DYNAMIC_PROPERTY")
public class DynamicProperty {


    protected Long id;
    protected String propertyName;
    protected String description;
    protected String propertyDefaultValue;
    protected String propertyValue;
    protected Boolean modifiable;
    protected PropertyCategory propertyCategory;
    protected PropertyType propertyType;
    protected Date createdOn;
    protected Date updatedOn;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "PROPERTY_ID")
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @Column(name = "PROPERTY_NAME")
    public String getPropertyName() {
        return propertyName;
    }

    public void setPropertyName(String propertyName) {
        this.propertyName = propertyName;
    }

    @Column(name = "DESCRIPTION")
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Column(name = "DEFAULT_VALUE")
    public String getPropertyDefaultValue() {
        return propertyDefaultValue;
    }

    public void setPropertyDefaultValue(String propertyDefaultValue) {
        this.propertyDefaultValue = propertyDefaultValue;
    }

    @Column(name = "VALUE")
    public String getPropertyValue() {
        return propertyValue;
    }

    public void setPropertyValue(String propertyValue) {
        this.propertyValue = propertyValue;
    }

    @Column(name = "MODIFIABLE")
    public Boolean getModifiable() {
        return modifiable;
    }

    public void setModifiable(Boolean modify) {
        this.modifiable = modify;
    }

    @ManyToOne
    @JoinColumn(name = "PROPERTY_CATEGORY_ID")
    public PropertyCategory getPropertyCategory() {
        return propertyCategory;
    }

    public void setPropertyCategory(PropertyCategory propertyCategory) {
        this.propertyCategory = propertyCategory;
    }

    @ManyToOne
    @JoinColumn(name = "PROPERTY_TYPE_ID")
    public PropertyType getPropertyType() {
        return propertyType;
    }

    public void setPropertyType(PropertyType propertyType) {
        this.propertyType = propertyType;
    }

    @Column(name = "CREATED_ON")
    public Date getCreatedOn() {
        return createdOn;
    }

    public void setCreatedOn(Date createdOn) {
        this.createdOn = createdOn;
    }

    @Column(name = "UPDATED_ON")
    public Date getUpdatedOn() {
        return updatedOn;
    }

    public void setUpdatedOn(Date updatedOn) {
        this.updatedOn = updatedOn;
    }

}
