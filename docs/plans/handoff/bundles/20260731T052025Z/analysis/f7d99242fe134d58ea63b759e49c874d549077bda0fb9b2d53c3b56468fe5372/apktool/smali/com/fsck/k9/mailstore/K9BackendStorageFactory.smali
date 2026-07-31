.class public final Lcom/fsck/k9/mailstore/K9BackendStorageFactory;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

.field public final folderRepository:Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

.field public final messageStoreManager:Lapp/k9mail/legacy/mailstore/MessageStoreManager;

.field public final preferences:Lcom/fsck/k9/Preferences;

.field public final saveMessageDataCreator:Lcom/fsck/k9/mailstore/SaveMessageDataCreator;

.field public final specialFolderUpdaterFactory:Lcom/fsck/k9/mailstore/DefaultSpecialFolderUpdater$Factory;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/Preferences;Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;Lapp/k9mail/legacy/mailstore/MessageStoreManager;Lcom/fsck/k9/mailstore/DefaultSpecialFolderUpdater$Factory;Lcom/fsck/k9/mailstore/SaveMessageDataCreator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/mailstore/K9BackendStorageFactory;->preferences:Lcom/fsck/k9/Preferences;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/mailstore/K9BackendStorageFactory;->accountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/fsck/k9/mailstore/K9BackendStorageFactory;->folderRepository:Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/fsck/k9/mailstore/K9BackendStorageFactory;->messageStoreManager:Lapp/k9mail/legacy/mailstore/MessageStoreManager;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/fsck/k9/mailstore/K9BackendStorageFactory;->specialFolderUpdaterFactory:Lcom/fsck/k9/mailstore/DefaultSpecialFolderUpdater$Factory;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/fsck/k9/mailstore/K9BackendStorageFactory;->saveMessageDataCreator:Lcom/fsck/k9/mailstore/SaveMessageDataCreator;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final createBackendStorage$1(Lnet/thunderbird/feature/account/AccountId;)Lokhttp3/Dispatcher;
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/fsck/k9/mailstore/K9BackendStorageFactory;->messageStoreManager:Lapp/k9mail/legacy/mailstore/MessageStoreManager;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lapp/k9mail/legacy/mailstore/MessageStoreManager;->getMessageStore(Lnet/thunderbird/feature/account/AccountId;)Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    new-instance v3, Lcom/fsck/k9/backend/imap/ImapSync;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/fsck/k9/mailstore/K9BackendStorageFactory;->preferences:Lcom/fsck/k9/Preferences;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/fsck/k9/mailstore/K9BackendStorageFactory;->accountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 15
    .line 16
    invoke-direct {v3, v0, v1, p1}, Lcom/fsck/k9/backend/imap/ImapSync;-><init>(Lcom/fsck/k9/Preferences;Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;Lnet/thunderbird/feature/account/AccountId;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/fsck/k9/mailstore/K9BackendStorageFactory;->specialFolderUpdaterFactory:Lcom/fsck/k9/mailstore/DefaultSpecialFolderUpdater$Factory;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lcom/fsck/k9/mailstore/DefaultSpecialFolderUpdater$Factory;->create(Lnet/thunderbird/feature/account/AccountId;)Lcom/eygraber/uri/Uri$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    new-instance v4, Lcom/fsck/k9/mailstore/SpecialFolderBackendFoldersRefreshListener;

    .line 26
    .line 27
    invoke-direct {v4, v0}, Lcom/fsck/k9/mailstore/SpecialFolderBackendFoldersRefreshListener;-><init>(Lcom/eygraber/uri/Uri$Builder;)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Lcom/fsck/k9/mailstore/AutoExpandFolderBackendFoldersRefreshListener;

    .line 31
    .line 32
    iget-object v5, p0, Lcom/fsck/k9/mailstore/K9BackendStorageFactory;->folderRepository:Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

    .line 33
    .line 34
    invoke-direct {v0, v1, p1, v5}, Lcom/fsck/k9/mailstore/AutoExpandFolderBackendFoldersRefreshListener;-><init>(Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;Lnet/thunderbird/feature/account/AccountId;Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;)V

    .line 35
    .line 36
    .line 37
    const/4 p1, 0x2

    .line 38
    new-array p1, p1, [Lcom/fsck/k9/mailstore/BackendFoldersRefreshListener;

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    aput-object v4, p1, v1

    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    aput-object v0, p1, v1

    .line 45
    .line 46
    invoke-static {p1}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    new-instance v1, Lokhttp3/Dispatcher;

    .line 51
    .line 52
    iget-object v4, p0, Lcom/fsck/k9/mailstore/K9BackendStorageFactory;->saveMessageDataCreator:Lcom/fsck/k9/mailstore/SaveMessageDataCreator;

    .line 53
    .line 54
    const/16 v6, 0x16

    .line 55
    .line 56
    invoke-direct/range {v1 .. v6}, Lokhttp3/Dispatcher;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 57
    .line 58
    .line 59
    return-object v1
.end method
