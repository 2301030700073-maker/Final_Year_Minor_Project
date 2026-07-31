.class public final Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue;
.super Ljava/lang/Object;
.source "StateMachineSerialExecutorQueue.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$ProcedureHolder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001\u0016B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0016\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u000cH\u0082@\u00a2\u0006\u0002\u0010\u0012J\u000e\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u0015R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue;",
        "",
        "updatesLogger",
        "Lexpo/modules/updates/logging/IUpdatesLogger;",
        "stateMachineProcedureContext",
        "Lexpo/modules/updates/procedures/StateMachineProcedure$StateMachineProcedureContext;",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "<init>",
        "(Lexpo/modules/updates/logging/IUpdatesLogger;Lexpo/modules/updates/procedures/StateMachineProcedure$StateMachineProcedureContext;Lkotlinx/coroutines/CoroutineScope;)V",
        "procedureChannel",
        "Lkotlinx/coroutines/channels/Channel;",
        "Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$ProcedureHolder;",
        "mutex",
        "Lkotlinx/coroutines/sync/Mutex;",
        "executeProcedure",
        "",
        "holder",
        "(Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$ProcedureHolder;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "queueExecution",
        "stateMachineProcedure",
        "Lexpo/modules/updates/procedures/StateMachineProcedure;",
        "ProcedureHolder",
        "expo-updates_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final mutex:Lkotlinx/coroutines/sync/Mutex;

.field private final procedureChannel:Lkotlinx/coroutines/channels/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/Channel<",
            "Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$ProcedureHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final scope:Lkotlinx/coroutines/CoroutineScope;

.field private final stateMachineProcedureContext:Lexpo/modules/updates/procedures/StateMachineProcedure$StateMachineProcedureContext;

.field private final updatesLogger:Lexpo/modules/updates/logging/IUpdatesLogger;


# direct methods
.method public constructor <init>(Lexpo/modules/updates/logging/IUpdatesLogger;Lexpo/modules/updates/procedures/StateMachineProcedure$StateMachineProcedureContext;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 7

    const-string v0, "updatesLogger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stateMachineProcedureContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue;->updatesLogger:Lexpo/modules/updates/logging/IUpdatesLogger;

    .line 20
    iput-object p2, p0, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue;->stateMachineProcedureContext:Lexpo/modules/updates/procedures/StateMachineProcedure$StateMachineProcedureContext;

    .line 21
    iput-object p3, p0, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue;->scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 p1, 0x6

    const p2, 0x7fffffff

    const/4 v0, 0x0

    .line 28
    invoke-static {p2, v0, v0, p1, v0}, Lkotlinx/coroutines/channels/ChannelKt;->Channel$default(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/channels/Channel;

    move-result-object p1

    iput-object p1, p0, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue;->procedureChannel:Lkotlinx/coroutines/channels/Channel;

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 29
    invoke-static {p1, p2, v0}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput-object p1, p0, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue;->mutex:Lkotlinx/coroutines/sync/Mutex;

    .line 32
    new-instance p1, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$1;

    invoke-direct {p1, p0, v0}, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$1;-><init>(Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue;Lkotlin/coroutines/Continuation;)V

    move-object v4, p1

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p3

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public synthetic constructor <init>(Lexpo/modules/updates/logging/IUpdatesLogger;Lexpo/modules/updates/procedures/StateMachineProcedure$StateMachineProcedureContext;Lkotlinx/coroutines/CoroutineScope;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 21
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p3

    check-cast p3, Lkotlin/coroutines/CoroutineContext;

    invoke-static {p3}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p3

    .line 18
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue;-><init>(Lexpo/modules/updates/logging/IUpdatesLogger;Lexpo/modules/updates/procedures/StateMachineProcedure$StateMachineProcedureContext;Lkotlinx/coroutines/CoroutineScope;)V

    return-void
.end method

.method public static final synthetic access$executeProcedure(Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue;Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$ProcedureHolder;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue;->executeProcedure(Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$ProcedureHolder;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMutex$p(Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue;)Lkotlinx/coroutines/sync/Mutex;
    .locals 0

    .line 18
    iget-object p0, p0, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue;->mutex:Lkotlinx/coroutines/sync/Mutex;

    return-object p0
.end method

.method public static final synthetic access$getProcedureChannel$p(Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue;)Lkotlinx/coroutines/channels/Channel;
    .locals 0

    .line 18
    iget-object p0, p0, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue;->procedureChannel:Lkotlinx/coroutines/channels/Channel;

    return-object p0
.end method

.method public static final synthetic access$getStateMachineProcedureContext$p(Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue;)Lexpo/modules/updates/procedures/StateMachineProcedure$StateMachineProcedureContext;
    .locals 0

    .line 18
    iget-object p0, p0, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue;->stateMachineProcedureContext:Lexpo/modules/updates/procedures/StateMachineProcedure$StateMachineProcedureContext;

    return-object p0
.end method

.method private final executeProcedure(Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$ProcedureHolder;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$ProcedureHolder;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$executeProcedure$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$executeProcedure$1;

    iget v1, v0, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$executeProcedure$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$executeProcedure$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$executeProcedure$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$executeProcedure$1;

    invoke-direct {v0, p0, p2}, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$executeProcedure$1;-><init>(Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$executeProcedure$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 39
    iget v2, v0, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$executeProcedure$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$executeProcedure$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$ProcedureHolder;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 40
    iget-object p2, p0, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue;->updatesLogger:Lexpo/modules/updates/logging/IUpdatesLogger;

    invoke-virtual {p1}, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$ProcedureHolder;->getProcedure()Lexpo/modules/updates/procedures/StateMachineProcedure;

    move-result-object v2

    invoke-virtual {v2}, Lexpo/modules/updates/procedures/StateMachineProcedure;->getLoggerTimerLabel()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Lexpo/modules/updates/logging/IUpdatesLogger;->startTimer(Ljava/lang/String;)Lexpo/modules/core/logging/LoggerTimer;

    move-result-object p2

    .line 41
    invoke-virtual {p1}, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$ProcedureHolder;->getProcedure()Lexpo/modules/updates/procedures/StateMachineProcedure;

    move-result-object v2

    new-instance v5, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$executeProcedure$2;

    invoke-direct {v5, p2, p1, p0}, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$executeProcedure$2;-><init>(Lexpo/modules/core/logging/LoggerTimer;Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$ProcedureHolder;Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue;)V

    check-cast v5, Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;

    iput-object p1, v0, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$executeProcedure$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$executeProcedure$1;->label:I

    invoke-virtual {v2, v5, v0}, Lexpo/modules/updates/procedures/StateMachineProcedure;->run(Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    .line 72
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$ProcedureHolder;->getOnComplete()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p1

    const/4 p2, 0x0

    iput-object p2, v0, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$executeProcedure$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$executeProcedure$1;->label:I

    invoke-interface {p1, v0}, Lkotlinx/coroutines/CompletableDeferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    .line 73
    :cond_5
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method


# virtual methods
.method public final queueExecution(Lexpo/modules/updates/procedures/StateMachineProcedure;)V
    .locals 7

    const-string v0, "stateMachineProcedure"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$queueExecution$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$queueExecution$1;-><init>(Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue;Lexpo/modules/updates/procedures/StateMachineProcedure;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
