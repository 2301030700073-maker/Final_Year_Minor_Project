.class final Lexpo/modules/ReactActivityDelegateWrapper$onPause$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ReactActivityDelegateWrapper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/ReactActivityDelegateWrapper;->onPause()V
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
    value = "SMAP\nReactActivityDelegateWrapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReactActivityDelegateWrapper.kt\nexpo/modules/ReactActivityDelegateWrapper$onPause$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,505:1\n1863#2,2:506\n*S KotlinDebug\n*F\n+ 1 ReactActivityDelegateWrapper.kt\nexpo/modules/ReactActivityDelegateWrapper$onPause$1\n*L\n208#1:506,2\n*E\n"
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
    c = "expo.modules.ReactActivityDelegateWrapper$onPause$1"
    f = "ReactActivityDelegateWrapper.kt"
    i = {}
    l = {
        0xcf
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lexpo/modules/ReactActivityDelegateWrapper;


# direct methods
.method constructor <init>(Lexpo/modules/ReactActivityDelegateWrapper;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/ReactActivityDelegateWrapper;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/ReactActivityDelegateWrapper$onPause$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/ReactActivityDelegateWrapper$onPause$1;->this$0:Lexpo/modules/ReactActivityDelegateWrapper;

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

    new-instance p1, Lexpo/modules/ReactActivityDelegateWrapper$onPause$1;

    iget-object v0, p0, Lexpo/modules/ReactActivityDelegateWrapper$onPause$1;->this$0:Lexpo/modules/ReactActivityDelegateWrapper;

    invoke-direct {p1, v0, p2}, Lexpo/modules/ReactActivityDelegateWrapper$onPause$1;-><init>(Lexpo/modules/ReactActivityDelegateWrapper;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/ReactActivityDelegateWrapper$onPause$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lexpo/modules/ReactActivityDelegateWrapper$onPause$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lexpo/modules/ReactActivityDelegateWrapper$onPause$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lexpo/modules/ReactActivityDelegateWrapper$onPause$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 206
    iget v1, p0, Lexpo/modules/ReactActivityDelegateWrapper$onPause$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 207
    iget-object p1, p0, Lexpo/modules/ReactActivityDelegateWrapper$onPause$1;->this$0:Lexpo/modules/ReactActivityDelegateWrapper;

    invoke-static {p1}, Lexpo/modules/ReactActivityDelegateWrapper;->access$getLoadAppReady$p(Lexpo/modules/ReactActivityDelegateWrapper;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p1

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lexpo/modules/ReactActivityDelegateWrapper$onPause$1;->label:I

    invoke-interface {p1, v1}, Lkotlinx/coroutines/CompletableDeferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 208
    :cond_2
    :goto_0
    iget-object p1, p0, Lexpo/modules/ReactActivityDelegateWrapper$onPause$1;->this$0:Lexpo/modules/ReactActivityDelegateWrapper;

    invoke-static {p1}, Lexpo/modules/ReactActivityDelegateWrapper;->access$getReactActivityLifecycleListeners$p(Lexpo/modules/ReactActivityDelegateWrapper;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    iget-object v0, p0, Lexpo/modules/ReactActivityDelegateWrapper$onPause$1;->this$0:Lexpo/modules/ReactActivityDelegateWrapper;

    .line 506
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lexpo/modules/core/interfaces/ReactActivityLifecycleListener;

    .line 209
    invoke-static {v0}, Lexpo/modules/ReactActivityDelegateWrapper;->access$getActivity$p(Lexpo/modules/ReactActivityDelegateWrapper;)Lcom/facebook/react/ReactActivity;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-interface {v1, v2}, Lexpo/modules/core/interfaces/ReactActivityLifecycleListener;->onPause(Landroid/app/Activity;)V

    goto :goto_1

    .line 211
    :cond_3
    iget-object p1, p0, Lexpo/modules/ReactActivityDelegateWrapper$onPause$1;->this$0:Lexpo/modules/ReactActivityDelegateWrapper;

    invoke-static {p1}, Lexpo/modules/ReactActivityDelegateWrapper;->access$getDelayLoadAppHandler(Lexpo/modules/ReactActivityDelegateWrapper;)Lexpo/modules/core/interfaces/ReactActivityHandler$DelayLoadAppHandler;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 217
    :try_start_0
    iget-object p1, p0, Lexpo/modules/ReactActivityDelegateWrapper$onPause$1;->this$0:Lexpo/modules/ReactActivityDelegateWrapper;

    invoke-virtual {p1}, Lexpo/modules/ReactActivityDelegateWrapper;->getDelegate$expo_release()Lcom/facebook/react/ReactActivityDelegate;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/react/ReactActivityDelegate;->onPause()V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 219
    invoke-static {}, Lexpo/modules/ReactActivityDelegateWrapper;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Exception occurred during onPause with delayed app loading"

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, v1, p1}, Lio/sentry/android/core/SentryLogcatAdapter;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    goto :goto_2

    .line 222
    :cond_4
    iget-object p1, p0, Lexpo/modules/ReactActivityDelegateWrapper$onPause$1;->this$0:Lexpo/modules/ReactActivityDelegateWrapper;

    invoke-virtual {p1}, Lexpo/modules/ReactActivityDelegateWrapper;->getDelegate$expo_release()Lcom/facebook/react/ReactActivityDelegate;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/react/ReactActivityDelegate;->onPause()V

    .line 224
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
