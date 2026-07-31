package com.redshift.rs_vapourtraining;

/* loaded from: classes5.dex */
public class ProductModal {
    private int id;
    private int productCreditsworth;
    private String productDescription;
    private String productName;
    private String productPrice;
    private String productURL;

    public String getproductName() {
        return this.productName;
    }

    public void setproductName(String productName) {
        this.productName = productName;
    }

    public String getproductURL() {
        return this.productURL;
    }

    public void setproductURL(String productURL) {
        this.productURL = productURL;
    }

    public String getproductPrice() {
        return this.productPrice;
    }

    public void setproductPrice(String productPrice) {
        this.productPrice = productPrice;
    }

    public String getproductDescription() {
        return this.productDescription;
    }

    public void setproductDescription(String productDescription) {
        this.productDescription = productDescription;
    }

    public int getProductCreditsworth() {
        return this.productCreditsworth;
    }

    public void setProductCreditsworth(int productCreditsworth) {
        this.productCreditsworth = productCreditsworth;
    }

    public int getId() {
        return this.id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public ProductModal(String productName, String productURL, String productPrice, String productDescription, int id, int credits) {
        this.productName = productName;
        this.productURL = productURL;
        this.productPrice = productPrice;
        this.productDescription = productDescription;
        this.id = id;
        this.productCreditsworth = credits;
    }
}
