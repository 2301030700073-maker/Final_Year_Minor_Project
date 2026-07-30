.class public final Lcom/android/contacts/util/SyncUtil;
.super Ljava/lang/Object;
.source "SyncUtil.java"


# static fields
.field public static final SYNC_SETTING_ACCOUNT_SYNC_OFF:I = 0x2

.field public static final SYNC_SETTING_GLOBAL_SYNC_OFF:I = 0x1

.field public static final SYNC_SETTING_SYNC_ON:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SyncUtil"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateReasonSyncOff(Landroid/content/Context;Landroid/accounts/Account;)I
    .locals 1

    .line 91
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 93
    iget-object p1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/contacts/util/SharedPreferenceUtil;->resetNumOfDismissesForAccountSyncOff(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 101
    :cond_1
    invoke-static {p0}, Lcom/android/contacts/util/SharedPreferenceUtil;->resetNumOfDismissesForAutoSyncOff(Landroid/content/Context;)V

    if-eqz p1, :cond_3

    const-string v0, "com.android.contacts"

    .line 104
    invoke-static {p1, v0}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p0, 0x2

    return p0

    .line 109
    :cond_2
    iget-object p1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/contacts/util/SharedPreferenceUtil;->resetNumOfDismissesForAccountSyncOff(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static final hasSyncableAccount(Lcom/android/contacts/model/AccountTypeManager;)Z
    .locals 0

    .line 76
    invoke-virtual {p0}, Lcom/android/contacts/model/AccountTypeManager;->getWritableGoogleAccounts()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isAlertVisible(Landroid/content/Context;Landroid/accounts/Account;I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 81
    invoke-static {p0}, Lcom/android/contacts/util/SharedPreferenceUtil;->getNumOfDismissesForAutoSyncOff(Landroid/content/Context;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    const/4 v2, 0x2

    if-ne p2, v2, :cond_2

    if-eqz p1, :cond_2

    .line 83
    iget-object p1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/contacts/util/SharedPreferenceUtil;->getNumOfDismissesforAccountSyncOff(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static final isAnySyncing(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountWithDataSet;",
            ">;)Z"
        }
    .end annotation

    .line 57
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/account/AccountWithDataSet;

    .line 58
    invoke-virtual {v0}, Lcom/android/contacts/model/account/AccountWithDataSet;->getAccountOrNull()Landroid/accounts/Account;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/util/SyncUtil;->isSyncStatusPendingOrActive(Landroid/accounts/Account;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isNetworkConnected(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "connectivity"

    .line 117
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 118
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 119
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isSyncStatusPendingOrActive(Landroid/accounts/Account;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "com.android.contacts"

    .line 48
    invoke-static {p0, v1}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 49
    invoke-static {p0, v1}, Landroid/content/ContentResolver;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static final isUnsyncableGoogleAccount(Landroid/accounts/Account;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 69
    iget-object v1, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v2, "com.google"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "com.android.contacts"

    .line 72
    invoke-static {p0, v1}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result p0

    if-gtz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method
