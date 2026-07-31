.class public final Lnet/thunderbird/backend/imap/DefaultImapRemoteFolderCreatorFactory;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lnet/thunderbird/backend/api/folder/RemoteFolderCreator$Factory;


# instance fields
.field public final backendFactory:Lnet/thunderbird/backend/api/BackendFactory;

.field public final logger:Lnet/thunderbird/core/logging/Logger;


# direct methods
.method public constructor <init>(Lnet/thunderbird/core/logging/Logger;Lnet/thunderbird/backend/api/BackendFactory;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/backend/imap/DefaultImapRemoteFolderCreatorFactory;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/thunderbird/backend/imap/DefaultImapRemoteFolderCreatorFactory;->backendFactory:Lnet/thunderbird/backend/api/BackendFactory;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final create(Lnet/thunderbird/feature/account/AccountId;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p2, p0, Lnet/thunderbird/backend/imap/DefaultImapRemoteFolderCreatorFactory;->backendFactory:Lnet/thunderbird/backend/api/BackendFactory;

    .line 2
    .line 3
    invoke-interface {p2, p1}, Lnet/thunderbird/backend/api/BackendFactory;->createBackend(Lnet/thunderbird/feature/account/AccountId;)Lcom/fsck/k9/backend/api/Backend;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/fsck/k9/backend/imap/ImapBackend;

    .line 8
    .line 9
    new-instance p2, Lnet/thunderbird/backend/imap/ImapRemoteFolderCreator;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/fsck/k9/backend/imap/ImapBackend;->imapStore:Lcom/fsck/k9/mail/store/imap/RealImapStore;

    .line 12
    .line 13
    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 14
    .line 15
    sget-object v0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 16
    .line 17
    iget-object p0, p0, Lnet/thunderbird/backend/imap/DefaultImapRemoteFolderCreatorFactory;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 18
    .line 19
    invoke-direct {p2, p0, p1, v0}, Lnet/thunderbird/backend/imap/ImapRemoteFolderCreator;-><init>(Lnet/thunderbird/core/logging/Logger;Lcom/fsck/k9/mail/store/imap/RealImapStore;Lkotlinx/coroutines/CoroutineDispatcher;)V

    .line 20
    .line 21
    .line 22
    return-object p2
.end method
