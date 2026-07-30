.class public interface abstract Lexpo/modules/updates/procedures/StateMachineProcedure$StateMachineProcedureContext;
.super Ljava/lang/Object;
.source "StateMachineProcedure.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/updates/procedures/StateMachineProcedure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StateMachineProcedureContext"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0008\u0010\u0006\u001a\u00020\u0007H\'J\u0008\u0010\u0008\u001a\u00020\u0003H&\u00a8\u0006\t"
    }
    d2 = {
        "Lexpo/modules/updates/procedures/StateMachineProcedure$StateMachineProcedureContext;",
        "",
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


# virtual methods
.method public abstract getCurrentState()Lexpo/modules/updates/statemachine/UpdatesStateValue;
    .annotation runtime Lkotlin/Deprecated;
        message = "Avoid needing to access current state to know how to transition to next state"
    .end annotation
.end method

.method public abstract processStateEvent(Lexpo/modules/updates/statemachine/UpdatesStateEvent;)V
.end method

.method public abstract resetStateAfterRestart()V
.end method
