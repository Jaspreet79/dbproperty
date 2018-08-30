package com.example.dynamicproperty.model;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name="DB_PROPERTY_TYPE")
public class PropertyType{
    @Id
    @GeneratedValue(strategy=GenerationType.SEQUENCE, generator = "db_property_Sequence")
    @SequenceGenerator(name = "db_property_Sequence", sequenceName = "DB_PROPERTY_SEQUENCE")
    protected Long id;
    protected String propertyDataType;
    protected String description;
    protected Date createdOn;
    protected Date updatedOn;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getPropertyDataType() {
        return propertyDataType;
    }

    public void setPropertyDataType(String propertyDataType) {
        this.propertyDataType = propertyDataType;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
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
