.class public final Lnet/thunderbird/backend/imap/ImapRemoteFolderCreator;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lnet/thunderbird/backend/api/folder/RemoteFolderCreator;


# instance fields
.field public final imapStore:Lcom/fsck/k9/mail/store/imap/RealImapStore;

.field public final ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final logger:Lnet/thunderbird/core/logging/Logger;


# direct methods
.method public constructor <init>(Lnet/thunderbird/core/logging/Logger;Lcom/fsck/k9/mail/store/imap/RealImapStore;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 0

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lnet/thunderbird/backend/imap/ImapRemoteFolderCreator;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 8
    .line 9
    iput-object p2, p0, Lnet/thunderbird/backend/imap/ImapRemoteFolderCreator;->imapStore:Lcom/fsck/k9/mail/store/imap/RealImapStore;

    .line 10
    .line 11
    iput-object p3, p0, Lnet/thunderbird/backend/imap/ImapRemoteFolderCreator;->ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create-rwpFgxY(Ljava/lang/String;Lorg/jetbrains/compose/resources/AsyncCache$getOrLoad$2;)Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0xe

    .line 5
    .line 6
    invoke-direct {v0, p0, p1, v1, v2}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lnet/thunderbird/backend/imap/ImapRemoteFolderCreator;->ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 10
    .line 11
    invoke-static {p0, v0, p2}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method
