.class public final Lcom/fsck/k9/ui/messagelist/MessageListLiveData;
.super Landroidx/lifecycle/LiveData;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

.field public final config:Lcom/fsck/k9/ui/messagelist/MessageListConfig;

.field public final coroutineScope:Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

.field public final messageListChangedListener:Lcom/fsck/k9/ui/messagelist/MessageListLiveData$$ExternalSyntheticLambda0;

.field public final messageListLoader:Lcom/fsck/k9/ui/messagelist/MessageListLoader;

.field public final messageListRepository:Lcom/fsck/k9/mailstore/DefaultMessageListRepository;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/ui/messagelist/MessageListLoader;Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;Lcom/fsck/k9/mailstore/DefaultMessageListRepository;Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;Lcom/fsck/k9/ui/messagelist/MessageListConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/LiveData;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListLiveData;->messageListLoader:Lcom/fsck/k9/ui/messagelist/MessageListLoader;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/ui/messagelist/MessageListLiveData;->accountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/fsck/k9/ui/messagelist/MessageListLiveData;->messageListRepository:Lcom/fsck/k9/mailstore/DefaultMessageListRepository;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/fsck/k9/ui/messagelist/MessageListLiveData;->coroutineScope:Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/fsck/k9/ui/messagelist/MessageListLiveData;->config:Lcom/fsck/k9/ui/messagelist/MessageListConfig;

    .line 13
    .line 14
    new-instance p1, Lcom/fsck/k9/ui/messagelist/MessageListLiveData$$ExternalSyntheticLambda0;

    .line 15
    .line 16
    const/4 p2, 0x0

    .line 17
    invoke-direct {p1, p2, p0}, Lcom/fsck/k9/ui/messagelist/MessageListLiveData$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListLiveData;->messageListChangedListener:Lcom/fsck/k9/ui/messagelist/MessageListLiveData$$ExternalSyntheticLambda0;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final onActive()V
    .locals 6

    .line 1
    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 2
    .line 3
    sget-object v0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 4
    .line 5
    new-instance v1, Lcom/fsck/k9/ui/messagelist/MessageListLiveData$loadMessageListAsync$1$messageList$1;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-direct {v1, p0, v3, v2}, Lcom/fsck/k9/ui/messagelist/MessageListLiveData$loadMessageListAsync$1$messageList$1;-><init>(Lcom/fsck/k9/ui/messagelist/MessageListLiveData;Lkotlin/coroutines/Continuation;I)V

    .line 10
    .line 11
    .line 12
    iget-object v2, p0, Lcom/fsck/k9/ui/messagelist/MessageListLiveData;->coroutineScope:Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 13
    .line 14
    const/4 v4, 0x2

    .line 15
    invoke-static {v2, v0, v3, v1, v4}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 16
    .line 17
    .line 18
    sget-object v0, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/android/HandlerContext;

    .line 19
    .line 20
    new-instance v1, Landroidx/lifecycle/BlockRunner$cancel$1;

    .line 21
    .line 22
    const/16 v5, 0x12

    .line 23
    .line 24
    invoke-direct {v1, p0, v3, v5}, Landroidx/lifecycle/BlockRunner$cancel$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 25
    .line 26
    .line 27
    invoke-static {v2, v0, v3, v1, v4}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final onInactive()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListLiveData;->messageListRepository:Lcom/fsck/k9/mailstore/DefaultMessageListRepository;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListLiveData;->messageListChangedListener:Lcom/fsck/k9/ui/messagelist/MessageListLiveData$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/fsck/k9/mailstore/DefaultMessageListRepository;->removeListener(Lapp/k9mail/legacy/mailstore/MessageListChangedListener;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
