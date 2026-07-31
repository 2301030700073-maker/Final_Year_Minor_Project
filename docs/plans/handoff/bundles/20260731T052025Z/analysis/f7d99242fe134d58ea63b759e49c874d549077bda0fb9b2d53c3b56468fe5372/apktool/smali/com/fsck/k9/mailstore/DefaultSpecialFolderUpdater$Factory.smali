.class public final Lcom/fsck/k9/mailstore/DefaultSpecialFolderUpdater$Factory;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

.field public final coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field public final folderRepository:Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

.field public final ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final specialFolderSelectionStrategy:Lcom/fsck/k9/mailstore/SpecialFolderSelectionStrategy;


# direct methods
.method public constructor <init>(Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;Lcom/fsck/k9/mailstore/SpecialFolderSelectionStrategy;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 2
    .line 3
    sget-object v0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/fsck/k9/mailstore/DefaultSpecialFolderUpdater$Factory;->accountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/fsck/k9/mailstore/DefaultSpecialFolderUpdater$Factory;->folderRepository:Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/fsck/k9/mailstore/DefaultSpecialFolderUpdater$Factory;->specialFolderSelectionStrategy:Lcom/fsck/k9/mailstore/SpecialFolderSelectionStrategy;

    .line 16
    .line 17
    iput-object p4, p0, Lcom/fsck/k9/mailstore/DefaultSpecialFolderUpdater$Factory;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/fsck/k9/mailstore/DefaultSpecialFolderUpdater$Factory;->ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final create(Lnet/thunderbird/feature/account/AccountId;)Lcom/eygraber/uri/Uri$Builder;
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/eygraber/uri/Uri$Builder;

    .line 5
    .line 6
    iget-object v5, p0, Lcom/fsck/k9/mailstore/DefaultSpecialFolderUpdater$Factory;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 7
    .line 8
    iget-object v6, p0, Lcom/fsck/k9/mailstore/DefaultSpecialFolderUpdater$Factory;->ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/fsck/k9/mailstore/DefaultSpecialFolderUpdater$Factory;->accountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/fsck/k9/mailstore/DefaultSpecialFolderUpdater$Factory;->folderRepository:Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

    .line 13
    .line 14
    iget-object v3, p0, Lcom/fsck/k9/mailstore/DefaultSpecialFolderUpdater$Factory;->specialFolderSelectionStrategy:Lcom/fsck/k9/mailstore/SpecialFolderSelectionStrategy;

    .line 15
    .line 16
    move-object v4, p1

    .line 17
    invoke-direct/range {v0 .. v6}, Lcom/eygraber/uri/Uri$Builder;-><init>(Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;Lcom/fsck/k9/mailstore/SpecialFolderSelectionStrategy;Lnet/thunderbird/feature/account/AccountId;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method
