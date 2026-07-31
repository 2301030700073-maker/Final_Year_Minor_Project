.class public final Landroidx/work/Configuration;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final clock:Landroidx/work/SystemClock;

.field public final contentUriTriggerWorkersLimit:I

.field public final executor:Ljava/util/concurrent/ExecutorService;

.field public final inputMergerFactory:Landroidx/work/SystemClock;

.field public final isMarkingJobsAsImportantWhileForeground:Z

.field public final maxJobSchedulerId:I

.field public final maxSchedulerLimit:I

.field public final minimumLoggingLevel:I

.field public final runnableScheduler:Landroidx/work/Configuration$Builder;

.field public final taskExecutor:Ljava/util/concurrent/ExecutorService;

.field public final tracer:Landroidx/work/SystemClock;

.field public final workerCoroutineContext:Lkotlinx/coroutines/scheduling/DefaultScheduler;

.field public final workerFactory:Landroidx/work/WorkerFactory;


# direct methods
.method public constructor <init>(Landroidx/work/Configuration$Builder;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->access$createDefaultExecutor(Z)Ljava/util/concurrent/ExecutorService;

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
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->access$createDefaultExecutor(Z)Ljava/util/concurrent/ExecutorService;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iput-object v1, p0, Landroidx/work/Configuration;->taskExecutor:Ljava/util/concurrent/ExecutorService;

    .line 21
    .line 22
    new-instance v1, Landroidx/work/SystemClock;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Landroidx/work/Configuration;->clock:Landroidx/work/SystemClock;

    .line 28
    .line 29
    iget-object p1, p1, Landroidx/work/Configuration$Builder;->workerFactory:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p1, Landroidx/work/WorkerFactory;

    .line 32
    .line 33
    if-nez p1, :cond_0

    .line 34
    .line 35
    sget-object p1, Landroidx/work/DefaultWorkerFactory;->INSTANCE:Landroidx/work/DefaultWorkerFactory;

    .line 36
    .line 37
    :cond_0
    iput-object p1, p0, Landroidx/work/Configuration;->workerFactory:Landroidx/work/WorkerFactory;

    .line 38
    .line 39
    sget-object p1, Landroidx/work/SystemClock;->INSTANCE:Landroidx/work/SystemClock;

    .line 40
    .line 41
    iput-object p1, p0, Landroidx/work/Configuration;->inputMergerFactory:Landroidx/work/SystemClock;

    .line 42
    .line 43
    new-instance p1, Landroidx/work/Configuration$Builder;

    .line 44
    .line 45
    const/4 v1, 0x4

    .line 46
    invoke-direct {p1, v1}, Landroidx/work/Configuration$Builder;-><init>(I)V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Landroidx/work/Configuration;->runnableScheduler:Landroidx/work/Configuration$Builder;

    .line 50
    .line 51
    iput v1, p0, Landroidx/work/Configuration;->minimumLoggingLevel:I

    .line 52
    .line 53
    const p1, 0x7fffffff

    .line 54
    .line 55
    .line 56
    iput p1, p0, Landroidx/work/Configuration;->maxJobSchedulerId:I

    .line 57
    .line 58
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 59
    .line 60
    const/16 v1, 0x17

    .line 61
    .line 62
    if-ne p1, v1, :cond_1

    .line 63
    .line 64
    const/16 p1, 0xa

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    const/16 p1, 0x14

    .line 68
    .line 69
    :goto_0
    iput p1, p0, Landroidx/work/Configuration;->maxSchedulerLimit:I

    .line 70
    .line 71
    const/16 p1, 0x8

    .line 72
    .line 73
    iput p1, p0, Landroidx/work/Configuration;->contentUriTriggerWorkersLimit:I

    .line 74
    .line 75
    iput-boolean v0, p0, Landroidx/work/Configuration;->isMarkingJobsAsImportantWhileForeground:Z

    .line 76
    .line 77
    new-instance p1, Landroidx/work/SystemClock;

    .line 78
    .line 79
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 80
    .line 81
    .line 82
    iput-object p1, p0, Landroidx/work/Configuration;->tracer:Landroidx/work/SystemClock;

    .line 83
    .line 84
    return-void
.end method
