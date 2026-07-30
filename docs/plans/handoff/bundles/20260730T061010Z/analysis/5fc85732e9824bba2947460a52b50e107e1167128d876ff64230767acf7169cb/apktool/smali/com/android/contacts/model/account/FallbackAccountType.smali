.class public Lcom/android/contacts/model/account/FallbackAccountType;
.super Lcom/android/contacts/model/account/BaseAccountType;
.source "FallbackAccountType.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FallbackAccountType"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, v0}, Lcom/android/contacts/model/account/FallbackAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 33
    invoke-direct {p0}, Lcom/android/contacts/model/account/BaseAccountType;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/android/contacts/model/account/AccountType;->accountType:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/android/contacts/model/account/AccountType;->dataSet:Ljava/lang/String;

    const v0, 0x7f100023

    .line 36
    iput v0, p0, Lcom/android/contacts/model/account/AccountType;->titleRes:I

    const v0, 0x7f0800cc

    .line 37
    iput v0, p0, Lcom/android/contacts/model/account/AccountType;->iconRes:I

    .line 40
    iput-object p2, p0, Lcom/android/contacts/model/account/AccountType;->resourcePackageName:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/android/contacts/model/account/AccountType;->syncAdapterPackageName:Ljava/lang/String;

    .line 44
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/BaseAccountType;->addDataKindStructuredName(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/BaseAccountType;->addDataKindName(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/BaseAccountType;->addDataKindPhoneticName(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/BaseAccountType;->addDataKindNickname(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    .line 48
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/BaseAccountType;->addDataKindPhone(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/BaseAccountType;->addDataKindEmail(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/BaseAccountType;->addDataKindStructuredPostal(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/BaseAccountType;->addDataKindIm(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/BaseAccountType;->addDataKindOrganization(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    .line 53
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/BaseAccountType;->addDataKindPhoto(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/BaseAccountType;->addDataKindNote(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/BaseAccountType;->addDataKindWebsite(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/BaseAccountType;->addDataKindSipAddress(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/BaseAccountType;->addDataKindGroupMembership(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    const/4 p2, 0x1

    .line 59
    iput-boolean p2, p0, Lcom/android/contacts/model/account/AccountType;->mIsInitialized:Z
    :try_end_0
    .catch Lcom/android/contacts/model/account/AccountType$DefinitionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v0, "FallbackAccountType"

    const-string v1, "Failed to build fallback account type"

    .line 61
    invoke-static {p1, v0, v1, p2}, Lcom/android/contactsbind/FeedbackHelper;->sendFeedback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static createWithPackageNameForTest(Landroid/content/Context;Ljava/lang/String;)Lcom/android/contacts/model/account/AccountType;
    .locals 1

    .line 83
    new-instance v0, Lcom/android/contacts/model/account/FallbackAccountType;

    invoke-direct {v0, p0, p1}, Lcom/android/contacts/model/account/FallbackAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public areContactsWritable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/contacts/model/account/AccountType;->iconRes:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f060021

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, p1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-object v0
.end method

.method public initializeFieldsFromAuthenticator(Landroid/accounts/AuthenticatorDescription;)V
    .locals 0

    return-void
.end method

.method public wrapAccount(Landroid/content/Context;Lcom/android/contacts/model/account/AccountWithDataSet;)Lcom/android/contacts/model/account/AccountInfo;
    .locals 8

    .line 106
    new-instance v0, Lcom/android/contacts/model/account/AccountInfo;

    new-instance v7, Lcom/android/contacts/model/account/AccountDisplayInfo;

    iget-object v3, p2, Lcom/android/contacts/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    .line 108
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/FallbackAccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/contacts/model/account/AccountDisplayInfo;-><init>(Lcom/android/contacts/model/account/AccountWithDataSet;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Z)V

    invoke-direct {v0, v7, p0}, Lcom/android/contacts/model/account/AccountInfo;-><init>(Lcom/android/contacts/model/account/AccountDisplayInfo;Lcom/android/contacts/model/account/AccountType;)V

    return-object v0
.end method
