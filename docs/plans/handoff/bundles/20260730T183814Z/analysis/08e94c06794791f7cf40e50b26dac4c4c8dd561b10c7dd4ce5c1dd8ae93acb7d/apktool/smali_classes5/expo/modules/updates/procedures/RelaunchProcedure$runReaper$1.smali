.class final Lexpo/modules/updates/procedures/RelaunchProcedure$runReaper$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RelaunchProcedure.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/updates/procedures/RelaunchProcedure;->runReaper()V
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
    c = "expo.modules.updates.procedures.RelaunchProcedure$runReaper$1"
    f = "RelaunchProcedure.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lexpo/modules/updates/procedures/RelaunchProcedure;


# direct methods
.method constructor <init>(Lexpo/modules/updates/procedures/RelaunchProcedure;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/updates/procedures/RelaunchProcedure;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/updates/procedures/RelaunchProcedure$runReaper$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/updates/procedures/RelaunchProcedure$runReaper$1;->this$0:Lexpo/modules/updates/procedures/RelaunchProcedure;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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

    new-instance p1, Lexpo/modules/updates/procedures/RelaunchProcedure$runReaper$1;

    iget-object v0, p0, Lexpo/modules/updates/procedures/RelaunchProcedure$runReaper$1;->this$0:Lexpo/modules/updates/procedures/RelaunchProcedure;

    invoke-direct {p1, v0, p2}, Lexpo/modules/updates/procedures/RelaunchProcedure$runReaper$1;-><init>(Lexpo/modules/updates/procedures/RelaunchProcedure;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/updates/procedures/RelaunchProcedure$runReaper$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lexpo/modules/updates/procedures/RelaunchProcedure$runReaper$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lexpo/modules/updates/procedures/RelaunchProcedure$runReaper$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lexpo/modules/updates/procedures/RelaunchProcedure$runReaper$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 98
    iget v0, p0, Lexpo/modules/updates/procedures/RelaunchProcedure$runReaper$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 101
    :try_start_0
    iget-object p1, p0, Lexpo/modules/updates/procedures/RelaunchProcedure$runReaper$1;->this$0:Lexpo/modules/updates/procedures/RelaunchProcedure;

    invoke-static {p1}, Lexpo/modules/updates/procedures/RelaunchProcedure;->access$getUpdatesConfiguration$p(Lexpo/modules/updates/procedures/RelaunchProcedure;)Lexpo/modules/updates/UpdatesConfiguration;

    move-result-object p1

    .line 102
    iget-object v0, p0, Lexpo/modules/updates/procedures/RelaunchProcedure$runReaper$1;->this$0:Lexpo/modules/updates/procedures/RelaunchProcedure;

    invoke-static {v0}, Lexpo/modules/updates/procedures/RelaunchProcedure;->access$getDatabaseHolder$p(Lexpo/modules/updates/procedures/RelaunchProcedure;)Lexpo/modules/updates/db/DatabaseHolder;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/updates/db/DatabaseHolder;->getDatabase()Lexpo/modules/updates/db/UpdatesDatabase;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lexpo/modules/updates/procedures/RelaunchProcedure$runReaper$1;->this$0:Lexpo/modules/updates/procedures/RelaunchProcedure;

    invoke-static {v1}, Lexpo/modules/updates/procedures/RelaunchProcedure;->access$getUpdatesDirectory$p(Lexpo/modules/updates/procedures/RelaunchProcedure;)Ljava/io/File;

    move-result-object v1

    .line 104
    iget-object v2, p0, Lexpo/modules/updates/procedures/RelaunchProcedure$runReaper$1;->this$0:Lexpo/modules/updates/procedures/RelaunchProcedure;

    invoke-static {v2}, Lexpo/modules/updates/procedures/RelaunchProcedure;->access$getGetCurrentLauncher$p(Lexpo/modules/updates/procedures/RelaunchProcedure;)Lkotlin/jvm/functions/Function0;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lexpo/modules/updates/launcher/Launcher;

    invoke-interface {v2}, Lexpo/modules/updates/launcher/Launcher;->getLaunchedUpdate()Lexpo/modules/updates/db/entity/UpdateEntity;

    move-result-object v2

    .line 105
    iget-object v3, p0, Lexpo/modules/updates/procedures/RelaunchProcedure$runReaper$1;->this$0:Lexpo/modules/updates/procedures/RelaunchProcedure;

    invoke-static {v3}, Lexpo/modules/updates/procedures/RelaunchProcedure;->access$getSelectionPolicy$p(Lexpo/modules/updates/procedures/RelaunchProcedure;)Lexpo/modules/updates/selectionpolicy/SelectionPolicy;

    move-result-object v3

    .line 100
    invoke-static {p1, v0, v1, v2, v3}, Lexpo/modules/updates/db/Reaper;->reapUnusedUpdates(Lexpo/modules/updates/UpdatesConfiguration;Lexpo/modules/updates/db/UpdatesDatabase;Ljava/io/File;Lexpo/modules/updates/db/entity/UpdateEntity;Lexpo/modules/updates/selectionpolicy/SelectionPolicy;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 108
    iget-object v0, p0, Lexpo/modules/updates/procedures/RelaunchProcedure$runReaper$1;->this$0:Lexpo/modules/updates/procedures/RelaunchProcedure;

    invoke-static {v0}, Lexpo/modules/updates/procedures/RelaunchProcedure;->access$getLogger$p(Lexpo/modules/updates/procedures/RelaunchProcedure;)Lexpo/modules/updates/logging/UpdatesLogger;

    move-result-object v0

    const-string v1, "Could not run Reaper."

    sget-object v2, Lexpo/modules/updates/logging/UpdatesErrorCode;->Unknown:Lexpo/modules/updates/logging/UpdatesErrorCode;

    invoke-virtual {v0, v1, p1, v2}, Lexpo/modules/updates/logging/UpdatesLogger;->error(Ljava/lang/String;Ljava/lang/Exception;Lexpo/modules/updates/logging/UpdatesErrorCode;)V

    .line 110
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 98
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
