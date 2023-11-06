package com.piccmaq.flutter_paypal_native.models;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

public class PurchaseUnitC {

    @SerializedName("price")
    @Expose
    private String price;
    @SerializedName("currency")
    @Expose
    private String currency;
    @SerializedName("referenceId")
    @Expose
    private String referenceId;
    @SerializedName("payeeEmailAddress")
    @Expose
    private String payeeEmailAddress;
    @SerializedName("payeeMerchantId")
    @Expose
    private String payeeMerchantId;


    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getReferenceID() {
        return referenceId;
    }

    public void getReferenceID(String referenceId) {
        this.price = referenceId;
    }

    public String getCurrency() {
        return currency;
    }

    public void setCurrency(String currency) {
        this.currency = currency;
    }

    public String getPayeeEmailAddress() {
        return payeeEmailAddress;
    }

    public void setPayeeEmailAddress(String payeeEmailAddress) {
        this.payeeEmailAddress = payeeEmailAddress;
    }

    public String getPayeeMerchantId() {
        return payeeMerchantId;
    }

    public void setPayeeMerchantId(String payeeMerchantId) {
        this.payeeMerchantId = payeeMerchantId;
    }
}
