.class Lcom/android/contacts/model/account/BaseAccountType$PhoneKindBuilder;
.super Lcom/android/contacts/model/account/BaseAccountType$KindBuilder;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/account/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PhoneKindBuilder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1015
    invoke-direct {p0, v0}, Lcom/android/contacts/model/account/BaseAccountType$KindBuilder;-><init>(Lcom/android/contacts/model/account/BaseAccountType$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/model/account/BaseAccountType$1;)V
    .locals 0

    .line 1015
    invoke-direct {p0}, Lcom/android/contacts/model/account/BaseAccountType$PhoneKindBuilder;-><init>()V

    return-void
.end method

.method protected static build(IZ)Lcom/android/contacts/model/account/AccountType$EditType;
    .locals 2

    .line 1040
    new-instance v0, Lcom/android/contacts/model/account/AccountType$EditType;

    invoke-static {p0}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/model/account/AccountType$EditType;-><init>(II)V

    invoke-virtual {v0, p1}, Lcom/android/contacts/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected buildEditTypeForTypeTag(Landroid/util/AttributeSet;Ljava/lang/String;)Lcom/android/contacts/model/account/AccountType$EditType;
    .locals 2

    const-string p1, "home"

    .line 1045
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    invoke-static {v1, v0}, Lcom/android/contacts/model/account/BaseAccountType$PhoneKindBuilder;->build(IZ)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "mobile"

    .line 1046
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    invoke-static {p1, v0}, Lcom/android/contacts/model/account/BaseAccountType$PhoneKindBuilder;->build(IZ)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, "work"

    .line 1047
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x3

    invoke-static {p1, v0}, Lcom/android/contacts/model/account/BaseAccountType$PhoneKindBuilder;->build(IZ)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object p1

    return-object p1

    :cond_2
    const-string p1, "fax_work"

    .line 1048
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x4

    invoke-static {p1, v1}, Lcom/android/contacts/model/account/BaseAccountType$PhoneKindBuilder;->build(IZ)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object p1

    return-object p1

    :cond_3
    const-string p1, "fax_home"

    .line 1049
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x5

    invoke-static {p1, v1}, Lcom/android/contacts/model/account/BaseAccountType$PhoneKindBuilder;->build(IZ)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object p1

    return-object p1

    :cond_4
    const-string p1, "pager"

    .line 1050
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x6

    invoke-static {p1, v1}, Lcom/android/contacts/model/account/BaseAccountType$PhoneKindBuilder;->build(IZ)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object p1

    return-object p1

    :cond_5
    const-string p1, "other"

    .line 1051
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x7

    invoke-static {p1, v0}, Lcom/android/contacts/model/account/BaseAccountType$PhoneKindBuilder;->build(IZ)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object p1

    return-object p1

    :cond_6
    const-string p1, "callback"

    .line 1052
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 p1, 0x8

    invoke-static {p1, v1}, Lcom/android/contacts/model/account/BaseAccountType$PhoneKindBuilder;->build(IZ)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object p1

    return-object p1

    :cond_7
    const-string p1, "car"

    .line 1053
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/16 p1, 0x9

    invoke-static {p1, v1}, Lcom/android/contacts/model/account/BaseAccountType$PhoneKindBuilder;->build(IZ)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object p1

    return-object p1

    :cond_8
    const-string p1, "company_main"

    .line 1054
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    const/16 p1, 0xa

    invoke-static {p1, v1}, Lcom/android/contacts/model/account/BaseAccountType$PhoneKindBuilder;->build(IZ)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object p1

    return-object p1

    :cond_9
    const-string p1, "isdn"

    .line 1055
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    const/16 p1, 0xb

    invoke-static {p1, v1}, Lcom/android/contacts/model/account/BaseAccountType$PhoneKindBuilder;->build(IZ)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object p1

    return-object p1

    :cond_a
    const-string p1, "main"

    .line 1056
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    const/16 p1, 0xc

    invoke-static {p1, v1}, Lcom/android/contacts/model/account/BaseAccountType$PhoneKindBuilder;->build(IZ)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object p1

    return-object p1

    :cond_b
    const-string p1, "other_fax"

    .line 1057
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/16 p1, 0xd

    invoke-static {p1, v1}, Lcom/android/contacts/model/account/BaseAccountType$PhoneKindBuilder;->build(IZ)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object p1

    return-object p1

    :cond_c
    const-string p1, "radio"

    .line 1058
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    const/16 p1, 0xe

    invoke-static {p1, v1}, Lcom/android/contacts/model/account/BaseAccountType$PhoneKindBuilder;->build(IZ)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object p1

    return-object p1

    :cond_d
    const-string p1, "telex"

    .line 1059
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/16 p1, 0xf

    invoke-static {p1, v1}, Lcom/android/contacts/model/account/BaseAccountType$PhoneKindBuilder;->build(IZ)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object p1

    return-object p1

    :cond_e
    const-string p1, "tty_tdd"

    .line 1060
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    const/16 p1, 0x10

    invoke-static {p1, v1}, Lcom/android/contacts/model/account/BaseAccountType$PhoneKindBuilder;->build(IZ)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object p1

    return-object p1

    :cond_f
    const-string p1, "work_mobile"

    .line 1061
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    const/16 p1, 0x11

    invoke-static {p1, v1}, Lcom/android/contacts/model/account/BaseAccountType$PhoneKindBuilder;->build(IZ)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object p1

    return-object p1

    :cond_10
    const-string p1, "work_pager"

    .line 1062
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    const/16 p1, 0x12

    invoke-static {p1, v1}, Lcom/android/contacts/model/account/BaseAccountType$PhoneKindBuilder;->build(IZ)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object p1

    return-object p1

    :cond_11
    const-string p1, "assistant"

    .line 1065
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/16 p1, 0x13

    invoke-static {p1, v1}, Lcom/android/contacts/model/account/BaseAccountType$PhoneKindBuilder;->build(IZ)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object p1

    return-object p1

    :cond_12
    const-string p1, "mms"

    .line 1066
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    const/16 p1, 0x14

    invoke-static {p1, v1}, Lcom/android/contacts/model/account/BaseAccountType$PhoneKindBuilder;->build(IZ)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object p1

    return-object p1

    :cond_13
    const-string p1, "custom"

    .line 1067
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 1068
    invoke-static {v0, v1}, Lcom/android/contacts/model/account/BaseAccountType$PhoneKindBuilder;->build(IZ)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object p1

    const-string p2, "data3"

    invoke-virtual {p1, p2}, Lcom/android/contacts/model/account/AccountType$EditType;->setCustomColumn(Ljava/lang/String;)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object p1

    return-object p1

    :cond_14
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    const-string v0, "phone"

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

    .line 1025
    new-instance v9, Lcom/android/contacts/model/account/BaseAccountType$PhoneActionInflater;

    invoke-direct {v9}, Lcom/android/contacts/model/account/BaseAccountType$PhoneActionInflater;-><init>()V

    new-instance v10, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;

    const-string v11, "data1"

    invoke-direct {v10, v11}, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const-string v5, "vnd.android.cursor.item/phone_v2"

    const-string v6, "data2"

    const v7, 0x7f1001ce

    const/16 v8, 0xa

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v10}, Lcom/android/contacts/model/account/BaseAccountType$KindBuilder;->newDataKind(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ZLjava/lang/String;Ljava/lang/String;IILcom/android/contacts/model/account/AccountType$StringInflater;Lcom/android/contacts/model/account/AccountType$StringInflater;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object p1

    const p2, 0x7f0800bf

    .line 1029
    iput p2, p1, Lcom/android/contacts/model/dataitem/DataKind;->iconAltRes:I

    const p2, 0x7f100211

    .line 1030
    iput p2, p1, Lcom/android/contacts/model/dataitem/DataKind;->iconAltDescriptionRes:I

    .line 1031
    new-instance p2, Lcom/android/contacts/model/account/BaseAccountType$PhoneActionAltInflater;

    invoke-direct {p2}, Lcom/android/contacts/model/account/BaseAccountType$PhoneActionAltInflater;-><init>()V

    iput-object p2, p1, Lcom/android/contacts/model/dataitem/DataKind;->actionAltHeader:Lcom/android/contacts/model/account/AccountType$StringInflater;

    .line 1033
    iget-object p2, p1, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance p3, Lcom/android/contacts/model/account/AccountType$EditField;

    const v0, 0x7f1001ce

    const/4 v1, 0x3

    invoke-direct {p3, v11, v0, v1}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x1

    new-array p2, p2, [Lcom/android/contacts/model/dataitem/DataKind;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    .line 1035
    invoke-static {p2}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method
