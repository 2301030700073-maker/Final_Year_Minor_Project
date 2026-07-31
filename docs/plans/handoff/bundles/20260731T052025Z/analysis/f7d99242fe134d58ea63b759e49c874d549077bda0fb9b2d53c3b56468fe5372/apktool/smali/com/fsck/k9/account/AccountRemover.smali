.class public final Lcom/fsck/k9/account/AccountRemover;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final avatarImageRepository:Lnet/thunderbird/feature/account/avatar/data/DefaultAvatarImageRepository;

.field public final backendManager:Lcom/fsck/k9/backend/BackendManager;

.field public final localKeyStoreManager:Lcom/fsck/k9/LocalKeyStoreManager;

.field public final localStoreProvider:Lcom/fsck/k9/mailstore/LocalStoreProvider;

.field public final messagingController:Lcom/fsck/k9/controller/MessagingController;

.field public final preferences:Lcom/fsck/k9/Preferences;

.field public final unifiedInboxConfigurator:Lcom/fsck/k9/preferences/UnifiedInboxConfigurator;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mailstore/LocalStoreProvider;Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/backend/BackendManager;Lcom/fsck/k9/LocalKeyStoreManager;Lcom/fsck/k9/Preferences;Lcom/fsck/k9/preferences/UnifiedInboxConfigurator;Lnet/thunderbird/feature/account/avatar/data/DefaultAvatarImageRepository;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/account/AccountRemover;->localStoreProvider:Lcom/fsck/k9/mailstore/LocalStoreProvider;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/account/AccountRemover;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/fsck/k9/account/AccountRemover;->backendManager:Lcom/fsck/k9/backend/BackendManager;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/fsck/k9/account/AccountRemover;->localKeyStoreManager:Lcom/fsck/k9/LocalKeyStoreManager;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/fsck/k9/account/AccountRemover;->preferences:Lcom/fsck/k9/Preferences;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/fsck/k9/account/AccountRemover;->unifiedInboxConfigurator:Lcom/fsck/k9/preferences/UnifiedInboxConfigurator;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/fsck/k9/account/AccountRemover;->avatarImageRepository:Lnet/thunderbird/feature/account/avatar/data/DefaultAvatarImageRepository;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final removeBackend(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/fsck/k9/account/AccountRemover;->backendManager:Lcom/fsck/k9/backend/BackendManager;

    .line 2
    .line 3
    iget-object v0, p1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/fsck/k9/backend/BackendManager;->backendCache:Ljava/util/LinkedHashMap;

    .line 9
    .line 10
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    :try_start_1
    iget-object v2, p0, Lcom/fsck/k9/backend/BackendManager;->backendCache:Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    iget-object v3, v0, Lnet/thunderbird/feature/account/AccountId;->value:Ljava/lang/Comparable;

    .line 14
    .line 15
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lcom/fsck/k9/backend/BackendContainer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    .line 25
    :try_start_2
    monitor-exit v1

    .line 26
    invoke-virtual {p0, v0}, Lcom/fsck/k9/backend/BackendManager;->notifyListeners(Lnet/thunderbird/feature/account/AccountId;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    monitor-exit v1

    .line 32
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 33
    :catch_0
    move-exception p0

    .line 34
    const-string v0, "Failed to reset remote store for account %s"

    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    new-array v1, v1, [Ljava/lang/Object;

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    aput-object p1, v1, v2

    .line 41
    .line 42
    invoke-static {p0, v0, v1}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method
