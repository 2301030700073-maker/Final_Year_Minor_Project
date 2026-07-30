.class Lcom/android/contacts/model/account/BaseAccountType$EmailKindBuilder;
.super Lcom/android/contacts/model/account/BaseAccountType$KindBuilder;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/account/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmailKindBuilder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1074
    invoke-direct {p0, v0}, Lcom/android/contacts/model/account/BaseAccountType$KindBuilder;-><init>(Lcom/android/contacts/model/account/BaseAccountType$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/model/account/BaseAccountType$1;)V
    .locals 0

    .line 1074
    invoke-direct {p0}, Lcom/android/contacts/model/account/BaseAccountType$EmailKindBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method protected buildEditTypeForTypeTag(Landroid/util/AttributeSet;Ljava/lang/String;)Lcom/android/contacts/model/account/AccountType$EditType;
    .locals 1

    const-string p1, "home"

    .line 1095
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-static {v0}, Lcom/android/contacts/model/account/BaseAccountType;->buildEmailType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "work"

    .line 1096
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    invoke-static {p1}, Lcom/android/contacts/model/account/BaseAccountType;->buildEmailType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, "other"

    .line 1097
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x3

    invoke-static {p1}, Lcom/android/contacts/model/account/BaseAccountType;->buildEmailType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object p1

    return-object p1

    :cond_2
    const-string p1, "mobile"

    .line 1098
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x4

    invoke-static {p1}, Lcom/android/contacts/model/account/BaseAccountType;->buildEmailType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object p1

    return-object p1

    :cond_3
    const-string p1, "custom"

    .line 1099
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    .line 1100
    invoke-static {p1}, Lcom/android/contacts/model/account/BaseAccountType;->buildEmailType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object p1

    .line 1101
    invoke-virtual {p1, v0}, Lcom/android/contacts/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object p1

    const-string p2, "data3"

    invoke-virtual {p1, p2}, Lcom/android/contacts/model/account/AccountType$EditType;->setCustomColumn(Ljava/lang/String;)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    const-string v0, "email"

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

    .line 1084
    new-instance v9, Lcom/android/contacts/model/account/BaseAccountType$EmailActionInflater;

    invoke-direct {v9}, Lcom/android/contacts/model/account/BaseAccountType$EmailActionInflater;-><init>()V

    new-instance v10, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;

    const-string v11, "data1"

    invoke-direct {v10, v11}, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const-string v5, "vnd.android.cursor.item/email_v2"

    const-string v6, "data2"

    const v7, 0x7f10010d

    const/16 v8, 0xf

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v10}, Lcom/android/contacts/model/account/BaseAccountType$KindBuilder;->newDataKind(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ZLjava/lang/String;Ljava/lang/String;IILcom/android/contacts/model/account/AccountType$StringInflater;Lcom/android/contacts/model/account/AccountType$StringInflater;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object p1

    .line 1087
    iget-object p2, p1, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance p3, Lcom/android/contacts/model/account/AccountType$EditField;

    const v0, 0x7f10010d

    const/16 v1, 0x21

    invoke-direct {p3, v11, v0, v1}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x1

    new-array p2, p2, [Lcom/android/contacts/model/dataitem/DataKind;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    .line 1089
    invoke-static {p2}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method
