.class public Lcom/android/contacts/model/account/AccountsLoader;
.super Lcom/android/contacts/util/concurrent/ListenableFutureLoader;
.source "AccountsLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/model/account/AccountsLoader$AccountsListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/util/concurrent/ListenableFutureLoader<",
        "Ljava/util/List<",
        "Lcom/android/contacts/model/account/AccountInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

.field private final mFilter:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate<",
            "Lcom/android/contacts/model/account/AccountInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/common/base/Predicate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/common/base/Predicate<",
            "Lcom/android/contacts/model/account/AccountInfo;",
            ">;)V"
        }
    .end annotation

    .line 47
    new-instance v0, Landroid/content/IntentFilter;

    sget-object v1, Lcom/android/contacts/model/AccountTypeManager;->BROADCAST_ACCOUNTS_CHANGED:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/util/concurrent/ListenableFutureLoader;-><init>(Landroid/content/Context;Landroid/content/IntentFilter;)V

    .line 48
    invoke-static {p1}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/model/account/AccountsLoader;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    .line 49
    iput-object p2, p0, Lcom/android/contacts/model/account/AccountsLoader;->mFilter:Lcom/google/common/base/Predicate;

    return-void
.end method

.method public static loadAccounts(Landroid/app/Activity;ILcom/google/common/base/Predicate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ActivityType:",
            "Landroid/app/Activity;",
            ":",
            "Lcom/android/contacts/model/account/AccountsLoader$AccountsListener;",
            ">(TActivityType;I",
            "Lcom/google/common/base/Predicate<",
            "Lcom/android/contacts/model/account/AccountInfo;",
            ">;)V"
        }
    .end annotation

    .line 88
    invoke-virtual {p0}, Landroid/app/Activity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lcom/android/contacts/model/account/AccountsLoader$AccountsListener;

    invoke-static {p0, v0, p1, p2, v1}, Lcom/android/contacts/model/account/AccountsLoader;->loadAccounts(Landroid/content/Context;Landroid/app/LoaderManager;ILcom/google/common/base/Predicate;Lcom/android/contacts/model/account/AccountsLoader$AccountsListener;)V

    return-void
.end method

.method public static loadAccounts(Landroid/app/Fragment;ILcom/google/common/base/Predicate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<FragmentType:",
            "Landroid/app/Fragment;",
            ":",
            "Lcom/android/contacts/model/account/AccountsLoader$AccountsListener;",
            ">(TFragmentType;I",
            "Lcom/google/common/base/Predicate<",
            "Lcom/android/contacts/model/account/AccountInfo;",
            ">;)V"
        }
    .end annotation

    .line 80
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    check-cast p0, Lcom/android/contacts/model/account/AccountsLoader$AccountsListener;

    .line 79
    invoke-static {v0, v1, p1, p2, p0}, Lcom/android/contacts/model/account/AccountsLoader;->loadAccounts(Landroid/content/Context;Landroid/app/LoaderManager;ILcom/google/common/base/Predicate;Lcom/android/contacts/model/account/AccountsLoader$AccountsListener;)V

    return-void
.end method

.method private static loadAccounts(Landroid/content/Context;Landroid/app/LoaderManager;ILcom/google/common/base/Predicate;Lcom/android/contacts/model/account/AccountsLoader$AccountsListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/LoaderManager;",
            "I",
            "Lcom/google/common/base/Predicate<",
            "Lcom/android/contacts/model/account/AccountInfo;",
            ">;",
            "Lcom/android/contacts/model/account/AccountsLoader$AccountsListener;",
            ")V"
        }
    .end annotation

    .line 93
    new-instance v0, Lcom/android/contacts/model/account/AccountsLoader$1;

    invoke-direct {v0, p0, p3, p4}, Lcom/android/contacts/model/account/AccountsLoader$1;-><init>(Landroid/content/Context;Lcom/google/common/base/Predicate;Lcom/android/contacts/model/account/AccountsLoader$AccountsListener;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p2, p0, v0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void
.end method


# virtual methods
.method protected bridge synthetic isSameData(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 38
    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/model/account/AccountsLoader;->isSameData(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method protected isSameData(Ljava/util/List;Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountInfo;",
            ">;)Z"
        }
    .end annotation

    .line 59
    invoke-static {p1}, Lcom/android/contacts/model/account/AccountInfo;->extractAccounts(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 60
    invoke-static {p2}, Lcom/android/contacts/model/account/AccountInfo;->extractAccounts(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 59
    invoke-static {p1, p2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected loadData()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountInfo;",
            ">;>;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/android/contacts/model/account/AccountsLoader;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    iget-object v1, p0, Lcom/android/contacts/model/account/AccountsLoader;->mFilter:Lcom/google/common/base/Predicate;

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/AccountTypeManager;->filterAccountsAsync(Lcom/google/common/base/Predicate;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
