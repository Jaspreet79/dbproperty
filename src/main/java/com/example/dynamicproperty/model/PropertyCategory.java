package com.example.dynamicproperty.model;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "DB_PROPERTY_CATEGORY")
public class PropertyCategory {

    protected Long id;
    protected String propertyCategory;
    protected String displayName;
    protected String description;
    protected Date createdOn;
    protected Date updatedOn;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "PROPERTY_CATEGORY_ID")
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @Column(name = "PROPERTY_CATEGORY_NAME", nullable = false)
    public String getPropertyCategory() {
        return propertyCategory;
    }

    public void setPropertyCategory(String propertyCategory) {
        this.propertyCategory = propertyCategory;
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
