.class public Lcom/android/contacts/model/dataitem/PhoneDataItem;
.super Lcom/android/contacts/model/dataitem/DataItem;
.source "PhoneDataItem.java"


# static fields
.field public static final KEY_FORMATTED_PHONE_NUMBER:Ljava/lang/String; = "formattedPhoneNumber"


# instance fields
.field private mReachableDataItem:Lcom/android/contacts/model/dataitem/DataItem;

.field private mTachyonReachable:Z


# direct methods
.method constructor <init>(Landroid/content/ContentValues;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/android/contacts/model/dataitem/DataItem;-><init>(Landroid/content/ContentValues;)V

    return-void
.end method


# virtual methods
.method public buildDataStringForDisplay(Landroid/content/Context;Lcom/android/contacts/model/dataitem/DataKind;)Ljava/lang/String;
    .locals 0

    .line 93
    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/PhoneDataItem;->getFormattedPhoneNumber()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/PhoneDataItem;->getNumber()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public computeFormattedPhoneNumber(Ljava/lang/String;)V
    .locals 2

    .line 79
    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/PhoneDataItem;->getNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/PhoneDataItem;->getNormalizedNumber()Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-static {v0, v1, p1}, Lcom/android/contacts/compat/PhoneNumberUtilsCompat;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 83
    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/DataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "formattedPhoneNumber"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getFormattedPhoneNumber()Ljava/lang/String;
    .locals 2

    .line 55
    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/DataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "formattedPhoneNumber"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 2

    .line 59
    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/DataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "data3"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNormalizedNumber()Ljava/lang/String;
    .locals 2

    .line 51
    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/DataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "data4"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 2

    .line 44
    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/DataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "data1"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReachableDataItem()Lcom/android/contacts/model/dataitem/DataItem;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/android/contacts/model/dataitem/PhoneDataItem;->mReachableDataItem:Lcom/android/contacts/model/dataitem/DataItem;

    return-object v0
.end method

.method public isTachyonReachable()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/android/contacts/model/dataitem/PhoneDataItem;->mTachyonReachable:Z

    return v0
.end method

.method public setReachableDataItem(Lcom/android/contacts/model/dataitem/DataItem;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/android/contacts/model/dataitem/PhoneDataItem;->mReachableDataItem:Lcom/android/contacts/model/dataitem/DataItem;

    return-void
.end method

.method public setTachyonReachable(Z)V
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/android/contacts/model/dataitem/PhoneDataItem;->mTachyonReachable:Z

    return-void
.end method
