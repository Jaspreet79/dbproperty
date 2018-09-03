package com.example.dynamicproperty.model;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "DB_PROPERTY_TYPE")
public class PropertyType {

    protected Long id;
    protected String propertyDataType;
    protected String description;
    protected Date createdOn;
    protected Date updatedOn;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "PROPERTY_TYPE_ID")
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @Column(name = "PROPERTY_DATA_TYPE")
    public String getPropertyDataType() {
        return propertyDataType;
    }

    public void setPropertyDataType(String propertyDataType) {
        this.propertyDataType = propertyDataType;
    }

    @Column(name = "DESCRIPTION")
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
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
