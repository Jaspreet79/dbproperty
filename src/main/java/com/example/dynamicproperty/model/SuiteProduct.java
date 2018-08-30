package com.example.dynamicproperty.model;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table (name="DB_SUITE_PRODUCT")
public class SuiteProduct {
    @Id
    @GeneratedValue(strategy=GenerationType.SEQUENCE, generator = "db_property_Sequence")
    @SequenceGenerator(name = "db_property_Sequence", sequenceName = "DB_PROPERTY_SEQUENCE")
    protected Long id;
    protected String suiteProductName;
    protected String displayName;
    protected String description;
    protected Date createdOn;
    protected Date updatedOn;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getSuiteProductName() {
        return suiteProductName;
    }

    public void setSuiteProductName(String suiteProductName) {
        this.suiteProductName = suiteProductName;
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
