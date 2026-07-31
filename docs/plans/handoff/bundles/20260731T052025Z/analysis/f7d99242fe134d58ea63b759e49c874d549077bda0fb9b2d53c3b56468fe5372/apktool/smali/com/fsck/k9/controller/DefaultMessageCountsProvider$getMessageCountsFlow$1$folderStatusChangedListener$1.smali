.class public final Lcom/fsck/k9/controller/DefaultMessageCountsProvider$getMessageCountsFlow$1$folderStatusChangedListener$1;
.super Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic $$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

.field public final synthetic $search:Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

.field public final synthetic this$0:Lcom/fsck/k9/controller/DefaultMessageCountsProvider;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;Lcom/fsck/k9/controller/DefaultMessageCountsProvider;Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/controller/DefaultMessageCountsProvider$getMessageCountsFlow$1$folderStatusChangedListener$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/controller/DefaultMessageCountsProvider$getMessageCountsFlow$1$folderStatusChangedListener$1;->this$0:Lcom/fsck/k9/controller/DefaultMessageCountsProvider;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/fsck/k9/controller/DefaultMessageCountsProvider$getMessageCountsFlow$1$folderStatusChangedListener$1;->$search:Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final folderStatusChanged(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/fsck/k9/controller/DefaultMessageCountsProvider$getMessageCountsFlow$1$folderStatusChangedListener$1;->this$0:Lcom/fsck/k9/controller/DefaultMessageCountsProvider;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/fsck/k9/controller/DefaultMessageCountsProvider$getMessageCountsFlow$1$folderStatusChangedListener$1;->$search:Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcom/fsck/k9/controller/DefaultMessageCountsProvider;->getMessageCounts(Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;)Lapp/k9mail/legacy/message/controller/MessageCounts;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object p0, p0, Lcom/fsck/k9/controller/DefaultMessageCountsProvider$getMessageCountsFlow$1$folderStatusChangedListener$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    .line 13
    .line 14
    invoke-static {p1, p0}, Lokhttp3/Handshake$Companion;->trySendBlocking(Ljava/lang/Object;Lkotlinx/coroutines/channels/SendChannel;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    return-void
.end method
