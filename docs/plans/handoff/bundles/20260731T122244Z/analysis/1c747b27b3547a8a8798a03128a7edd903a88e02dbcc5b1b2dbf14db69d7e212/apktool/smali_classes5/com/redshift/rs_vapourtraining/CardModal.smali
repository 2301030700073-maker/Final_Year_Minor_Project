.class public Lcom/redshift/rs_vapourtraining/CardModal;
.super Ljava/lang/Object;
.source "CardModal.java"


# instance fields
.field private cardNummber:Ljava/lang/String;

.field private cvv:Ljava/lang/String;

.field private expiryDate:Ljava/lang/String;

.field private id:I

.field private nameoncard:Ljava/lang/String;

.field private userid:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "userID"    # I
    .param p2, "cardNummber"    # Ljava/lang/String;
    .param p3, "cvv"    # Ljava/lang/String;
    .param p4, "expiryDate"    # Ljava/lang/String;
    .param p5, "nameoncard"    # Ljava/lang/String;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/redshift/rs_vapourtraining/CardModal;->userid:I

    .line 38
    iput-object p2, p0, Lcom/redshift/rs_vapourtraining/CardModal;->cardNummber:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/redshift/rs_vapourtraining/CardModal;->cvv:Ljava/lang/String;

    .line 40
    iput-object p4, p0, Lcom/redshift/rs_vapourtraining/CardModal;->expiryDate:Ljava/lang/String;

    .line 41
    iput-object p5, p0, Lcom/redshift/rs_vapourtraining/CardModal;->nameoncard:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public getCardNummber()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/redshift/rs_vapourtraining/CardModal;->cardNummber:Ljava/lang/String;

    return-object v0
.end method

.method public getCvv()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/redshift/rs_vapourtraining/CardModal;->cvv:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiryDate()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/redshift/rs_vapourtraining/CardModal;->expiryDate:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/redshift/rs_vapourtraining/CardModal;->id:I

    return v0
.end method

.method public getNameoncard()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/redshift/rs_vapourtraining/CardModal;->nameoncard:Ljava/lang/String;

    return-object v0
.end method

.method public getUserid()I
    .locals 1

    .line 14
    iget v0, p0, Lcom/redshift/rs_vapourtraining/CardModal;->userid:I

    return v0
.end method

.method public setCardNummber(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardNummber"    # Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/redshift/rs_vapourtraining/CardModal;->cardNummber:Ljava/lang/String;

    return-void
.end method

.method public setCvv(Ljava/lang/String;)V
    .locals 0
    .param p1, "cvv"    # Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/redshift/rs_vapourtraining/CardModal;->cvv:Ljava/lang/String;

    return-void
.end method

.method public setExpiryDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "expiryDate"    # Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/redshift/rs_vapourtraining/CardModal;->expiryDate:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .line 24
    iput p1, p0, Lcom/redshift/rs_vapourtraining/CardModal;->id:I

    return-void
.end method

.method public setNameoncard(Ljava/lang/String;)V
    .locals 0
    .param p1, "nameoncard"    # Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/redshift/rs_vapourtraining/CardModal;->nameoncard:Ljava/lang/String;

    return-void
.end method

.method public setUserid(I)V
    .locals 0
    .param p1, "userid"    # I

    .line 26
    iput p1, p0, Lcom/redshift/rs_vapourtraining/CardModal;->userid:I

    return-void
.end method
