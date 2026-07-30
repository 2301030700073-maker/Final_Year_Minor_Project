.class Lcom/android/contacts/model/account/BaseAccountType$RelationshipKindBuilder;
.super Lcom/android/contacts/model/account/BaseAccountType$KindBuilder;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/account/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RelationshipKindBuilder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1419
    invoke-direct {p0, v0}, Lcom/android/contacts/model/account/BaseAccountType$KindBuilder;-><init>(Lcom/android/contacts/model/account/BaseAccountType$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/model/account/BaseAccountType$1;)V
    .locals 0

    .line 1419
    invoke-direct {p0}, Lcom/android/contacts/model/account/BaseAccountType$RelationshipKindBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method protected buildEditTypeForTypeTag(Landroid/util/AttributeSet;Ljava/lang/String;)Lcom/android/contacts/model/account/AccountType$EditType;
    .locals 1

    const-string p1, "assistant"

    .line 1446
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-static {v0}, Lcom/android/contacts/model/account/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "brother"

    .line 1447
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    invoke-static {p1}, Lcom/android/contacts/model/account/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, "child"

    .line 1448
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x3

    invoke-static {p1}, Lcom/android/contacts/model/account/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object p1

    return-object p1

    :cond_2
    const-string p1, "domestic_partner"

    .line 1449
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x4

    .line 1450
    invoke-static {p1}, Lcom/android/contacts/model/account/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object p1

    return-object p1

    :cond_3
    const-string p1, "father"

    .line 1452
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x5

    invoke-static {p1}, Lcom/android/contacts/model/account/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object p1

    return-object p1

    :cond_4
    const-string p1, "friend"

    .line 1453
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x6

    invoke-static {p1}, Lcom/android/contacts/model/account/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object p1

    return-object p1

    :cond_5
    const-string p1, "manager"

    .line 1454
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x7

    invoke-static {p1}, Lcom/android/contacts/model/account/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object p1

    return-object p1

    :cond_6
    const-string p1, "mother"

    .line 1455
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 p1, 0x8

    invoke-static {p1}, Lcom/android/contacts/model/account/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object p1

    return-object p1

    :cond_7
    const-string p1, "parent"

    .line 1456
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/16 p1, 0x9

    invoke-static {p1}, Lcom/android/contacts/model/account/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object p1

    return-object p1

    :cond_8
    const-string p1, "partner"

    .line 1457
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    const/16 p1, 0xa

    invoke-static {p1}, Lcom/android/contacts/model/account/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object p1

    return-object p1

    :cond_9
    const-string p1, "referred_by"

    .line 1458
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    const/16 p1, 0xb

    invoke-static {p1}, Lcom/android/contacts/model/account/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object p1

    return-object p1

    :cond_a
    const-string p1, "relative"

    .line 1459
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    const/16 p1, 0xc

    invoke-static {p1}, Lcom/android/contacts/model/account/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object p1

    return-object p1

    :cond_b
    const-string p1, "sister"

    .line 1460
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/16 p1, 0xd

    invoke-static {p1}, Lcom/android/contacts/model/account/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object p1

    return-object p1

    :cond_c
    const-string p1, "spouse"

    .line 1461
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    const/16 p1, 0xe

    invoke-static {p1}, Lcom/android/contacts/model/account/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object p1

    return-object p1

    :cond_d
    const-string p1, "custom"

    .line 1462
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x0

    .line 1463
    invoke-static {p1}, Lcom/android/contacts/model/account/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/contacts/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object p1

    const-string p2, "data3"

    .line 1464
    invoke-virtual {p1, p2}, Lcom/android/contacts/model/account/AccountType$EditType;->setCustomColumn(Ljava/lang/String;)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object p1

    return-object p1

    :cond_e
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    const-string v0, "relationship"

    return-object v0
.end method

.method public parseDataKind(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroid/util/AttributeSet;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/dataitem/DataKind;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/account/AccountType$DefinitionException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1429
    new-instance v9, Lcom/android/contacts/model/account/BaseAccountType$RelationActionInflater;

    invoke-direct {v9}, Lcom/android/contacts/model/account/BaseAccountType$RelationActionInflater;-><init>()V

    new-instance v10, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;

    const-string v11, "data1"

    invoke-direct {v10, v11}, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const-string v5, "vnd.android.cursor.item/relation"

    const-string v6, "data2"

    const v7, 0x7f1001e9

    const/16 v8, 0x3e7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v10}, Lcom/android/contacts/model/account/BaseAccountType$KindBuilder;->newDataKind(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ZLjava/lang/String;Ljava/lang/String;IILcom/android/contacts/model/account/AccountType$StringInflater;Lcom/android/contacts/model/account/AccountType$StringInflater;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object p1

    .line 1434
    iget-object p2, p1, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance p3, Lcom/android/contacts/model/account/AccountType$EditField;

    const v0, 0x7f1001e9

    const/16 v1, 0x2061

    invoke-direct {p3, v11, v0, v1}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1437
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    iput-object p2, p1, Lcom/android/contacts/model/dataitem/DataKind;->defaultValues:Landroid/content/ContentValues;

    const/16 p3, 0xe

    .line 1438
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v0, "data2"

    invoke-virtual {p2, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p2, 0x1

    new-array p2, p2, [Lcom/android/contacts/model/dataitem/DataKind;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    .line 1440
    invoke-static {p2}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method
