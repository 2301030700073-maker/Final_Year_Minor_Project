.class public final Landroidx/work/Configuration;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final clock:Landroidx/work/SystemClock;

.field public final executor:Ljava/util/concurrent/ExecutorService;

.field public final maxSchedulerLimit:I

.field public final runnableScheduler:Lcoil3/memory/MemoryCacheService;

.field public final taskExecutor:Ljava/util/concurrent/ExecutorService;

.field public final tracer:Landroidx/work/SystemClock;

.field public final workerCoroutineContext:Lkotlinx/coroutines/scheduling/DefaultScheduler;


# direct methods
.method public constructor <init>(Landroidx/work/SystemClock;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    invoke-static {p1}, Lkotlin/text/UStringsKt;->createDefaultExecutor(Z)Ljava/util/concurrent/ExecutorService;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Landroidx/work/Configuration;->executor:Ljava/util/concurrent/ExecutorService;

    .line 10
    .line 11
    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 12
    .line 13
    iput-object v0, p0, Landroidx/work/Configuration;->workerCoroutineContext:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-static {v0}, Lkotlin/text/UStringsKt;->createDefaultExecutor(Z)Ljava/util/concurrent/ExecutorService;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Landroidx/work/Configuration;->taskExecutor:Ljava/util/concurrent/ExecutorService;

    .line 21
    .line 22
    new-instance v0, Landroidx/work/SystemClock;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Landroidx/work/Configuration;->clock:Landroidx/work/SystemClock;

    .line 28
    .line 29
    new-instance v0, Lcoil3/memory/MemoryCacheService;

    .line 30
    .line 31
    const/16 v1, 0xb

    .line 32
    .line 33
    invoke-direct {v0, v1, p1}, Lcoil3/memory/MemoryCacheService;-><init>(IB)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Landroidx/work/Configuration;->runnableScheduler:Lcoil3/memory/MemoryCacheService;

    .line 37
    .line 38
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 39
    .line 40
    const/16 v0, 0x17

    .line 41
    .line 42
    if-ne p1, v0, :cond_0

    .line 43
    .line 44
    const/16 p1, 0xa

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/16 p1, 0x14

    .line 48
    .line 49
    :goto_0
    iput p1, p0, Landroidx/work/Configuration;->maxSchedulerLimit:I

    .line 50
    .line 51
    new-instance p1, Landroidx/work/SystemClock;

    .line 52
    .line 53
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object p1, p0, Landroidx/work/Configuration;->tracer:Landroidx/work/SystemClock;

    .line 57
    .line 58
    return-void
.end method
