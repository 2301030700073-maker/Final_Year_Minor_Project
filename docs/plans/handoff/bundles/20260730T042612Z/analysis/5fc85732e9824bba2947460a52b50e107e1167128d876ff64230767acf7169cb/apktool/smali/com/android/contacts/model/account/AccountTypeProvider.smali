.class public Lcom/android/contacts/model/account/AccountTypeProvider;
.super Ljava/lang/Object;
.source "AccountTypeProvider.java"


# instance fields
.field private final mAuthTypes:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Landroid/accounts/AuthenticatorDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final mCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountType;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mLocalAccountTypeFactory:Lcom/android/contacts/util/DeviceLocalAccountTypeFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 61
    invoke-static {p1}, Lcom/android/contactsbind/ObjectFactory;->getDeviceLocalAccountTypeFactory(Landroid/content/Context;)Lcom/android/contacts/util/DeviceLocalAccountTypeFactory;

    move-result-object v0

    .line 62
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v1

    const-string v2, "account"

    .line 63
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/AccountManager;

    .line 64
    invoke-virtual {v2}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v2

    .line 60
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/contacts/model/account/AccountTypeProvider;-><init>(Landroid/content/Context;Lcom/android/contacts/util/DeviceLocalAccountTypeFactory;[Landroid/content/SyncAdapterType;[Landroid/accounts/AuthenticatorDescription;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/util/DeviceLocalAccountTypeFactory;[Landroid/content/SyncAdapterType;[Landroid/accounts/AuthenticatorDescription;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/model/account/AccountTypeProvider;->mCache:Ljava/util/concurrent/ConcurrentMap;

    .line 70
    iput-object p1, p0, Lcom/android/contacts/model/account/AccountTypeProvider;->mContext:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Lcom/android/contacts/model/account/AccountTypeProvider;->mLocalAccountTypeFactory:Lcom/android/contacts/util/DeviceLocalAccountTypeFactory;

    .line 73
    invoke-static {p4, p3}, Lcom/android/contacts/model/account/AccountTypeProvider;->onlyContactSyncable([Landroid/accounts/AuthenticatorDescription;[Landroid/content/SyncAdapterType;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/model/account/AccountTypeProvider;->mAuthTypes:Lcom/google/common/collect/ImmutableMap;

    return-void
.end method

.method private deepEquals(Landroid/accounts/AuthenticatorDescription;Landroid/accounts/AuthenticatorDescription;)Z
    .locals 2

    .line 267
    invoke-static {p1, p2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    iget-object v1, p2, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    .line 268
    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/accounts/AuthenticatorDescription;->labelId:I

    iget v1, p2, Landroid/accounts/AuthenticatorDescription;->labelId:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/accounts/AuthenticatorDescription;->iconId:I

    iget v1, p2, Landroid/accounts/AuthenticatorDescription;->iconId:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/accounts/AuthenticatorDescription;->smallIconId:I

    iget v1, p2, Landroid/accounts/AuthenticatorDescription;->smallIconId:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/accounts/AuthenticatorDescription;->accountPreferencesId:I

    iget v1, p2, Landroid/accounts/AuthenticatorDescription;->accountPreferencesId:I

    if-ne v0, v1, :cond_0

    iget-boolean p1, p1, Landroid/accounts/AuthenticatorDescription;->customTokens:Z

    iget-boolean p2, p2, Landroid/accounts/AuthenticatorDescription;->customTokens:Z

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private loadTypes(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountType;",
            ">;"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/android/contacts/model/account/AccountTypeProvider;->mAuthTypes:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AuthenticatorDescription;

    const/4 v1, 0x3

    const-string v2, "AccountTypeProvider"

    if-nez v0, :cond_1

    .line 160
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Null auth type for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v3, "com.google"

    .line 167
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, ", packageName="

    if-eqz v3, :cond_2

    .line 168
    new-instance v3, Lcom/android/contacts/model/account/GoogleAccountType;

    iget-object v5, p0, Lcom/android/contacts/model/account/AccountTypeProvider;->mContext:Landroid/content/Context;

    iget-object v6, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-direct {v3, v5, v6}, Lcom/android/contacts/model/account/GoogleAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 169
    :cond_2
    invoke-static {p1}, Lcom/android/contacts/model/account/ExchangeAccountType;->isExchangeType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 170
    new-instance v3, Lcom/android/contacts/model/account/ExchangeAccountType;

    iget-object v5, p0, Lcom/android/contacts/model/account/AccountTypeProvider;->mContext:Landroid/content/Context;

    iget-object v6, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-direct {v3, v5, v6, p1}, Lcom/android/contacts/model/account/ExchangeAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 171
    :cond_3
    iget-object v3, p0, Lcom/android/contacts/model/account/AccountTypeProvider;->mContext:Landroid/content/Context;

    iget-object v5, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-static {v3, p1, v5}, Lcom/android/contacts/model/account/SamsungAccountType;->isSamsungAccountType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 173
    new-instance v3, Lcom/android/contacts/model/account/SamsungAccountType;

    iget-object v5, p0, Lcom/android/contacts/model/account/AccountTypeProvider;->mContext:Landroid/content/Context;

    iget-object v6, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-direct {v3, v5, v6, p1}, Lcom/android/contacts/model/account/SamsungAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 174
    :cond_4
    iget-object v3, p0, Lcom/android/contacts/model/account/AccountTypeProvider;->mContext:Landroid/content/Context;

    iget-object v5, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/android/contacts/model/account/ExternalAccountType;->hasContactsXml(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/contacts/model/account/AccountTypeProvider;->mLocalAccountTypeFactory:Lcom/android/contacts/util/DeviceLocalAccountTypeFactory;

    .line 175
    invoke-static {v3, p1}, Lcom/android/contacts/util/DeviceLocalAccountTypeFactory$Util;->isLocalAccountType(Lcom/android/contacts/util/DeviceLocalAccountTypeFactory;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 176
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 177
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Registering local account type="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_5
    iget-object v3, p0, Lcom/android/contacts/model/account/AccountTypeProvider;->mLocalAccountTypeFactory:Lcom/android/contacts/util/DeviceLocalAccountTypeFactory;

    invoke-interface {v3, p1}, Lcom/android/contacts/util/DeviceLocalAccountTypeFactory;->getAccountType(Ljava/lang/String;)Lcom/android/contacts/model/account/AccountType;

    move-result-object v3

    goto :goto_0

    .line 182
    :cond_6
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 183
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Registering external account type="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_7
    new-instance v3, Lcom/android/contacts/model/account/ExternalAccountType;

    iget-object v5, p0, Lcom/android/contacts/model/account/AccountTypeProvider;->mContext:Landroid/content/Context;

    iget-object v6, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v3, v5, v6, v7}, Lcom/android/contacts/model/account/ExternalAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 188
    :goto_0
    invoke-virtual {v3}, Lcom/android/contacts/model/account/AccountType;->isInitialized()Z

    move-result v5

    if-nez v5, :cond_a

    .line 189
    invoke-virtual {v3}, Lcom/android/contacts/model/account/AccountType;->isEmbedded()Z

    move-result v5

    if-nez v5, :cond_9

    .line 194
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping external account type="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 190
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Problem initializing embedded type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 202
    :cond_a
    invoke-virtual {v3, v0}, Lcom/android/contacts/model/account/AccountType;->initializeFieldsFromAuthenticator(Landroid/accounts/AuthenticatorDescription;)V

    .line 204
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 205
    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 207
    invoke-virtual {v3}, Lcom/android/contacts/model/account/AccountType;->getExtensionPackageNames()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 208
    new-instance v7, Lcom/android/contacts/model/account/ExternalAccountType;

    iget-object v8, p0, Lcom/android/contacts/model/account/AccountTypeProvider;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    invoke-direct {v7, v8, v6, v9}, Lcom/android/contacts/model/account/ExternalAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 210
    invoke-virtual {v7}, Lcom/android/contacts/model/account/AccountType;->isInitialized()Z

    move-result v8

    if-nez v8, :cond_b

    goto :goto_1

    .line 214
    :cond_b
    invoke-virtual {v7}, Lcom/android/contacts/model/account/ExternalAccountType;->hasContactsMetadata()Z

    move-result v8

    const-string v9, "Skipping extension package "

    if-nez v8, :cond_c

    .line 215
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " because it doesn\'t have the CONTACTS_STRUCTURE metadata"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 219
    :cond_c
    iget-object v8, v7, Lcom/android/contacts/model/account/AccountType;->accountType:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 220
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " because the CONTACTS_STRUCTURE metadata doesn\'t have the accountType attribute"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 225
    :cond_d
    iget-object v8, v7, Lcom/android/contacts/model/account/AccountType;->accountType:Ljava/lang/String;

    invoke-static {v8, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e

    .line 226
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " because the account type + "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v7, Lcom/android/contacts/model/account/AccountType;->accountType:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " doesn\'t match expected type "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 231
    :cond_e
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 232
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Registering extension package account type="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v3, Lcom/android/contacts/model/account/AccountType;->accountType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", dataSet="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v3, Lcom/android/contacts/model/account/AccountType;->dataSet:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_f
    invoke-virtual {v0, v7}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto/16 :goto_1

    .line 239
    :cond_10
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method private static onlyContactSyncable([Landroid/accounts/AuthenticatorDescription;[Landroid/content/SyncAdapterType;)Lcom/google/common/collect/ImmutableMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/accounts/AuthenticatorDescription;",
            "[",
            "Landroid/content/SyncAdapterType;",
            ")",
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Landroid/accounts/AuthenticatorDescription;",
            ">;"
        }
    .end annotation

    .line 244
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 245
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    .line 246
    iget-object v5, v4, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    const-string v6, "com.android.contacts"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 247
    iget-object v4, v4, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 252
    :cond_1
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object p1

    .line 253
    array-length v1, p0

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v3, p0, v2

    .line 254
    iget-object v4, v3, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 255
    iget-object v4, v3, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {p1, v4, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 258
    :cond_3
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getAccountTypes(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountType;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_1

    .line 87
    iget-object v0, p0, Lcom/android/contacts/model/account/AccountTypeProvider;->mLocalAccountTypeFactory:Lcom/android/contacts/util/DeviceLocalAccountTypeFactory;

    invoke-interface {v0, p1}, Lcom/android/contacts/util/DeviceLocalAccountTypeFactory;->getAccountType(Ljava/lang/String;)Lcom/android/contacts/model/account/AccountType;

    move-result-object p1

    if-nez p1, :cond_0

    .line 90
    new-instance p1, Lcom/android/contacts/model/account/FallbackAccountType;

    iget-object v0, p0, Lcom/android/contacts/model/account/AccountTypeProvider;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/contacts/model/account/FallbackAccountType;-><init>(Landroid/content/Context;)V

    .line 92
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/model/account/AccountTypeProvider;->mCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_2

    .line 97
    invoke-direct {p0, p1}, Lcom/android/contacts/model/account/AccountTypeProvider;->loadTypes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/android/contacts/model/account/AccountTypeProvider;->mCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public getType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/account/AccountType;
    .locals 2

    .line 123
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/AccountTypeProvider;->getAccountTypes(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 124
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/account/AccountType;

    .line 125
    iget-object v1, v0, Lcom/android/contacts/model/account/AccountType;->dataSet:Ljava/lang/String;

    invoke-static {v1, p2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTypeForAccount(Lcom/android/contacts/model/account/AccountWithDataSet;)Lcom/android/contacts/model/account/AccountType;
    .locals 1

    .line 137
    iget-object v0, p1, Lcom/android/contacts/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/contacts/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/model/account/AccountTypeProvider;->getType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/account/AccountType;

    move-result-object p1

    return-object p1
.end method

.method public shouldUpdate([Landroid/accounts/AuthenticatorDescription;[Landroid/content/SyncAdapterType;)Z
    .locals 3

    .line 141
    invoke-static {p1, p2}, Lcom/android/contacts/model/account/AccountTypeProvider;->onlyContactSyncable([Landroid/accounts/AuthenticatorDescription;[Landroid/content/SyncAdapterType;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    .line 142
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    iget-object v0, p0, Lcom/android/contacts/model/account/AccountTypeProvider;->mAuthTypes:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_0

    return v0

    .line 145
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/accounts/AuthenticatorDescription;

    .line 146
    iget-object v1, p0, Lcom/android/contacts/model/account/AccountTypeProvider;->mAuthTypes:Lcom/google/common/collect/ImmutableMap;

    iget-object v2, p2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AuthenticatorDescription;

    invoke-direct {p0, v1, p2}, Lcom/android/contacts/model/account/AccountTypeProvider;->deepEquals(Landroid/accounts/AuthenticatorDescription;Landroid/accounts/AuthenticatorDescription;)Z

    move-result p2

    if-nez p2, :cond_1

    return v0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public supportsContactsSyncing(Ljava/lang/String;)Z
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/android/contacts/model/account/AccountTypeProvider;->mAuthTypes:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
