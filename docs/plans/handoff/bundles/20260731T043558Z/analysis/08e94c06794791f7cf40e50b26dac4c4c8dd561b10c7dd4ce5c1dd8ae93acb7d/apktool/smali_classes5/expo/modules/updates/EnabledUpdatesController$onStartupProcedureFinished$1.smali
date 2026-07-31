.class final Lexpo/modules/updates/EnabledUpdatesController$onStartupProcedureFinished$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "EnabledUpdatesController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/updates/EnabledUpdatesController;->onStartupProcedureFinished()V
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
    value = "SMAP\nEnabledUpdatesController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EnabledUpdatesController.kt\nexpo/modules/updates/EnabledUpdatesController$onStartupProcedureFinished$1\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,285:1\n120#2,10:286\n*S KotlinDebug\n*F\n+ 1 EnabledUpdatesController.kt\nexpo/modules/updates/EnabledUpdatesController$onStartupProcedureFinished$1\n*L\n83#1:286,10\n*E\n"
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
    c = "expo.modules.updates.EnabledUpdatesController$onStartupProcedureFinished$1"
    f = "EnabledUpdatesController.kt"
    i = {
        0x0
    }
    l = {
        0x123
    }
    m = "invokeSuspend"
    n = {
        "$this$withLock_u24default$iv"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lexpo/modules/updates/EnabledUpdatesController;


# direct methods
.method constructor <init>(Lexpo/modules/updates/EnabledUpdatesController;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/updates/EnabledUpdatesController;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/updates/EnabledUpdatesController$onStartupProcedureFinished$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/updates/EnabledUpdatesController$onStartupProcedureFinished$1;->this$0:Lexpo/modules/updates/EnabledUpdatesController;

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

    new-instance p1, Lexpo/modules/updates/EnabledUpdatesController$onStartupProcedureFinished$1;

    iget-object v0, p0, Lexpo/modules/updates/EnabledUpdatesController$onStartupProcedureFinished$1;->this$0:Lexpo/modules/updates/EnabledUpdatesController;

    invoke-direct {p1, v0, p2}, Lexpo/modules/updates/EnabledUpdatesController$onStartupProcedureFinished$1;-><init>(Lexpo/modules/updates/EnabledUpdatesController;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/updates/EnabledUpdatesController$onStartupProcedureFinished$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lexpo/modules/updates/EnabledUpdatesController$onStartupProcedureFinished$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lexpo/modules/updates/EnabledUpdatesController$onStartupProcedureFinished$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lexpo/modules/updates/EnabledUpdatesController$onStartupProcedureFinished$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 82
    iget v1, p0, Lexpo/modules/updates/EnabledUpdatesController$onStartupProcedureFinished$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Lexpo/modules/updates/EnabledUpdatesController$onStartupProcedureFinished$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lexpo/modules/updates/EnabledUpdatesController;

    iget-object v1, p0, Lexpo/modules/updates/EnabledUpdatesController$onStartupProcedureFinished$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 83
    iget-object p1, p0, Lexpo/modules/updates/EnabledUpdatesController$onStartupProcedureFinished$1;->this$0:Lexpo/modules/updates/EnabledUpdatesController;

    invoke-static {p1}, Lexpo/modules/updates/EnabledUpdatesController;->access$getStartupFinishedMutex$p(Lexpo/modules/updates/EnabledUpdatesController;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v1

    iget-object p1, p0, Lexpo/modules/updates/EnabledUpdatesController$onStartupProcedureFinished$1;->this$0:Lexpo/modules/updates/EnabledUpdatesController;

    .line 291
    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput-object v1, p0, Lexpo/modules/updates/EnabledUpdatesController$onStartupProcedureFinished$1;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Lexpo/modules/updates/EnabledUpdatesController$onStartupProcedureFinished$1;->L$1:Ljava/lang/Object;

    iput v3, p0, Lexpo/modules/updates/EnabledUpdatesController$onStartupProcedureFinished$1;->label:I

    invoke-interface {v1, v2, v4}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    .line 84
    :goto_0
    :try_start_0
    invoke-static {v0}, Lexpo/modules/updates/EnabledUpdatesController;->access$getStartupFinishedDeferred$p(Lexpo/modules/updates/EnabledUpdatesController;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/CompletableDeferred;->isCompleted()Z

    move-result p1

    if-nez p1, :cond_3

    .line 85
    invoke-static {v0}, Lexpo/modules/updates/EnabledUpdatesController;->access$getStartupFinishedDeferred$p(Lexpo/modules/updates/EnabledUpdatesController;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p1

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {p1, v0}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    .line 87
    :cond_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    invoke-interface {v1, v2}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 88
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_0
    move-exception p1

    .line 295
    invoke-interface {v1, v2}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method
