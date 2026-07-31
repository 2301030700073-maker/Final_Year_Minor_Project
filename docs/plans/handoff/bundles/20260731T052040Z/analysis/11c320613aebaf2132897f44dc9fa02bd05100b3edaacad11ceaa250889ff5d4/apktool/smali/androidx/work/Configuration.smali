.class public final Landroidx/work/Configuration;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final clock:Landroidx/work/SystemClock;

.field public final contentUriTriggerWorkersLimit:I

.field public final executor:Ljava/util/concurrent/ExecutorService;

.field public final inputMergerFactory:Landroidx/work/SystemClock;

.field public final isMarkingJobsAsImportantWhileForeground:Z

.field public final maxJobSchedulerId:I

.field public final maxSchedulerLimit:I

.field public final minimumLoggingLevel:I

.field public final runnableScheduler:Lcoil3/memory/MemoryCacheService;

.field public final taskExecutor:Ljava/util/concurrent/ExecutorService;

.field public final tracer:Landroidx/work/SystemClock;

.field public final workerCoroutineContext:Lkotlinx/coroutines/scheduling/DefaultScheduler;

.field public final workerFactory:Landroidx/work/SystemClock;


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
    invoke-static {p1}, Lkotlin/io/CloseableKt;->access$createDefaultExecutor(Z)Ljava/util/concurrent/ExecutorService;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Landroidx/work/Configuration;->executor:Ljava/util/concurrent/ExecutorService;

    .line 10
    .line 11
    sget-object p1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 12
    .line 13
    iput-object p1, p0, Landroidx/work/Configuration;->workerCoroutineContext:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    invoke-static {p1}, Lkotlin/io/CloseableKt;->access$createDefaultExecutor(Z)Ljava/util/concurrent/ExecutorService;

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
    sget-object v0, Landroidx/work/SystemClock;->INSTANCE:Landroidx/work/SystemClock;

    .line 30
    .line 31
    iput-object v0, p0, Landroidx/work/Configuration;->workerFactory:Landroidx/work/SystemClock;

    .line 32
    .line 33
    sget-object v0, Landroidx/work/SystemClock;->INSTANCE$1:Landroidx/work/SystemClock;

    .line 34
    .line 35
    iput-object v0, p0, Landroidx/work/Configuration;->inputMergerFactory:Landroidx/work/SystemClock;

    .line 36
    .line 37
    new-instance v0, Lcoil3/memory/MemoryCacheService;

    .line 38
    .line 39
    const/16 v1, 0x1c

    .line 40
    .line 41
    invoke-direct {v0, v1}, Lcoil3/memory/MemoryCacheService;-><init>(I)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Landroidx/work/Configuration;->runnableScheduler:Lcoil3/memory/MemoryCacheService;

    .line 45
    .line 46
    const/4 v0, 0x4

    .line 47
    iput v0, p0, Landroidx/work/Configuration;->minimumLoggingLevel:I

    .line 48
    .line 49
    const v0, 0x7fffffff

    .line 50
    .line 51
    .line 52
    iput v0, p0, Landroidx/work/Configuration;->maxJobSchedulerId:I

    .line 53
    .line 54
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 55
    .line 56
    const/16 v1, 0x17

    .line 57
    .line 58
    if-ne v0, v1, :cond_0

    .line 59
    .line 60
    const/16 v0, 0xa

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    const/16 v0, 0x14

    .line 64
    .line 65
    :goto_0
    iput v0, p0, Landroidx/work/Configuration;->maxSchedulerLimit:I

    .line 66
    .line 67
    const/16 v0, 0x8

    .line 68
    .line 69
    iput v0, p0, Landroidx/work/Configuration;->contentUriTriggerWorkersLimit:I

    .line 70
    .line 71
    iput-boolean p1, p0, Landroidx/work/Configuration;->isMarkingJobsAsImportantWhileForeground:Z

    .line 72
    .line 73
    new-instance p1, Landroidx/work/SystemClock;

    .line 74
    .line 75
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 76
    .line 77
    .line 78
    iput-object p1, p0, Landroidx/work/Configuration;->tracer:Landroidx/work/SystemClock;

    .line 79
    .line 80
    return-void
.end method
