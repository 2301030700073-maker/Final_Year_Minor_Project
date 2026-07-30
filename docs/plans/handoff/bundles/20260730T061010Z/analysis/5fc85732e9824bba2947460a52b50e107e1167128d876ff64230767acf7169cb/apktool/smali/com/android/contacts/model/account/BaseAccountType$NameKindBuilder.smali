.class Lcom/android/contacts/model/account/BaseAccountType$NameKindBuilder;
.super Lcom/android/contacts/model/account/BaseAccountType$KindBuilder;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/account/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameKindBuilder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 867
    invoke-direct {p0, v0}, Lcom/android/contacts/model/account/BaseAccountType$KindBuilder;-><init>(Lcom/android/contacts/model/account/BaseAccountType$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/model/account/BaseAccountType$1;)V
    .locals 0

    .line 867
    invoke-direct {p0}, Lcom/android/contacts/model/account/BaseAccountType$NameKindBuilder;-><init>()V

    return-void
.end method

.method private static checkAttributeTrue(ZLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/account/AccountType$DefinitionException;
        }
    .end annotation

    if-eqz p0, :cond_0

    return-void

    .line 876
    :cond_0
    new-instance p0, Lcom/android/contacts/model/account/AccountType$DefinitionException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must be true"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/contacts/model/account/AccountType$DefinitionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getTagName()Ljava/lang/String;
    .locals 1

    const-string v0, "name"

    return-object v0
.end method

.method public parseDataKind(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Ljava/util/List;
    .locals 29
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

    move-object/from16 v11, p0

    move-object/from16 v12, p3

    .line 891
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v13

    const-string v0, "supportsPrefix"

    const/4 v1, 0x0

    .line 893
    invoke-static {v12, v0, v1}, Lcom/android/contacts/model/account/BaseAccountType;->access$1700(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "supportsMiddleName"

    .line 894
    invoke-static {v12, v3, v1}, Lcom/android/contacts/model/account/BaseAccountType;->access$1700(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "supportsSuffix"

    .line 895
    invoke-static {v12, v5, v1}, Lcom/android/contacts/model/account/BaseAccountType;->access$1700(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z

    move-result v6

    const-string v7, "supportsPhoneticFamilyName"

    .line 897
    invoke-static {v12, v7, v1}, Lcom/android/contacts/model/account/BaseAccountType;->access$1700(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z

    move-result v8

    const-string v9, "supportsPhoneticMiddleName"

    .line 899
    invoke-static {v12, v9, v1}, Lcom/android/contacts/model/account/BaseAccountType;->access$1700(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z

    move-result v10

    const-string v14, "supportsPhoneticGivenName"

    .line 901
    invoke-static {v12, v14, v1}, Lcom/android/contacts/model/account/BaseAccountType;->access$1700(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z

    move-result v1

    .line 904
    invoke-static {v2, v0}, Lcom/android/contacts/model/account/BaseAccountType$NameKindBuilder;->checkAttributeTrue(ZLjava/lang/String;)V

    .line 905
    invoke-static {v4, v3}, Lcom/android/contacts/model/account/BaseAccountType$NameKindBuilder;->checkAttributeTrue(ZLjava/lang/String;)V

    .line 906
    invoke-static {v6, v5}, Lcom/android/contacts/model/account/BaseAccountType$NameKindBuilder;->checkAttributeTrue(ZLjava/lang/String;)V

    .line 907
    invoke-static {v8, v7}, Lcom/android/contacts/model/account/BaseAccountType$NameKindBuilder;->checkAttributeTrue(ZLjava/lang/String;)V

    .line 908
    invoke-static {v10, v9}, Lcom/android/contacts/model/account/BaseAccountType$NameKindBuilder;->checkAttributeTrue(ZLjava/lang/String;)V

    .line 909
    invoke-static {v1, v14}, Lcom/android/contacts/model/account/BaseAccountType$NameKindBuilder;->checkAttributeTrue(ZLjava/lang/String;)V

    .line 911
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v14

    .line 914
    new-instance v9, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;

    const v15, 0x7f1001b1

    invoke-direct {v9, v15}, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;-><init>(I)V

    new-instance v10, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;

    const-string v8, "data1"

    invoke-direct {v10, v8}, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const-string v5, "vnd.android.cursor.item/name"

    const/4 v6, 0x0

    const v7, 0x7f1001b1

    const/16 v16, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v17, v8

    move/from16 v8, v16

    invoke-virtual/range {v0 .. v10}, Lcom/android/contacts/model/account/BaseAccountType$KindBuilder;->newDataKind(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ZLjava/lang/String;Ljava/lang/String;IILcom/android/contacts/model/account/AccountType$StringInflater;Lcom/android/contacts/model/account/AccountType$StringInflater;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v0

    .line 919
    iget-object v1, v0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v10, "data4"

    const v9, 0x7f1001b9

    const/16 v8, 0x2061

    invoke-direct {v2, v10, v9, v8}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v7, 0x1

    .line 920
    invoke-virtual {v2, v7}, Lcom/android/contacts/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/account/AccountType$EditField;

    move-result-object v2

    .line 919
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 921
    iget-object v1, v0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v6, "data2"

    const v5, 0x7f1001b3

    invoke-direct {v2, v6, v5, v8}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 923
    iget-object v1, v0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v4, "data5"

    const v3, 0x7f1001b4

    invoke-direct {v2, v4, v3, v8}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    .line 924
    invoke-virtual {v2, v7}, Lcom/android/contacts/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/account/AccountType$EditField;

    move-result-object v2

    .line 923
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 925
    iget-object v1, v0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/model/account/AccountType$EditField;

    move-object/from16 v16, v6

    const-string v6, "data3"

    move-object/from16 v18, v4

    const v4, 0x7f1001b2

    invoke-direct {v2, v6, v4, v8}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 927
    iget-object v1, v0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/model/account/AccountType$EditField;

    move-object/from16 v19, v6

    const-string v6, "data6"

    const v4, 0x7f1001ba

    invoke-direct {v2, v6, v4, v8}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    .line 928
    invoke-virtual {v2, v7}, Lcom/android/contacts/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/account/AccountType$EditField;

    move-result-object v2

    .line 927
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 929
    iget-object v1, v0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v3, "data9"

    const v4, 0x7f1001b6

    const/16 v8, 0xc1

    invoke-direct {v2, v3, v4, v8}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 931
    iget-object v1, v0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v3, "data8"

    const v4, 0x7f1001b8

    invoke-direct {v2, v3, v4, v8}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 933
    iget-object v1, v0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v3, "data7"

    const v4, 0x7f1001b7

    invoke-direct {v2, v3, v4, v8}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 936
    invoke-virtual {v11, v0}, Lcom/android/contacts/model/account/BaseAccountType$KindBuilder;->throwIfList(Lcom/android/contacts/model/dataitem/DataKind;)V

    .line 937
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 940
    new-instance v4, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;

    invoke-direct {v4, v15}, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;-><init>(I)V

    new-instance v3, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;

    move-object/from16 v2, v17

    invoke-direct {v3, v2}, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    const/16 v17, 0x1

    const-string v21, "#name"

    const/16 v22, 0x0

    const v23, 0x7f1001b1

    const/16 v24, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v25, v2

    move-object/from16 v2, p2

    move-object/from16 v20, v3

    const v15, 0x7f1001b4

    move-object/from16 v3, p3

    move-object/from16 v26, v18

    const v15, 0x7f1001b2

    move-object/from16 v18, v4

    move/from16 v4, v17

    move-object/from16 v5, v21

    move-object/from16 v27, v6

    move-object/from16 v28, v16

    move-object/from16 v15, v19

    move-object/from16 v6, v22

    move/from16 v7, v23

    move/from16 v8, v24

    move-object/from16 v9, v18

    move-object v12, v10

    move-object/from16 v10, v20

    invoke-virtual/range {v0 .. v10}, Lcom/android/contacts/model/account/BaseAccountType$KindBuilder;->newDataKind(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ZLjava/lang/String;Ljava/lang/String;IILcom/android/contacts/model/account/AccountType$StringInflater;Lcom/android/contacts/model/account/AccountType$StringInflater;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v0

    const/4 v10, 0x1

    .line 945
    iput v10, v0, Lcom/android/contacts/model/dataitem/DataKind;->typeOverallMax:I

    .line 946
    invoke-virtual {v11, v0}, Lcom/android/contacts/model/account/BaseAccountType$KindBuilder;->throwIfList(Lcom/android/contacts/model/dataitem/DataKind;)V

    .line 947
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 949
    iget-object v1, v0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/model/account/AccountType$EditField;

    const v3, 0x7f1001b9

    const/16 v4, 0x2061

    invoke-direct {v2, v12, v3, v4}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    .line 950
    invoke-virtual {v2, v10}, Lcom/android/contacts/model/account/AccountType$EditField;->setOptional(Z)Lcom/android/contacts/model/account/AccountType$EditField;

    move-result-object v2

    .line 949
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v13, :cond_0

    .line 952
    iget-object v1, v0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/model/account/AccountType$EditField;

    const v3, 0x7f1001b2

    invoke-direct {v2, v15, v3, v4}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 954
    iget-object v1, v0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/model/account/AccountType$EditField;

    move-object/from16 v5, v26

    const v3, 0x7f1001b4

    invoke-direct {v2, v5, v3, v4}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    .line 955
    invoke-virtual {v2, v10}, Lcom/android/contacts/model/account/AccountType$EditField;->setOptional(Z)Lcom/android/contacts/model/account/AccountType$EditField;

    move-result-object v2

    .line 954
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 956
    iget-object v1, v0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/model/account/AccountType$EditField;

    move-object/from16 v6, v28

    const v3, 0x7f1001b3

    invoke-direct {v2, v6, v3, v4}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object/from16 v5, v26

    move-object/from16 v6, v28

    const v3, 0x7f1001b3

    .line 959
    iget-object v1, v0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/model/account/AccountType$EditField;

    invoke-direct {v2, v6, v3, v4}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 961
    iget-object v1, v0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/model/account/AccountType$EditField;

    const v3, 0x7f1001b4

    invoke-direct {v2, v5, v3, v4}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    .line 962
    invoke-virtual {v2, v10}, Lcom/android/contacts/model/account/AccountType$EditField;->setOptional(Z)Lcom/android/contacts/model/account/AccountType$EditField;

    move-result-object v2

    .line 961
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 963
    iget-object v1, v0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/model/account/AccountType$EditField;

    const v3, 0x7f1001b2

    invoke-direct {v2, v15, v3, v4}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 966
    :goto_0
    iget-object v0, v0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/account/AccountType$EditField;

    move-object/from16 v3, v27

    const v2, 0x7f1001ba

    invoke-direct {v1, v3, v2, v4}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    .line 967
    invoke-virtual {v1, v10}, Lcom/android/contacts/model/account/AccountType$EditField;->setOptional(Z)Lcom/android/contacts/model/account/AccountType$EditField;

    move-result-object v1

    .line 966
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    const/4 v6, 0x0

    const v7, 0x7f1001b5

    const/4 v8, -0x1

    .line 970
    new-instance v9, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;

    const v0, 0x7f1001b1

    invoke-direct {v9, v0}, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;-><init>(I)V

    new-instance v12, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;

    move-object/from16 v0, v25

    invoke-direct {v12, v0}, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    const-string v5, "#phoneticName"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v13, 0x1

    move-object v10, v12

    invoke-virtual/range {v0 .. v10}, Lcom/android/contacts/model/account/BaseAccountType$KindBuilder;->newDataKind(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ZLjava/lang/String;Ljava/lang/String;IILcom/android/contacts/model/account/AccountType$StringInflater;Lcom/android/contacts/model/account/AccountType$StringInflater;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v0

    .line 975
    iput v13, v0, Lcom/android/contacts/model/dataitem/DataKind;->typeOverallMax:I

    .line 976
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 979
    iget-object v1, v0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/model/account/AccountType$EditField;

    const v3, 0x7f1001b6

    const-string v4, "data9"

    const/16 v5, 0xc1

    invoke-direct {v2, v4, v3, v5}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 981
    iget-object v1, v0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/model/account/AccountType$EditField;

    const v3, 0x7f1001b8

    const-string v4, "data8"

    invoke-direct {v2, v4, v3, v5}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 983
    iget-object v0, v0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/account/AccountType$EditField;

    const v2, 0x7f1001b7

    const-string v3, "data7"

    invoke-direct {v1, v3, v2, v5}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v14
.end method
