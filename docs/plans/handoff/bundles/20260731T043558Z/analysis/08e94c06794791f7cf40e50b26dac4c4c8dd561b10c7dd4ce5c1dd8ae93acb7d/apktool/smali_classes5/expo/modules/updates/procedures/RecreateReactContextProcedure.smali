.class public final Lexpo/modules/updates/procedures/RecreateReactContextProcedure;
.super Lexpo/modules/updates/procedures/StateMachineProcedure;
.source "RecreateReactContextProcedure.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0016\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0096@\u00a2\u0006\u0002\u0010\u0015R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u00020\u000eX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0016"
    }
    d2 = {
        "Lexpo/modules/updates/procedures/RecreateReactContextProcedure;",
        "Lexpo/modules/updates/procedures/StateMachineProcedure;",
        "context",
        "Landroid/content/Context;",
        "weakActivity",
        "Ljava/lang/ref/WeakReference;",
        "Landroid/app/Activity;",
        "callback",
        "Lexpo/modules/updates/launcher/Launcher$LauncherCallback;",
        "procedureScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "<init>",
        "(Landroid/content/Context;Ljava/lang/ref/WeakReference;Lexpo/modules/updates/launcher/Launcher$LauncherCallback;Lkotlinx/coroutines/CoroutineScope;)V",
        "loggerTimerLabel",
        "",
        "getLoggerTimerLabel",
        "()Ljava/lang/String;",
        "run",
        "",
        "procedureContext",
        "Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;",
        "(Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field private final callback:Lexpo/modules/updates/launcher/Launcher$LauncherCallback;

.field private final context:Landroid/content/Context;

.field private final loggerTimerLabel:Ljava/lang/String;

.field private final procedureScope:Lkotlinx/coroutines/CoroutineScope;

.field private final weakActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/ref/WeakReference;Lexpo/modules/updates/launcher/Launcher$LauncherCallback;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;",
            "Lexpo/modules/updates/launcher/Launcher$LauncherCallback;",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "procedureScope"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Lexpo/modules/updates/procedures/StateMachineProcedure;-><init>()V

    .line 15
    iput-object p1, p0, Lexpo/modules/updates/procedures/RecreateReactContextProcedure;->context:Landroid/content/Context;

    .line 16
    iput-object p2, p0, Lexpo/modules/updates/procedures/RecreateReactContextProcedure;->weakActivity:Ljava/lang/ref/WeakReference;

    .line 17
    iput-object p3, p0, Lexpo/modules/updates/procedures/RecreateReactContextProcedure;->callback:Lexpo/modules/updates/launcher/Launcher$LauncherCallback;

    .line 18
    iput-object p4, p0, Lexpo/modules/updates/procedures/RecreateReactContextProcedure;->procedureScope:Lkotlinx/coroutines/CoroutineScope;

    .line 20
    const-string p1, "timer-recreate-react-context"

    iput-object p1, p0, Lexpo/modules/updates/procedures/RecreateReactContextProcedure;->loggerTimerLabel:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/ref/WeakReference;Lexpo/modules/updates/launcher/Launcher$LauncherCallback;Lkotlinx/coroutines/CoroutineScope;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 18
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p4

    check-cast p4, Lkotlin/coroutines/CoroutineContext;

    invoke-static {p4}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p4

    .line 14
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lexpo/modules/updates/procedures/RecreateReactContextProcedure;-><init>(Landroid/content/Context;Ljava/lang/ref/WeakReference;Lexpo/modules/updates/launcher/Launcher$LauncherCallback;Lkotlinx/coroutines/CoroutineScope;)V

    return-void
.end method

.method public static final synthetic access$getWeakActivity$p(Lexpo/modules/updates/procedures/RecreateReactContextProcedure;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 14
    iget-object p0, p0, Lexpo/modules/updates/procedures/RecreateReactContextProcedure;->weakActivity:Ljava/lang/ref/WeakReference;

    return-object p0
.end method


# virtual methods
.method public getLoggerTimerLabel()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lexpo/modules/updates/procedures/RecreateReactContextProcedure;->loggerTimerLabel:Ljava/lang/String;

    return-object v0
.end method

.method public run(Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 23
    iget-object p2, p0, Lexpo/modules/updates/procedures/RecreateReactContextProcedure;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    instance-of v0, p2, Lcom/facebook/react/ReactApplication;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p2, Lcom/facebook/react/ReactApplication;

    goto :goto_0

    :cond_0
    move-object p2, v1

    :goto_0
    if-nez p2, :cond_1

    move-object p1, p0

    check-cast p1, Lexpo/modules/updates/procedures/RecreateReactContextProcedure;

    .line 24
    iget-object p1, p0, Lexpo/modules/updates/procedures/RecreateReactContextProcedure;->callback:Lexpo/modules/updates/launcher/Launcher$LauncherCallback;

    new-instance p2, Ljava/lang/Exception;

    const-string v0, "Could not reload application. Ensure you have passed the correct instance of ReactApplication into UpdatesController.initialize()."

    invoke-direct {p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lexpo/modules/updates/launcher/Launcher$LauncherCallback;->onFailure(Ljava/lang/Exception;)V

    .line 25
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 28
    :cond_1
    new-instance v0, Lexpo/modules/updates/statemachine/UpdatesStateEvent$Restart;

    invoke-direct {v0}, Lexpo/modules/updates/statemachine/UpdatesStateEvent$Restart;-><init>()V

    check-cast v0, Lexpo/modules/updates/statemachine/UpdatesStateEvent;

    invoke-interface {p1, v0}, Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;->processStateEvent(Lexpo/modules/updates/statemachine/UpdatesStateEvent;)V

    .line 29
    iget-object v0, p0, Lexpo/modules/updates/procedures/RecreateReactContextProcedure;->callback:Lexpo/modules/updates/launcher/Launcher$LauncherCallback;

    invoke-interface {v0}, Lexpo/modules/updates/launcher/Launcher$LauncherCallback;->onSuccess()V

    .line 30
    iget-object v2, p0, Lexpo/modules/updates/procedures/RecreateReactContextProcedure;->procedureScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lexpo/modules/updates/procedures/RecreateReactContextProcedure$run$2;

    invoke-direct {v0, p2, p0, v1}, Lexpo/modules/updates/procedures/RecreateReactContextProcedure$run$2;-><init>(Lcom/facebook/react/ReactApplication;Lexpo/modules/updates/procedures/RecreateReactContextProcedure;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 35
    invoke-interface {p1}, Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;->resetStateAfterRestart()V

    .line 36
    invoke-interface {p1}, Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;->onComplete()V

    .line 37
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
