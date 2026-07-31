.class public final Lnet/thunderbird/feature/changelog/internal/ChangeLogManager;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final appCoroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field public final backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final changeLog$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final changeLogFlow$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final context:Landroid/content/Context;

.field public final mutableChangeLogFlow:Lkotlinx/coroutines/flow/SharedFlowImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;)V
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
    iput-object p1, p0, Lnet/thunderbird/feature/changelog/internal/ChangeLogManager;->context:Landroid/content/Context;

    .line 12
    .line 13
    iput-object p2, p0, Lnet/thunderbird/feature/changelog/internal/ChangeLogManager;->appCoroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 14
    .line 15
    iput-object v0, p0, Lnet/thunderbird/feature/changelog/internal/ChangeLogManager;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    const/4 p2, 0x6

    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-static {v0, p2, p1}, Lkotlinx/coroutines/flow/FlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lnet/thunderbird/feature/changelog/internal/ChangeLogManager;->mutableChangeLogFlow:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 25
    .line 26
    new-instance p1, Lnet/thunderbird/feature/changelog/internal/ChangeLogManager$$ExternalSyntheticLambda0;

    .line 27
    .line 28
    invoke-direct {p1, p0, v0}, Lnet/thunderbird/feature/changelog/internal/ChangeLogManager$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/changelog/internal/ChangeLogManager;I)V

    .line 29
    .line 30
    .line 31
    new-instance p2, Lkotlin/SynchronizedLazyImpl;

    .line 32
    .line 33
    invoke-direct {p2, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 34
    .line 35
    .line 36
    iput-object p2, p0, Lnet/thunderbird/feature/changelog/internal/ChangeLogManager;->changeLog$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 37
    .line 38
    new-instance p1, Lnet/thunderbird/feature/changelog/internal/ChangeLogManager$$ExternalSyntheticLambda0;

    .line 39
    .line 40
    const/4 p2, 0x1

    .line 41
    invoke-direct {p1, p0, p2}, Lnet/thunderbird/feature/changelog/internal/ChangeLogManager$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/changelog/internal/ChangeLogManager;I)V

    .line 42
    .line 43
    .line 44
    new-instance p2, Lkotlin/SynchronizedLazyImpl;

    .line 45
    .line 46
    invoke-direct {p2, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 47
    .line 48
    .line 49
    iput-object p2, p0, Lnet/thunderbird/feature/changelog/internal/ChangeLogManager;->changeLogFlow$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 50
    .line 51
    return-void
.end method
