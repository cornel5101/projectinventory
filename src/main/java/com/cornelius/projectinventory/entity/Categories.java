/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cornelius.projectinventory.entity;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 *
 * @author Cornelius
 */
@Entity
@Table(name = "categories")
@NamedQueries({
    @NamedQuery(name = "Categories.findAll", query = "SELECT c FROM Categories c")
    , @NamedQuery(name = "Categories.findByCatId", query = "SELECT c FROM Categories c WHERE c.catId = :catId")
    , @NamedQuery(name = "Categories.findByParentCat", query = "SELECT c FROM Categories c WHERE c.parentCat = :parentCat")
    , @NamedQuery(name = "Categories.findByCatName", query = "SELECT c FROM Categories c WHERE c.catName = :catName")})
public class Categories implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "cat_id")
    private Integer catId;
    @Column(name = "parent_cat")
    private Integer parentCat;
    @Column(name = "cat_name")
    private String catName;
    @JoinColumn(name = "status_id", referencedColumnName = "status_id")
    @ManyToOne
    private Status statusId;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "categoryId")
    private List<Products> productsList;

    public Categories() {
    }

    public Categories(Integer catId) {
        this.catId = catId;
    }

    public Integer getCatId() {
        return catId;
    }

    public void setCatId(Integer catId) {
        this.catId = catId;
    }

    public Integer getParentCat() {
        return parentCat;
    }

    public void setParentCat(Integer parentCat) {
        this.parentCat = parentCat;
    }

    public String getCatName() {
        return catName;
    }

    public void setCatName(String catName) {
        this.catName = catName;
    }

    public Status getStatusId() {
        return statusId;
    }

    public void setStatusId(Status statusId) {
        this.statusId = statusId;
    }

    public List<Products> getProductsList() {
        return productsList;
    }

    public void setProductsList(List<Products> productsList) {
        this.productsList = productsList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (catId != null ? catId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Categories)) {
            return false;
        }
        Categories other = (Categories) object;
        if ((this.catId == null && other.catId != null) || (this.catId != null && !this.catId.equals(other.catId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cornelius.projectinventory.entity.Categories[ catId=" + catId + " ]";
    }
    
}
