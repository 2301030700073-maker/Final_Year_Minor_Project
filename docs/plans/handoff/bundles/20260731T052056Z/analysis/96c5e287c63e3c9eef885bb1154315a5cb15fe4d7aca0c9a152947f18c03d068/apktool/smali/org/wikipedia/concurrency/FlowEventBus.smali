.class public abstract Lorg/wikipedia/concurrency/FlowEventBus;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final _events:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public static final events:Lkotlinx/coroutines/flow/ReadonlySharedFlow;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/BufferOverflow;->DROP_OLDEST:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/16 v2, 0x8

    .line 5
    .line 6
    invoke-static {v2, v1, v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lorg/wikipedia/concurrency/FlowEventBus;->_events:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 11
    .line 12
    new-instance v1, Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 13
    .line 14
    invoke-direct {v1, v0}, Lkotlinx/coroutines/flow/ReadonlySharedFlow;-><init>(Lkotlinx/coroutines/flow/MutableSharedFlow;)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lorg/wikipedia/concurrency/FlowEventBus;->events:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 18
    .line 19
    return-void
.end method

.method public static post(Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/wikipedia/concurrency/FlowEventBus;->_events:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->tryEmit(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const-string p0, "Unable to emit event"

    .line 10
    .line 11
    invoke-static {p0}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
