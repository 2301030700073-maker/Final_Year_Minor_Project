.class public Lcom/redshift/rs_vapourtraining/ProductModal;
.super Ljava/lang/Object;
.source "ProductModal.java"


# instance fields
.field private id:I

.field private productCreditsworth:I

.field private productDescription:Ljava/lang/String;

.field private productName:Ljava/lang/String;

.field private productPrice:Ljava/lang/String;

.field private productURL:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "productName"    # Ljava/lang/String;
    .param p2, "productURL"    # Ljava/lang/String;
    .param p3, "productPrice"    # Ljava/lang/String;
    .param p4, "productDescription"    # Ljava/lang/String;
    .param p5, "id"    # I
    .param p6, "credits"    # I

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/redshift/rs_vapourtraining/ProductModal;->productName:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/redshift/rs_vapourtraining/ProductModal;->productURL:Ljava/lang/String;

    .line 60
    iput-object p3, p0, Lcom/redshift/rs_vapourtraining/ProductModal;->productPrice:Ljava/lang/String;

    .line 61
    iput-object p4, p0, Lcom/redshift/rs_vapourtraining/ProductModal;->productDescription:Ljava/lang/String;

    .line 62
    iput p5, p0, Lcom/redshift/rs_vapourtraining/ProductModal;->id:I

    .line 63
    iput p6, p0, Lcom/redshift/rs_vapourtraining/ProductModal;->productCreditsworth:I

    .line 64
    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/redshift/rs_vapourtraining/ProductModal;->id:I

    return v0
.end method

.method public getProductCreditsworth()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/redshift/rs_vapourtraining/ProductModal;->productCreditsworth:I

    return v0
.end method

.method public getproductDescription()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/redshift/rs_vapourtraining/ProductModal;->productDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getproductName()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/redshift/rs_vapourtraining/ProductModal;->productName:Ljava/lang/String;

    return-object v0
.end method

.method public getproductPrice()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/redshift/rs_vapourtraining/ProductModal;->productPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getproductURL()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/redshift/rs_vapourtraining/ProductModal;->productURL:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .line 53
    iput p1, p0, Lcom/redshift/rs_vapourtraining/ProductModal;->id:I

    .line 54
    return-void
.end method

.method public setProductCreditsworth(I)V
    .locals 0
    .param p1, "productCreditsworth"    # I

    .line 46
    iput p1, p0, Lcom/redshift/rs_vapourtraining/ProductModal;->productCreditsworth:I

    return-void
.end method

.method public setproductDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "productDescription"    # Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/redshift/rs_vapourtraining/ProductModal;->productDescription:Ljava/lang/String;

    return-void
.end method

.method public setproductName(Ljava/lang/String;)V
    .locals 0
    .param p1, "productName"    # Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/redshift/rs_vapourtraining/ProductModal;->productName:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setproductPrice(Ljava/lang/String;)V
    .locals 0
    .param p1, "productPrice"    # Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/redshift/rs_vapourtraining/ProductModal;->productPrice:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setproductURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "productURL"    # Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/redshift/rs_vapourtraining/ProductModal;->productURL:Ljava/lang/String;

    .line 28
    return-void
.end method
