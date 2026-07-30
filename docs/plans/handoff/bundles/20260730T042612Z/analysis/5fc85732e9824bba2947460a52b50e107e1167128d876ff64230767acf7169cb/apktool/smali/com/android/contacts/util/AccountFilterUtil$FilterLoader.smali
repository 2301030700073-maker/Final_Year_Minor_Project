.class public Lcom/android/contacts/util/AccountFilterUtil$FilterLoader;
.super Lcom/android/contacts/util/concurrent/ListenableFutureLoader;
.source "AccountFilterUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/util/AccountFilterUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FilterLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/util/concurrent/ListenableFutureLoader<",
        "Ljava/util/List<",
        "Lcom/android/contacts/list/ContactListFilter;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

.field private mDeviceLocalFactory:Lcom/android/contacts/util/DeviceLocalAccountTypeFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 119
    new-instance v0, Landroid/content/IntentFilter;

    sget-object v1, Lcom/android/contacts/model/AccountTypeManager;->BROADCAST_ACCOUNTS_CHANGED:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/util/concurrent/ListenableFutureLoader;-><init>(Landroid/content/Context;Landroid/content/IntentFilter;)V

    .line 120
    invoke-static {p1}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/util/AccountFilterUtil$FilterLoader;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    .line 121
    invoke-static {p1}, Lcom/android/contactsbind/ObjectFactory;->getDeviceLocalAccountTypeFactory(Landroid/content/Context;)Lcom/android/contacts/util/DeviceLocalAccountTypeFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/util/AccountFilterUtil$FilterLoader;->mDeviceLocalFactory:Lcom/android/contacts/util/DeviceLocalAccountTypeFactory;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/util/AccountFilterUtil$FilterLoader;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Lcom/android/contacts/util/AccountFilterUtil$FilterLoader;->getFiltersForAccounts(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private getFiltersForAccounts(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/contacts/list/ContactListFilter;",
            ">;"
        }
    .end annotation

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 139
    invoke-virtual {p0}, Landroid/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/util/AccountFilterUtil;->access$100(Landroid/content/Context;)Lcom/android/contacts/model/account/AccountWithDataSet;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/contacts/model/account/AccountInfo;->sortAccounts(Lcom/android/contacts/model/account/AccountWithDataSet;Ljava/util/List;)V

    .line 141
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/account/AccountInfo;

    .line 142
    invoke-virtual {v1}, Lcom/android/contacts/model/account/AccountInfo;->getType()Lcom/android/contacts/model/account/AccountType;

    move-result-object v2

    .line 143
    invoke-virtual {v1}, Lcom/android/contacts/model/account/AccountInfo;->getAccount()Lcom/android/contacts/model/account/AccountWithDataSet;

    move-result-object v1

    .line 144
    invoke-virtual {v2}, Lcom/android/contacts/model/account/AccountType;->isExtension()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/contacts/util/AccountFilterUtil$FilterLoader;->mDeviceLocalFactory:Lcom/android/contacts/util/DeviceLocalAccountTypeFactory;

    iget-object v4, v1, Lcom/android/contacts/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    .line 145
    invoke-static {v3, v4}, Lcom/android/contacts/util/DeviceLocalAccountTypeFactory$Util;->isLocalAccountType(Lcom/android/contacts/util/DeviceLocalAccountTypeFactory;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 147
    :cond_0
    invoke-virtual {p0}, Landroid/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/contacts/model/account/AccountWithDataSet;->hasData(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 152
    invoke-virtual {p0}, Landroid/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/account/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 153
    :goto_1
    iget-object v3, p0, Lcom/android/contacts/util/AccountFilterUtil$FilterLoader;->mDeviceLocalFactory:Lcom/android/contacts/util/DeviceLocalAccountTypeFactory;

    iget-object v4, v1, Lcom/android/contacts/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/contacts/util/DeviceLocalAccountTypeFactory$Util;->isLocalAccountType(Lcom/android/contacts/util/DeviceLocalAccountTypeFactory;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 155
    invoke-static {v2, v1}, Lcom/android/contacts/list/ContactListFilter;->createDeviceContactsFilter(Landroid/graphics/drawable/Drawable;Lcom/android/contacts/model/account/AccountWithDataSet;)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 157
    :cond_3
    iget-object v3, v1, Lcom/android/contacts/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/contacts/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    iget-object v1, v1, Lcom/android/contacts/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-static {v3, v4, v1, v2}, Lcom/android/contacts/list/ContactListFilter;->createAccountFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v0
.end method


# virtual methods
.method protected loadData()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/util/List<",
            "Lcom/android/contacts/list/ContactListFilter;",
            ">;>;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/android/contacts/util/AccountFilterUtil$FilterLoader;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    .line 128
    invoke-static {}, Lcom/android/contacts/model/AccountTypeManager;->writableFilter()Lcom/google/common/base/Predicate;

    move-result-object v1

    .line 127
    invoke-virtual {v0, v1}, Lcom/android/contacts/model/AccountTypeManager;->filterAccountsAsync(Lcom/google/common/base/Predicate;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/util/AccountFilterUtil$FilterLoader$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/util/AccountFilterUtil$FilterLoader$1;-><init>(Lcom/android/contacts/util/AccountFilterUtil$FilterLoader;)V

    .line 134
    invoke-static {}, Lcom/android/contacts/util/concurrent/ContactsExecutors;->getDefaultThreadPoolExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v2

    .line 127
    invoke-static {v0, v1, v2}, Lcom/google/common/util/concurrent/Futures;->transform(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
