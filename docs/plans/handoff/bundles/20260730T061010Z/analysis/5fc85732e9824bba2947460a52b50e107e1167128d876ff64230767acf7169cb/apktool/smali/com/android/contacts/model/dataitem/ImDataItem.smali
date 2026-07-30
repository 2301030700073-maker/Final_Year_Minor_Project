.class public Lcom/android/contacts/model/dataitem/ImDataItem;
.super Lcom/android/contacts/model/dataitem/DataItem;
.source "ImDataItem.java"


# instance fields
.field private final mCreatedFromEmail:Z


# direct methods
.method constructor <init>(Landroid/content/ContentValues;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/android/contacts/model/dataitem/DataItem;-><init>(Landroid/content/ContentValues;)V

    const/4 p1, 0x0

    .line 36
    iput-boolean p1, p0, Lcom/android/contacts/model/dataitem/ImDataItem;->mCreatedFromEmail:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/ContentValues;Z)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/android/contacts/model/dataitem/DataItem;-><init>(Landroid/content/ContentValues;)V

    .line 41
    iput-boolean p2, p0, Lcom/android/contacts/model/dataitem/ImDataItem;->mCreatedFromEmail:Z

    return-void
.end method

.method public static createFromEmail(Lcom/android/contacts/model/dataitem/EmailDataItem;)Lcom/android/contacts/model/dataitem/ImDataItem;
    .locals 2

    .line 45
    new-instance v0, Lcom/android/contacts/model/dataitem/ImDataItem;

    new-instance v1, Landroid/content/ContentValues;

    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/DataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object p0

    invoke-direct {v1, p0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    const/4 p0, 0x1

    invoke-direct {v0, v1, p0}, Lcom/android/contacts/model/dataitem/ImDataItem;-><init>(Landroid/content/ContentValues;Z)V

    const-string p0, "vnd.android.cursor.item/im"

    .line 46
    invoke-virtual {v0, p0}, Lcom/android/contacts/model/dataitem/DataItem;->setMimeType(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getChatCapability()I
    .locals 2

    .line 78
    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/DataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "chat_capability"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getCustomProtocol()Ljava/lang/String;
    .locals 2

    .line 74
    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/DataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "data6"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 2

    .line 51
    iget-boolean v0, p0, Lcom/android/contacts/model/dataitem/ImDataItem;->mCreatedFromEmail:Z

    const-string v1, "data1"

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/DataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/DataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

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

.method public getProtocol()Ljava/lang/Integer;
    .locals 2

    .line 66
    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/DataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "data5"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public isCreatedFromEmail()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/android/contacts/model/dataitem/ImDataItem;->mCreatedFromEmail:Z

    return v0
.end method

.method public isProtocolValid()Z
    .locals 1

    .line 70
    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/ImDataItem;->getProtocol()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public shouldCollapseWith(Lcom/android/contacts/model/dataitem/DataItem;Landroid/content/Context;)Z
    .locals 4

    .line 88
    instance-of p2, p1, Lcom/android/contacts/model/dataitem/ImDataItem;

    const/4 v0, 0x0

    if-eqz p2, :cond_a

    iget-object p2, p0, Lcom/android/contacts/model/dataitem/DataItem;->mKind:Lcom/android/contacts/model/dataitem/DataKind;

    if-eqz p2, :cond_a

    invoke-virtual {p1}, Lcom/android/contacts/model/dataitem/DataItem;->getDataKind()Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_1

    .line 91
    :cond_0
    check-cast p1, Lcom/android/contacts/model/dataitem/ImDataItem;

    .line 93
    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/ImDataItem;->getData()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/contacts/model/dataitem/ImDataItem;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    return v0

    .line 95
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/ImDataItem;->isProtocolValid()Z

    move-result p2

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Lcom/android/contacts/model/dataitem/ImDataItem;->isProtocolValid()Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    .line 104
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/ImDataItem;->getProtocol()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/contacts/model/dataitem/ImDataItem;->getProtocol()Ljava/lang/Integer;

    move-result-object v3

    if-eq p2, v3, :cond_3

    return v0

    .line 106
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/ImDataItem;->getProtocol()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v1, :cond_4

    .line 107
    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/ImDataItem;->getCustomProtocol()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/contacts/model/dataitem/ImDataItem;->getCustomProtocol()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    return v0

    :cond_4
    return v2

    .line 98
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/ImDataItem;->isProtocolValid()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 99
    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/ImDataItem;->getProtocol()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0

    .line 100
    :cond_7
    invoke-virtual {p1}, Lcom/android/contacts/model/dataitem/ImDataItem;->isProtocolValid()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 101
    invoke-virtual {p1}, Lcom/android/contacts/model/dataitem/ImDataItem;->getProtocol()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0

    :cond_9
    return v2

    :cond_a
    :goto_1
    return v0
.end method

.method public bridge synthetic shouldCollapseWith(Ljava/lang/Object;Landroid/content/Context;)Z
    .locals 0

    .line 30
    check-cast p1, Lcom/android/contacts/model/dataitem/DataItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/model/dataitem/ImDataItem;->shouldCollapseWith(Lcom/android/contacts/model/dataitem/DataItem;Landroid/content/Context;)Z

    move-result p1

    return p1
.end method
