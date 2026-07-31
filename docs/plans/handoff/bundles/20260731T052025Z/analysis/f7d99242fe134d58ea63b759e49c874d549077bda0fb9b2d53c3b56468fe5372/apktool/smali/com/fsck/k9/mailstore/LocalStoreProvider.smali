.class public final Lcom/fsck/k9/mailstore/LocalStoreProvider;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accountLocks:Lj$/util/concurrent/ConcurrentHashMap;

.field public final localStores:Lj$/util/concurrent/ConcurrentHashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/fsck/k9/mailstore/LocalStoreProvider;->localStores:Lj$/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/fsck/k9/mailstore/LocalStoreProvider;->accountLocks:Lj$/util/concurrent/ConcurrentHashMap;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final getInstance(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/mailstore/LocalStore;
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-class v0, Landroid/content/Context;

    .line 5
    .line 6
    invoke-static {v0}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    move-object v3, v0

    .line 11
    check-cast v3, Landroid/content/Context;

    .line 12
    .line 13
    const-class v0, Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 14
    .line 15
    invoke-static {v0}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    move-object v4, v0

    .line 20
    check-cast v4, Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 21
    .line 22
    const-class v0, Lnet/thunderbird/feature/mail/message/list/internal/DefaultLocalMessageUidPrefixProvider;

    .line 23
    .line 24
    invoke-static {v0}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    move-object v5, v0

    .line 29
    check-cast v5, Lnet/thunderbird/feature/mail/message/list/internal/DefaultLocalMessageUidPrefixProvider;

    .line 30
    .line 31
    iget-object v0, p1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 32
    .line 33
    new-instance v1, Lcom/fsck/k9/mailstore/LocalStoreProvider$$ExternalSyntheticLambda0;

    .line 34
    .line 35
    const/4 v6, 0x1

    .line 36
    move-object v2, p1

    .line 37
    invoke-direct/range {v1 .. v6}, Lcom/fsck/k9/mailstore/LocalStoreProvider$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/core/android/account/LegacyAccountDto;Landroid/content/Context;Lnet/thunderbird/core/preference/GeneralSettingsManager;Lnet/thunderbird/feature/mail/message/list/internal/DefaultLocalMessageUidPrefixProvider;I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/mailstore/LocalStoreProvider;->getInstanceById(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Lcom/fsck/k9/mailstore/LocalStore;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0
.end method

.method public final getInstanceById(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Lcom/fsck/k9/mailstore/LocalStore;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStoreProvider;->accountLocks:Lj$/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    new-instance v1, Ljava/lang/Object;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1, v1}, Lj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v1, v0

    .line 22
    :cond_1
    :goto_0
    monitor-enter v1

    .line 23
    :try_start_0
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStoreProvider;->localStores:Lj$/util/concurrent/ConcurrentHashMap;

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-nez v0, :cond_3

    .line 30
    .line 31
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    check-cast p2, Lcom/fsck/k9/mailstore/LocalStore;

    .line 36
    .line 37
    invoke-virtual {p0, p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    if-nez p0, :cond_2

    .line 42
    .line 43
    move-object v0, p2

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    move-object v0, p0

    .line 46
    goto :goto_1

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    goto :goto_2

    .line 49
    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    check-cast v0, Lcom/fsck/k9/mailstore/LocalStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    monitor-exit v1

    .line 55
    return-object v0

    .line 56
    :goto_2
    monitor-exit v1

    .line 57
    throw p0
.end method

.method public final getInstanceByLegacyAccount(Lnet/thunderbird/core/android/account/LegacyAccount;)Lcom/fsck/k9/mailstore/LocalStore;
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-class v0, Landroid/content/Context;

    .line 5
    .line 6
    invoke-static {v0}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    move-object v3, v0

    .line 11
    check-cast v3, Landroid/content/Context;

    .line 12
    .line 13
    const-class v0, Lnet/thunderbird/feature/account/storage/legacy/mapper/DefaultLegacyAccountDataMapper;

    .line 14
    .line 15
    invoke-static {v0}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lnet/thunderbird/feature/account/storage/legacy/mapper/DefaultLegacyAccountDataMapper;

    .line 20
    .line 21
    const-class v1, Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 22
    .line 23
    invoke-static {v1}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    move-object v4, v1

    .line 28
    check-cast v4, Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 29
    .line 30
    const-class v1, Lnet/thunderbird/feature/mail/message/list/internal/DefaultLocalMessageUidPrefixProvider;

    .line 31
    .line 32
    invoke-static {v1}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    move-object v5, v1

    .line 37
    check-cast v5, Lnet/thunderbird/feature/mail/message/list/internal/DefaultLocalMessageUidPrefixProvider;

    .line 38
    .line 39
    iget-object v7, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->uuid:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Lnet/thunderbird/feature/account/storage/legacy/mapper/DefaultLegacyAccountDataMapper;->toDto(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    move-object v2, p1

    .line 46
    check-cast v2, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 47
    .line 48
    new-instance v1, Lcom/fsck/k9/mailstore/LocalStoreProvider$$ExternalSyntheticLambda0;

    .line 49
    .line 50
    const/4 v6, 0x0

    .line 51
    invoke-direct/range {v1 .. v6}, Lcom/fsck/k9/mailstore/LocalStoreProvider$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/core/android/account/LegacyAccountDto;Landroid/content/Context;Lnet/thunderbird/core/preference/GeneralSettingsManager;Lnet/thunderbird/feature/mail/message/list/internal/DefaultLocalMessageUidPrefixProvider;I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v7, v1}, Lcom/fsck/k9/mailstore/LocalStoreProvider;->getInstanceById(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Lcom/fsck/k9/mailstore/LocalStore;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    return-object p0
.end method
