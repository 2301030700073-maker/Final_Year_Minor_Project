.class public final synthetic Landroidx/work/impl/WorkerWrapper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Landroidx/work/ListenableWorker;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Landroidx/work/impl/WorkerWrapper;


# direct methods
.method public synthetic constructor <init>(Landroidx/work/ListenableWorker;ZLjava/lang/String;Landroidx/work/impl/WorkerWrapper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/work/impl/WorkerWrapper$$ExternalSyntheticLambda1;->f$0:Landroidx/work/ListenableWorker;

    .line 5
    .line 6
    iput-boolean p2, p0, Landroidx/work/impl/WorkerWrapper$$ExternalSyntheticLambda1;->f$1:Z

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/work/impl/WorkerWrapper$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/work/impl/WorkerWrapper$$ExternalSyntheticLambda1;->f$3:Landroidx/work/impl/WorkerWrapper;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    .line 3
    instance-of v0, p1, Landroidx/work/impl/WorkerStoppedException;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p1, Landroidx/work/impl/WorkerStoppedException;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/work/impl/WorkerStoppedException;->getReason()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper$$ExternalSyntheticLambda1;->f$0:Landroidx/work/ListenableWorker;

    .line 14
    .line 15
    iget-object v0, v0, Landroidx/work/ListenableWorker;->mStopReason:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 16
    .line 17
    const/16 v1, -0x100

    .line 18
    .line 19
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-boolean p1, p0, Landroidx/work/impl/WorkerWrapper$$ExternalSyntheticLambda1;->f$1:Z

    .line 23
    .line 24
    if-eqz p1, :cond_3

    .line 25
    .line 26
    iget-object p1, p0, Landroidx/work/impl/WorkerWrapper$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    .line 27
    .line 28
    if-eqz p1, :cond_3

    .line 29
    .line 30
    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper$$ExternalSyntheticLambda1;->f$3:Landroidx/work/impl/WorkerWrapper;

    .line 31
    .line 32
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->configuration:Landroidx/work/Configuration;

    .line 33
    .line 34
    iget-object v0, v0, Landroidx/work/Configuration;->tracer:Landroidx/work/SystemClock;

    .line 35
    .line 36
    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 37
    .line 38
    invoke-virtual {p0}, Landroidx/work/impl/model/WorkSpec;->hashCode()I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 46
    .line 47
    const/16 v1, 0x1d

    .line 48
    .line 49
    if-lt v0, v1, :cond_1

    .line 50
    .line 51
    invoke-static {p1}, Landroidx/room/Room;->truncatedTraceSectionLabel(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {p0, p1}, Landroidx/tracing/TraceApi29Impl;->endAsyncSection(ILjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_1
    invoke-static {p1}, Landroidx/room/Room;->truncatedTraceSectionLabel(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const-string v0, "asyncTraceEnd"

    .line 64
    .line 65
    :try_start_0
    sget-object v1, Landroidx/room/Room;->sAsyncTraceEndMethod:Ljava/lang/reflect/Method;

    .line 66
    .line 67
    const/4 v2, 0x2

    .line 68
    const/4 v3, 0x1

    .line 69
    const/4 v4, 0x0

    .line 70
    const/4 v5, 0x3

    .line 71
    if-nez v1, :cond_2

    .line 72
    .line 73
    const-class v1, Landroid/os/Trace;

    .line 74
    .line 75
    new-array v6, v5, [Ljava/lang/Class;

    .line 76
    .line 77
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 78
    .line 79
    aput-object v7, v6, v4

    .line 80
    .line 81
    const-class v7, Ljava/lang/String;

    .line 82
    .line 83
    aput-object v7, v6, v3

    .line 84
    .line 85
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 86
    .line 87
    aput-object v7, v6, v2

    .line 88
    .line 89
    invoke-virtual {v1, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    sput-object v1, Landroidx/room/Room;->sAsyncTraceEndMethod:Ljava/lang/reflect/Method;

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :catch_0
    move-exception p0

    .line 97
    goto :goto_1

    .line 98
    :cond_2
    :goto_0
    sget-object v1, Landroidx/room/Room;->sAsyncTraceEndMethod:Ljava/lang/reflect/Method;

    .line 99
    .line 100
    sget-wide v6, Landroidx/room/Room;->sTraceTagApp:J

    .line 101
    .line 102
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    new-array v5, v5, [Ljava/lang/Object;

    .line 111
    .line 112
    aput-object v6, v5, v4

    .line 113
    .line 114
    aput-object p1, v5, v3

    .line 115
    .line 116
    aput-object p0, v5, v2

    .line 117
    .line 118
    const/4 p0, 0x0

    .line 119
    invoke-virtual {v1, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .line 121
    .line 122
    goto :goto_2

    .line 123
    :goto_1
    invoke-static {v0, p0}, Landroidx/room/Room;->handleException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 124
    .line 125
    .line 126
    :cond_3
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 127
    .line 128
    return-object p0
.end method
