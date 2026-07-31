.class final Lexpo/modules/ReactActivityDelegateWrapper$onActivityResult$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ReactActivityDelegateWrapper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/ReactActivityDelegateWrapper;->onActivityResult(IILandroid/content/Intent;)V
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
    c = "expo.modules.ReactActivityDelegateWrapper$onActivityResult$1"
    f = "ReactActivityDelegateWrapper.kt"
    i = {}
    l = {
        0x116
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $data:Landroid/content/Intent;

.field final synthetic $requestCode:I

.field final synthetic $resultCode:I

.field label:I

.field final synthetic this$0:Lexpo/modules/ReactActivityDelegateWrapper;


# direct methods
.method constructor <init>(Lexpo/modules/ReactActivityDelegateWrapper;IILandroid/content/Intent;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/ReactActivityDelegateWrapper;",
            "II",
            "Landroid/content/Intent;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/ReactActivityDelegateWrapper$onActivityResult$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/ReactActivityDelegateWrapper$onActivityResult$1;->this$0:Lexpo/modules/ReactActivityDelegateWrapper;

    iput p2, p0, Lexpo/modules/ReactActivityDelegateWrapper$onActivityResult$1;->$requestCode:I

    iput p3, p0, Lexpo/modules/ReactActivityDelegateWrapper$onActivityResult$1;->$resultCode:I

    iput-object p4, p0, Lexpo/modules/ReactActivityDelegateWrapper$onActivityResult$1;->$data:Landroid/content/Intent;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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

    new-instance p1, Lexpo/modules/ReactActivityDelegateWrapper$onActivityResult$1;

    iget-object v1, p0, Lexpo/modules/ReactActivityDelegateWrapper$onActivityResult$1;->this$0:Lexpo/modules/ReactActivityDelegateWrapper;

    iget v2, p0, Lexpo/modules/ReactActivityDelegateWrapper$onActivityResult$1;->$requestCode:I

    iget v3, p0, Lexpo/modules/ReactActivityDelegateWrapper$onActivityResult$1;->$resultCode:I

    iget-object v4, p0, Lexpo/modules/ReactActivityDelegateWrapper$onActivityResult$1;->$data:Landroid/content/Intent;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lexpo/modules/ReactActivityDelegateWrapper$onActivityResult$1;-><init>(Lexpo/modules/ReactActivityDelegateWrapper;IILandroid/content/Intent;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/ReactActivityDelegateWrapper$onActivityResult$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lexpo/modules/ReactActivityDelegateWrapper$onActivityResult$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lexpo/modules/ReactActivityDelegateWrapper$onActivityResult$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lexpo/modules/ReactActivityDelegateWrapper$onActivityResult$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 277
    iget v1, p0, Lexpo/modules/ReactActivityDelegateWrapper$onActivityResult$1;->label:I

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

    .line 278
    iget-object p1, p0, Lexpo/modules/ReactActivityDelegateWrapper$onActivityResult$1;->this$0:Lexpo/modules/ReactActivityDelegateWrapper;

    invoke-static {p1}, Lexpo/modules/ReactActivityDelegateWrapper;->access$getLoadAppReady$p(Lexpo/modules/ReactActivityDelegateWrapper;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p1

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lexpo/modules/ReactActivityDelegateWrapper$onActivityResult$1;->label:I

    invoke-interface {p1, v1}, Lkotlinx/coroutines/CompletableDeferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 279
    :cond_2
    :goto_0
    sget-object p1, Lexpo/modules/rncompatibility/ReactNativeFeatureFlags;->INSTANCE:Lexpo/modules/rncompatibility/ReactNativeFeatureFlags;

    invoke-virtual {p1}, Lexpo/modules/rncompatibility/ReactNativeFeatureFlags;->getEnableBridgelessArchitecture()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lexpo/modules/ReactActivityDelegateWrapper$onActivityResult$1;->this$0:Lexpo/modules/ReactActivityDelegateWrapper;

    invoke-virtual {p1}, Lexpo/modules/ReactActivityDelegateWrapper;->getDelegate$expo_release()Lcom/facebook/react/ReactActivityDelegate;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/react/ReactActivityDelegate;->getReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/react/ReactInstanceManager;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object p1

    if-nez p1, :cond_3

    .line 280
    new-instance p1, Lexpo/modules/ReactActivityDelegateWrapper$onActivityResult$1$reactContextListener$1;

    iget-object v0, p0, Lexpo/modules/ReactActivityDelegateWrapper$onActivityResult$1;->this$0:Lexpo/modules/ReactActivityDelegateWrapper;

    iget v1, p0, Lexpo/modules/ReactActivityDelegateWrapper$onActivityResult$1;->$requestCode:I

    iget v2, p0, Lexpo/modules/ReactActivityDelegateWrapper$onActivityResult$1;->$resultCode:I

    iget-object v3, p0, Lexpo/modules/ReactActivityDelegateWrapper$onActivityResult$1;->$data:Landroid/content/Intent;

    invoke-direct {p1, v0, v1, v2, v3}, Lexpo/modules/ReactActivityDelegateWrapper$onActivityResult$1$reactContextListener$1;-><init>(Lexpo/modules/ReactActivityDelegateWrapper;IILandroid/content/Intent;)V

    .line 286
    iget-object v0, p0, Lexpo/modules/ReactActivityDelegateWrapper$onActivityResult$1;->this$0:Lexpo/modules/ReactActivityDelegateWrapper;

    invoke-virtual {v0}, Lexpo/modules/ReactActivityDelegateWrapper;->getDelegate$expo_release()Lcom/facebook/react/ReactActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/ReactActivityDelegate;->getReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object v0

    .line 287
    check-cast p1, Lcom/facebook/react/ReactInstanceEventListener;

    .line 286
    invoke-virtual {v0, p1}, Lcom/facebook/react/ReactInstanceManager;->addReactInstanceEventListener(Lcom/facebook/react/ReactInstanceEventListener;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 291
    :cond_3
    iget-object p1, p0, Lexpo/modules/ReactActivityDelegateWrapper$onActivityResult$1;->this$0:Lexpo/modules/ReactActivityDelegateWrapper;

    invoke-virtual {p1}, Lexpo/modules/ReactActivityDelegateWrapper;->getDelegate$expo_release()Lcom/facebook/react/ReactActivityDelegate;

    move-result-object p1

    iget v0, p0, Lexpo/modules/ReactActivityDelegateWrapper$onActivityResult$1;->$requestCode:I

    iget v1, p0, Lexpo/modules/ReactActivityDelegateWrapper$onActivityResult$1;->$resultCode:I

    iget-object v2, p0, Lexpo/modules/ReactActivityDelegateWrapper$onActivityResult$1;->$data:Landroid/content/Intent;

    invoke-virtual {p1, v0, v1, v2}, Lcom/facebook/react/ReactActivityDelegate;->onActivityResult(IILandroid/content/Intent;)V

    .line 292
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
