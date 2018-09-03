package com.example.dynamicproperty.model;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "DB_SUITE_PRODUCT")
public class SuiteProduct {

    protected Long id;
    protected String suiteProductName;
    protected String displayName;
    protected String description;
    protected Date createdOn;
    protected Date updatedOn;

    @Id
    @Column(name = "SUITE_PRODUCT_ID")
    @GeneratedValue(strategy = GenerationType.AUTO)
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @Column(name = "PRODUCT_NAME", nullable = false)
    public String getSuiteProductName() {
        return suiteProductName;
    }

    public void setSuiteProductName(String suiteProductName) {
        this.suiteProductName = suiteProductName;
    }

    @Column(name = "DISPLAY_NAME", nullable = false)
    public String getDisplayName() {
        return displayName;
    }

    public void setDisplayName(String displayName) {
        this.displayName = displayName;
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
