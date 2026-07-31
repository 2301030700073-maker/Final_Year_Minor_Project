.class public final Lexpo/modules/updates/statemachine/UpdatesStateMachine$serialExecutorQueue$1;
.super Ljava/lang/Object;
.source "UpdatesStateMachine.kt"

# interfaces
.implements Lexpo/modules/updates/procedures/StateMachineProcedure$StateMachineProcedureContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/updates/statemachine/UpdatesStateMachine;-><init>(Lexpo/modules/updates/logging/UpdatesLogger;Lexpo/modules/updates/events/IUpdatesEventManager;Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0007H\u0017J\u0008\u0010\u0008\u001a\u00020\u0003H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "expo/modules/updates/statemachine/UpdatesStateMachine$serialExecutorQueue$1",
        "Lexpo/modules/updates/procedures/StateMachineProcedure$StateMachineProcedureContext;",
        "processStateEvent",
        "",
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
.field final synthetic this$0:Lexpo/modules/updates/statemachine/UpdatesStateMachine;


# direct methods
.method constructor <init>(Lexpo/modules/updates/statemachine/UpdatesStateMachine;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/updates/statemachine/UpdatesStateMachine$serialExecutorQueue$1;->this$0:Lexpo/modules/updates/statemachine/UpdatesStateMachine;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentState()Lexpo/modules/updates/statemachine/UpdatesStateValue;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "Avoid needing to access current state to know how to transition to next state"
    .end annotation

    .line 27
    iget-object v0, p0, Lexpo/modules/updates/statemachine/UpdatesStateMachine$serialExecutorQueue$1;->this$0:Lexpo/modules/updates/statemachine/UpdatesStateMachine;

    invoke-static {v0}, Lexpo/modules/updates/statemachine/UpdatesStateMachine;->access$getState$p(Lexpo/modules/updates/statemachine/UpdatesStateMachine;)Lexpo/modules/updates/statemachine/UpdatesStateValue;

    move-result-object v0

    return-object v0
.end method

.method public processStateEvent(Lexpo/modules/updates/statemachine/UpdatesStateEvent;)V
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lexpo/modules/updates/statemachine/UpdatesStateMachine$serialExecutorQueue$1;->this$0:Lexpo/modules/updates/statemachine/UpdatesStateMachine;

    invoke-static {v0, p1}, Lexpo/modules/updates/statemachine/UpdatesStateMachine;->access$processEvent(Lexpo/modules/updates/statemachine/UpdatesStateMachine;Lexpo/modules/updates/statemachine/UpdatesStateEvent;)V

    return-void
.end method

.method public resetStateAfterRestart()V
    .locals 1

    .line 31
    iget-object v0, p0, Lexpo/modules/updates/statemachine/UpdatesStateMachine$serialExecutorQueue$1;->this$0:Lexpo/modules/updates/statemachine/UpdatesStateMachine;

    invoke-static {v0}, Lexpo/modules/updates/statemachine/UpdatesStateMachine;->access$resetAndIncrementRestartCount(Lexpo/modules/updates/statemachine/UpdatesStateMachine;)V

    return-void
.end method
