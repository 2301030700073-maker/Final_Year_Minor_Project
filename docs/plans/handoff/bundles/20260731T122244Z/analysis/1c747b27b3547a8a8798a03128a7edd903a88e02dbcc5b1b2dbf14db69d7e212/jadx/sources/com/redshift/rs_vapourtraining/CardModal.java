package com.redshift.rs_vapourtraining;

/* loaded from: classes5.dex */
public class CardModal {
    private String cardNummber;
    private String cvv;
    private String expiryDate;
    private int id;
    private String nameoncard;
    private int userid;

    public int getId() {
        return this.id;
    }

    public int getUserid() {
        return this.userid;
    }

    public String getCardNummber() {
        return this.cardNummber;
    }

    public String getCvv() {
        return this.cvv;
    }

    public String getExpiryDate() {
        return this.expiryDate;
    }

    public String getNameoncard() {
        return this.nameoncard;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public void setCardNummber(String cardNummber) {
        this.cardNummber = cardNummber;
    }

    public void setCvv(String cvv) {
        this.cvv = cvv;
    }

    public void setExpiryDate(String expiryDate) {
        this.expiryDate = expiryDate;
    }

    public void setNameoncard(String nameoncard) {
        this.nameoncard = nameoncard;
    }

    public CardModal(int userID, String cardNummber, String cvv, String expiryDate, String nameoncard) {
        this.userid = userID;
        this.cardNummber = cardNummber;
        this.cvv = cvv;
        this.expiryDate = expiryDate;
        this.nameoncard = nameoncard;
    }
}
