.class final Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$queueExecution$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "StateMachineSerialExecutorQueue.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue;->queueExecution(Lexpo/modules/updates/procedures/StateMachineProcedure;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStateMachineSerialExecutorQueue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StateMachineSerialExecutorQueue.kt\nexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$queueExecution$1\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,87:1\n120#2,10:88\n*S KotlinDebug\n*F\n+ 1 StateMachineSerialExecutorQueue.kt\nexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$queueExecution$1\n*L\n80#1:88,10\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "expo.modules.updates.procedures.StateMachineSerialExecutorQueue$queueExecution$1"
    f = "StateMachineSerialExecutorQueue.kt"
    i = {
        0x0,
        0x1
    }
    l = {
        0x5d,
        0x52
    }
    m = "invokeSuspend"
    n = {
        "$this$withLock_u24default$iv",
        "$this$withLock_u24default$iv"
    }
    s = {
        "L$0",
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $stateMachineProcedure:Lexpo/modules/updates/procedures/StateMachineProcedure;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue;


# direct methods
.method constructor <init>(Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue;Lexpo/modules/updates/procedures/StateMachineProcedure;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue;",
            "Lexpo/modules/updates/procedures/StateMachineProcedure;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$queueExecution$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$queueExecution$1;->this$0:Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue;

    iput-object p2, p0, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$queueExecution$1;->$stateMachineProcedure:Lexpo/modules/updates/procedures/StateMachineProcedure;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$queueExecution$1;

    iget-object v0, p0, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$queueExecution$1;->this$0:Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue;

    iget-object v1, p0, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$queueExecution$1;->$stateMachineProcedure:Lexpo/modules/updates/procedures/StateMachineProcedure;

    invoke-direct {p1, v0, v1, p2}, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$queueExecution$1;-><init>(Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue;Lexpo/modules/updates/procedures/StateMachineProcedure;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$queueExecution$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$queueExecution$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$queueExecution$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$queueExecution$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 79
    iget v1, p0, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$queueExecution$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$queueExecution$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$queueExecution$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lexpo/modules/updates/procedures/StateMachineProcedure;

    iget-object v5, p0, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$queueExecution$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue;

    iget-object v6, p0, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$queueExecution$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v6

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 80
    iget-object p1, p0, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$queueExecution$1;->this$0:Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue;

    invoke-static {p1}, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue;->access$getMutex$p(Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iget-object v5, p0, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$queueExecution$1;->this$0:Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue;

    iget-object v1, p0, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$queueExecution$1;->$stateMachineProcedure:Lexpo/modules/updates/procedures/StateMachineProcedure;

    .line 93
    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object p1, p0, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$queueExecution$1;->L$0:Ljava/lang/Object;

    iput-object v5, p0, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$queueExecution$1;->L$1:Ljava/lang/Object;

    iput-object v1, p0, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$queueExecution$1;->L$2:Ljava/lang/Object;

    iput v3, p0, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$queueExecution$1;->label:I

    invoke-interface {p1, v4, v6}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_3

    return-object v0

    .line 81
    :cond_3
    :goto_0
    :try_start_1
    invoke-static {v4, v3, v4}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v3

    .line 82
    invoke-static {v5}, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue;->access$getProcedureChannel$p(Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v5

    new-instance v6, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$ProcedureHolder;

    invoke-direct {v6, v1, v3}, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$ProcedureHolder;-><init>(Lexpo/modules/updates/procedures/StateMachineProcedure;Lkotlinx/coroutines/CompletableDeferred;)V

    iput-object p1, p0, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$queueExecution$1;->L$0:Ljava/lang/Object;

    iput-object v4, p0, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$queueExecution$1;->L$1:Ljava/lang/Object;

    iput-object v4, p0, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$queueExecution$1;->L$2:Ljava/lang/Object;

    iput v2, p0, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$queueExecution$1;->label:I

    invoke-interface {v5, v6, p0}, Lkotlinx/coroutines/channels/Channel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v0, p1

    .line 83
    :goto_1
    :try_start_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    invoke-interface {v0, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 84
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_1
    move-exception v0

    move-object v7, v0

    move-object v0, p1

    move-object p1, v7

    .line 97
    :goto_2
    invoke-interface {v0, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method
