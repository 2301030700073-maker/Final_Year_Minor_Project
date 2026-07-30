.class public Lcom/android/contacts/model/account/AccountDisplayInfoFactory;
.super Ljava/lang/Object;
.source "AccountDisplayInfoFactory.java"


# instance fields
.field private final mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceAccountCount:I

.field private final mDeviceAccountTypeFactory:Lcom/android/contacts/util/DeviceLocalAccountTypeFactory;

.field private final mSimAccountCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/model/AccountTypeManager;Lcom/android/contacts/util/DeviceLocalAccountTypeFactory;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/contacts/model/AccountTypeManager;",
            "Lcom/android/contacts/util/DeviceLocalAccountTypeFactory;",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountWithDataSet;",
            ">;)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/contacts/model/account/AccountDisplayInfoFactory;->mContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/android/contacts/model/account/AccountDisplayInfoFactory;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    .line 56
    iput-object p3, p0, Lcom/android/contacts/model/account/AccountDisplayInfoFactory;->mDeviceAccountTypeFactory:Lcom/android/contacts/util/DeviceLocalAccountTypeFactory;

    const/4 p1, 0x2

    .line 58
    invoke-direct {p0, p1, p4}, Lcom/android/contacts/model/account/AccountDisplayInfoFactory;->countOfType(ILjava/util/List;)I

    move-result p1

    iput p1, p0, Lcom/android/contacts/model/account/AccountDisplayInfoFactory;->mSimAccountCount:I

    const/4 p1, 0x1

    .line 59
    invoke-direct {p0, p1, p4}, Lcom/android/contacts/model/account/AccountDisplayInfoFactory;->countOfType(ILjava/util/List;)I

    move-result p1

    iput p1, p0, Lcom/android/contacts/model/account/AccountDisplayInfoFactory;->mDeviceAccountCount:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountWithDataSet;",
            ">;)V"
        }
    .end annotation

    .line 47
    invoke-static {p1}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    .line 48
    invoke-static {p1}, Lcom/android/contactsbind/ObjectFactory;->getDeviceLocalAccountTypeFactory(Landroid/content/Context;)Lcom/android/contacts/util/DeviceLocalAccountTypeFactory;

    move-result-object v1

    .line 47
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/contacts/model/account/AccountDisplayInfoFactory;-><init>(Landroid/content/Context;Lcom/android/contacts/model/AccountTypeManager;Lcom/android/contacts/util/DeviceLocalAccountTypeFactory;Ljava/util/List;)V

    return-void
.end method

.method private countOfType(ILjava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountWithDataSet;",
            ">;)I"
        }
    .end annotation

    .line 103
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/account/AccountWithDataSet;

    .line 104
    iget-object v2, p0, Lcom/android/contacts/model/account/AccountDisplayInfoFactory;->mDeviceAccountTypeFactory:Lcom/android/contacts/util/DeviceLocalAccountTypeFactory;

    iget-object v1, v1, Lcom/android/contacts/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-interface {v2, v1}, Lcom/android/contacts/util/DeviceLocalAccountTypeFactory;->classifyAccount(Ljava/lang/String;)I

    move-result v1

    if-ne v1, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static fromListFilters(Landroid/content/Context;Ljava/util/List;)Lcom/android/contacts/model/account/AccountDisplayInfoFactory;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/contacts/list/ContactListFilter;",
            ">;)",
            "Lcom/android/contacts/model/account/AccountDisplayInfoFactory;"
        }
    .end annotation

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 86
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/list/ContactListFilter;

    .line 87
    invoke-virtual {v1}, Lcom/android/contacts/list/ContactListFilter;->toAccountWithDataSet()Lcom/android/contacts/model/account/AccountWithDataSet;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 89
    :cond_0
    new-instance p1, Lcom/android/contacts/model/account/AccountDisplayInfoFactory;

    invoke-direct {p1, p0, v0}, Lcom/android/contacts/model/account/AccountDisplayInfoFactory;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-object p1
.end method

.method private shouldUseTypeLabelForName(Lcom/android/contacts/model/account/AccountWithDataSet;)Z
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/android/contacts/model/account/AccountDisplayInfoFactory;->mDeviceAccountTypeFactory:Lcom/android/contacts/util/DeviceLocalAccountTypeFactory;

    iget-object v1, p1, Lcom/android/contacts/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/contacts/util/DeviceLocalAccountTypeFactory;->classifyAccount(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 94
    iget v2, p0, Lcom/android/contacts/model/account/AccountDisplayInfoFactory;->mSimAccountCount:I

    if-eq v2, v1, :cond_3

    :cond_0
    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/contacts/model/account/AccountDisplayInfoFactory;->mDeviceAccountCount:I

    if-eq v0, v1, :cond_3

    :cond_1
    iget-object p1, p1, Lcom/android/contacts/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1
.end method


# virtual methods
.method public getAccountDisplayInfo(Lcom/android/contacts/model/account/AccountWithDataSet;)Lcom/android/contacts/model/account/AccountDisplayInfo;
    .locals 8

    .line 63
    iget-object v0, p0, Lcom/android/contacts/model/account/AccountDisplayInfoFactory;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    invoke-virtual {v0, p1}, Lcom/android/contacts/model/AccountTypeManager;->getAccountTypeForAccount(Lcom/android/contacts/model/account/AccountWithDataSet;)Lcom/android/contacts/model/account/AccountType;

    move-result-object v0

    .line 64
    invoke-direct {p0, p1}, Lcom/android/contacts/model/account/AccountDisplayInfoFactory;->shouldUseTypeLabelForName(Lcom/android/contacts/model/account/AccountWithDataSet;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/android/contacts/model/account/AccountDisplayInfoFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 66
    :cond_0
    iget-object v1, p1, Lcom/android/contacts/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    :goto_0
    move-object v4, v1

    .line 67
    new-instance v1, Lcom/android/contacts/model/account/AccountDisplayInfo;

    iget-object v2, p0, Lcom/android/contacts/model/account/AccountDisplayInfoFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    iget-object v2, p0, Lcom/android/contacts/model/account/AccountDisplayInfoFactory;->mContext:Landroid/content/Context;

    .line 68
    invoke-virtual {v0, v2}, Lcom/android/contacts/model/account/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iget-object v2, p0, Lcom/android/contacts/model/account/AccountDisplayInfoFactory;->mDeviceAccountTypeFactory:Lcom/android/contacts/util/DeviceLocalAccountTypeFactory;

    iget-object v0, v0, Lcom/android/contacts/model/account/AccountType;->accountType:Ljava/lang/String;

    .line 69
    invoke-static {v2, v0}, Lcom/android/contacts/util/DeviceLocalAccountTypeFactory$Util;->isLocalAccountType(Lcom/android/contacts/util/DeviceLocalAccountTypeFactory;Ljava/lang/String;)Z

    move-result v7

    move-object v2, v1

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/contacts/model/account/AccountDisplayInfo;-><init>(Lcom/android/contacts/model/account/AccountWithDataSet;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Z)V

    return-object v1
.end method

.method public getAccountDisplayInfoFor(Lcom/android/contacts/list/ContactListFilter;)Lcom/android/contacts/model/account/AccountDisplayInfo;
    .locals 0

    .line 74
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListFilter;->toAccountWithDataSet()Lcom/android/contacts/model/account/AccountWithDataSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/AccountDisplayInfoFactory;->getAccountDisplayInfo(Lcom/android/contacts/model/account/AccountWithDataSet;)Lcom/android/contacts/model/account/AccountDisplayInfo;

    move-result-object p1

    return-object p1
.end method

.method public getAccountDisplayInfoFor(Lcom/android/contacts/model/RawContactDelta;)Lcom/android/contacts/model/account/AccountDisplayInfo;
    .locals 3

    .line 78
    new-instance v0, Lcom/android/contacts/model/account/AccountWithDataSet;

    invoke-virtual {p1}, Lcom/android/contacts/model/RawContactDelta;->getAccountName()Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-virtual {p1}, Lcom/android/contacts/model/RawContactDelta;->getAccountType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/contacts/model/RawContactDelta;->getDataSet()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/android/contacts/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0, v0}, Lcom/android/contacts/model/account/AccountDisplayInfoFactory;->getAccountDisplayInfo(Lcom/android/contacts/model/account/AccountWithDataSet;)Lcom/android/contacts/model/account/AccountDisplayInfo;

    move-result-object p1

    return-object p1
.end method
