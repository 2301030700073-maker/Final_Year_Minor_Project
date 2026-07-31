.class public final Lcom/fsck/k9/controller/MessagingControllerWrapper;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accountManager:Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

.field public final messagingController:Lcom/fsck/k9/controller/MessagingController;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/controller/MessagingController;Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingControllerWrapper;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/controller/MessagingControllerWrapper;->accountManager:Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final checkAuthenticationProblem(Lnet/thunderbird/feature/account/AccountId;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/fsck/k9/controller/MessagingControllerWrapper;->getAccountDtoOrThrow(Lnet/thunderbird/feature/account/AccountId;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-static {p1, v0}, Lcom/fsck/k9/controller/MessagingController;->isAuthenticationProblem(Lnet/thunderbird/core/android/account/LegacyAccountDto;Z)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object p0, p0, Lcom/fsck/k9/controller/MessagingControllerWrapper;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, p1, v0}, Lcom/fsck/k9/controller/MessagingController;->handleAuthenticationFailure(Lnet/thunderbird/core/android/account/LegacyAccountDto;Z)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-virtual {p0, p1, v0, v0}, Lcom/fsck/k9/controller/MessagingController;->clearAuthenticationErrorNotification(Lnet/thunderbird/core/android/account/LegacyAccountDto;ZZ)V

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-static {p1, v1}, Lcom/fsck/k9/controller/MessagingController;->isAuthenticationProblem(Lnet/thunderbird/core/android/account/LegacyAccountDto;Z)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0, p1, v1}, Lcom/fsck/k9/controller/MessagingController;->handleAuthenticationFailure(Lnet/thunderbird/core/android/account/LegacyAccountDto;Z)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    invoke-virtual {p0, p1, v1, v0}, Lcom/fsck/k9/controller/MessagingController;->clearAuthenticationErrorNotification(Lnet/thunderbird/core/android/account/LegacyAccountDto;ZZ)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final copyMessagesInThread(Lnet/thunderbird/feature/account/AccountId;JLjava/util/List;J)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/fsck/k9/controller/MessagingControllerWrapper;->getAccountDtoOrThrow(Lnet/thunderbird/feature/account/AccountId;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingControllerWrapper;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 9
    .line 10
    :try_start_0
    iget-object p0, v1, Lcom/fsck/k9/controller/MessagingController;->localStoreProvider:Lcom/fsck/k9/mailstore/LocalStoreProvider;

    .line 11
    .line 12
    invoke-virtual {p0, v2}, Lcom/fsck/k9/mailstore/LocalStoreProvider;->getInstance(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/mailstore/LocalStore;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    new-instance p1, Lcom/fsck/k9/mailstore/LocalFolder;

    .line 17
    .line 18
    invoke-direct {p1, p0, p2, p3}, Lcom/fsck/k9/mailstore/LocalFolder;-><init>(Lcom/fsck/k9/mailstore/LocalStore;J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p4}, Lcom/fsck/k9/mailstore/LocalFolder;->getMessagesByReference(Ljava/util/List;)Ljava/util/ArrayList;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const-string p0, "copyMessagesInThread"

    .line 26
    .line 27
    new-instance v0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda23;

    .line 28
    .line 29
    const/4 v8, 0x2

    .line 30
    move-wide v4, p2

    .line 31
    move-wide v6, p5

    .line 32
    invoke-direct/range {v0 .. v8}, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda23;-><init>(Lcom/fsck/k9/controller/MessagingController;Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/util/ArrayList;JJI)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p0, v0}, Lcom/fsck/k9/controller/MessagingController;->putBackground(Ljava/lang/String;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :catch_0
    move-exception v0

    .line 40
    move-object p0, v0

    .line 41
    const/4 p1, 0x0

    .line 42
    new-array p1, p1, [Ljava/lang/Object;

    .line 43
    .line 44
    const-string p2, "Error loading account?!"

    .line 45
    .line 46
    invoke-static {p0, p2, p1}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final getAccountDtoOrNull(Lnet/thunderbird/feature/account/AccountId;)Lnet/thunderbird/core/android/account/LegacyAccountDto;
    .locals 0

    .line 1
    iget-object p1, p1, Lnet/thunderbird/feature/account/AccountId;->value:Ljava/lang/Comparable;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p0, p0, Lcom/fsck/k9/controller/MessagingControllerWrapper;->accountManager:Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 8
    .line 9
    check-cast p0, Lcom/fsck/k9/Preferences;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public final getAccountDtoOrThrow(Lnet/thunderbird/feature/account/AccountId;)Lnet/thunderbird/core/android/account/LegacyAccountDto;
    .locals 1

    .line 1
    iget-object v0, p1, Lnet/thunderbird/feature/account/AccountId;->value:Ljava/lang/Comparable;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Lcom/fsck/k9/controller/MessagingControllerWrapper;->accountManager:Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 8
    .line 9
    check-cast p0, Lcom/fsck/k9/Preferences;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    const-string p0, "Account not found: "

    .line 19
    .line 20
    invoke-static {p1, p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    return-object p0
.end method

.method public final isCopyCapable(Lnet/thunderbird/feature/account/AccountId;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/fsck/k9/controller/MessagingControllerWrapper;->getAccountDtoOrNull(Lnet/thunderbird/feature/account/AccountId;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/fsck/k9/controller/MessagingControllerWrapper;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/fsck/k9/controller/MessagingController;->getBackend(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/backend/api/Backend;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-interface {p0}, Lcom/fsck/k9/backend/api/Backend;->getSupportsCopy()Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0
.end method

.method public final isMoveCapable(Lnet/thunderbird/feature/account/AccountId;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/fsck/k9/controller/MessagingControllerWrapper;->getAccountDtoOrNull(Lnet/thunderbird/feature/account/AccountId;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/fsck/k9/controller/MessagingControllerWrapper;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/fsck/k9/controller/MessagingController;->getBackend(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/backend/api/Backend;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-interface {p0}, Lcom/fsck/k9/backend/api/Backend;->getSupportsMove()Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0
.end method

.method public final moveMessagesInThread(Lnet/thunderbird/feature/account/AccountId;JLjava/util/List;J)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/fsck/k9/controller/MessagingControllerWrapper;->getAccountDtoOrThrow(Lnet/thunderbird/feature/account/AccountId;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingControllerWrapper;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 9
    .line 10
    :try_start_0
    iget-object p0, v1, Lcom/fsck/k9/controller/MessagingController;->localStoreProvider:Lcom/fsck/k9/mailstore/LocalStoreProvider;

    .line 11
    .line 12
    invoke-virtual {p0, v2}, Lcom/fsck/k9/mailstore/LocalStoreProvider;->getInstance(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/mailstore/LocalStore;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    new-instance p1, Lcom/fsck/k9/mailstore/LocalFolder;

    .line 17
    .line 18
    invoke-direct {p1, p0, p2, p3}, Lcom/fsck/k9/mailstore/LocalFolder;-><init>(Lcom/fsck/k9/mailstore/LocalStore;J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p4}, Lcom/fsck/k9/mailstore/LocalFolder;->getMessagesByReference(Ljava/util/List;)Ljava/util/ArrayList;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-static {v2, v3}, Lcom/fsck/k9/controller/MessagingController;->suppressMessages(Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/util/List;)V

    .line 26
    .line 27
    .line 28
    const-string p0, "moveMessagesInThread"

    .line 29
    .line 30
    new-instance v0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda23;

    .line 31
    .line 32
    const/4 v8, 0x3

    .line 33
    move-wide v4, p2

    .line 34
    move-wide v6, p5

    .line 35
    invoke-direct/range {v0 .. v8}, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda23;-><init>(Lcom/fsck/k9/controller/MessagingController;Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/util/ArrayList;JJI)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, p0, v0}, Lcom/fsck/k9/controller/MessagingController;->putBackground(Ljava/lang/String;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 43
    move-object p0, v0

    .line 44
    const/4 p1, 0x0

    .line 45
    new-array p1, p1, [Ljava/lang/Object;

    .line 46
    .line 47
    const-string p2, "Error loading account?!"

    .line 48
    .line 49
    invoke-static {p0, p2, p1}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final searchRemoteMessages(Lnet/thunderbird/feature/account/AccountId;JLjava/lang/String;Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;)Ljava/util/concurrent/Future;
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget-object p1, p1, Lnet/thunderbird/feature/account/AccountId;->value:Ljava/lang/Comparable;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/4 v0, 0x3

    .line 18
    new-array v0, v0, [Ljava/lang/Object;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    aput-object v2, v0, v1

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    aput-object p1, v0, v1

    .line 25
    .line 26
    const/4 p1, 0x2

    .line 27
    aput-object p4, v0, p1

    .line 28
    .line 29
    const-string p1, "searchRemoteMessages (acct = %s, folderId = %d, query = %s)"

    .line 30
    .line 31
    invoke-static {p1, v0}, Lnet/thunderbird/core/logging/legacy/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingControllerWrapper;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 35
    .line 36
    iget-object p0, v1, Lcom/fsck/k9/controller/MessagingController;->threadPool:Ljava/util/concurrent/ExecutorService;

    .line 37
    .line 38
    new-instance v0, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda6;

    .line 39
    .line 40
    const/4 v7, 0x2

    .line 41
    move-wide v3, p2

    .line 42
    move-object v5, p4

    .line 43
    move-object v6, p5

    .line 44
    invoke-direct/range {v0 .. v7}, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Object;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;I)V

    .line 45
    .line 46
    .line 47
    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0
.end method

.method public final setFlag(Lnet/thunderbird/feature/account/AccountId;Ljava/util/List;Lnet/thunderbird/core/common/mail/Flag;Z)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/fsck/k9/controller/MessagingControllerWrapper;->getAccountDtoOrThrow(Lnet/thunderbird/feature/account/AccountId;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-static {v2, p2, p3, p4}, Lcom/fsck/k9/controller/MessagingController;->setFlagInCache(Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/util/List;Lnet/thunderbird/core/common/mail/Flag;Z)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda12;

    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingControllerWrapper;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 18
    .line 19
    move-object v3, p2

    .line 20
    move-object v4, p3

    .line 21
    move v5, p4

    .line 22
    invoke-direct/range {v0 .. v6}, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda12;-><init>(Lcom/fsck/k9/controller/MessagingController;Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/lang/Object;Ljava/io/Serializable;ZI)V

    .line 23
    .line 24
    .line 25
    const-string p0, "setFlag"

    .line 26
    .line 27
    invoke-virtual {v1, p0, v0}, Lcom/fsck/k9/controller/MessagingController;->putBackground(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final setFlagForThreads(Lnet/thunderbird/feature/account/AccountId;Ljava/util/List;Lnet/thunderbird/core/common/mail/Flag;Z)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/fsck/k9/controller/MessagingControllerWrapper;->getAccountDtoOrThrow(Lnet/thunderbird/feature/account/AccountId;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingControllerWrapper;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 12
    .line 13
    iget-object p0, v2, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {p0}, Lcom/fsck/k9/mailstore/MessageListCache;->getCache(Ljava/lang/String;)Lcom/fsck/k9/mailstore/MessageListCache;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    iget-object p1, p0, Lcom/fsck/k9/mailstore/MessageListCache;->threadCache:Ljava/util/LinkedHashMap;

    .line 20
    .line 21
    monitor-enter p1

    .line 22
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Ljava/lang/Number;

    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    .line 39
    .line 40
    .line 41
    move-result-wide v3

    .line 42
    iget-object v5, p0, Lcom/fsck/k9/mailstore/MessageListCache;->threadCache:Ljava/util/LinkedHashMap;

    .line 43
    .line 44
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v5, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    if-nez v4, :cond_0

    .line 53
    .line 54
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 55
    .line 56
    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    move-object p0, v0

    .line 65
    goto :goto_2

    .line 66
    :cond_0
    :goto_1
    check-cast v4, Ljava/util/Map;

    .line 67
    .line 68
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-interface {v4, p3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    monitor-exit p1

    .line 77
    const-class p1, Lcom/fsck/k9/mailstore/DefaultMessageListRepository;

    .line 78
    .line 79
    invoke-static {p1}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    check-cast p1, Lcom/fsck/k9/mailstore/DefaultMessageListRepository;

    .line 84
    .line 85
    iget-object p0, p0, Lcom/fsck/k9/mailstore/MessageListCache;->accountUuid:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {p1, p0}, Lcom/fsck/k9/mailstore/DefaultMessageListRepository;->notifyMessageListChanged(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const-string p0, "setFlagForThreads"

    .line 91
    .line 92
    new-instance v0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda12;

    .line 93
    .line 94
    const/4 v6, 0x1

    .line 95
    move-object v3, p2

    .line 96
    move-object v4, p3

    .line 97
    move v5, p4

    .line 98
    invoke-direct/range {v0 .. v6}, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda12;-><init>(Lcom/fsck/k9/controller/MessagingController;Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/lang/Object;Ljava/io/Serializable;ZI)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, p0, v0}, Lcom/fsck/k9/controller/MessagingController;->putBackground(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :goto_2
    monitor-exit p1

    .line 106
    throw p0
.end method
