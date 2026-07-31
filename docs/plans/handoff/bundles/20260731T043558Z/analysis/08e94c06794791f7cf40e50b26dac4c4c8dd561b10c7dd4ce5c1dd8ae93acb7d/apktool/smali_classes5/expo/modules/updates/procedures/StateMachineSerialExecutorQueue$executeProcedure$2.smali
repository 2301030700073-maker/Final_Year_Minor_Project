.class public final Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$executeProcedure$2;
.super Ljava/lang/Object;
.source "StateMachineSerialExecutorQueue.kt"

# interfaces
.implements Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue;->executeProcedure(Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$ProcedureHolder;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0008\u0010\t\u001a\u00020\nH\u0017J\u0008\u0010\u000b\u001a\u00020\u0005H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "expo/modules/updates/procedures/StateMachineSerialExecutorQueue$executeProcedure$2",
        "Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;",
        "isCompleted",
        "",
        "onComplete",
        "",
        "processStateEvent",
        "event",
        "Lexpo/modules/updates/statemachine/UpdatesStateEvent;",
        "getCurrentState",
        "Lexpo/modules/updates/statemachine/UpdatesStateValue;",
        "resetStateAfterRestart",
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
.field final synthetic $holder:Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$ProcedureHolder;

.field final synthetic $loggerTimer:Lexpo/modules/core/logging/LoggerTimer;

.field private isCompleted:Z

.field final synthetic this$0:Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue;


# direct methods
.method constructor <init>(Lexpo/modules/core/logging/LoggerTimer;Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$ProcedureHolder;Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$executeProcedure$2;->$loggerTimer:Lexpo/modules/core/logging/LoggerTimer;

    iput-object p2, p0, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$executeProcedure$2;->$holder:Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$ProcedureHolder;

    iput-object p3, p0, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$executeProcedure$2;->this$0:Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentState()Lexpo/modules/updates/statemachine/UpdatesStateValue;
    .locals 2
    .annotation runtime Lkotlin/Deprecated;
        message = "Avoid needing to access current state to know how to transition to next state"
    .end annotation

    .line 59
    iget-boolean v0, p0, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$executeProcedure$2;->isCompleted:Z

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$executeProcedure$2;->this$0:Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue;

    invoke-static {v0}, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue;->access$getStateMachineProcedureContext$p(Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue;)Lexpo/modules/updates/procedures/StateMachineProcedure$StateMachineProcedureContext;

    move-result-object v0

    invoke-interface {v0}, Lexpo/modules/updates/procedures/StateMachineProcedure$StateMachineProcedureContext;->getCurrentState()Lexpo/modules/updates/statemachine/UpdatesStateValue;

    move-result-object v0

    return-object v0

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Cannot get state after procedure completion"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onComplete()V
    .locals 2

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$executeProcedure$2;->isCompleted:Z

    .line 46
    iget-object v0, p0, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$executeProcedure$2;->$loggerTimer:Lexpo/modules/core/logging/LoggerTimer;

    invoke-interface {v0}, Lexpo/modules/core/logging/LoggerTimer;->stop-UwyO8pc()J

    .line 47
    iget-object v0, p0, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$executeProcedure$2;->$holder:Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$ProcedureHolder;

    invoke-virtual {v0}, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$ProcedureHolder;->getOnComplete()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v0

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method public processStateEvent(Lexpo/modules/updates/statemachine/UpdatesStateEvent;)V
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-boolean v0, p0, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$executeProcedure$2;->isCompleted:Z

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$executeProcedure$2;->this$0:Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue;

    invoke-static {v0}, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue;->access$getStateMachineProcedureContext$p(Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue;)Lexpo/modules/updates/procedures/StateMachineProcedure$StateMachineProcedureContext;

    move-result-object v0

    invoke-interface {v0, p1}, Lexpo/modules/updates/procedures/StateMachineProcedure$StateMachineProcedureContext;->processStateEvent(Lexpo/modules/updates/statemachine/UpdatesStateEvent;)V

    return-void

    .line 52
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Cannot set state after procedure completion"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public resetStateAfterRestart()V
    .locals 2

    .line 66
    iget-boolean v0, p0, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$executeProcedure$2;->isCompleted:Z

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$executeProcedure$2;->this$0:Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue;

    invoke-static {v0}, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue;->access$getStateMachineProcedureContext$p(Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue;)Lexpo/modules/updates/procedures/StateMachineProcedure$StateMachineProcedureContext;

    move-result-object v0

    invoke-interface {v0}, Lexpo/modules/updates/procedures/StateMachineProcedure$StateMachineProcedureContext;->resetStateAfterRestart()V

    return-void

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Cannot reset state after procedure completion"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method
