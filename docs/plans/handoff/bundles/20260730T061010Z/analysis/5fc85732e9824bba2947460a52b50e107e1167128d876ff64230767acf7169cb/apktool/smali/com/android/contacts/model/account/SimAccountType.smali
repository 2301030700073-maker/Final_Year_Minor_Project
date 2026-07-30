.class public Lcom/android/contacts/model/account/SimAccountType;
.super Lcom/android/contacts/model/account/BaseAccountType;
.source "SimAccountType.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 35
    invoke-direct {p0}, Lcom/android/contacts/model/account/BaseAccountType;-><init>()V

    const v0, 0x7f100024

    .line 36
    iput v0, p0, Lcom/android/contacts/model/account/AccountType;->titleRes:I

    const v0, 0x7f0800cb

    .line 37
    iput v0, p0, Lcom/android/contacts/model/account/AccountType;->iconRes:I

    .line 40
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/SimAccountType;->addDataKindStructuredName(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/SimAccountType;->addDataKindName(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/BaseAccountType;->addDataKindPhone(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object p1

    const/4 v0, 0x1

    .line 43
    iput v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeOverallMax:I

    .line 46
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    .line 48
    iput-boolean v0, p0, Lcom/android/contacts/model/account/AccountType;->mIsInitialized:Z
    :try_end_0
    .catch Lcom/android/contacts/model/account/AccountType$DefinitionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 52
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method protected addDataKindName(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .line 91
    new-instance v0, Lcom/android/contacts/model/dataitem/DataKind;

    const-string v1, "#name"

    const v2, 0x7f1001b1

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/contacts/model/dataitem/DataKind;-><init>(Ljava/lang/String;IIZ)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/account/AccountType;->addKind(Lcom/android/contacts/model/dataitem/DataKind;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v0

    .line 93
    new-instance v1, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;

    invoke-direct {v1, v2}, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;-><init>(I)V

    iput-object v1, v0, Lcom/android/contacts/model/dataitem/DataKind;->actionHeader:Lcom/android/contacts/model/account/AccountType$StringInflater;

    .line 94
    new-instance v1, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;

    const-string v2, "data1"

    invoke-direct {v1, v2}, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/contacts/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/model/account/AccountType$StringInflater;

    .line 95
    iput v4, v0, Lcom/android/contacts/model/dataitem/DataKind;->typeOverallMax:I

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f05000b

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    .line 100
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    const v2, 0x7f1001b2

    const-string v3, "data3"

    const v4, 0x7f1001b3

    const-string v5, "data2"

    const/16 v6, 0x2061

    if-nez p1, :cond_0

    .line 102
    new-instance p1, Lcom/android/contacts/model/account/AccountType$EditField;

    invoke-direct {p1, v3, v2, v6}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object p1, v0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/account/AccountType$EditField;

    invoke-direct {v1, v5, v4, v6}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 107
    :cond_0
    new-instance p1, Lcom/android/contacts/model/account/AccountType$EditField;

    invoke-direct {p1, v5, v4, v6}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object p1, v0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/account/AccountType$EditField;

    invoke-direct {v1, v3, v2, v6}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0
.end method

.method protected addDataKindStructuredName(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .line 73
    new-instance p1, Lcom/android/contacts/model/dataitem/DataKind;

    const-string v0, "vnd.android.cursor.item/name"

    const v1, 0x7f1001b1

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/android/contacts/model/dataitem/DataKind;-><init>(Ljava/lang/String;IIZ)V

    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/AccountType;->addKind(Lcom/android/contacts/model/dataitem/DataKind;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object p1

    .line 75
    new-instance v0, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;

    invoke-direct {v0, v1}, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;-><init>(I)V

    iput-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->actionHeader:Lcom/android/contacts/model/account/AccountType$StringInflater;

    .line 76
    new-instance v0, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/model/account/AccountType$StringInflater;

    .line 77
    iput v3, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeOverallMax:I

    .line 80
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 81
    new-instance v1, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v2, "data2"

    const v3, 0x7f1001b3

    const/16 v4, 0x2061

    invoke-direct {v1, v2, v3, v4}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v2, "data3"

    const v3, 0x7f1001b2

    invoke-direct {v1, v2, v3, v4}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public areContactsWritable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public initializeFieldsFromAuthenticator(Landroid/accounts/AuthenticatorDescription;)V
    .locals 0

    return-void
.end method

.method public isGroupMembershipEditable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public wrapAccount(Landroid/content/Context;Lcom/android/contacts/model/account/AccountWithDataSet;)Lcom/android/contacts/model/account/AccountInfo;
    .locals 8

    .line 120
    new-instance v0, Lcom/android/contacts/model/account/AccountInfo;

    new-instance v7, Lcom/android/contacts/model/account/AccountDisplayInfo;

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 122
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x1

    move-object v1, v7

    move-object v2, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/contacts/model/account/AccountDisplayInfo;-><init>(Lcom/android/contacts/model/account/AccountWithDataSet;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Z)V

    invoke-direct {v0, v7, p0}, Lcom/android/contacts/model/account/AccountInfo;-><init>(Lcom/android/contacts/model/account/AccountDisplayInfo;Lcom/android/contacts/model/account/AccountType;)V

    return-object v0
.end method
