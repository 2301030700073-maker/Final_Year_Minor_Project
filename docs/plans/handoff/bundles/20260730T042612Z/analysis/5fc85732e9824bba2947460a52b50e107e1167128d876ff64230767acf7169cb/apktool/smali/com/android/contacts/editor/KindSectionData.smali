.class public final Lcom/android/contacts/editor/KindSectionData;
.super Ljava/lang/Object;
.source "KindSectionData.java"


# instance fields
.field private final mAccountType:Lcom/android/contacts/model/account/AccountType;

.field private final mDataKind:Lcom/android/contacts/model/dataitem/DataKind;

.field private final mRawContactDelta:Lcom/android/contacts/model/RawContactDelta;


# direct methods
.method public constructor <init>(Lcom/android/contacts/model/account/AccountType;Lcom/android/contacts/model/dataitem/DataKind;Lcom/android/contacts/model/RawContactDelta;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/contacts/editor/KindSectionData;->mAccountType:Lcom/android/contacts/model/account/AccountType;

    .line 42
    iput-object p2, p0, Lcom/android/contacts/editor/KindSectionData;->mDataKind:Lcom/android/contacts/model/dataitem/DataKind;

    .line 43
    iput-object p3, p0, Lcom/android/contacts/editor/KindSectionData;->mRawContactDelta:Lcom/android/contacts/model/RawContactDelta;

    return-void
.end method

.method private isEmpty(Lcom/android/contacts/model/ValuesDelta;)Z
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionData;->mDataKind:Lcom/android/contacts/model/dataitem/DataKind;

    iget-object v0, v0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 105
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/account/AccountType$EditField;

    .line 106
    iget-object v1, v1, Lcom/android/contacts/model/account/AccountType$EditField;->column:Ljava/lang/String;

    .line 107
    invoke-virtual {p1, v1}, Lcom/android/contacts/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public getAccountType()Lcom/android/contacts/model/account/AccountType;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionData;->mAccountType:Lcom/android/contacts/model/account/AccountType;

    return-object v0
.end method

.method public getDataKind()Lcom/android/contacts/model/dataitem/DataKind;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionData;->mDataKind:Lcom/android/contacts/model/dataitem/DataKind;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionData;->mDataKind:Lcom/android/contacts/model/dataitem/DataKind;

    iget-object v0, v0, Lcom/android/contacts/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getNonEmptyValuesDeltas()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/ValuesDelta;",
            ">;"
        }
    .end annotation

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    invoke-virtual {p0}, Lcom/android/contacts/editor/KindSectionData;->getValuesDeltas()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/ValuesDelta;

    .line 72
    invoke-direct {p0, v2}, Lcom/android/contacts/editor/KindSectionData;->isEmpty(Lcom/android/contacts/model/ValuesDelta;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 73
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getRawContactDelta()Lcom/android/contacts/model/RawContactDelta;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionData;->mRawContactDelta:Lcom/android/contacts/model/RawContactDelta;

    return-object v0
.end method

.method public getValuesDeltas()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/ValuesDelta;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionData;->mRawContactDelta:Lcom/android/contacts/model/RawContactDelta;

    iget-object v1, p0, Lcom/android/contacts/editor/KindSectionData;->mDataKind:Lcom/android/contacts/model/dataitem/DataKind;

    iget-object v1, v1, Lcom/android/contacts/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object v0
.end method

.method public getVisibleValuesDeltas()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/ValuesDelta;",
            ">;"
        }
    .end annotation

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    invoke-virtual {p0}, Lcom/android/contacts/editor/KindSectionData;->getValuesDeltas()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/ValuesDelta;

    .line 61
    invoke-virtual {v2}, Lcom/android/contacts/model/ValuesDelta;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/contacts/model/ValuesDelta;->isDelete()Z

    move-result v3

    if-nez v3, :cond_0

    .line 62
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method
