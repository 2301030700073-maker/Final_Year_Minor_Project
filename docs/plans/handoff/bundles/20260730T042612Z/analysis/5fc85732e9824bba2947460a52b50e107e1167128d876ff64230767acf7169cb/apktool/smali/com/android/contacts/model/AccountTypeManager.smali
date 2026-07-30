.class public abstract Lcom/android/contacts/model/AccountTypeManager;
.super Ljava/lang/Object;
.source "AccountTypeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/model/AccountTypeManager$AccountFilter;
    }
.end annotation


# static fields
.field public static final BROADCAST_ACCOUNTS_CHANGED:Ljava/lang/String;

.field private static final EMPTY:Lcom/android/contacts/model/AccountTypeManager;

.field static final TAG:Ljava/lang/String; = "AccountTypeManager"

.field private static mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

.field private static final mInitializationLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/contacts/model/AccountTypeManager;->mInitializationLock:Ljava/lang/Object;

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/contacts/model/AccountTypeManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".AccountsChanged"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/model/AccountTypeManager;->BROADCAST_ACCOUNTS_CHANGED:Ljava/lang/String;

    .line 138
    new-instance v0, Lcom/android/contacts/model/AccountTypeManager$1;

    invoke-direct {v0}, Lcom/android/contacts/model/AccountTypeManager$1;-><init>()V

    sput-object v0, Lcom/android/contacts/model/AccountTypeManager;->EMPTY:Lcom/android/contacts/model/AccountTypeManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getDefaultGoogleAccount(Landroid/accounts/AccountManager;Landroid/content/SharedPreferences;Ljava/lang/String;)Landroid/accounts/Account;
    .locals 3

    const-string v0, "com.google"

    .line 248
    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 250
    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_2

    .line 255
    :cond_0
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 257
    :cond_1
    invoke-static {p1}, Lcom/android/contacts/model/account/AccountWithDataSet;->unstringify(Ljava/lang/String;)Lcom/android/contacts/model/account/AccountWithDataSet;

    move-result-object v0

    :goto_0
    const/4 p1, 0x0

    if-eqz v0, :cond_3

    const/4 p2, 0x0

    .line 261
    :goto_1
    array-length v1, p0

    if-ge p2, v1, :cond_3

    .line 262
    iget-object v1, v0, Lcom/android/contacts/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    aget-object v2, p0, p2

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/contacts/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    aget-object v2, p0, p2

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 263
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 264
    aget-object p0, p0, p2

    return-object p0

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 270
    :cond_3
    aget-object p0, p0, p1

    return-object p0

    :cond_4
    :goto_2
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;
    .locals 2

    .line 111
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->hasRequiredPermissions(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    sget-object p0, Lcom/android/contacts/model/AccountTypeManager;->EMPTY:Lcom/android/contacts/model/AccountTypeManager;

    return-object p0

    .line 116
    :cond_0
    sget-object v0, Lcom/android/contacts/model/AccountTypeManager;->mInitializationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 117
    :try_start_0
    sget-object v1, Lcom/android/contacts/model/AccountTypeManager;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    if-nez v1, :cond_1

    .line 118
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 119
    new-instance v1, Lcom/android/contacts/model/AccountTypeManagerImpl;

    invoke-direct {v1, p0}, Lcom/android/contacts/model/AccountTypeManagerImpl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/contacts/model/AccountTypeManager;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    .line 121
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    sget-object p0, Lcom/android/contacts/model/AccountTypeManager;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    return-object p0

    :catchall_0
    move-exception p0

    .line 121
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static groupWritableFilter()Lcom/google/common/base/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Predicate<",
            "Lcom/android/contacts/model/account/AccountInfo;",
            ">;"
        }
    .end annotation

    .line 331
    sget-object v0, Lcom/android/contacts/model/AccountTypeManager$AccountFilter;->GROUPS_WRITABLE:Lcom/android/contacts/model/AccountTypeManager$AccountFilter;

    return-object v0
.end method

.method private static hasRequiredPermissions(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "android.permission.GET_ACCOUNTS"

    .line 319
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "android.permission.READ_CONTACTS"

    .line 321
    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method public static setInstanceForTest(Lcom/android/contacts/model/AccountTypeManager;)V
    .locals 1

    .line 133
    sget-object v0, Lcom/android/contacts/model/AccountTypeManager;->mInitializationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 134
    :try_start_0
    sput-object p0, Lcom/android/contacts/model/AccountTypeManager;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    .line 135
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static writableFilter()Lcom/google/common/base/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Predicate<",
            "Lcom/android/contacts/model/account/AccountInfo;",
            ">;"
        }
    .end annotation

    .line 327
    sget-object v0, Lcom/android/contacts/model/AccountTypeManager$AccountFilter;->CONTACTS_WRITABLE:Lcom/android/contacts/model/AccountTypeManager$AccountFilter;

    return-object v0
.end method


# virtual methods
.method public blockForWritableAccounts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .line 190
    sget-object v0, Lcom/android/contacts/model/AccountTypeManager$AccountFilter;->CONTACTS_WRITABLE:Lcom/android/contacts/model/AccountTypeManager$AccountFilter;

    .line 191
    invoke-virtual {p0, v0}, Lcom/android/contacts/model/AccountTypeManager;->filterAccountsAsync(Lcom/google/common/base/Predicate;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->getUnchecked(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 190
    invoke-static {v0}, Lcom/android/contacts/model/account/AccountInfo;->extractAccounts(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public exists(Lcom/android/contacts/model/account/AccountWithDataSet;)Z
    .locals 1

    .line 300
    invoke-virtual {p0}, Lcom/android/contacts/model/AccountTypeManager;->getAccountsAsync()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->getUnchecked(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/android/contacts/model/account/AccountInfo;->extractAccounts(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 301
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public abstract filterAccountsAsync(Lcom/google/common/base/Predicate;)Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Predicate<",
            "Lcom/android/contacts/model/account/AccountInfo;",
            ">;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountInfo;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getAccountInfoForAccount(Lcom/android/contacts/model/account/AccountWithDataSet;)Lcom/android/contacts/model/account/AccountInfo;
.end method

.method public abstract getAccountType(Lcom/android/contacts/model/account/AccountTypeWithDataSet;)Lcom/android/contacts/model/account/AccountType;
.end method

.method public final getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/account/AccountType;
    .locals 0

    .line 276
    invoke-static {p1, p2}, Lcom/android/contacts/model/account/AccountTypeWithDataSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/account/AccountTypeWithDataSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Lcom/android/contacts/model/account/AccountTypeWithDataSet;)Lcom/android/contacts/model/account/AccountType;

    move-result-object p1

    return-object p1
.end method

.method public final getAccountTypeForAccount(Lcom/android/contacts/model/account/AccountWithDataSet;)Lcom/android/contacts/model/account/AccountType;
    .locals 0

    if-eqz p1, :cond_0

    .line 281
    invoke-virtual {p1}, Lcom/android/contacts/model/account/AccountWithDataSet;->getAccountTypeWithDataSet()Lcom/android/contacts/model/account/AccountTypeWithDataSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Lcom/android/contacts/model/account/AccountTypeWithDataSet;)Lcom/android/contacts/model/account/AccountType;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 283
    invoke-virtual {p0, p1, p1}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/account/AccountType;

    move-result-object p1

    return-object p1
.end method

.method public getAccounts(Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/android/contacts/model/AccountTypeManager;->blockForWritableAccounts()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 178
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/model/AccountTypeManager;->getAccountsAsync()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/util/concurrent/Futures;->getUnchecked(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lcom/android/contacts/model/account/AccountInfo;->extractAccounts(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public abstract getAccountsAsync()Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountInfo;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getDefaultGoogleAccount()Landroid/accounts/Account;
.end method

.method public getKindOrFallback(Lcom/android/contacts/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/dataitem/DataKind;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 292
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/contacts/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getWritableGoogleAccounts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountInfo;",
            ">;"
        }
    .end annotation

    .line 221
    new-instance v0, Lcom/android/contacts/model/AccountTypeManager$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/model/AccountTypeManager$2;-><init>(Lcom/android/contacts/model/AccountTypeManager;)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/AccountTypeManager;->filterAccountsAsync(Lcom/google/common/base/Predicate;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->getUnchecked(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public hasGoogleAccount()Z
    .locals 1

    .line 315
    invoke-virtual {p0}, Lcom/android/contacts/model/AccountTypeManager;->getDefaultGoogleAccount()Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasNonLocalAccount()Z
    .locals 4

    .line 235
    invoke-virtual {p0}, Lcom/android/contacts/model/AccountTypeManager;->getAccountsAsync()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->getUnchecked(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/android/contacts/model/account/AccountInfo;->extractAccounts(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 236
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 239
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    return v3

    .line 242
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/account/AccountWithDataSet;

    invoke-virtual {v0}, Lcom/android/contacts/model/account/AccountWithDataSet;->isNullAccount()Z

    move-result v0

    xor-int/2addr v0, v3

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public isWritable(Lcom/android/contacts/model/account/AccountWithDataSet;)Z
    .locals 1

    .line 311
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/AccountTypeManager;->exists(Lcom/android/contacts/model/account/AccountWithDataSet;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/contacts/model/AccountTypeManager;->getAccountInfoForAccount(Lcom/android/contacts/model/account/AccountWithDataSet;)Lcom/android/contacts/model/account/AccountInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/contacts/model/account/AccountInfo;->getType()Lcom/android/contacts/model/account/AccountType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/contacts/model/account/AccountType;->areContactsWritable()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
